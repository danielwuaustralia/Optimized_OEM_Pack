@echo off
title Ultra Tweaks Pack for Homogeneous Performance by Melody V14 release 30
echo Ultra Tweaks Pack for Homogeneous Performance by Melody V14 release 30
echo.
echo. > me_log.txt
cd /D "%~dp0"
setlocal enabledelayedexpansion

IF EXIST "C:\Windows\system32\adminrightstest" (
	rmdir C:\Windows\system32\adminrightstest > nul
)
mkdir C:\Windows\system32\adminrightstest > nul
if %errorlevel% neq 0 (
	powershell "Start-Process \"%~nx0\" -Verb RunAs"
	if !errorlevel! neq 0 (
		powershell "Start-Process '%~nx0' -Verb RunAs"
		if !errorlevel! neq 0 (
			echo You should run this script as Admin in order to allow system changes
			echo The tweaker will now exit
			pause
			exit
		)
	)
	exit
)
rmdir C:\Windows\system32\adminrightstest > nul

start "" /wait "%~dp0\AddWDExceptionAndExtract.bat"
cd /D %~dp0

echo Checking running processes...
echo Be patient...
call :recheckall
:scriptcontinue

IF NOT EXIST "%windir%\system32\chkdsk.exe" (
	echo ERROR: Missing CHKDSK system component
	echo Your Windows installation is way too much stripped or corrupted
	echo The Tweaker will now exit
	pause
	exit
)
"%~dp0\data\showdialog" -testrun 888
"%~dp0\data\showdialog" -testrun 999
IF %errorlevel% neq 999 (
	echo ERROR: showdialog executable cannot run
	echo Make sure your Antivirus is not blocking this executable
	pause
	exit
)
IF NOT EXIST "%~dp0\data\showdialog.exe" (
	echo ERROR: Missing required executable for user dialogs
	echo Make sure you have extracted everything off the archive
	pause
	exit
)

"%~dp0\data\showdialog.exe" QUESTION "Skip Routine Disk Check?"
if %errorlevel% neq 0 (
	sc config vss start=demand >> me_log.txt
	net start VSS >> me_log.txt
	echo Performing a routine check on your disk...
	chkdsk /forceofflinefix /scan /perf >> me_log.txt
	if !errorlevel! neq 0 (
		echo Trying to fix disk issues...
		chkdsk /F
		echo Some errors were found during the routine check
		echo Reboot and then run this script again
		pause
		exit
	)
)


IF NOT EXIST "%windir%\system32\defrag.exe" (
	echo ERROR: Missing DEFRAG system component
	echo Your Windows installation is way too much stripped or corrupted
	echo The Tweaker will now exit
	pause
	exit
)
IF NOT EXIST "%windir%\system32\certutil.exe" (
	echo ERROR: Missing CERTUTIL system component
	echo Your Windows installation is way too much stripped or corrupted
	echo The Tweaker will now exit
	pause
	exit
)
IF NOT EXIST "%windir%\system32\reg.exe" (
	echo ERROR: Missing REG system component to import registry files
	echo Your Windows installation is way too much stripped or corrupted
	echo The Tweaker will now exit
	pause
	exit
)
IF NOT EXIST "%windir%\system32\dism.exe" (
	echo ERROR: Missing DISM system component to perform system maintenance
	echo Your Windows installation is way too much stripped or corrupted
	echo The Tweaker will now exit
	pause
	exit
)
IF NOT EXIST "%windir%\system32\windowspowershell\v1.0\powershell.exe" (
	echo ERROR: Missing required component Windows PowerShell
	echo Your Windows installation is way too much stripped or corrupted
	echo The Tweaker will now exit
	pause
	exit
)
IF NOT EXIST "%windir%\system32\bcdedit.exe" (
	echo ERROR: Missing required component BCDEDIT
	echo Your Windows installation is way too much stripped or corrupted
	echo The Tweaker will now exit
	pause
	exit
)
IF NOT EXIST "%windir%\system32\netsh.exe" (
	echo ERROR: Missing required component NETSH
	echo Your Windows installation is way too much stripped or corrupted
	echo The Tweaker will now exit
	pause
	exit
)
IF NOT EXIST "%windir%\system32\schtasks.exe" (
	echo ERROR: Missing required component SCHTASKS
	echo Your Windows installation is way too much stripped or corrupted
	echo The Tweaker will now exit
	pause
	exit
)

IF NOT EXIST "%windir%\system32\compact.exe" (
	echo WARNING: Missing COMPACT utility. Compact OS Mode can't be used.
	pause
)
IF NOT EXIST "%~dp0\data\nvprofile.nip" (
	echo WARNING: Missing NVIDIA Profile NIP file
	echo NVIDIA tweaks cannot be imported
	pause
)
IF NOT EXIST "%~dp0\data\nvidiaProfileInspector.exe" (
	echo WARNING: Missing NVIDIA Profile Inspector Executable
	echo NVIDIA tweaks cannot be imported
	pause
)
IF NOT EXIST "%~dp0\data\registry_merge.reg" (
	echo ERROR: Missing required file for registry changes
	echo Make sure you have extracted everything off the archive
	pause
	exit
)

