Write-Host "Started applying Interrupt Affinity tweaks!"
[Environment]::NewLine

# Reset affinity and apply MSI tweaks
[PsObject[]]$allPnpDeviceIds = @()
Get-WmiObject Win32_VideoController | Where-Object PNPDeviceID -Match "PCI\\VEN*" | Select-Object -ExpandProperty PNPDeviceID | ForEach-Object { $allPnpDeviceIds += $_ }
Get-WmiObject Win32_USBController | Where-Object PNPDeviceID -Match "PCI\\VEN*" | Select-Object -ExpandProperty PNPDeviceID | ForEach-Object { $allPnpDeviceIds += $_ }
Get-WmiObject Win32_NetworkAdapter | Where-Object PNPDeviceID -Match "PCI\\VEN*" | Select-Object -ExpandProperty PNPDeviceID | ForEach-Object { $allPnpDeviceIds += $_ }
Get-WmiObject Win32_IDEController | Where-Object PNPDeviceID -Match "PCI\\VEN*" | Select-Object -ExpandProperty PNPDeviceID | ForEach-Object { $allPnpDeviceIds += $_ }
Get-WmiObject Win32_SoundDevice | Where-Object PNPDeviceID -Match "PCI\\VEN*" | Select-Object -ExpandProperty PNPDeviceID | ForEach-Object { $allPnpDeviceIds += $_ }
foreach ($devicePath in $allPnpDeviceIds) {
	$affinityPath = "HKLM:\SYSTEM\CurrentControlSet\Enum\$devicePath\Device Parameters\Interrupt Management\Affinity Policy"
	$msiPath = "HKLM:\SYSTEM\CurrentControlSet\Enum\$devicePath\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties"
	Remove-ItemProperty -Path $affinityPath -Name "AssignmentSetOverride" -Force -ErrorAction Ignore
	Remove-ItemProperty -Path $affinityPath -Name "DevicePolicy" -Force -ErrorAction Ignore
	Remove-ItemProperty -Path $affinityPath -Name "DevicePriority" -Force -ErrorAction Ignore
	Set-ItemProperty -Path $msiPath -Name "MSISupported" -Value 1 -Force -Type Dword -ErrorAction Ignore
}

function Is-Empty-Str {
	param ([string] $value)
	[string]::IsNullOrWhiteSpace($value)
}

function Is-Even {
	param ([int] $value)
	$value % 2 -eq 0
}

function Apply-IRQ-Priotity-Optimization {
	param ([string] $IRQValue)
	$IRQSplit = $IRQValue.Trim().Split(" ")
	foreach ($IRQ in $IRQSplit) {
		Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "IRQ$($IRQ)Priority" -Value 1 -Force -Type Dword -ErrorAction Ignore
	}
}

# Priorities - Where lowest number is first.
$priorities = @(
	[PsObject]@{Class = 'Display'; Priority = 1; Enabled = $true; Description = 'GPU'; isUSB = $false},
	[PsObject]@{Class = 'Mouse'; Priority = 2; Enabled = $true; Description = 'Mouse'; isUSB = $true},
	[PsObject]@{Class = 'Net'; Priority = 3; Enabled = $true; Description = 'LAN / Ethernet'; isUSB = $false},
	[PsObject]@{Class = 'Media'; Priority = 4; Enabled = $false; Description = 'Audio'; isUSB = $true},
	[PsObject]@{Class = 'Keyboard'; Priority = 5; Enabled = $false; Description = 'Keyboard'; isUSB = $true}
)

$enabledClasses = $priorities | Where-Object { $_.Enabled -eq $true } | ForEach-Object { $_.Class }
$enabledUSBClasses = $priorities | Where-Object { $_.Enabled -eq $true -and $_.isUSB -eq $true } | ForEach-Object { $_.Class }

# Get all relevant child devices
$allDevices = Get-PnpDevice -PresentOnly -Class $enabledClasses -Status OK
$prioritizedDevices = $allDevices | ForEach-Object {
	$device = $_
	$priorityDevice = $priorities | Where-Object { $_.Class -eq $device.Class}
	return [PsObject]@{
		Class = $device.Class;
		FriendlyName = $device.FriendlyName;
		InstanceId = $device.InstanceId;
		Priority = $priorityDevice.Priority;
		Enabled = $priorityDevice.Enabled;
		isUSB = $priorityDevice.isUSB
	}
} | Sort-Object { $_.Priority }

