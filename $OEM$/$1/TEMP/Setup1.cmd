@echo on
color 1f

rem for AMD only
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iagpio" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iai2c" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2_BXT_P" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2_CNL" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2_GLK" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C_BXT_P" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C_CNL" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C_GLK" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSSi_GPIO" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSSi_I2C" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelide" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelide" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelpmax" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelpep" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaStorAVC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaStorV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "c:\pagefile.sys 32768 32768" /f
start /b /w C:\TEMP\NVidiaProfileInspector\nvidiaProfileInspector.exe
start /b /w C:\TEMP\AMD_Chipset_Software.exe /S

rem initial
netsh wlan add profile filename="C:\TEMP\WiFi.xml" user=all
netsh wlan set profileparameter name="LV426" connectionmode=auto
netsh wlan connect name=LV426
start /b /w C:\TEMP\UpdateTime.exe /U /M
start /b /w C:\TEMP\HEU.exe /dig /nologo
C:\Tools\DeviceCleanupCmd.exe * -s -n
powershell -noprofile -executionpolicy bypass -command "$ProgressPreference = 'SilentlyContinue'"
powershell -noprofile -executionpolicy bypass -command "Invoke-WebRequest 'https://dl.google.com/dl/chrome/install/googlechromestandaloneenterprise64.msi' -OutFile 'C:\TEMP\googlechromestandaloneenterprise64.msi'"
powershell -noprofile -executionpolicy bypass -command "Invoke-WebRequest 'https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=zh-CN' -OutFile 'C:\TEMP\firefox.msi'"
powershell -noprofile -executionpolicy bypass -command "Invoke-WebRequest 'https://aka.ms/vs/17/release/vc_redist.x64.exe' -OutFile 'C:\TEMP\vc_redist.x64.exe'"
powershell -noprofile -executionpolicy bypass -command "Invoke-WebRequest 'https://aka.ms/vs/17/release/vc_redist.x86.exe' -OutFile 'C:\TEMP\vc_redist.x86.exe'"
msiexec /i C:\TEMP\googlechromestandaloneenterprise64.msi /quiet /norestart
start /b /w C:\TEMP\VC_redist.x86.exe /install /quiet /norestart
start /b /w C:\TEMP\VC_redist.x64.exe /install /quiet /norestart
msiexec /i C:\TEMP\firefox.msi INSTALL_DIRECTORY_PATH="C:\Program Files\Firefox\" TASKBAR_SHORTCUT=false DESKTOP_SHORTCUT=true INSTALL_MAINTENANCE_SERVICE=false /quiet
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
powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | ? {$_.Name -Match 'Wmic|VBSCRIPT' -And $_.State -eq 'NotPresent'} | Add-WindowsCapability -online"

rem finish
start /b /w C:\Tools\PowerRun.exe
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "1" /t REG_SZ /d "C:\TEMP\Setup2.cmd" /f
shutdown /r /t 5