IF NOT EXIST "%~dp0\data\hdd_batch.bat" (
	echo ERROR: Missing batch file for HDD patch
	echo Make sure you have extracted everything off the archive
	pause
	exit
)

IF NOT EXIST "%~dp0\data\ssd_batch.bat" (
	echo ERROR: Missing batch file for SSD patch
	echo Make sure you have extracted everything off the archive
	pause
	exit
)

IF NOT EXIST "%~dp0\Maintenance_After_Reboot.bat" (
	echo ERROR: Missing batch file for Maintenance After Reboot
	echo Make sure you have extracted everything off the archive
	pause
	exit 
)

IF NOT EXIST "%~dp0\data\machine_specific.exe" (
	echo ERROR: Missing machine_specific executable in data directory
	echo Make sure your Antivirus is not deleting stuff
	pause
	exit
)

IF NOT EXIST "%~dp0\data\ServicesStarter.exe" (
	echo ERROR: Missing ServicesStarter executable in data directory
	echo Make sure your Antivirus is not deleting stuff
	pause
	exit
)
IF NOT EXIST "%~dp0\data\ScheduledDefrag.xml" (
	echo ERROR: Missing ScheduledDefrag XML in data directory
	echo Make sure your Antivirus is not deleting stuff
	pause
	exit
)
IF NOT EXIST "%~dp0\data\ScheduledDefrag_Win7.xml" (
	echo ERROR: Missing Windows 7 ScheduledDefrag XML in data directory
	echo Make sure your Antivirus is not deleting stuff
	pause
	exit
)
IF NOT EXIST "%~dp0\data\ScheduledDefrag_Win81.xml" (
	echo ERROR: Missing Windows 8.1 ScheduledDefrag XML in data directory
	echo Make sure your Antivirus is not deleting stuff
	pause
	exit
)
IF NOT EXIST "%~dp0\data\QueuedItems.bat" (
	echo ERROR: Missing Queued Items Batch File in data directory
	echo Make sure your Antivirus is not deleting stuff
	pause
	exit
)
IF NOT EXIST "%~dp0\data\DefragSearchIndex.bat" (
	echo ERROR: Missing Defrag Search Index File in data directory
	echo Make sure your Antivirus is not deleting stuff
	pause
	exit
)
echo Now installing Root certs
for /f "delims=" %%f in ('dir /b "%~dp0\certificates\*"') do (
	echo Installing %%f...
	certutil -f -addstore Root "%~dp0\certificates\%%f" >> me_log.txt
)

IF NOT EXIST "%windir%\system32\cleanmgr.exe" (
	echo Enabling Desktop Experience...
	dism /online /enable-feature /featurename:DesktopExperience /all /norestart >> me_log.txt
	if !errorlevel! neq 0 (
		if !errorlevel! neq 3010 (
			dism /online /enable-feature /featurename:DesktopExperience /norestart >> me_log.txt
			if !errorlevel! neq 0 (
				if !errorlevel! neq 3010 (
					echo ERROR: Missing required component CLEANMGR
					echo Your Windows installation is way too much stripped or corrupted
					echo The Tweaker will now exit
					pause
					exit
				)
			)
		)
	)
	echo Desktop Experience has been enabled which is required for the tweaking to be performed.
	echo Please now reboot your PC and then run the AutoTweaker again.
	pause
	exit
)

IF EXIST "%~dp0\data\ndp48-web.exe" (
	echo Checking / Installing .NET 4.8...
	"%~dp0\data\ndp48-web.exe" /q /norestart >> me_log.txt
	cd /D "%~dp0"
)

IF NOT EXIST "%windir%\Microsoft.NET\Framework" (
	echo ERROR: Missing x86 Framework installation
	echo Your Windows installation is way too much stripped or corrupted
	echo The Tweaker will now exit
	pause
	exit
)
IF NOT EXIST "%windir%\Microsoft.NET\Framework64" (
	echo ERROR: Missing x64 Framework installation
	echo Your Windows installation is way too much stripped or corrupted
	echo The Tweaker will now exit
	pause
	exit
)
dir "%windir%\Microsoft.NET\Framework64" | findstr "v4" >> me_log.txt
if %errorlevel% neq 0 (
	echo ERROR: You need to install the latest .NET Framework before proceeding
	echo The Tweaker will now exit
	pause
	exit
)
dir "%windir%\Microsoft.NET\Framework" | findstr "v4" >> me_log.txt
if %errorlevel% neq 0 (
	echo ERROR: You need to install the latest .NET Framework before proceeding
	echo The Tweaker will now exit
	pause
	exit
)

