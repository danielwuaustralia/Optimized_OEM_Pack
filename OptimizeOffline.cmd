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
DISM /Export-Image /SourceImageFile:"D:\Debloater\install.wim" /ALL /DestinationImageFile:"C:\install.wim" /Compress:max /CheckIntegrity
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "New-Item -Path 'C:\Mount' -ItemType Directory -Force -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Mount-WindowsImage -Checkintegrity -ImagePath 'C:\install.wim' -Index 1 -Path 'C:\Mount' -Verbose"
echo ***********转换为专业工作站版本***********
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Set-WindowsEdition -Path 'C:\Mount' -Edition 'ProfessionalWorkstation' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Set-WindowsProductKey -Path 'C:\Mount' -ProductKey 'NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J' -Verbose"
echo ***********注入驱动***********
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-WindowsDriver -Path 'C:\Mount' -Driver 'D:\Debloater\Drivers' -Recurse -ForceUnsigned -Verbose"
echo ***********去除默认文件关联***********
Dism.exe /Image:C:\Mount /Remove-DefaultAppAssociations
Dism.exe /Online /Export-DefaultAppAssociations:"C:\TEMP\AppAssociations.xml"
Dism.exe /Image:C:\Mount /Import-DefaultAppAssociations:"C:\TEMP\AppAssociations.xml"
echo ***********关闭无用功能***********
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'LegacyComponents' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'DirectPlay' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'SMB1Protocol' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'SMB1Protocol-Client' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'SMB1Protocol-Server' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'SmbDirect' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'Windows-Defender-Default-Definitions' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'Printing-XPSServices-Features' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'SearchEngine-Client-Package' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'Printing-Foundation-Features' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'Printing-Foundation-InternetPrinting-Client' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'Printing-PrintToPDFServices-Features' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'MSRDC-Infrastructure' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'WorkFolders-Client' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'MicrosoftWindowsPowerShellV2Root' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'MicrosoftWindowsPowerShellV2' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Disable-WindowsOptionalFeature -Path 'C:\Mount' -FeatureName 'WCF-TCP-PortSharing45' -Verbose"
echo ***********移除无用Capabilites***********
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'App.StepsRecorder*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'App.Support.QuickAssist*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Browser.InternetExplorer*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'DirectX.Configuration.Database*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Language.Handwriting~~~zh-CN*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Language.OCR~~~zh-CN*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Language.Speech~~~zh-CN*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Language.TextToSpeech~~~zh-CN*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Microsoft.Windows.Notepad.System*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Microsoft.Windows.PowerShell.ISE*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Print.Management.Console*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Hello.Face*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'MathRecognizer*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Microsoft.Windows.Ethernet.Client*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Microsoft.Windows.IoTDeviceUpdateCenter*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Microsoft.Windows.Wifi.Client*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'OneCoreUAP.OneSync*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'OpenSSH.Client*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Microsoft.Windows.WordPad*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Microsoft.Wallpapers.Extended*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
echo ***********安装程序***********
rem https://store.rg-adguard.net/
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.NET.Native.Framework.x64.1.3.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.NET.Native.Framework.x64.1.7.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.NET.Native.Framework.x64.2.2.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.NET.Native.Runtime.x64.1.4.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.NET.Native.Runtime.x64.1.7.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.NET.Native.Runtime.x64.2.2.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.UI.Xaml.x64.2.1.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.UI.Xaml.x64.2.3.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.UI.Xaml.x64.2.4.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.UI.Xaml.x64.2.7.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.VCLibs.x64.14.00.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.VCLibs.x64.14.00.Desktop.appx' -SkipLicense -Verbose"
rem CategoryID: 9640a414-18fc-4cad-b860-bc01e00c84f6
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Runtime\Microsoft.WindowsAppRuntime.1.1_1000.488.537.0_x64__8wekyb3d8bbwe.Msix' -SkipLicense -Verbose"
rem CategoryID: df8ea8e7-16ad-45d8-bbd0-75f6358bec33
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.LanguageExperiencePackzh-CN_22621.1.1.0_neutral__8wekyb3d8bbwe.Appx' -SkipLicense -Verbose"
rem CategoryID: 5e60c346-7f52-4a6f-98c0-70fef2dd1d01
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.HEVCVideoExtension_2.0.51121.0_x64__8wekyb3d8bbwe.Appx' -SkipLicense -Verbose"
rem CategoryID: 613f6011-adac-4bd6-8c3e-3679dfa89fc5
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\NVIDIACorp.NVIDIAControlPanel_8.1.962.0_x64__56jybvy8sckqj.Appx' -SkipLicense -Verbose"
rem https://github.com/M2Team/NanaZip/releases
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\40174MouriNaruto.NanaZipPreview_1.2.253.0_gnj4mf6z9tkrc.msixbundle' -SkipLicense -Verbose"
rem https://github.com/MicaForEveryone/MicaForEveryone/releases
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\MicaForEveryone-v1.0.6.2-x64-Release.msixbundle' -SkipLicense -Verbose"
echo ***********离线注册表优化***********
reg load "HKLM\OfflineNTUSER" "C:\Mount\Users\Default\NTUSER.DAT"
reg load "HKLM\OfflineSOFTWARE" "C:\Mount\Windows\System32\config\software"
reg load "HKLM\OfflineSYSTEM" "C:\Mount\Windows\System32\config\system"
echo *****************************************************************
rem Defender
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender\Features" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender\Features" -ot reg -actn ace -ace "n:Administrators;p:full"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "New-ItemProperty -LiteralPath 'HKLM:\OfflineSOFTWARE\Microsoft\Windows Defender\Features' -Name 'TamperProtection' -Value 0 -PropertyType DWord -Force"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "New-ItemProperty -LiteralPath 'HKLM:\OfflineSOFTWARE\Microsoft\Windows Defender\Features' -Name 'DisableAntiSpyware' -Value 1 -PropertyType DWord -Force"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Run" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Run" -ot reg -actn ace -ace "n:Administrators;p:full"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Remove-ItemProperty -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name 'SecurityHealth' -Force"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Remove-ItemProperty -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name 'WindowsDefender' -Force"
rem MS edge shortcut
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "New-ItemProperty -LiteralPath 'HKLM:\OfflineSOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'CreateDesktopShortcutDefault' -Value 0 -PropertyType DWord -Force"
rem onedrive startup
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineNTUSER\Software\Microsoft\Windows\CurrentVersion\Run" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineNTUSER\Software\Microsoft\Windows\CurrentVersion\Run" -ot reg -actn ace -ace "n:Administrators;p:full"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Remove-ItemProperty -Path 'HKLM:\OfflineNTUSER\Software\Microsoft\Windows\CurrentVersion\Run' -Name 'OneDriveSetup' -Force"
rem Smart App Control
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSYSTEM\CurrentControlSet\Control\CI\Policy" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSYSTEM\CurrentControlSet\Control\CI\Policy" -ot reg -actn ace -ace "n:Administrators;p:full"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "New-ItemProperty -LiteralPath 'HKLM:\OfflineSYSTEM\CurrentControlSet\Control\CI\Policy' -Name 'VerifiedAndReputablePolicyState' -Value 0 -PropertyType DWord -Force"
rem scheduled tasks
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache" -ot reg -actn ace -ace "n:Administrators;p:full"
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Application Experience" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\AppxDeploymentClient" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Autochk" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\CloudExperienceHost" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Customer Experience Improvement Program" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Diagnosis" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DiskDiagnostic" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DiskFootprint" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Feedback" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Flighting" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Location" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Maintenance" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Maps" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\NetTrace" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Offline Files" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Power Efficiency Diagnostics" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\PushToInstall" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Ras" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Registry" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Time Synchronization" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Time Zone" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\User Profile Service" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Defender" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Error Reporting" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Filtering Platform" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WindowsUpdate" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UpdateOrchestrator" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WaaSMedic" /f
reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\XblGameSave" /f
rem system apps
rem Microsoft.AAD.BrokerPlugin and Microsoft.Windows.CloudExperienceHost required as per https://docs.microsoft.com/en-us/office365/troubleshoot/authentication/automatic-authentication-fails
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications" -ot reg -actn ace -ace "n:Administrators;p:full"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match '1527c705-839a-4832-9118-54d4Bd6a0c89*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'c5e2524a-ea46-4f67-841f-6a9465d9d515*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'E2A4F912-2574-4A75-9BB0-0D023378592B*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.AsyncTextService*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.BioEnrollment*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.ECApp*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.LockApp*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.MicrosoftEdge*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.MicrosoftEdgeDevToolsClient*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.OOBENetworkCaptivePortal*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.OOBENetworkConnectionFlow*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.AppRep.ChxApp*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.AssignedAccessLockApp*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.CallingShellApp*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.CapturePicker*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Windows.CBSPreview*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.ContentDeliveryManager*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.NarratorQuickStart*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.ParentalControls*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.PrintQueueActionCenter*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.PeopleExperienceHost*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.PinningConfirmationDialog*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.SecureAssessmentBrowser*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Win32WebViewHost*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.Windows.XGpuEjectDialog*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Microsoft.XboxGameCallableUI*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'NcsiUwpApp*') { Remove-Item -Path 'Registry::$_' } }"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-ChildItem -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | ForEach-Object { if ($_ -match 'Windows.PrintDialog*') { Remove-Item -Path 'Registry::$_' } }"
rem %systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" -ot reg -actn setowner -ownr "n:Administrators"
rem %systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" -ot reg -actn ace -ace "n:Administrators;p:full"
rem "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Set-ItemProperty -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Name Visibility -Value 1 -Force -Verbose"
rem ""C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Remove-Item -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Include *Owner* -Recurse -Force -Verbose"
echo *****************************************************************
reg unload "HKLM\OfflineNTUSER"
reg unload "HKLM\OfflineSOFTWARE"
reg unload "HKLM\OfflineSYSTEM"
echo ***********删除无用的Packages***********
rem "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsPackage -Path 'C:\Mount' | Where-Object { $_.PackageName -like '*Windows-Defender*' } | Remove-WindowsPackage -Path 'C:\Mount' -Recurse -Force -Verbose"
echo ***********保存WIM镜像***********
echo *****************************************************************
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Save-WindowsImage -Path 'C:\Mount' -CheckIntegrity -Verbose"
DISM /Export-Image /SourceImageFile:"C:\install.wim" /ALL /DestinationImageFile:"C:\TEMP\install.wim" /Compress:max /CheckIntegrity
move /y "C:\TEMP\install.wim" "D:\Debloater\install.wim"
echo ***********清理***********
cd %~dp0
DISM /Cleanup-Wim
DISM /Cleanup-Mountpoints
echo *****************************************************************
echo WIM镜像优化完成于 %DATE% %TIME%
echo *****************************************************************
color 02
pause