[PsObject[]]$relevantData = @()

# Get all relevant devices data
for ($i=0; $i -lt $prioritizedDevices.Length; $i++) {
	$childDevice = $prioritizedDevices[$i]
	$childDeviceName = $childDevice.FriendlyName
	$childDeviceInstanceId = $childDevice.InstanceId
	$childPnpDevice = Get-PnpDeviceProperty -InstanceId $childDeviceInstanceId

	$childDeviceClass = $childDevice.Class
	$isUSB = $childDeviceClass -in $enabledUSBClasses

	$childPnpDeviceLocationInfo = $childPnpDevice | Where-Object KeyName -eq 'DEVPKEY_Device_LocationInfo' | Select-Object -ExpandProperty Data
	$childPnpDevicePDOName = $childPnpDevice | Where-Object KeyName -eq 'DEVPKEY_Device_PDOName' | Select-Object -ExpandProperty Data

	$parentDeviceInstanceId = $childPnpDevice | Where-Object KeyName -eq 'DEVPKEY_Device_Parent' | Select-Object -ExpandProperty Data

	$parentDevice = $null
	$parentDeviceName = ""
	$parentDeviceLocationInfo = ""
	$parentDevicePDOName = ""
	do {
		$parentDevice = Get-PnpDeviceProperty -InstanceId $parentDeviceInstanceId
		if (!$parentDevice) {
			continue
		}
		$parentDeviceName = $parentDevice | Where-Object KeyName -eq 'DEVPKEY_NAME' | Select-Object -ExpandProperty Data
		if ([string]::IsNullOrWhiteSpace($parentDeviceName)) {
			continue
		}
		$parentDeviceLocationInfo = $parentDevice | Where-Object KeyName -eq 'DEVPKEY_Device_LocationInfo' | Select-Object -ExpandProperty Data
		$parentDevicePDOName = $parentDevice | Where-Object KeyName -eq 'DEVPKEY_Device_PDOName' | Select-Object -ExpandProperty Data
		if ($isUSB -and !$parentDeviceName.Contains('Controller')) {
			$parentDeviceInstanceId = $parentDevice | Where-Object KeyName -eq 'DEVPKEY_Device_Parent' | Select-Object -ExpandProperty Data
		}
	} while (!$parentDeviceName.Contains('Controller') -and $isUSB)

	if ([string]::IsNullOrWhiteSpace($parentDeviceName)) {
		continue
	}

	$parentDeviceAllocatedResource = Get-CimInstance -ClassName Win32_PNPAllocatedResource | Where-Object { $_.Dependent.DeviceID -like "*$parentDeviceInstanceId*" } | Select-Object @{N="IRQ";E={$_.Antecedent.IRQNumber}}

	$relevantData += [PsObject]@{
		ChildDeviceName = $childDeviceName;
		ChildDeviceInstanceId = $childDeviceInstanceId;
		ChildDeviceLocationInfo = $childPnpDeviceLocationInfo;
		ChildDevicePDOName = $childPnpDevicePDOName;
		ParentDeviceName = $parentDeviceName;
		ParentDeviceInstanceId = $parentDeviceInstanceId;
		ParentDeviceLocationInfo = $parentDeviceLocationInfo;
		ParentDevicePDOName = $parentDevicePDOName;
		ClassType = $childDeviceClass;
		ParentDeviceIRQ = $parentDeviceAllocatedResource.IRQ
	}
}

$coresValues = if ($isHyperThreadingActive) { $threadsAmount } else { $coresAmount }

# Build masks per core
[System.Collections.ArrayList]$coresMask = @()
$tempDecimalValue = 1;
for ($i=0; $i -lt $coresValues; $i++) {
	# https://poweradm.com/set-cpu-affinity-powershell/
	[void]$coresMask.Add(@{ Core = $i; Decimal = $tempDecimalValue; })
	$tempDecimalValue = $tempDecimalValue * 2
}