start /wait "" "%~dp0\data\ServicesStarter.exe" -testrun 444 >> me_log.txt
start /wait "" "%~dp0\data\ServicesStarter.exe" -testrun 555 >> me_log.txt
IF %errorlevel% neq 555 (
	echo ERROR: ServicesStarter executable cannot run
	echo Make sure your Antivirus is not blocking this executable
	pause
	exit
)

"%~dp0\data\machine_specific" -testrun 666
"%~dp0\data\machine_specific" -testrun 777
IF %errorlevel% neq 777 (
	echo ERROR: machine_specific executable cannot run
	echo Make sure your Antivirus is not blocking this executable
	pause
	exit
)

echo Files check completed
pause

echo Importing Registry File...
reg import "%~dp0\data\registry_merge.reg" /reg:64 >> me_log.txt
echo Importing WinDefend Reg ^(might show errors^)...
reg import "%~dp0\data\windefend.reg" /reg:64 >> me_log.txt

echo Checking System Services...
start /wait "" "%~dp0\data\ServicesStarter.exe" -return 444 >> me_log.txt
if %errorlevel% neq 444 (
	"%~dp0\data\showdialog.exe" ERROR "Failed to run check system services. Your antivirus might be interfering. Please turn off your Antivirus and then run the file again."
	echo FATAL: Failed to check system services.
	echo Your antivirus might be interfering.
	echo Please turn off your Antivirus and then run the file again.
	echo The tweaker will now exit.
	pause
	exit
)

echo Checking Time...
sc config w32time start=demand >> me_log.txt
net start w32time >> me_log.txt
w32tm /config /manualpeerlist:time.windows.com >> me_log.txt
w32tm /resync /rediscover >> me_log.txt

IF EXIST "%~dp0\data\install_all.bat" (
	start "" /wait "%~dp0\data\install_all.bat"
	cd /D "%~dp0"
)

echo Updating Vulkan Runtime...
IF EXIST "%~dp0\data\vulkan-runtime.exe" (
	start /wait "" "%~dp0\data\vulkan-runtime.exe" /S
	cd /D "%~dp0"
)

echo Disabling hibernation / fast start...
powercfg -h off >> me_log.txt

echo Enabling Legacy Components...
dism /online /enable-feature /featurename:LegacyComponents /all /norestart >> me_log.txt
if %errorlevel% neq 0 (
	if !errorlevel! neq 3010 (
		dism /online /enable-feature /featurename:LegacyComponents /norestart >> me_log.txt
		if !errorlevel! neq 0 (
			if !errorlevel! neq 3010 (
				echo WARNING: Failed to enable Legacy Components. Check me_log.txt for details.
				pause
			)
		)
	)
)
echo Enabling DirectPlay...
dism /online /enable-feature /featurename:DirectPlay /all /norestart >> me_log.txt
if %errorlevel% neq 0 (
	if !errorlevel! neq 3010 (
		dism /online /enable-feature /featurename:DirectPlay /norestart >> me_log.txt
		if !errorlevel! neq 0 (
			if !errorlevel! neq 3010 (
				echo WARNING: Failed to enable DirectPlay. Check me_log.txt for details.
				pause
			)
		)
	)
)
echo Enabling .NET 4.x Features...
dism /online /enable-feature /featurename:NetFx4-AdvSrvs /all /norestart >> me_log.txt
if %errorlevel% neq 0 (
	if !errorlevel! neq 3010 (
		dism /online /enable-feature /featurename:NetFx4-AdvSrvs /norestart >> me_log.txt
		if !errorlevel! neq 0 (
			if !errorlevel! neq 3010 (
				echo WARNING: Failed to enable .NET 4.x Features. Check me_log.txt for details.
				pause
			)
		)
	)
)
echo Enabling .NET 3.x Features...
dism /online /enable-feature /featurename:NetFx3 /all /norestart >> me_log.txt
if %errorlevel% neq 0 (
	if !errorlevel! neq 3010 (
		dism /online /enable-feature /featurename:NetFx3 /norestart >> me_log.txt
		if !errorlevel! neq 0 (
			if !errorlevel! neq 3010 (
				echo WARNING: Failed to enable .NET 3.x Features. Check me_log.txt for details.
				pause
			)
		)
	)
)

IF EXIST "%~dp0\data\dxwebsetup.exe" (
	echo Checking DirectX...
	start "" /wait "%~dp0\data\dxwebsetup.exe" /Q >> me_log.txt
)

echo Switching to Internet Template...
netsh int tcp set supplemental template=internet >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to switch to Internet template. Please check me_log.txt for details.
	pause
)

echo Setting Execution Policy...
powershell "Set-ExecutionPolicy -ExecutionPolicy Unrestricted" >> me_log.txt

echo Changing IP policies for your NICs...
powershell "Get-NetAdapter -IncludeHidden | Set-NetIPInterface -WeakHostSend Enabled -WeakHostReceive Enabled -RetransmitTimeMs 0 -Forwarding Disabled -EcnMarking Disabled -AdvertiseDefaultRoute Disabled -ErrorAction SilentlyContinue" >> me_log.txt

