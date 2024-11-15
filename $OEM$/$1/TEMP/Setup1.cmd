@echo on
color 1f

powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'App.StepsRecorder~~~~0.0.1.0' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'AzureArcSetup~~~~' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'DirectX.Configuration.Database~~~~0.0.1.0' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'Downlevel.NLS.Sorting.Versions.Server~~~~0.0.1.0' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'MathRecognizer~~~~0.0.1.0' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'Microsoft.Windows.Sense.Client~~~~' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'OneCoreUAP.OneSync~~~~0.0.1.0' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'OpenSSH.Client~~~~0.0.1.0' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'OpenSSH.Server~~~~0.0.1.0' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'XPS.Viewer~~~~0.0.1.0' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'Language.Handwriting~~~zh-CN~0.0.1.0' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'Language.OCR~~~zh-CN~0.0.1.0' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'Language.Speech~~~zh-CN~0.0.1.0' -Online"
powershell -noprofile -executionpolicy bypass -command "Remove-WindowsCapability -Name 'Language.TextToSpeech~~~zh-CN~0.0.1.0' -Online"
powershell -noprofile -executionpolicy bypass -command "Add-WindowsCapability -Online -Name 'WMIC~~~~'"
dism /english /Online /Enable-Feature /FeatureName:NetFx4 /All /NoRestart
dism /english /Online /Enable-Feature /FeatureName:ServerMediaFoundation /All /NoRestart
dism /english /Online /Enable-Feature /FeatureName:LegacyComponents /All /NoRestart
dism /english /Online /Enable-Feature /FeatureName:DirectPlay /All /NoRestart
dism /english /Online /Disable-Feature /featurename:Xps-Foundation-Xps-Viewer /NoRestart
dism /english /Online /Disable-Feature /featurename:Windows-Defender /NoRestart
dism /english /Online /Disable-Feature /featurename:Printing-PrintToPDFServices-Features /NoRestart
dism /english /Online /Disable-Feature /featurename:Server-Drivers-Printers /NoRestart
dism /english /Online /Disable-Feature /featurename:WindowsServerBackupSnapin /NoRestart
dism /english /Online /Disable-Feature /featurename:Microsoft-Windows-Printing-PremiumTools /NoRestart
dism /english /Online /Disable-Feature /featurename:RSAT /NoRestart
dism /english /Online /Disable-Feature /featurename:FileAndStorage-Services /NoRestart
dism /english /Online /Disable-Feature /featurename:Storage-Services /NoRestart
dism /english /Online /Disable-Feature /featurename:WorkFolders-Client /NoRestart
dism /english /Online /Disable-Feature /featurename:SystemDataArchiver /NoRestart
dism /english /Online /Disable-Feature /featurename:SearchEngine-Client-Package /NoRestart
dism /english /Online /Disable-Feature /featurename:WindowsAdminCenterSetup /NoRestart
dism /english /Online /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-BitmapFonts /NoRestart
dism /english /Online /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-MinConsoleFonts /NoRestart
dism /english /Online /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-Support /NoRestart
dism /english /Online /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-TrueType /NoRestart
dism /english /Online /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-UAPFonts /NoRestart
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Allow" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location\NonPackaged" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "ShowGlobalPrompts" /t REG_DWORD /d "0" /f
powershell -noprofile -executionpolicy bypass -command "Set-NetAdapterAdvancedProperty -Name 'WLAN' -RegistryKeyword 'SupportMACRandom' -RegistryValue 0"
powershell -noprofile -executionpolicy bypass -command "Set-NetAdapterAdvancedProperty -Name 'WLAN' -RegistryKeyword 'PreambleMode' -RegistryValue 1"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WlanSvc" /v "Start" /t REG_DWORD /d "2" /f
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
netsh wlan add profile filename="C:\TEMP\WiFi.xml" user=all
netsh wlan set profileparameter name="LV426" connectionmode=auto
netsh wlan connect name=LV426
start /b /w C:\TEMP\AMD_Chipset_Software.exe /S
start /b /w C:\TEMP\NVidiaProfileInspector\nvidiaProfileInspector.exe
start /b /w C:\TEMP\UpdateTime.exe /U /M
start /b /w C:\TEMP\HEU.exe /smart
C:\Tools\DeviceCleanupCmd.exe * -s -n

start /b /w C:\Tools\PowerRun.exe
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "1" /t REG_SZ /d "C:\TEMP\Setup2.cmd" /f
shutdown /r /t 5
