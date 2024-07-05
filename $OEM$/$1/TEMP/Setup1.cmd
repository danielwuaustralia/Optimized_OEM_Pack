@echo on
color 0a

:: initilize
netsh wlan add profile filename="C:\TEMP\WiFi.xml" user=all
netsh wlan set profileparameter name="LV426" connectionmode=auto
netsh wlan connect name=LV426
start /b /w C:\TEMP\UpdateTime.exe /U /M
start /b /w C:\TEMP\HEU.exe /dig /nologo

:: install
start /b /w C:\TEMP\AMD_Chipset_Software.exe /S
powershell -noprofile -executionpolicy bypass -command "curl.exe -LSs 'https://dl.google.com/dl/chrome/install/googlechromestandaloneenterprise64.msi' -o 'C:\TEMP\googlechromestandaloneenterprise64.msi'"
powershell -noprofile -executionpolicy bypass -command "curl.exe -LSs 'https://download.mozilla.org/?product=firefox-msi-latest-ssl&os=win64&lang=zh-CN' -o 'C:\TEMP\firefox.msi'"
powershell -noprofile -executionpolicy bypass -command "curl.exe -LSs 'https://aka.ms/vs/17/release/vc_redist.x64.exe' -o 'C:\TEMP\vc_redist.x64.exe'"
powershell -noprofile -executionpolicy bypass -command "curl.exe -LSs 'https://aka.ms/vs/17/release/vc_redist.x86.exe' -o 'C:\TEMP\vc_redist.x86.exe'"
msiexec /i C:\TEMP\googlechromestandaloneenterprise64.msi /quiet /norestart
msiexec /i C:\TEMP\firefox.msi INSTALL_DIRECTORY_PATH="C:\Program Files\Firefox\" TASKBAR_SHORTCUT=false DESKTOP_SHORTCUT=true INSTALL_MAINTENANCE_SERVICE=false /quiet
start /b /w C:\TEMP\VC_redist.x86.exe /install /quiet /norestart
start /b /w C:\TEMP\VC_redist.x64.exe /install /quiet /norestart
certutil -verifyCTL AuthRoot
certutil -verifyCTL Disallowed

:: features
dism /english /Online /Enable-Feature /FeatureName:LegacyComponents /All /NoRestart
dism /english /Online /Enable-Feature /FeatureName:DirectPlay /All /NoRestart
dism /english /Online /Disable-Feature /featurename:SmbDirect /NoRestart
dism /english /Online /Disable-Feature /featurename:Printing-PrintToPDFServices-Features /NoRestart
dism /english /Online /Disable-Feature /featurename:MicrosoftWindowsPowerShellV2Root /NoRestart
dism /english /Online /Disable-Feature /featurename:MicrosoftWindowsPowerShellV2 /NoRestart
dism /english /Online /Disable-Feature /featurename:Printing-Foundation-Features /NoRestart
dism /english /Online /Disable-Feature /featurename:Printing-Foundation-InternetPrinting-Client /NoRestart
dism /english /Online /Disable-Feature /featurename:Printing-Foundation-LPDPrintService /NoRestart
dism /english /Online /Disable-Feature /featurename:Printing-Foundation-LPRPortMonitor /NoRestart
dism /english /Online /Disable-Feature /featurename:WorkFolders-Client /NoRestart
dism /english /Online /Disable-Feature /featurename:SearchEngine-Client-Package /NoRestart
dism /english /Online /Disable-Feature /featurename:Windows-Defender-ApplicationGuard /NoRestart
dism /english /Online /Disable-Feature /featurename:Windows-Defender-Default-Definitions /NoRestart
dism /english /Online /Disable-Feature /featurename:MSRDC-Infrastructure /NoRestart
dism /english /Online /Disable-Feature /featurename:Microsoft-RemoteDesktopConnection /NoRestart

:: capabilities
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *App.StepsRecorder* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *DirectX.Configuration.Database* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Hello.Face* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *MathRecognizer* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Microsoft.Windows.WordPad* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Microsoft.Windows.PowerShell.ISE* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *OpenSSH.Client* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Microsoft.Wallpapers.Extended* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Microsoft.Windows.Ethernet.Client* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Microsoft.Windows.Wifi.Client* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *OneCoreUAP.OneSync* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Print.Management.Console* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | Where-Object Name -like *Microsoft.Windows.Sense.Client* | Remove-WindowsCapability -ScratchDirectory 'C:\TEMP' -Online"
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | ? {$_.Name -Match 'Wmic|VBSCRIPT' -And $_.State -eq 'NotPresent'} | Add-WindowsCapability -online"

:: packages
for %%z in (
Windows-Defender
Microsoft-Windows-SenseClient
Microsoft-OneCore-ApplicationModel
Microsoft-OneCore-DirectX-Database
) do (
powershell.exe -command "Set-ItemProperty -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*%%z*' -Name Visibility -Value 1 -Force -Verbose"
powershell.exe -command "Remove-Item -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*%%z*' -Include *Owner* -Recurse -Force -Verbose"
powershell.exe -command "Get-WindowsPackage -Online | Where {$_.PackageName -match '%%z' } | Remove-WindowsPackage -Online -NoRestart -Verbose"
)

:: finish
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "1" /t REG_SZ /d "C:\TEMP\Setup2.cmd" /f
shutdown /r /t 5