echo Enabling RSS...
netsh int tcp set global rss=enable >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to enable RSS. Please check me_log.txt for details.
	pause
)
echo Setting experimental autotuning...
netsh int tcp set global autotuninglevel=experimental >> me_log.txt
if %errorlevel% neq 0 (
	echo Falling back to normal autotuning
	netsh int tcp set global autotuninglevel=normal >> me_log.txt
	if !errorlevel! neq 0 (
		echo WARNING: Failed to set autotuning. Please check me_log.txt for details.
		pause
	) else (
		reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\QoS" /v "Tcp Autotuning Level" /t REG_SZ /d "Normal" /f >> me_log.txt
	)
)
echo Disabling ECN...
netsh int tcp set global ecncapability=disable >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable ECN. Please check me_log.txt for details.
	pause
)
echo Enabling RFC timestamps...
netsh int tcp set global timestamps=enable >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to enable RFC timestamps. Please check me_log.txt for details.
	pause
)
echo Changing RTO...
netsh int tcp set global initialrto=300 >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to change RTO. Please check me_log.txt for details.
	pause
)
echo Disabling TCP RSC...
netsh int tcp set global rsc=disable >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable TCP RSC. Please check me_log.txt for details.
	pause
)
echo Enabling Fastopen...
netsh int tcp set global fastopen=enable >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to enable Fastopen. Please check me_log.txt for details.
	pause
)
echo Disabling HyStart...
netsh int tcp set global hystart=disable >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable HyStart. Please check me_log.txt for details.
	pause
)
echo Disabling TCP Pacing...
netsh int tcp set global pacingprofile=off >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable TCP Pacing. Please check me_log.txt for details.
	pause
)
echo Setting Minimum MTU to 576...
netsh int ip set global minmtu=576 >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to set Min MTU. Please check me_log.txt for details.
	pause
)
echo Disabling IP Flow Label...
netsh int ip set global flowlabel=disable >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable TCP Flow Label. Please check me_log.txt for details.
	pause
)


echo Setting Congestion Provider to DCTCP...
netsh int tcp set supplemental internet congestionprovider=dctcp >> me_log.txt
if %errorlevel% neq 0 (
	echo Failed to use DCTCP, falling back to None...
	netsh int tcp set supplemental internet congestionprovider=none >> me_log.txt
	if !errorlevel! neq 0 (
		echo Failed to fallback to None, trying with global params...
		netsh int tcp set global congestionprovider=none >> me_log.txt
	)
)
echo Disabling TCP Window Restart...
netsh int tcp set supplemental internet enablecwndrestart=disable >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable TCP Window Restart. Please check me_log.txt for details.
	pause
)

echo Disabling ICMP Redirects...
netsh int ip set global icmpredirects=disabled >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable ICMP redirects. Please check me_log.txt for details.
	pause
)
echo Disabling Multicast Forwarding...
netsh int ip set global multicastforwarding=disabled >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable Multicast Forwarding. Please check me_log.txt for details.
	pause
)
echo Disabling Group-Forwarded Fragments...
netsh int ip set global groupforwardedfragments=disable >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable Group-Forwarded Fragments. Please check me_log.txt for details.
	pause
)

echo Disabling TCP bloat...
netsh int tcp set security mpp=disabled profiles=disabled >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable TCP bloat. Please check me_log.txt for details.
	pause
)
echo Setting Heuristics TCP parameters...
netsh int tcp set heur forcews=disable >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to set Heuristics TCP parameters. Please check me_log.txt for details.
	pause
)
echo Disabling Advanced Firewall...
netsh advfirewall set allprofiles state off >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable Advanced Firewall. Please check me_log.txt for details.
	pause
)

echo Disabling Net Adapter QoS...
powershell "Disable-NetAdapterQos -Name \"*\"" -ErrorAction SilentlyContinue >> me_log.txt
echo Disabling Net Adapter Power Management...
powershell "Disable-NetAdapterPowerManagement -Name \"*\"" -ErrorAction SilentlyContinue >> me_log.txt
echo Enabling Net Adapter Checksum Offload...
powershell "Enable-NetAdapterChecksumOffload -Name \"*\"" -ErrorAction SilentlyContinue >> me_log.txt
echo Disabling Net Adapter Encapsulated Packet Task Offload...
powershell "Disable-NetAdapterEncapsulatedPacketTaskOffload -Name \"*\"" -ErrorAction SilentlyContinue >> me_log.txt
echo Enabling Net Adapter IPsec Offload...
powershell "Enable-NetAdapterIPsecOffload -Name \"*\"" -ErrorAction SilentlyContinue >> me_log.txt
echo Disabling Net Adapter Large Send Offload...
powershell "Disable-NetAdapterLso -Name \"*\"" -ErrorAction SilentlyContinue >> me_log.txt
echo Enabling Net Adapter Packet Direct...
powershell "Enable-NetAdapterPacketDirect -Name \"*\"" -ErrorAction SilentlyContinue >> me_log.txt
echo Disabling Net Adapter Receive Side Coalescing...
powershell "Disable-NetAdapterRsc -Name \"*\"" -ErrorAction SilentlyContinue >> me_log.txt
echo Enabling Net Adapter Receive Side Scaling...
powershell "Enable-NetAdapterRss -Name \"*\"" -ErrorAction SilentlyContinue >> me_log.txt

