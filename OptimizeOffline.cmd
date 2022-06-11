@echo off
SetLocal EnableDelayedExpansion
color 17
title WIM镜像优化
echo ***********载入WIM镜像***********
DISM /Export-Image /SourceImageFile:"D:\Debloater\install.wim" /ALL /DestinationImageFile:"C:\install.wim" /Compress:max /CheckIntegrity
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "New-Item -Path 'C:\Mount' -ItemType Directory -Force -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Mount-WindowsImage -Checkintegrity -ImagePath 'C:\install.wim' -Index 1 -Path 'C:\Mount' -Verbose"
echo ***********转换为专业工作站版本***********
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Set-WindowsEdition -Path 'C:\Mount' -Edition 'Education' -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Set-WindowsProductKey -Path 'C:\Mount' -ProductKey 'NW6C2-QMPVW-D7KKK-3GKT6-VCFB2' -Verbose"
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
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Get-WindowsCapability -Path 'C:\Mount' | Where-Object { $_.Name -like 'Language.Fonts.Hans~~~und-HANS*' } | Remove-WindowsCapability -Path 'C:\Mount' -Verbose"
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
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.NET.Native.Framework.x64.1.3.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.NET.Native.Framework.x64.1.7.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.NET.Native.Framework.x64.2.2.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.NET.Native.Runtime.x64.1.4.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.NET.Native.Runtime.x64.1.7.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.NET.Native.Runtime.x64.2.2.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.UI.Xaml.x64.2.1.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.UI.Xaml.x64.2.3.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.UI.Xaml.x64.2.4.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.UI.Xaml.x64.2.7.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.VCLibs.x64.14.00.appx' -SkipLicense -Verbose"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.VCLibs.x64.14.00.Desktop.appx' -SkipLicense -Verbose"
rem 3ece63c1-ae51-4414-9064-b4ff1e0a9017
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.549981C3F5F10_4.2204.13303.0_neutral___8wekyb3d8bbwe.Msixbundle' -SkipLicense -Verbose"
rem b4f3025d-a236-44b0-8d4c-849bed549259
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.WebMediaExtensions_1.0.42192.0_neutral___8wekyb3d8bbwe.AppxBundle' -SkipLicense -Verbose"
rem a304d32c-4f92-4797-ac65-faa7c81638de
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.HEVCVideoExtensions_2.0.51122.0_x64__8wekyb3d8bbwe.Appx' -SkipLicense -Verbose"
rem 83edba13-a396-483f-82ab-9ec16f1ba07f
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.RawImageExtension_2.1.31392.0_neutral___8wekyb3d8bbwe.AppxBundle' -SkipLicense -Verbose"
rem 65b58c5c-5c7e-4b72-9d9f-9bdd15c506b3
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.VP9VideoExtensions_1.0.51171.0_x64__8wekyb3d8bbwe.Appx' -SkipLicense -Verbose"
rem 00c2490a-ef1d-43c9-bdba-b84ecc77d2ea
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Add-AppxProvisionedPackage -Path 'C:\Mount' -PackagePath 'D:\Debloater\UWP\Microsoft.WebpImageExtension_1.0.42351.0_x64__8wekyb3d8bbwe.Appx' -SkipLicense -Verbose"
echo ***********离线注册表优化***********
reg load "HKLM\OfflineNTUSER" "C:\Mount\Users\Default\NTUSER.DAT"
reg load "HKLM\OfflineSOFTWARE" "C:\Mount\Windows\System32\config\software"
reg load "HKLM\OfflineSYSTEM" "C:\Mount\Windows\System32\config\system"
echo *****************************************************************
rem Defender
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender\Features" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender\Features" -ot reg -actn ace -ace "n:Administrators;p:full"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "New-ItemProperty -LiteralPath 'HKLM:\OfflineSOFTWARE\Microsoft\Windows Defender\Features' -Name 'TamperProtection' -Value 0 -PropertyType DWord -Force"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "New-Item 'HKLM:\OfflineSOFTWARE\Policies\Microsoft\Windows Defender' -force"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "New-ItemProperty -LiteralPath 'HKLM:\OfflineSOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableAntiSpyware' -Value 1 -PropertyType DWord -Force"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Run" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Run" -ot reg -actn ace -ace "n:Administrators;p:full"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Remove-ItemProperty -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name 'SecurityHealth' -Force"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Remove-ItemProperty -Path 'HKLM:\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name 'WindowsDefender' -Force"
rem MS edge shortcut
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "New-Item 'HKLM:\OfflineSOFTWARE\Policies\Microsoft\EdgeUpdate' -Force"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "New-ItemProperty -LiteralPath 'HKLM:\OfflineSOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'CreateDesktopShortcutDefault' -Value 0 -PropertyType DWord -Force"
rem onedrive startup
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineNTUSER\Software\Microsoft\Windows\CurrentVersion\Run" -ot reg -actn setowner -ownr "n:Administrators"
%systemroot%\SysWOW64\SetACL.exe -on "HKLM\OfflineNTUSER\Software\Microsoft\Windows\CurrentVersion\Run" -ot reg -actn ace -ace "n:Administrators;p:full"
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "Remove-ItemProperty -Path 'HKLM:\OfflineNTUSER\Software\Microsoft\Windows\CurrentVersion\Run' -Name 'OneDriveSetup' -Force"
echo *****************************************************************
reg unload "HKLM\OfflineNTUSER"
reg unload "HKLM\OfflineSOFTWARE"
reg unload "HKLM\OfflineSYSTEM"
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
