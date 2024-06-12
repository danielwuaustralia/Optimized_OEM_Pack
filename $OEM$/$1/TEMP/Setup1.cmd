@echo on
setlocal enabledelayedexpansion
color 0a

netsh wlan add profile filename="C:\TEMP\WiFi.xml" user=all
netsh wlan set profileparameter name="LV426" connectionmode=auto
netsh wlan connect name=LV426
start /b /w C:\TEMP\UpdateTime.exe /U /M
net stop ClipSVC /y
net start ClipSVC
cscript C:\Windows\System32\slmgr.vbs /ato
schtasks /run /tn "Microsoft\Windows\CertificateServicesClient\SystemTask"
schtasks /run /tn "Microsoft\Windows\CertificateServicesClient\UserTask"

:: install
start /b /w C:\TEMP\AMD_Chipset_Software.exe /S
powershell -noprofile -executionpolicy bypass -command "curl.exe -LSs 'https://dl.google.com/dl/chrome/install/googlechromestandaloneenterprise64.msi' -o 'C:\TEMP\googlechromestandaloneenterprise64.msi'"
powershell -noprofile -executionpolicy bypass -command "curl.exe -LSs 'https://aka.ms/vs/17/release/vc_redist.x64.exe' -o 'C:\TEMP\vc_redist.x64.exe'"
powershell -noprofile -executionpolicy bypass -command "curl.exe -LSs 'https://aka.ms/vs/17/release/vc_redist.x86.exe' -o 'C:\TEMP\vc_redist.x86.exe'"
msiexec /i C:\TEMP\googlechromestandaloneenterprise64.msi /quiet /norestart
start /b /w C:\TEMP\VC_redist.x86.exe /install /quiet /norestart
start /b /w C:\TEMP\VC_redist.x64.exe /install /quiet /norestart
start /b /w C:\TEMP\NVidiaProfileInspector\nvidiaProfileInspector.exe
start /b /w C:\TEMP\idman.exe

:: features
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

:: capabilities
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
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | ? {$_.Name -Match 'Wmic|VBSCRIPT' -And $_.State -eq 'NotPresent'} | Add-WindowsCapability -online"

:: finish
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "1" /t REG_SZ /d "C:\TEMP\Setup2.cmd" /f
shutdown /r /t 5