echo Checking IP Helper...
net start iphlpsvc >> me_log.txt
echo Checking Teredo...
powershell "Set-NetTeredoConfiguration -Type natawareclient -ErrorAction SilentlyContinue" >> me_log.txt
netsh int teredo set state natawareclient >> me_log.txt
if %errorlevel% neq 0 (
	powershell "Set-NetTeredoConfiguration -Type client -ErrorAction SilentlyContinue" >> me_log.txt
	netsh int teredo set state client >> me_log.txt
)
echo Setting Teredo Server...
powershell "Set-NetTeredoConfiguration -ServerName \"win1910.ipv6.microsoft.com\" -ErrorAction SilentlyContinue" >> me_log.txt
netsh int teredo set state servername="win1910.ipv6.microsoft.com" >> me_log.txt
echo Enabling URO ^(might fail cause not supported in all systems^)...
netsh int udp set global uro=enabled >> me_log.txt

echo Removing Security Health Startup Item...
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f >> me_log.txt

echo Setting BCD params...
bcdedit /set allowedinmemorysettings 0 >> me_log.txt
bcdedit /set useplatformclock No >> me_log.txt
bcdedit /set useplatformtick No >> me_log.txt
bcdedit /set tscsyncpolicy Enhanced >> me_log.txt
bcdedit /set debug No >> me_log.txt
bcdedit /set isolatedcontext No >> me_log.txt
bcdedit /set pae ForceEnable >> me_log.txt
bcdedit /set bootmenupolicy Legacy >> me_log.txt
bcdedit /set usefirmwarepcisettings No >> me_log.txt
bcdedit /set sos Yes >> me_log.txt
bcdedit /set disabledynamictick Yes >> me_log.txt
bcdedit /set disableelamdrivers Yes >> me_log.txt
bcdedit /set quietboot Yes >> me_log.txt
bcdedit /set x2apicpolicy Enable >> me_log.txt
bcdedit /set vsmlaunchtype Off >> me_log.txt
bcdedit /set usephysicaldestination No >> me_log.txt
bcdedit /set ems No >> me_log.txt
bcdedit /set firstmegabytepolicy UseAll >> me_log.txt
bcdedit /set configaccesspolicy Default >> me_log.txt
bcdedit /set linearaddress57 optin >> me_log.txt
bcdedit /set noumex Yes >> me_log.txt
bcdedit /set bootems No >> me_log.txt
bcdedit /set graphicsmodedisabled No >> me_log.txt
bcdedit /set extendedinput Yes >> me_log.txt
bcdedit /set highestmode Yes >> me_log.txt
bcdedit /set forcefipscrypto No >> me_log.txt
bcdedit /set perfmem 0 >> me_log.txt
bcdedit /set clustermodeaddressing 1 >> me_log.txt
bcdedit /set configflags 0 >> me_log.txt
bcdedit /set uselegacyapicmode No >> me_log.txt
bcdedit /set onecpu No >> me_log.txt
bcdedit /set halbreakpoint No >> me_log.txt
bcdedit /set forcelegacyplatform No >> me_log.txt

"%~dp0\data\showdialog.exe" QUESTION "Is this a virtual machine?"
if %errorlevel% equ 0 (
	echo Setting VM parameters...
	bcdedit /set hypervisorlaunchtype Auto >> me_log.txt
	bcdedit /set vm Yes >> me_log.txt
	bcdedit /deletevalue clustermodeaddressing >> me_log.txt
) else (
	echo Setting physical machine parameters...
	bcdedit /set hypervisorlaunchtype Off >> me_log.txt
	bcdedit /set vm No >> me_log.txt
	"%~dp0\data\showdialog.exe" QUESTION "Do you have any PS^/2 device OR are you using a laptop?"
	if !errorlevel! equ 0 (
		echo Applying PS^/2 devices and laptop fix...
		bcdedit /deletevalue clustermodeaddressing >> me_log.txt
	)
)

"%~dp0\data\showdialog.exe" QUESTION "Are you using Windows 7 or Server 2008 R2?"
if %errorlevel% equ 0 (
	echo Enabling Power Service...
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Power" /v "Start" /t REG_DWORD /d 2 /f >> me_log.txt
	echo WARNING: MSI Enabled for SATA Controllers in Windows 7 and Server 2008 R2 might cause impossibility to boot. To be safe, after THIS script has finished, please run the MSI Switcher in Optional and disable MSI Mode for all SATA Controllers.
	pause
)