# Build cores to be used
[System.Collections.ArrayList]$coresToBeUsed = @()
foreach ($item in $relevantData) {
	for ($i=1; $i -le $coresValues; $i++) {
		$core = if ($isHyperThreadingActive) { if (Is-Even -value $i) { $i } else { $i+1 } } else { $i }
		if (!($coresToBeUsed | Where-Object { $_.Core -eq $core })) {
			if (!($coresToBeUsed | Where-Object { $_.ClassType -eq $item.ClassType })) {
				$coreMask = $coresMask | Where-Object { $_.Core -in ($core) }
				[void]$coresToBeUsed.Add(@{Core = $core; Decimal = $coreMask.Decimal; ClassType = $item.ClassType })
			}
		}
	}
}

# Apply interrupt affinity tweaks
foreach ($item in $relevantData) {
	if ($item.ClassType -eq 'Mouse' -or $item.ClassType -eq 'Keyboard') {
		Apply-IRQ-Priotity-Optimization -IRQValue $item.ParentDeviceIRQ
	}

	$parentAffinityPath = "HKLM:\SYSTEM\CurrentControlSet\Enum\$($item.ParentDeviceInstanceId)\Device Parameters\Interrupt Management\Affinity Policy"
	$childAffinityPath = "HKLM:\SYSTEM\CurrentControlSet\Enum\$($item.ChildDeviceInstanceId)\Device Parameters\Interrupt Management\Affinity Policy"
	$parentMsiPath = "HKLM:\SYSTEM\CurrentControlSet\Enum\$($item.ParentDeviceInstanceId)\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties"
	$childMsiPath = "HKLM:\SYSTEM\CurrentControlSet\Enum\$($item.ChildDeviceInstanceId)\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties"

	if ($item.ClassType -eq 'Net') {
		Set-ItemProperty -Path $childAffinityPath -Name "DevicePriority" -Value 3 -Force -Type Dword -ErrorAction Ignore
		Set-ItemProperty -Path $childMsiPath -Name "MSISupported" -Value 0 -Force -Type Dword -ErrorAction Ignore
		Set-ItemProperty -Path $childMsiPath -Name "MessageNumberLimit" -Value 2 -Force -Type Dword -ErrorAction Ignore
	}
	if ($item.ClassType -eq 'Mouse') {
	 	Set-ItemProperty -Path $parentAffinityPath -Name "DevicePriority" -Value 3 -Force -Type Dword -ErrorAction Ignore
		Set-ItemProperty -Path $parentMsiPath -Name "MSISupported" -Value 0 -Force -Type Dword -ErrorAction Ignore
	}

	Set-ItemProperty -Path $parentAffinityPath -Name "DevicePolicy" -Value 4 -Force -Type Dword -ErrorAction Ignore
	Set-ItemProperty -Path $childAffinityPath -Name "DevicePolicy" -Value 4 -Force -Type Dword -ErrorAction Ignore

	$coreData = $coresToBeUsed | Where-Object { $item.ClassType -eq $_.ClassType }

	Set-ItemProperty -Path $parentAffinityPath -Name "AssignmentSetOverride" -Value $coreData.Decimal -Force -Type Qword -ErrorAction Ignore
	Set-ItemProperty -Path $childAffinityPath -Name "AssignmentSetOverride" -Value $coreData.Decimal -Force -Type Qword -ErrorAction Ignore

	$ChildDeviceLocationInfo = if (Is-Empty-Str -value $item.ChildDeviceLocationInfo) { "None" } else { $item.ChildDeviceLocationInfo }
	Write-Host "Assigned to Core $($coreData.Core)"
	Write-Host "Device: $($item.ChildDeviceName) - $($item.ChildDeviceInstanceId)"
	Write-Host "Location Info: $ChildDeviceLocationInfo"
	Write-Host "PDO Name: $($item.ChildDevicePDOName)"
	Write-Host "Parent Device: $($item.ParentDeviceName) - $($item.ParentDeviceInstanceId)"
	Write-Host "Location Info: $($item.ParentDeviceLocationInfo)"
	Write-Host "PDO Name: $($item.ParentDevicePDOName)"
	[Environment]::NewLine
}