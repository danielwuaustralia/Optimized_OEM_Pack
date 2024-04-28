@echo on
setlocal enabledelayedexpansion
color 0a

wmic cpu get name | findstr "AMD" > nul && (
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "c:\pagefile.sys 49152 49152" /f
	netsh wlan add profile filename="C:\TEMP\WiFi.xml" user=all
    netsh wlan set profileparameter name="LV426" connectionmode=auto
    netsh wlan connect name=LV426
)
dism /english /Online /Enable-Feature /FeatureName:LegacyComponents /All /NoRestart
dism /english /Online /Enable-Feature /FeatureName:DirectPlay /All /NoRestart
dism /english /Online /Disable-Feature /featurename:SmbDirect /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:Printing-PrintToPDFServices-Features /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:MicrosoftWindowsPowerShellV2Root /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:MicrosoftWindowsPowerShellV2 /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:Printing-Foundation-Features /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:Printing-Foundation-InternetPrinting-Client /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:Printing-Foundation-LPDPrintService /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:Printing-Foundation-LPRPortMonitor /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:WorkFolders-Client /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:SearchEngine-Client-Package /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:Windows-Defender-ApplicationGuard /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:Windows-Defender-Default-Definitions /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:MSRDC-Infrastructure /Remove /NoRestart
dism /english /Online /Disable-Feature /featurename:Microsoft-RemoteDesktopConnection /Remove /NoRestart
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *App.StepsRecorder* | Remove-WindowsCapability -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *DirectX.Configuration.Database* | Remove-WindowsCapability -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Hello.Face* | Remove-WindowsCapability -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *MathRecognizer* | Remove-WindowsCapability -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Microsoft.Windows.WordPad* | Remove-WindowsCapability -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Microsoft.Windows.PowerShell.ISE* | Remove-WindowsCapability -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *OpenSSH.Client* | Remove-WindowsCapability -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Microsoft.Wallpapers.Extended* | Remove-WindowsCapability -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Microsoft.Windows.Ethernet.Client* | Remove-WindowsCapability -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Microsoft.Windows.Wifi.Client* | Remove-WindowsCapability -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *OneCoreUAP.OneSync* | Remove-WindowsCapability -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Print.Management.Console* | Remove-WindowsCapability -Online"
powershell -noprofile -executionpolicy bypass -command "Get-ProvisionedAppxPackage -Online | Where-Object { $_.PackageName -match 'Microsoft.MicrosoftEdge' } | ForEach-Object { Remove-ProvisionedAppxPackage -Online -PackageName $_.PackageName }"
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "1" /t REG_SZ /d "C:\TEMP\Setup2.cmd" /f
shutdown /r /t 5