"%~dp0\data\showdialog.exe" QUESTION "Is this supposed to be a server machine?"
if %errorlevel% equ 0 (
	echo Disabling Data Execution Prevention...
	bcdedit /set nx AlwaysOff >> me_log.txt
	echo Disabling Error User Interface...
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontShowUI" /t REG_DWORD /d 1 /f >> me_log.txt
) else (
	echo Enabling Error User Interface...
	reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontShowUI" /f >> me_log.txt
	echo Enabling DEP...
	bcdedit /set nx OptIn >> me_log.txt
)

echo Disabling process mitigations...
powershell "ForEach($v in (Get-Command -Name \"Set-ProcessMitigation\").Parameters[\"Disable\"].Attributes.ValidValues){Set-ProcessMitigation -System -Disable $v.ToString().Replace(\" \", \"\").Replace(\"`n\", \"\") -ErrorAction SilentlyContinue}" >> me_log.txt

if %errorlevel% neq 0 (
	echo WARNING: Failed to set Process Mitigations.
	echo Please NOW open Windows Defender and disable all process mitigations in Exploit Protection
	echo or you won't be able to use Windows on reboot.
	echo We will continue when you're done.
	echo If you're using Windows 7, Windows 8, Windows 8.1 or respective versions of Windows Server ^(2008 R2, 2012, 2012 R2^) then you can safely ignore this error and continue.
	"%~dp0\data\showdialog.exe" ERROR "Failed to set Process Mitigations. Please NOW open Windows Defender and disable all process mitigations in Exploit Protection or you won't be able to use Windows on reboot. We will continue when you're done. If you're using Windows 7, Windows 8, Windows 8.1 or respective versions of Windows Server (2008 R2, 2012, 2012 R2) then you can safely ignore this error and continue."
	pause
)

echo Removing Image File Execution Options...
powershell "Remove-Item -Path \"HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\*\" -Recurse -ErrorAction SilentlyContinue" >> me_log.txt

echo Removing Kernel Blacklist...
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\BlockList\Kernel" /va /reg:64 /f >> me_log.txt

echo Disabling Memory Compression and App PreLaunch...
powershell Disable-MMAgent -MemoryCompression -ApplicationPreLaunch -ErrorAction SilentlyContinue >> me_log.txt
if %errorlevel% neq 0 (
	powershell Disable-MMAgent -ApplicationPreLaunch >> me_log.txt
	if !errorlevel! neq 0 (
		echo WARNING: Failed to disable Memory Compression and App PreLaunch. Please check me_log.txt for details.
		pause
	)
)

echo Disabling Compat Appraiser...
schtasks /change /disable /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable Compat Appraiser. Please check me_log.txt for details.
	pause
)
echo Disabling Customer Experience Program Consolidator...
schtasks /change /disable /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable Customer Experience Program Consolidator. Please check me_log.txt for details.
	pause
)
echo Disabling Customer Experience Program USB CEIP...
schtasks /change /disable /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable Customer Experience Program USB CEIP. Please check me_log.txt for details.
	pause
)
echo Disabling Disk Data Collector...
schtasks /change /disable /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable Disk Data Collector. Please check me_log.txt for details.
	pause
)
echo Disabling Memory Diagnostics Events...
schtasks /change /disable /tn "\Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents" >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable Memory Diagnostics Events. Please check me_log.txt for details.
	pause
)
echo Disabling Power Efficiency Diagnostics Analysis...
schtasks /change /disable /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable Power Efficiency Diagnostics Analysis. Please check me_log.txt for details.
	pause
)
echo Disabling Error Reporting Queue...
schtasks /change /disable /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to disable Error Reporting Queue. Please check me_log.txt for details.
	pause
)
echo Disabling NVIDIA Telemetry Tasks...
schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> me_log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> me_log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> me_log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> me_log.txt

echo Disabling Intel Telemetry Tasks...
schtasks /change /disable /tn "IntelSURQC-Upgrade-86621605-2a0b-4128-8ffc-15514c247132" >> me_log.txt
schtasks /change /disable /tn "IntelSURQC-Upgrade-86621605-2a0b-4128-8ffc-15514c247132-Logon" >> me_log.txt
schtasks /change /disable /tn "Intel PTT EK Recertification" >> me_log.txt
schtasks /change /disable /tn "USER_ESRV_SVC_QUEENCREEK" >> me_log.txt

echo Fixing pagefile...
wmic pagefileset where name="D:\\pagefile.sys" delete >> me_log.txt
wmic pagefileset create name="C:\pagefile.sys" >> me_log.txt
wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False >> me_log.txt
wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=32768,MaximumSize=32768 >> me_log.txt
if %errorlevel% neq 0 (
	wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=16384,MaximumSize=16384 >> me_log.txt
)
if %errorlevel% neq 0 (
	wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=8192,MaximumSize=8192 >> me_log.txt
)
if %errorlevel% neq 0 (
	wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=4096,MaximumSize=4096 >> me_log.txt
)
if %errorlevel% neq 0 (
	wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=2048,MaximumSize=2048 >> me_log.txt
)
if %errorlevel% neq 0 (
	wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=1024,MaximumSize=1024 >> me_log.txt
)
if %errorlevel% neq 0 (
	echo WARNING: Failed to fix pagefile. Please check me_log.txt for details.
	pause
)

