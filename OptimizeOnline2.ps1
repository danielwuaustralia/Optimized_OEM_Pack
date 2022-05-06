@echo off
SetLocal EnableDelayedExpansion
color 17
title WIM镜像优化
echo *****************************************************************
echo ------------------- 获得管理员权限 ---------------------
echo *****************************************************************
REM  --> Check for permissions  
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"  
REM --> If error flag set, we do not have admin.  
if '%errorlevel%' NEQ '0' (    echo Requesting administrative privileges...    goto UACPrompt) else ( goto gotAdmin )  
:UACPrompt  
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
"%temp%\getadmin.vbs"  
exit /B
:gotAdmin
echo ***********载入WIM镜像***********
DISM /Mount-Image /ImageFile:"D:\Debloater\install.wim" /Index:1 /MountDir:"D:\Debloater\Mount" /CheckIntegrity
echo ***********转换为专业工作站版本***********
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Set-WindowsEdition -Path 'D:\Debloater\Mount' -Edition 'ProfessionalWorkstation' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Set-WindowsProductKey -Path 'D:\Debloater\Mount' -ProductKey 'NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J' -Verbose"
echo ***********注入驱动***********
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-WindowsDriver -Path 'D:\Debloater\Mount' -Driver 'D:\Debloater\Drivers' -Recurse -ForceUnsigned -Verbose"
echo ***********去除默认文件关联***********
Dism.exe /Image:D:\Debloater\Mount /Remove-DefaultAppAssociations
Dism.exe /Online /Export-DefaultAppAssociations:"D:\Debloater\TEMP\AppAssociations.xml"
Dism.exe /Image:D:\Debloater\Mount /Import-DefaultAppAssociations:"D:\Debloater\TEMP\AppAssociations.xml"
echo ***********关闭无用功能***********
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'LegacyComponents' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'DirectPlay' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'SMB1Protocol' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'SMB1Protocol-Client' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'SMB1Protocol-Server' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'SmbDirect' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'Windows-Defender-Default-Definitions' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'Printing-XPSServices-Features' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'SearchEngine-Client-Package' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'Printing-Foundation-Features' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'Printing-Foundation-InternetPrinting-Client' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'Printing-PrintToPDFServices-Features' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'MSRDC-Infrastructure' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'WorkFolders-Client' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'MicrosoftWindowsPowerShellV2Root' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'MicrosoftWindowsPowerShellV2' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'D:\Debloater\Mount' -FeatureName 'WCF-TCP-PortSharing45' -Verbose"
echo ***********移除无用Capabilites***********
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'App.StepsRecorder*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'App.Support.QuickAssist*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Browser.InternetExplorer*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'DirectX.Configuration.Database*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Language.Handwriting~~~zh-CN*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Language.OCR~~~zh-CN*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Language.Speech~~~zh-CN*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Language.TextToSpeech~~~zh-CN*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Microsoft.Windows.Notepad.System*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Microsoft.Windows.PowerShell.ISE*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Print.Management.Console*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Hello.Face*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'MathRecognizer*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Microsoft.Windows.Ethernet.Client*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Microsoft.Windows.IoTDeviceUpdateCenter*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Microsoft.Windows.Wifi.Client*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'OneCoreUAP.OneSync*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'OpenSSH.Client*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Microsoft.Windows.WordPad*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'D:\Debloater\Mount' | Where-Object { $_.Name -like 'Microsoft.Wallpapers.Extended*' } | Remove-WindowsCapability -Path 'D:\Debloater\Mount' -Verbose"
echo ***********安装程序***********
rem https://store.rg-adguard.net/
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.NET.Native.Framework.x64.1.3.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.NET.Native.Framework.x64.1.7.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.NET.Native.Framework.x64.2.2.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.NET.Native.Runtime.x64.1.4.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.NET.Native.Runtime.x64.1.7.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.NET.Native.Runtime.x64.2.2.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.UI.Xaml.x64.2.1.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.UI.Xaml.x64.2.3.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.UI.Xaml.x64.2.4.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.UI.Xaml.x64.2.7.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.VCLibs.x64.14.00.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.VCLibs.x64.14.00.Desktop.appx' -SkipLicense -Verbose"
rem https://docs.microsoft.com/en-us/windows/apps/windows-app-sdk/downloads
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.WindowsAppRuntime.1.0.msix' -SkipLicense -Verbose"
rem CategoryID: df8ea8e7-16ad-45d8-bbd0-75f6358bec33
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.LanguageExperiencePackzh-CN_22618.0.1.0_neutral__8wekyb3d8bbwe.Appx' -SkipLicense -Verbose"
rem CategoryID: 5e60c346-7f52-4a6f-98c0-70fef2dd1d01
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.HEVCVideoExtension_2.0.51121.0_x64__8wekyb3d8bbwe.Appx' -SkipLicense -Verbose"
rem CategoryID: 613f6011-adac-4bd6-8c3e-3679dfa89fc5
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\NVIDIACorp.NVIDIAControlPanel_8.1.962.0_x64__56jybvy8sckqj.Appx' -SkipLicense -Verbose"
rem CategoryID: 64293252-5926-453c-9494-2d4021f1c78d
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.WindowsStore_22204.1401.3.0_neutral___8wekyb3d8bbwe.Msixbundle' -SkipLicense -Verbose"
rem CategoryID: 214308d7-4262-449d-a78d-9a2306144b11
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.StorePurchaseApp_12203.44.0.0_neutral___8wekyb3d8bbwe.AppxBundle' -SkipLicense -Verbose"
rem https://github.com/M2Team/NanaZip/releases
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\40174MouriNaruto.NanaZipPreview_1.2.225.0_gnj4mf6z9tkrc.msixbundle' -SkipLicense -Verbose"
rem https://github.com/beeradmoore/dlss-swapper
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\55588beeradmoore.DLSSSwapper_0.9.9.0_neutral___xkmnm3dc34gb4.Msixbundle' -SkipLicense -Verbose"
rem https://github.com/MicaForEveryone/MicaForEveryone/releases
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\MicaForEveryone-v1.0.6.2-x64-Release.msixbundle' -SkipLicense -Verbose"
rem https://github.com/microsoft/terminal/releases
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'D:\Debloater\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.WindowsTerminalPreview_Win11_1.13.10984.0_8wekyb3d8bbwe.msixbundle' -SkipLicense -Verbose"
echo ***********离线注册表优化***********
reg load "HKLM\OfflineNTUSER" "D:\Debloater\Mount\Users\Default\NTUSER.DAT"
reg load "HKLM\OfflineSOFTWARE" "D:\Debloater\Mount\Windows\System32\config\software"
reg load "HKLM\OfflineSYSTEM" "D:\Debloater\Mount\Windows\System32\config\system"
echo *****************************************************************
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender\Features" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender\Features" -ot reg -actn ace -ace "n:Administrators;p:full"
reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender\Features" /v "TamperProtection" /t REG_DWORD /d "0" /f
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender" -ot reg -actn ace -ace "n:Administrators;p:full"
reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender" /v "PUAProtection" /t REG_DWORD /d "1" /f
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Run" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Run" -ot reg -actn ace -ace "n:Administrators;p:full"
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "WindowsDefender" /f
reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\EdgeUpdate" /v "CreateDesktopShortcut{56EB18F8-B008-4CBD-B6D2-8C97FE7E9062}" /t REG_DWORD /d "0" /f
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineNTUSER\Software\Microsoft\Windows\CurrentVersion\Run" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineNTUSER\Software\Microsoft\Windows\CurrentVersion\Run" -ot reg -actn ace -ace "n:Administrators;p:full"
reg delete "HKLM\OfflineNTUSER\Software\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
rem %systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" -ot reg -actn setowner -ownr "n:Administrators"
rem %systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" -ot reg -actn ace -ace "n:Administrators;p:full"
rem "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -EP Bypass -MTA -NOL -NONI -NOP -C "Set-ItemProperty -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Name Visibility -Value 1 -Force -Verbose"
rem "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -EP Bypass -MTA -NOL -NONI -NOP -C "Remove-Item -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Include *Owner* -Recurse -Force -Verbose"
rem "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -EP Bypass -MTA -NOL -NONI -NOP -C "Set-ItemProperty -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Microsoft-Windows-OneDrive*' -Name Visibility -Value 1 -Force -Verbose"
rem "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -EP Bypass -MTA -NOL -NONI -NOP -C "Remove-Item -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Microsoft-Windows-OneDrive*' -Include *Owner* -Recurse -Force -Verbose"
echo *****************************************************************
reg unload "HKLM\OfflineNTUSER"
reg unload "HKLM\OfflineSOFTWARE"
reg unload "HKLM\OfflineSYSTEM"
echo ***********删除无用的Packages***********
rem "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -EP Bypass -MTA -NOL -NONI -NOP -C "Get-WindowsPackage -Path 'D:\Debloater\Mount' | Where-Object { $_.PackageName -like '*Windows-Defender*' } | Remove-WindowsPackage -Path 'D:\Debloater\Mount' -Recurse -Force -Verbose"
rem "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -EP Bypass -MTA -NOL -NONI -NOP -C "Get-WindowsPackage -Path 'D:\Debloater\Mount' | Where-Object { $_.PackageName -like '*Microsoft-Windows-OneDrive*' } | Remove-WindowsPackage -Path 'D:\Debloater\Mount' -Recurse -Force -Verbose"
echo ***********保存WIM镜像***********
echo *****************************************************************
DISM /Unmount-Image /MountDir:"D:\Debloater\Mount" /Commit /CheckIntegrity
DISM /Export-Image /SourceImageFile:"D:\Debloater\install.wim" /ALL /DestinationImageFile:"D:\Debloater\TEMP\install.wim" /Compress:max /CheckIntegrity
move /y "D:\Debloater\TEMP\install.wim" "D:\Debloater\install.wim"
echo ***********清理***********
cd %~dp0
DISM /Cleanup-Wim
DISM /Cleanup-Mountpoints
echo *****************************************************************
echo WIM镜像优化完成于 %DATE% %TIME%
echo *****************************************************************
color 02
pause