"%~dp0\data\machine_specific.exe" -return 500
IF %errorlevel% neq 500 (
	"%~dp0\data\showdialog.exe" ERROR "Failed to run machine-specific tweaks. Your antivirus might be interfering. Please turn off your Antivirus and then run the file again."
	echo FATAL: Failed to run machine-specific tweaks.
	echo Your antivirus might be interfering.
	echo Please turn off your Antivirus and then run the file again.
	echo The tweaker will now exit.
	pause
	exit
)
echo Disabling QoS Binding...
powershell "Disable-NetAdapterBinding -Name \"*\" -ComponentID ms_pacer -ErrorAction SilentlyContinue" >> me_log.txt
echo Enabling Binding Requirements for Teredo...
powershell "Enable-NetAdapterBinding -Name \"*\" -ComponentID ms_tcpip6 -ErrorAction SilentlyContinue" >> me_log.txt
echo Disabling NDIS Capture...
powershell "Disable-NetAdapterBinding -Name \"*\" -ComponentID ms_ndiscap -ErrorAction SilentlyContinue" >> me_log.txt
echo Setting up 6to4 tunneling...
powershell "Set-Net6to4Configuration -State Enabled -AutoSharing Enabled -RelayState Enabled -RelayName \"6to4.ipv6.microsoft.com\" -ErrorAction SilentlyContinue" >> me_log.txt
netsh int 6to4 set state state=enabled undoonstop=disabled >> me_log.txt
netsh int 6to4 set routing routing=enabled sitelocals=enabled >> me_log.txt
"%~dp0\data\showdialog.exe" QUESTION "Is your system drive a SSD?"

if %errorlevel% equ 0 (
	call "%~dp0\data\ssd_batch.bat"
) else (
	call "%~dp0\data\hdd_batch.bat"
)

"%~dp0\data\showdialog.exe" QUESTION "Do you mount VHDs with diskpart, ISOs with Explorer or does your BCD boot point to a VHD? (if you don't know what I'm talking about, click No)"
if %errorlevel% equ 0 (
	echo Enabling Virtual Drives Enumerator...
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vdrvroot" /v "Start" /t REG_DWORD /d 0 /f >> me_log.txt
)

"%~dp0\data\showdialog.exe" QUESTION "Do you use Hyper-V? (if you don't know what I'm talking about, click No)"
if %errorlevel% equ 0 (
	echo Enabling Hyper-V infrastructure...
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Vid" /v "Start" /t REG_DWORD /d 3 /f >> me_log.txt
	echo Enabling Virtual Drives Enumerator...
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vdrvroot" /v "Start" /t REG_DWORD /d 0 /f >> me_log.txt
	echo Enabling Virtual NIC Enumerator...
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NdisVirtualBus" /v "Start" /t REG_DWORD /d 3 /f >> me_log.txt
)

"%~dp0\data\showdialog.exe" QUESTION "Do you use Remote Desktop (RDP) with device sharing? (if you don't know what I'm talking about, click No)"
if %errorlevel% equ 0 (
	echo Enabling Composite Bus...
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CompositeBus" /v "Start" /t REG_DWORD /d 3 /f >> me_log.txt
	echo Enabling UMBus...
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\umbus" /v "Start" /t REG_DWORD /d 3 /f >> me_log.txt
	echo Enabling RDP Bus...
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rdpbus" /v "Start" /t REG_DWORD /d 3 /f >> me_log.txt
)

IF EXIST "C:\Windows\Resources\Themes\aerolite.theme" (
	"%~dp0\data\showdialog.exe" QUESTION "Would you like to run the Aero Lite theme?"
	if !errorlevel! equ 0 (
		"C:\Windows\Resources\Themes\aerolite.theme"
	) else (
		"C:\Windows\Resources\Themes\aero.theme"
	)
)

echo Enabling AL HRTF for current user...
echo hrtf ^= true > "%appdata%\alsoft.ini"
echo Enabling AL HRTF system-wide...
echo hrtf ^= true > "C:\ProgramData\alsoft.ini"

reg delete "HKEY_CURRENT_USER\Control Panel\Accessibility\MouseKeys" /v "MaximumSpeed" /f >> me_log.txt
reg delete "HKEY_CURRENT_USER\Control Panel\Accessibility\MouseKeys" /v "TimeToMaximumSpeed" /f >> me_log.txt

"%~dp0\data\showdialog.exe" QUESTION "Use 1-to-1 per-pixel Mouse Movements?"
if %errorlevel% equ 0 (
	echo Enabling 1-to-1 Mouse Movements...
	reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f >> me_log.txt
)

IF EXIST "%~dp0\compact_mode_placeholder" (
	del "%~dp0\compact_mode_placeholder" /f >> me_log.txt
)
IF EXIST "%~dp0\compress_files_placeholder" (
	del "%~dp0\compress_files_placeholder" /f >> me_log.txt
)
IF EXIST "%~dp0\no_boot_maintenance" (
	del "%~dp0\no_boot_maintenance" /f >> me_log.txt
)
compact /compactos:query >> me_log.txt
if %errorlevel% gtr 100 (
	"%~dp0\data\showdialog.exe" QUESTION "Compact Mode compresses your Operating System and binaries without causing trouble. It can take a while to enable and it will be enabled during the reboot maintenance. Would you like to?"
	if !errorlevel! equ 0 (
		echo. > "%~dp0\compact_mode_placeholder"
	)
)
if %errorlevel% equ 100 (
	echo Compact Mode seems to be already in use. Nothing to do.
)

"%~dp0\data\showdialog.exe" QUESTION "Would you like to compress software data and files? The Tweaker will compress only files that are safe to compress. It will be done during the reboot maintenance (WARNING: THIS TAKES A VERY LONG TIME SO THINK CAREFULLY)."
if %errorlevel% equ 0 (
	echo > "%~dp0\compress_files_placeholder"
)

"%~dp0\data\showdialog.exe" QUESTION "Disable all maintenance? (useful for Stripped OSes)"
if %errorlevel% equ 0 (
	echo. > "%~dp0\no_boot_maintenance"
)

IF EXIST "%~dp0\data\nvprofile.nip" (
	IF EXIST "%~dp0\data\nvidiaProfileInspector.exe" (
		"%~dp0\data\showdialog.exe" QUESTION "Would you like to import the NVIDIA profile (only for NVIDIA GPUs)?"
		if !errorlevel! equ 0 (
			start "" /wait "%~dp0\data\nvidiaProfileInspector.exe" "%~dp0\data\nvprofile.nip"
		)
	)
)

echo Copying SDL...
copy "%~dp0\data\SDL.dll" "C:\Windows\System32\SDL.dll" /Y >> me_log.txt
copy "%~dp0\data\SDL.dll" "C:\Windows\SysWOW64\SDL.dll" /Y >> me_log.txt

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "legalnoticecaption" /t REG_SZ /d "There you go" /f >> me_log.txt
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "legalnoticetext" /t REG_SZ /d "Please login to let the final Maintenance Script do its work." /f >> me_log.txt

schtasks /delete /tn "ServicesStarter" /F >> me_log.txt
schtasks /change /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /disable >> me_log.txt
schtasks /delete /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /f >> me_log.txt

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "MaintenanceAfterReboot" /t REG_SZ /d "%~dp0Maintenance_After_Reboot.bat" /f >> me_log.txt
if %errorlevel% neq 0 (
	reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "MaintenanceAfterReboot" /f >> me_log.txt
	echo WARNING: Failed to add the Maintenance Script to startup list.
	echo You will have to run it manually when rebooting your system.
	echo Run Maintenance_After_Reboot as Administrator once rebooting.
	pause
)

reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" | findstr /I "0x0" >> me_log.txt
if %errorlevel% equ 0 (
	echo Warning: LUA is already disabled
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "WasLUADisabled" /t REG_DWORD /d "1" /f >> me_log.txt
) else (
	echo Disabling LUA temporarily...
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f >> me_log.txt
)

echo Everything has been executed
echo Errors are explained in me_log.txt, send that to me if you can't interpret it
echo Run any optional tweak if you want and then reboot your system
echo If startup items are disabled you might have to run the Maintenance_After_Reboot file manually after rebooting.
echo You will have to re-run this tweaks pack when you enable/disable SMT/HyperThreading, or swap your CPU.
pause
if exist "%~dp0\Optional" (
	start "" explorer "%~dp0Optional"
)
if exist "%~dp0\Optional\NVIDIA_WARNING.txt" (
	start "" notepad "%~dp0\Optional\NVIDIA_WARNING.txt"
)
exit

:recheckall
call :waitprocess dism.exe
call :waitprocess dismhost.exe
call :waitprocess chkdsk.exe
call :waitprocess defrag.exe
call :waitprocess ServicesStarter.exe
call :waitprocess ngen.exe
call :waitprocess ngentask.exe
call :waitprocess w32tm.exe
call :waitprocess sc.exe
call :waitprocess net.exe
call :waitprocess wuauclt.exe
call :waitprocess uso.exe
call :waitprocess usoclient.exe
call :waitprocess cleanmgr.exe
call :waitprocess esentutl.exe
goto :scriptcontinue

:waitprocess
tasklist | findstr /B /I %1 > nul
if %errorlevel% neq 0 (
	timeout 1 /nobreak > nul
	tasklist | findstr /B /I %1 > nul
	if !errorlevel! neq 0 (
		timeout 1 /nobreak > nul
		tasklist | findstr /B /I %1 > nul
		if !errorlevel! neq 0 (
			goto :EOF
		)
	)
)
echo Waiting for %1 to exit...
timeout 10 /nobreak > nul
call :recheckall
goto :EOF
