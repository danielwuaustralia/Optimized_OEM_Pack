# Powershell设置
$ErrorActionPreference = 'SilentlyContinue'
$ProgressPreference = 'SilentlyContinue'
$ConfirmPreference = 'None'
$PSModuleAutoloadingPreference = 'All'
Start-Transcript -Path c:\OptimizeOnline2.txt -Force

#######################################################################################################前置优化##############################################################################################################################

# Powershell
Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell' EnableScripts 1 -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force

# https://github.com/thebookisclosed/ViVe
# Enable Tabs in File Explorer
# "vivetool addconfig 34370472 2" | cmd

# Powershell Module from https://www.powershellgallery.com/packages
# Save-Module -Name PSWindowsUpdate -Path C:\Windows\System32\WindowsPowerShell\v1.0\Modules -Repository PSGallery
# Save-Module -Name RobocopyPS -Path C:\Windows\System32\WindowsPowerShell\v1.0\Modules -Repository PSGallery
# Import-Module -SkipEditionCheck PSWindowsUpdate
# Import-Module -SkipEditionCheck RobocopyPS

# 增加环境变量
[Environment]::SetEnvironmentVariable('PATH', $Env:PATH + '; C:\Windows\SysWOW64', [EnvironmentVariableTarget]::Machine)

# 更改TEMP文件夹位置
New-ItemProperty -LiteralPath 'HKCU:\Environment' -Name 'TEMP' -Value 'C:\TEMP' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Environment' -Name 'TMP' -Value 'C:\TEMP' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment' -Name 'TEMP' -Value 'C:\TEMP' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment' -Name 'TMP' -Value 'C:\TEMP' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\DefaultUserEnvironment' -Name 'TEMP' -Value 'C:\TEMP' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\DefaultUserEnvironment' -Name 'TMP' -Value 'C:\TEMP' -PropertyType ExpandString -Force

#######################################################################################################必备软件设置##############################################################################################################################

# Potplayer Setting
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayer64') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayer64' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayer64' -Name 'ProgramAPI' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayer64' -Name 'ProgramFolder' -Value 'C:\Program Files\PotPlayer' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayer64' -Name 'ProgramPath' -Value 'C:\Program Files\PotPlayer\PotPlayerMini64.exe' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscAntenaList') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\AtscAntenaList' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscCableList') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\AtscCableList' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\BMItem_0') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\BMItem_0' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Dialog324') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\Dialog324' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbcList') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\DvbcList' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbsList') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\DvbsList' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbtList') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\DvbtList' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0018') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0018' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0003') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\Override\0003' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0002') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0002' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\RememberFiles') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\RememberFiles' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscAntenaList' -Name '0' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscAntenaList' -Name '1' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscAntenaList' -Name '2' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscAntenaList' -Name '3' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscAntenaList' -Name '4' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscAntenaList' -Name '5' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscAntenaList' -Name '6' -Value '' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscCableList' -Name '0' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscCableList' -Name '1' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscCableList' -Name '2' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscCableList' -Name '3' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscCableList' -Name '4' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscCableList' -Name '5' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\AtscCableList' -Name '6' -Value '' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\BMItem_0' -Name '' -Value '/f' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Dialog324' -Name 'WindowPosition' -Value '856,371,1714,973' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbcList' -Name '0' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbcList' -Name '1' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbcList' -Name '2' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbcList' -Name '3' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbcList' -Name '4' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbcList' -Name '5' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbcList' -Name '6' -Value '' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbsList' -Name '0' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbsList' -Name '1' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbsList' -Name '2' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbsList' -Name '3' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbsList' -Name '4' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbsList' -Name '5' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbsList' -Name '6' -Value '' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbtList' -Name '0' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbtList' -Name '1' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbtList' -Name '2' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbtList' -Name '3' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbtList' -Name '4' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbtList' -Name '5' -Value '1|0|0|0|0|0' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\DvbtList' -Name '6' -Value '' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{E8E73B6B-4CB3-44A4-BE99-4F7BCB96E491}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'Name' -Value 'LAV Audio Decoder' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'CLSID' -Value '{E8E73B6B-4CB3-44A4-BE99-4F7BCB96E491}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'Merit' -Value -1140850433 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'MeritHi' -Value 454720 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'DisplayName' -Value '@device:dmo:{BBEEA841-0A63-4F52-A7AB-A9B3A84ED38A}{57F2DB8B-E6BB-4513-9D43-DCD2A6593125}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'Name' -Value 'MP3 Decoder DMO' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'Merit' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{4A2286E0-7BEF-11CE-9BD9-0000E202599C}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'Name' -Value 'MPEG Audio Decoder' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'CLSID' -Value '{4A2286E0-7BEF-11CE-9BD9-0000E202599C}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'Merit' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{FEB50740-7BEF-11CE-9BD9-0000E202599C}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'Name' -Value 'MPEG Video Decoder' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'CLSID' -Value '{FEB50740-7BEF-11CE-9BD9-0000E202599C}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'Merit' -Value 256 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{EE30215D-164F-4A92-A4EB-9D4C13390F9F}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'Name' -Value 'LAV Video Decoder' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'CLSID' -Value '{EE30215D-164F-4A92-A4EB-9D4C13390F9F}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'Merit' -Value 261888 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'MeritHi' -Value 201330176 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{212690FB-83E5-4526-8FD7-74478B7939CD}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'Name' -Value 'Microsoft DTV-DVD Video Decoder' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'CLSID' -Value '{212690FB-83E5-4526-8FD7-74478B7939CD}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'Merit' -Value 13056 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'DisplayName' -Value '@device:dmo:{2A11BAE2-FE6E-4249-864B-9E9ED6E8DBC2}{4A69B442-28BE-4991-969C-B500ADF5D8A8}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'Name' -Value 'Mpeg4s Decoder DMO' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'Merit' -Value 3072 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'DisplayName' -Value '@device:dmo:{82D353DF-90BD-4382-8BC2-3F6192B76E34}{4A69B442-28BE-4991-969C-B500ADF5D8A8}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'Name' -Value 'WMVideo Decoder DMO' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'Merit' -Value 245760 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'MeritHi' -Value 3072 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{1B544C20-FD0B-11CE-8C63-00AA0044B51E}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'Name' -Value 'AVI Splitter' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'CLSID' -Value '{1B544C20-FD0B-11CE-8C63-00AA0044B51E}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'Merit' -Value 262144 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{336475D0-942A-11CE-A870-00AA002FEAB5}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'Name' -Value 'MPEG-I Stream Splitter' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'CLSID' -Value '{336475D0-942A-11CE-A870-00AA002FEAB5}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'Merit' -Value 34603008 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{AFB6C280-2C41-11D3-8A60-0000F81E0E4A}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'Name' -Value 'MPEG-2 Demultiplexer' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'CLSID' -Value '{AFB6C280-2C41-11D3-8A60-0000F81E0E4A}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'Merit' -Value 6291456 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{3AE86B20-7BE8-11D1-ABE6-00A0C905F375}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'Name' -Value 'MPEG-2 Splitter' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'CLSID' -Value '{3AE86B20-7BE8-11D1-ABE6-00A0C905F375}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'Merit' -Value 2097152 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'DisplayName' -Value '@device:dmo:{2EEB4ADF-4578-4D10-BCA7-BB955F56320A}{57F2DB8B-E6BB-4513-9D43-DCD2A6593125}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'Name' -Value 'WMAudio Decoder DMO' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'Merit' -Value 1006632960 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'DisplayName' -Value '@device:dmo:{5210F8E4-B0BB-47C3-A8D9-7B2282CC79ED}{57F2DB8B-E6BB-4513-9D43-DCD2A6593125}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'Name' -Value 'WMAPro over S/PDIF DMO' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'Merit' -Value 268435456 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'DisplayName' -Value '@device:dmo:{7BAFB3B1-D8F4-4279-9253-27DA423108DE}{4A69B442-28BE-4991-969C-B500ADF5D8A8}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'Name' -Value 'WMV Screen decoder DMO' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'Merit' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'MeritHi' -Value 12 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'DisplayName' -Value '@device:dmo:{874131CB-4ECC-443B-8948-746B89595D20}{57F2DB8B-E6BB-4513-9D43-DCD2A6593125}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'Name' -Value 'WMSpeech Decoder DMO' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'Merit' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'MeritHi' -Value 65536 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{D51BD5A1-7548-11CF-A520-0080C77EF58A}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'Name' -Value 'Wave Parser' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'CLSID' -Value '{D51BD5A1-7548-11CF-A520-0080C77EF58A}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'Merit' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'MeritHi' -Value 1048576 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'DisplayName' -Value '/f' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'Name' -Value 'LAV Splitter Source' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'CLSID' -Value '{B98D13E7-55DB-4385-A33D-09FD1BA26338}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'Merit' -Value 1140588544 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'MeritHi' -Value 1048707 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0018' -Name 'Type' -Value -2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{E8E73B6B-4CB3-44A4-BE99-4F7BCB96E491}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'Name' -Value 'LAV Audio Decoder' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'CLSID' -Value '{E8E73B6B-4CB3-44A4-BE99-4F7BCB96E491}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0000' -Value '{ED0B916A-044D-11D1-AA78-00C04FC31D60}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0001' -Value '{E06D802B-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0002' -Value '{36523B13-8EE5-11D1-8CA3-0060B057664A}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0003' -Value '{E06D802B-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0004' -Value '{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0005' -Value '{E06D802B-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0006' -Value '{ED0B916A-044D-11D1-AA78-00C04FC31D60}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0007' -Value '{E06D802C-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0008' -Value '{36523B13-8EE5-11D1-8CA3-0060B057664A}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0009' -Value '{E06D802C-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0010' -Value '{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0011' -Value '{E06D802C-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0012' -Value '{ED0B916A-044D-11D1-AA78-00C04FC31D60}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0013' -Value '{E06D8033-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0014' -Value '{36523B13-8EE5-11D1-8CA3-0060B057664A}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0015' -Value '{E06D8033-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0016' -Value '{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0017' -Value '{E06D8033-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0018' -Value '{ED0B916A-044D-11D1-AA78-00C04FC31D60}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0019' -Value '{E06D8032-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0020' -Value '{36523B13-8EE5-11D1-8CA3-0060B057664A}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0021' -Value '{E06D8032-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0022' -Value '{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0023' -Value '{E06D8032-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0024' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0025' -Value '{000000FF-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0026' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0027' -Value '{000001FF-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0028' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0029' -Value '{00001602-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0030' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0031' -Value '{4134504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0032' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0033' -Value '{6134706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0034' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0035' -Value '{53544441-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0036' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0037' -Value '{00001600-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0038' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0039' -Value '{00001601-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0040' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0041' -Value '{00001610-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0042' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0043' -Value '{20534C41-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0044' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0045' -Value '{E06D802C-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0046' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0047' -Value '{A7FB87AF-2D02-42FB-A4D4-05CD93843BDD}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0048' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0049' -Value '{71CFA727-37E4-404A-AEC0-34842532EFF7}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0050' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0051' -Value '{EB27CEC4-163E-4CA3-8B74-8E25F91B517E}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0052' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0053' -Value '{00002000-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0054' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0055' -Value '{E06D8033-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0056' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0057' -Value '{00002001-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0058' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0059' -Value '{A2E58EB7-0FA9-48BB-A40C-FA0E156D0645}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0060' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0061' -Value '{E436EB80-524F-11CE-9F53-0020AF0BA770}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0062' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0063' -Value '{E436EB81-524F-11CE-9F53-0020AF0BA770}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0064' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0065' -Value '{00000050-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0066' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0067' -Value '{E06D802B-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0068' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0069' -Value '{00000055-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0070' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0071' -Value '{0000F1AC-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0072' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0073' -Value '{1541C5C0-CDDF-477D-BC0A-86F8AE7F8354}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0074' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0075' -Value '{8D2FD10B-5841-4A6B-8905-588FEC1ADED9}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0076' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0077' -Value '{000077A1-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0078' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0079' -Value '{00005756-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0080' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0081' -Value '{20504C4D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0082' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0083' -Value '{63616C61-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0084' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0085' -Value '{B82196E9-1B3F-4796-A636-46239087B38E}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0086' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0087' -Value '{33534541-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0088' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0089' -Value '{E06D8032-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0090' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0091' -Value '{A23EB7FC-510B-466F-9FBF-5F878F69347C}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0092' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0093' -Value '{949F97FD-56F6-4527-B4AE-DDEB375AB80F}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0094' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0095' -Value '{454E4F4E-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0096' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0097' -Value '{20776172-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0098' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0099' -Value '{736F7774-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0100' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0101' -Value '{74776F73-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0102' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0103' -Value '{34326E69-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0104' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0105' -Value '{32336E69-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0106' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0107' -Value '{32336C66-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0108' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0109' -Value '{34366C66-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0110' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0111' -Value '{696E3234-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0112' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0113' -Value '{696E3332-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0114' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0115' -Value '{666C3332-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0116' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0117' -Value '{666C3634-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0118' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0119' -Value '{00000160-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0120' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0121' -Value '{00000161-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0122' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0123' -Value '{00000162-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0124' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0125' -Value '{00000163-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0126' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0127' -Value '{4B4F4F43-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0128' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0129' -Value '{43414152-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0130' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0131' -Value '{50434152-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0132' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0133' -Value '{52504953-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0134' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0135' -Value '{00000130-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0136' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0137' -Value '{54454E44-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0138' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0139' -Value '{385F3832-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0140' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0141' -Value '{345F3431-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0142' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0143' -Value '{464C4152-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0144' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0145' -Value '{0000A109-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0146' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0147' -Value '{0000704F-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0148' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0149' -Value '{5355504F-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0150' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0151' -Value '{726D6173-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0152' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0153' -Value '{4C4C454E-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0154' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0155' -Value '{00000006-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0156' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0157' -Value '{00000007-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0158' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0159' -Value '{00000031-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0160' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0161' -Value '{00000002-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0162' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0163' -Value '{00000022-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0164' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0165' -Value '{324D4451-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0166' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0167' -Value '{00000075-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0168' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0169' -Value '{00000270-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0170' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0171' -Value '{43525441-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0172' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0173' -Value '{E923AABF-CB58-4471-A119-FFFA01E4CE62}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0174' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0175' -Value '{AFBC2343-3DCB-4047-9655-E1E62A61B1C5}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'FilterType' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'Merit' -Value 8388611 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{B98D13E7-55DB-4385-A33D-09FD1BA26338}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'Name' -Value 'LAV Splitter Source' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'CLSID' -Value '{B98D13E7-55DB-4385-A33D-09FD1BA26338}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'FilterType' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'Merit' -Value 8388612 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{EE30215D-164F-4A92-A4EB-9D4C13390F9F}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'Name' -Value 'LAV Video Decoder' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'CLSID' -Value '{EE30215D-164F-4A92-A4EB-9D4C13390F9F}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0000' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0001' -Value '{34363248-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0002' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0003' -Value '{34363268-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0004' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0005' -Value '{34363258-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0006' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0007' -Value '{34363278-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0008' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0009' -Value '{31435641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0010' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0011' -Value '{31637661-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0012' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0013' -Value '{31564343-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0014' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0015' -Value '{8D2D71CB-243F-45E3-B2D8-5FD7967EC09B}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0016' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0017' -Value '{43564D41-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0018' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0019' -Value '{3143564D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0020' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0021' -Value '{43564548-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0022' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0023' -Value '{31435648-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0024' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0025' -Value '{30314D48-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0026' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0027' -Value '{E436EB81-524F-11CE-9F53-0020AF0BA770}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0028' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0029' -Value '{E436EB86-524F-11CE-9F53-0020AF0BA770}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0030' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0031' -Value '{E06D8026-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0032' -Value '{ED0B916A-044D-11D1-AA78-00C04FC31D60}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0033' -Value '{E06D8026-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0034' -Value '{36523B13-8EE5-11D1-8CA3-0060B057664A}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0035' -Value '{E06D8026-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0036' -Value '{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0037' -Value '{E06D8026-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0038' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0039' -Value '{47504A4D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0040' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0041' -Value '{6765706A-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0042' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0043' -Value '{62706A6D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0044' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0045' -Value '{31435657-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0046' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0047' -Value '{31637677-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0048' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0049' -Value '{41564D57-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0050' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0051' -Value '{61766D77-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0052' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0053' -Value '{32505657-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0054' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0055' -Value '{32707677-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0056' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0057' -Value '{31564D57-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0058' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0059' -Value '{31766D77-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0060' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0061' -Value '{32564D57-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0062' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0063' -Value '{32766D77-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0064' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0065' -Value '{33564D57-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0066' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0067' -Value '{33766D77-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0068' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0069' -Value '{50564D57-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0070' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0071' -Value '{70766D77-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0072' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0073' -Value '{30375056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0074' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0075' -Value '{30385056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0076' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0077' -Value '{30395056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0078' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0079' -Value '{31305641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0080' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0081' -Value '{44495658-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0082' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0083' -Value '{64697678-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0084' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0085' -Value '{58564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0086' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0087' -Value '{78766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0088' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0089' -Value '{78766944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0090' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0091' -Value '{30355844-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0092' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0093' -Value '{30357864-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0094' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0095' -Value '{5634504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0096' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0097' -Value '{7634706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0098' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0099' -Value '{3253344D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0100' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0101' -Value '{3273346D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0102' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0103' -Value '{5334504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0104' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0105' -Value '{7334706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0106' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0107' -Value '{34504D46-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0108' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0109' -Value '{58564933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0110' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0111' -Value '{78766933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0112' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0113' -Value '{31564933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0114' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0115' -Value '{31766933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0116' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0117' -Value '{32564933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0118' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0119' -Value '{32766933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0120' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0121' -Value '{305A4C42-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0122' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0123' -Value '{564F4547-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0124' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0125' -Value '{3447504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0126' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0127' -Value '{3467706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0128' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0129' -Value '{3134504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0130' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0131' -Value '{3134706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0132' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0133' -Value '{31564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0134' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0135' -Value '{31766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0136' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0137' -Value '{3234504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0138' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0139' -Value '{3234706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0140' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0141' -Value '{32564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0142' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0143' -Value '{32766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0144' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0145' -Value '{3334504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0146' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0147' -Value '{3334706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0148' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0149' -Value '{33564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0150' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0151' -Value '{33766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0152' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0153' -Value '{3347504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0154' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0155' -Value '{3367706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0156' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0157' -Value '{34564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0158' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0159' -Value '{34766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0160' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0161' -Value '{35564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0162' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0163' -Value '{35766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0164' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0165' -Value '{36564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0166' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0167' -Value '{36766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0168' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0169' -Value '{33585644-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0170' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0171' -Value '{33787664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0172' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0173' -Value '{44564933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0174' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0175' -Value '{31564C46-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0176' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0177' -Value '{31766C66-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0178' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0179' -Value '{30365056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0180' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0181' -Value '{30367076-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0182' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0183' -Value '{31365056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0184' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0185' -Value '{31367076-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0186' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0187' -Value '{32365056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0188' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0189' -Value '{32367076-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0190' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0191' -Value '{41365056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0192' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0193' -Value '{61367076-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0194' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0195' -Value '{46365056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0196' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0197' -Value '{66367076-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0198' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0199' -Value '{34564C46-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0200' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0201' -Value '{34766C66-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0202' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0203' -Value '{31565346-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0204' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0205' -Value '{30315652-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0206' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0207' -Value '{30325652-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0208' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0209' -Value '{30335652-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0210' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0211' -Value '{30345652-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0212' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0213' -Value '{64737664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0214' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0215' -Value '{44535644-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0216' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0217' -Value '{48564443-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0218' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0219' -Value '{43564443-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0220' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0221' -Value '{35564443-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0222' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0223' -Value '{35327664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0224' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0225' -Value '{35325644-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0226' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0227' -Value '{30357664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0228' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0229' -Value '{30355644-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0230' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0231' -Value '{70637664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0232' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0233' -Value '{70357664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0234' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0235' -Value '{6E357664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0236' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0237' -Value '{70707664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0238' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0239' -Value '{20637664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0240' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0241' -Value '{31687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0242' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0243' -Value '{32687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0244' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0245' -Value '{33687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0246' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0247' -Value '{34687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0248' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0249' -Value '{35687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0250' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0251' -Value '{36687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0252' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0253' -Value '{71687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0254' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0255' -Value '{70687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0256' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0257' -Value '{76645641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0258' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0259' -Value '{31645641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0260' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0261' -Value '{32706A6D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0262' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0263' -Value '{43324A4D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0264' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0265' -Value '{43324A4C-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0266' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0267' -Value '{4B324A4C-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0268' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0269' -Value '{324A5049-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0270' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0271' -Value '{31515653-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0272' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0273' -Value '{33515653-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0274' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0275' -Value '{31363248-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0276' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0277' -Value '{31363268-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0278' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0279' -Value '{33363248-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0280' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0281' -Value '{33363268-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0282' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0283' -Value '{33363273-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0284' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0285' -Value '{33363273-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0286' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0287' -Value '{33363249-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0288' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0289' -Value '{33363269-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0290' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0291' -Value '{4F454854-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0292' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0293' -Value '{6F656874-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0294' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0295' -Value '{63637374-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0296' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0297' -Value '{32637374-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0298' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0299' -Value '{30355649-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0300' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0301' -Value '{31345649-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0302' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0303' -Value '{31335649-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0304' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0305' -Value '{32335649-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0306' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0307' -Value '{31535046-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0308' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0309' -Value '{55594648-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0310' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0311' -Value '{5347414C-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0312' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0313' -Value '{64697663-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0314' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0315' -Value '{20656C72-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0316' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0317' -Value '{30335056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0318' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0319' -Value '{31335056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0320' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0321' -Value '{44435343-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0322' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0323' -Value '{47455051-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0324' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0325' -Value '{302E3151-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0326' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0327' -Value '{312E3151-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0328' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0329' -Value '{485A534D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0330' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0331' -Value '{42494C5A-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0332' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0333' -Value '{617A7072-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0334' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0335' -Value '{00000001-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0336' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0337' -Value '{68637061-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0338' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0339' -Value '{6E637061-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0340' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0341' -Value '{73637061-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0342' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0343' -Value '{6F637061-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0344' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0345' -Value '{68347061-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0346' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0347' -Value '{78347061-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0348' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0349' -Value '{41524C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0350' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0351' -Value '{47524C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0352' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0353' -Value '{30594C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0354' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0355' -Value '{32594C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0356' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0357' -Value '{34594C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0358' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0359' -Value '{32595155-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0360' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0361' -Value '{47525155-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0362' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0363' -Value '{41525155-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0364' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0365' -Value '{30484C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0366' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0367' -Value '{32484C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0368' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0369' -Value '{34484C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0370' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0371' -Value '{32594D55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0372' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0373' -Value '{32484D55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0374' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0375' -Value '{34594D55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0376' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0377' -Value '{34484D55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0378' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0379' -Value '{47524D55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0380' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0381' -Value '{41524D55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0382' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0383' -Value '{56564D41-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0384' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0385' -Value '{46564D41-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0386' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0387' -Value '{64726376-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0388' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0389' -Value '{63617264-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0390' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0391' -Value '{6E645641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0392' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0393' -Value '{68645641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0394' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0395' -Value '{4D415243-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0396' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0397' -Value '{4356534D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0398' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0399' -Value '{4D414857-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0400' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0401' -Value '{53504238-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0402' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0403' -Value '{4F434F4C-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0404' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0405' -Value '{56424D5A-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0406' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0407' -Value '{31524356-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0408' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0409' -Value '{43534141-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0410' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0411' -Value '{574F4E53-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0412' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0413' -Value '{31564646-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0414' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0415' -Value '{48564646-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0416' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0417' -Value '{636E4D56-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0418' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0419' -Value '{434C4641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0420' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0421' -Value '{344D3247-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0422' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0423' -Value '{646F6369-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0424' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0425' -Value '{4B435544-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0426' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0427' -Value '{30324D54-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0428' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0429' -Value '{44484643-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0430' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0431' -Value '{5947414D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0432' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0433' -Value '{694B4942-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0434' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0435' -Value '{624B4942-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0436' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0437' -Value '{324B4D53-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0438' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0439' -Value '{344B4D53-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0440' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0441' -Value '{56504854-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0442' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0443' -Value '{56516F52-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0444' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0445' -Value '{20676E70-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0446' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0447' -Value '{46464954-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0448' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0449' -Value '{20504D42-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0450' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0451' -Value '{20464947-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0452' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0453' -Value '{20414754-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0454' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0455' -Value '{30313276-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0456' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0457' -Value '{30313476-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0458' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0459' -Value '{D80FA03C-35C1-4FA1-8C8E-375C8667166E}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'FilterType' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'Merit' -Value 8388611 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0003' -Name 'Type' -Value -2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'Name' -Value 'XySubFilter' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'CLSID' -Value '{2DFCB782-EC20-4A7C-B530-4577ADB33F21}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0000' -Value '{73747874-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0001' -Value '{E436EB8E-524F-11CE-9F53-0020AF0BA770}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0002' -Value '{73747874-0000-0010-8000-00AA00389B71}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0003' -Value '{00000000-0000-0000-0000-000000000000}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0004' -Value '{E487EB08-6B26-4BE9-9DD3-993434D313FD}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0005' -Value '{E436EB8E-524F-11CE-9F53-0020AF0BA770}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0006' -Value '{E487EB08-6B26-4BE9-9DD3-993434D313FD}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0007' -Value '{87C0B230-03A8-4FDF-8010-B27A5848200D}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0008' -Value '{E487EB08-6B26-4BE9-9DD3-993434D313FD}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0009' -Value '{3020560F-255A-4DDC-806E-6C5CC6DCD70A}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0010' -Value '{E487EB08-6B26-4BE9-9DD3-993434D313FD}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0011' -Value '{326444F7-686F-47FF-A4B2-C8C96307B4C2}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0012' -Value '{E487EB08-6B26-4BE9-9DD3-993434D313FD}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0013' -Value '{370689E7-B226-4F67-978D-F10BC1A9C6AE}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0014' -Value '{E487EB08-6B26-4BE9-9DD3-993434D313FD}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0015' -Value '{76C421C4-DB89-42EC-936E-A9FBC1794714}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0016' -Value '{E487EB08-6B26-4BE9-9DD3-993434D313FD}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0017' -Value '{F7239E31-9599-4E43-8DD5-FBAF75CF37F1}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0018' -Value '{E487EB08-6B26-4BE9-9DD3-993434D313FD}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0019' -Value '{04EBA53E-9330-436C-9133-553EC87031DC}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0020' -Value '{E487EB08-6B26-4BE9-9DD3-993434D313FD}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'mod0021' -Value '{34FFCBC3-D5B3-4171-9002-D4C60301697F}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'FilterType' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'Merit' -Value 8388610 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001' -Name 'Type' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001' -Name 'Disabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{6B237877-902B-4C6C-92F6-E63169A5166C}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001' -Name 'Name' -Value 'XySubFilterAutoLoader' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001' -Name 'CLSID' -Value '{6B237877-902B-4C6C-92F6-E63169A5166C}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001' -Name 'mod0000' -Value '{00000000-0000-0000-0000-000000000000}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001' -Name 'mod0001' -Value '{00000000-0000-0000-0000-000000000000}' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001' -Name 'FilterType' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001' -Name 'Merit' -Value -1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0002' -Name 'Type' -Value -2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'MainWidth2' -Value 640 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'MainHeight2' -Value 412 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowWidth' -Value -1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowHeight' -Value -1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'MainWindowState' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'ChatWindowVisible' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'PlayListWindowVisible' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'PlayListWidth' -Value 286 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow0' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow1' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow2' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow3' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow4' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow5' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow6' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow7' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow8' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow9' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'ControlBoxWidth' -Value 330 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'ControlBoxHeight' -Value 195 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LanguageIni' -Value 'Chinese(Simplified).ini' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'MftDecoder' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DmoDecoder' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Info1' -Value '' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Info6' -Value '' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Info7' -Value '' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LastConfigPage' -Value 359 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PlaybackMode' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LastPlayListName' -Value 'PotPlayerMini64.dpl' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LastSkinName' -Value 'YouTube_Slim.dsf' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LastSkinXmlName' -Value 'VideoSkin.xml' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LastSkinXmlNameVideo' -Value 'VideoSkin.xml' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'VideoRen2' -Value 10 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudioVolume' -Value 95 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'RepeatPlay2' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'RepeatPlayAudio' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PreviewSeekTime' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PreviewThumbnail' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PlaybackSearchFile' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'MotionBlur' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudioNormalize' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'OpenWithSameName' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'RememberPosition' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'RememberPositionAudio' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'ShowRememberList' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'CaptionVisible' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AllowMultiple' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'UseTooltip' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'UseMagWindow' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'EffectPage' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'EffectCastOnly' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'SkipCastPreview' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'ChatAttachToMain2' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'BroadcastAttachToMain2' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PlaylistAttachSize2' -Value 288 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'NormalAviSrc_new1' -Value 4 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DemageAviSrc_new1' -Value 3 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'NormalAsfSrc_new1' -Value 4 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DemageAsfSrc_new1' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'MkvSrc_new1' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg1Src_new1' -Value 3 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg2PsSrc_new1' -Value 4 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg2TsSrc_new1' -Value 3 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mp4Src_new1' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'OggSrc_new1' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mp3Src_new1' -Value 4 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AacSrc1' -Value 3 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'FlacSrc1' -Value 3 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'FlvSrc1' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WaveSrc1' -Value 4 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg1Video_new' -Value 3 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg2Video_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'XvidVideo_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DivxVideo_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'H264Video_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Avc1Video_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'HevcVideo_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Vc1Video_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WMV1Video_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WMV2Video_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WMV3Video_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Vp8Video' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Vp9Video' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Vc1Image_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WMV3Image_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mp3Audio_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg1Audio_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg2Audio_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AacAudio_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LatmAudio_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Ac3Audio_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Eac3Audio_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'TrueHDAudio_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'MlpAudio_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DtsAudio_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Lpcm2Audio_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'HdmvLpcmAudio' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'VorbisAudio_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'FlacAudio' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WmaV1Audio' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WmaV2Audio' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WmaProAudio' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WmaLosslessAudio' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WavPackAudio' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'OpusAudio' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudSpkIndex_new' -Value 22 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudOutBit_new' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'VideoTransformUseMode' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'VideoTransformSwitcher' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudioTransformUseMode' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudioTransformSwitcher' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'BuiltInAudioSwitcher' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WinampDspIndex' -Value -1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'UseMediaKey' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'ItuRecSpec' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'RGB2YUVLevel' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PauseOnMin' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PauseOnLock' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'StartScreenSize' -Value 4 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'CaptionTranslateEngine2' -Value 'SubtitleTranslate - google.as' -PropertyType String -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'VMR9ColorManagementEnable' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'D3DFullScreenUi' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'MessageFontWeight' -Value 400 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'MessageFontSize' -Value 14 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'SO_Desktop' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'SO_Download' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AttachWindowIndex' -Value 2 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudioVolumeWaveMax' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AutoLoadExtAudio' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'SaveConfigPause' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Win7WorkTool' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AutoAlignWindow' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'UseSideWindow' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DialogBaseFontSize' -Value 10 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DialogCharset' -Value 134 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'UseATextOut' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'TouchSupport' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'CheckAutoUpdate' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LastCheckDays' -Value 18712 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AutoUpdateStart' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AutoDownloadFile' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64' -Name 'AddMyComPL' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64' -Name 'ServiceValue' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64' -Name 'Check118_119' -Value 4 -PropertyType DWord -Force;
# LAV Filter Settings
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV') -ne $true) { New-Item 'HKCU:\Software\LAV' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Audio') -ne $true) { New-Item 'HKCU:\Software\LAV\Audio' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Audio\Formats') -ne $true) { New-Item 'HKCU:\Software\LAV\Audio\Formats' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Splitter') -ne $true) { New-Item 'HKCU:\Software\LAV\Splitter' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats') -ne $true) { New-Item 'HKCU:\Software\LAV\Splitter\Formats' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Video') -ne $true) { New-Item 'HKCU:\Software\LAV\Video' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Video\Formats') -ne $true) { New-Item 'HKCU:\Software\LAV\Video\Formats' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Video\Output') -ne $true) { New-Item 'HKCU:\Software\LAV\Video\Output' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'TrayIcon' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'DRCEnabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'DRCLevel' -Value 100 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'DTSHDFraming' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'BitstreamingFallback' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'AutoAVSync' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'ExpandMono' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Expand61' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'OutputStandardLayout' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Output51Legacy' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'AudioDelayEnabled' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'AudioDelay' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Mixing' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'MixingLayout' -Value 3 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'MixingFlags' -Value 4 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'MixingMode' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'MixingCenterLevel' -Value 7071 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'MixingSurroundLevel' -Value 7071 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'MixingLFELevel' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Bitstreaming_ac3' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Bitstreaming_eac3' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Bitstreaming_truehd' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Bitstreaming_dts' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Bitstreaming_dtshd' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'SampleFormat_s16' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'SampleFormat_s24' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'SampleFormat_s32' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'SampleFormat_u8' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'SampleFormat_fp32' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'SampleConvertDither' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'aac' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'ac3' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'eac3' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'dts' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'mp2' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'mp3float' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'truehd' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'flac' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'vorbis' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'lpcm' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'pcm' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'wavpack' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'tta' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'wma' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'wmapro' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'cook' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'realaudio' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'wmalossless' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'alac' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'opus' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'amr' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'nellymoser' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'mspcm' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'truespeech' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'tak' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'atrac' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'matroska' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'avi' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mp4' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mpegts' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mpeg' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'bluray' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'flv' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ogg' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rm' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'wtv' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'asf' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mxf' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'bink' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'avisynth' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rtmp' -Value 0 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rtsp' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rtp' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mms' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dts' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ac3' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'aac' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mp3' -Value 1 -PropertyType DWord -Force;
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'flac' -Value 1 -PropertyType DWord -Force;
# Chrome 策略
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome\SpellcheckLanguage') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Google\Chrome\SpellcheckLanguage' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'ScreenCaptureAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DefaultGeolocationSetting' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DefaultNotificationsSetting' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DefaultSensorsSetting' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AdditionalDnsQueryTypesEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AdsSettingForIntrusiveAdsSites' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AdvancedProtectionAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AudioProcessHighPriorityEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AudioSandboxEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AutofillCreditCardEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AutoplayAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'BackgroundModeEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'BookmarkBarEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'BrowserNetworkTimeQueriesEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'BuiltInDnsClientEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DNSInterceptionChecksEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DiskCacheDir' -Value 'C:\TEMP' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DiskCacheSize' -Value 1717986918 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DnsOverHttpsMode' -Value 'off' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DownloadRestrictions' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'FetchKeepaliveDurationSecondsOnShutdown' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'ForceGoogleSafeSearch' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'ForceYouTubeRestrict' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'HardwareAccelerationModeEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'IntensiveWakeUpThrottlingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'IntranetRedirectBehavior' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'MaxConnectionsPerProxy' -Value 512 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'MaxInvalidationFetchDelay' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'MediaRecommendationsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'NTPCardsVisible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'NTPMiddleSlotAnnouncementVisible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'NetworkPredictionOptions' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'PromotionalTabsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'PromptForDownloadLocation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'SafeSitesFilterBehavior' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'ShowFullUrlsInAddressBar' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'SpellCheckServiceEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'SpellcheckEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'TotalMemoryLimitMb' -Value 20480 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'UserFeedbackAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'PasswordLeakDetectionEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'PasswordProtectionWarningTrigger' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'SafeBrowsingExtendedReportingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'SafeBrowsingProtectionLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'ShowHomeButton' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'EnableMediaRouter' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'ShowCastIconInToolbar' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AccessCodeCastEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'SideSearchEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AbusiveExperienceInterventionEnforce' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AlwaysOpenPdfExternally' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AutofillAddressEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DownloadDirectory' -Value 'D:\Downloads' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DownloadBubbleEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'EnterpriseRealTimeUrlCheckMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'HistoryClustersVisible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'PaymentMethodQueryEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'RequireOnlineRevocationChecksForLocalAnchors' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'SafeBrowsingForTrustedSourcesEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'SavingBrowserHistoryDisabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'SearchSuggestEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'ShowAppsShortcutInBookmarkBar' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'TranslateEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'UrlKeyedAnonymizedDataCollectionEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'HomepageIsNewTabPage' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'BlockThirdPartyCookies' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome\SpellcheckLanguage' -Name '1' -Value 'en-US' -PropertyType String -Force
# Firefox策略
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Certificates') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Certificates' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Proxy') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Proxy' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'AppAutoUpdate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'BackgroundAppUpdate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DefaultDownloadDirectory' -Value 'D:\Downloads' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableDefaultBrowserAgent' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableFirefoxStudies' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisablePocket' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableTelemetry' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DontCheckDefaultBrowser' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Certificates' -Name 'ImportEnterpriseRoots' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Proxy' -Name 'Mode' -Value 'none' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Proxy' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Name 'Cache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Name 'Cookies' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Name 'Downloads' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Name 'FormData' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Name 'History' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Name 'Sessions' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Name 'SiteSettings' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Name 'OfflineApps' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Name 'Locked' -Value 1 -PropertyType DWord -Force
# Edge策略
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'InstallDefault' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'UpdateDefault' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'UpdaterExperimentationAndConfigurationServiceControl' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'CreateDesktopShortcut' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'Install{F3017226-FE2A-4295-8BDF-00C3A9A7E4C5}' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'Update{F3017226-FE2A-4295-8BDF-00C3A9A7E4C5}' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge' -Name 'NoRemove' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge' -Name 'NoRemove' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\EdgeUpdate") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\EdgeUpdate" -force -ea };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\EdgeUpdate' -Name 'DoNotUpdateToEdgeWithChromium' -Value 1 -PropertyType DWord -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.pdf\OpenWithProgids' -Name 'MSEdgePDF' -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723' -Force -Recurse
# SysinternalsSuite
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\AccessChk") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\AccessChk" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\AccessEnum") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\AccessEnum" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\AdExplorer") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\AdExplorer" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\AdInsight") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\AdInsight" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\AdRestore") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\AdRestore" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Autologon") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Autologon" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Autoruns") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Autoruns" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\BgInfo") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\BgInfo" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\BlueScreen") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\BlueScreen" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\CacheSet") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\CacheSet" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\ClockRes") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\ClockRes" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Contig") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Contig" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Coreinfo") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Coreinfo" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Ctrl2cap") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Ctrl2cap" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\DebugView") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\DebugView" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Desktops") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Desktops" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Disk Usage") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Disk Usage" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Disk2vhd") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Disk2vhd" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\DiskExt") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\DiskExt" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Diskmon") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Diskmon" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\DiskView") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\DiskView" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\EFSDump") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\EFSDump" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Handle") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Handle" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Hex2dec") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Hex2dec" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Junction") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Junction" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\LDMDump") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\LDMDump" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\ListDLLs") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\ListDLLs" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\LiveKd") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\LiveKd" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\LoadOrder") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\LoadOrder" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\LogonSessions") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\LogonSessions" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\MoveFile") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\MoveFile" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\NTFSInfo") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\NTFSInfo" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PageDefrag") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PageDefrag" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PendMoves") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PendMoves" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PipeList") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PipeList" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PortMon") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PortMon" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\ProcDump") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\ProcDump" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Process Explorer") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Process Explorer" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Process Monitor") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Process Monitor" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\ProcFeatures") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\ProcFeatures" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsExec") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsExec" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsFile") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsFile" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsGetSid") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsGetSid" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsInfo") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsInfo" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsKill") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsKill" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsList") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsList" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsLoggedOn") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsLoggedOn" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsLogList") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsLogList" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsPasswd") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsPasswd" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsService") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsService" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsShutdown") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsShutdown" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsSuspend") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsSuspend" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\PsTools") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\PsTools" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\RAMMap") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\RAMMap" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\RegDelNull") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\RegDelNull" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\RegJump") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\RegJump" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\RootkitRevealer") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\RootkitRevealer" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\SDelete") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\SDelete" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\ShareEnum") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\ShareEnum" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\ShellRunas") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\ShellRunas" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Sigcheck") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Sigcheck" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Streams") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Streams" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Strings") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Strings" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Sync") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Sync" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\TCPView") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\TCPView" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\VMMap") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\VMMap" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\VolumeId") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\VolumeId" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\Whois") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\Whois" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\WinObj") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\WinObj" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Sysinternals\ZoomIt") -ne $true) {  New-Item "HKCU:\Software\Sysinternals\ZoomIt" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\AccessChk' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\AccessEnum' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\AdExplorer' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\AdInsight' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\AdRestore' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Autologon' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Autoruns' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\BgInfo' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\BlueScreen' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\CacheSet' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\ClockRes' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Contig' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Coreinfo' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Ctrl2cap' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\DebugView' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Desktops' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Disk Usage' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Disk2vhd' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\DiskExt' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Diskmon' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\DiskView' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\EFSDump' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Handle' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Hex2dec' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Junction' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\LDMDump' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\ListDLLs' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\LiveKd' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\LoadOrder' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\LogonSessions' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\MoveFile' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\NTFSInfo' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PageDefrag' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PendMoves' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PipeList' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PortMon' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\ProcDump' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Process Explorer' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Process Monitor' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\ProcFeatures' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsExec' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsFile' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsGetSid' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsInfo' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsKill' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsList' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsLoggedOn' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsLogList' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsPasswd' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsService' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsShutdown' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsSuspend' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\PsTools' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\RAMMap' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\RegDelNull' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\RegJump' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\RootkitRevealer' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\SDelete' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\ShareEnum' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\ShellRunas' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Sigcheck' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Streams' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Strings' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Sync' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\TCPView' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\VMMap' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\VolumeId' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Whois' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\WinObj' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\ZoomIt' -Name 'EulaAccepted' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Process Explorer' -Name 'OneInstance' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Process Explorer' -Name 'AlwaysOntop' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Process Explorer' -Name 'UnicodeFont' -Value 'hex(3):08,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,90,01,00,00,00,00,00,86,00,00,00,00,53,00,69,00,6D,00,53,00,75,00,6E,00,00,00,6C,00,20,00,44,00,6C,00,67,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00' -PropertyType String -Force
# startisback
if ((Test-Path -LiteralPath 'HKCU:\Software\StartIsBack') -ne $true) { New-Item 'HKCU:\Software\StartIsBack' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'ModernIconsColorized' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'WelcomeShown' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'FrameStyle' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'OrbBitmap' -Value 'C:\Program Files\StartAllBack\Orbs\Windows 7.orb' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarStyle' -Value 'Windows 7.msstyles' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'SysTrayStyle' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarOneSegment' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarCenterIcons' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarTranslucentEffect' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'AlterStyle' -Value 'Windows 7.msstyles' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'BottomDetails' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'NavBarGlass' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'NoXAMLMenus' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'UndeadControlPanel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'StartMenuAlpha' -Value 128 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarAlpha' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarColor' -Value 16777215 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'CustomColors' -Value 'ColorA=FFFFFFFF' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarBlur' -Value 0 -PropertyType DWord -Force
# ProcessLasso
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\ProcessLasso') -ne $true) { New-Item 'HKLM:\SOFTWARE\ProcessLasso' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\ProcessLasso' -Name 'UpdateChecksEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\ProcessLasso' -Name 'UpdateIncludeBetas' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\ProcessLasso' -Name 'UpdatePromptless' -Value 1 -PropertyType DWord -Force
# Internet Download Manager
if ((Test-Path -LiteralPath 'HKCU:\Software\DownloadManager') -ne $true) { New-Item 'HKCU:\Software\DownloadManager' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'Extensions' -Value '3GP 7Z AAC ACE AIF APK ARJ ASF AVI BIN BZ2 EXE GZ GZIP IMG ISO LZH M4A M4V MKV MOV MP3 MP4 MPA MPE MPEG MPG MSI MSU OGG OGV PLJ PPS PPT QT R0* R1* RA RAR RM RMVB SEA SIT SITX TAR TIF TIFF WAV WMA WMV Z ZIP' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'RememberLastSave' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'bSetServerTimeToFile' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'TempPath' -Value 'C:\TEMP' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'startImmediately' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'ExceptionProxyServers' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'bUseSocks' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'SocksType' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'Socks5ProxyDNS' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'nHttpPrChbSt' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'nFtpPrChbSt' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'nHttpsPrChbSt' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'UseHttpsProxy' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'nProxyMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'kbUPFBoErfCD' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'NewConnType' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'MaxConnectionsNumber' -Value 32 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'bQueueSelPnlOnDlLt' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'bQueueSelPnlOnGAL' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'bIgnMTCh' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'StartDlgShowing' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'RememberDuplLinksA' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'isUseWinDialUp' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'mAttempts' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager' -Name 'mRedialTime' -Value 30 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\DownloadManager\ProxyPac') -ne $true) { New-Item 'HKCU:\Software\DownloadManager\ProxyPac' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\DownloadManager\Scheduler') -ne $true) { New-Item 'HKCU:\Software\DownloadManager\Scheduler' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager\ProxyPac' -Name 'Address' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager\ProxyPac' -Name 'bUse' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager\Scheduler' -Name 'isLimitEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager\Scheduler' -Name 'm_MBytes' -Value 200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager\Scheduler' -Name 'm_hours' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\DownloadManager\Scheduler' -Name 'showLimitExceededWarning' -Value 1 -PropertyType DWord -Force
# Office套件 - Teams
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\Teams') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\Teams' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\Teams' -Name 'PreventInstallationFromMsi' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications' -Name 'ConfigureChatAutoInstall' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate' -Name 'PreventTeamsInstall' -Value 1 -PropertyType DWord -Force
# Office套件 - OneNote
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\OneNote\Options\Other') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\16.0\OneNote\Options\Other' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\OneNote\Options\Other' -Name 'RunSystemTrayApp' -Value 0 -PropertyType DWord -Force
# Office套件 - 通用
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Outlook\AutoDiscover') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\16.0\Outlook\AutoDiscover' -Force s };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Outlook\AutoDiscover' -Name 'ExcludeExplicitO365Endpoint' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Office\16.0\Common" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\Feedback") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\Feedback" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\Graphics") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\Graphics" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Outlook\Options\Calendar") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Office\16.0\Outlook\Options\Calendar" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Outlook\Options\Mail") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Office\16.0\Outlook\Options\Mail" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Word\Options") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Office\16.0\Word\Options" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\Common\ClientTelemetry") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Office\Common\ClientTelemetry" -force };
Remove-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common' -Name 'BlockHTTPimages' -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common' -Name 'QMEnable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\Feedback' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\Graphics' -Name 'DisableAnimations' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Outlook\Options\Calendar' -Name 'EnableCalendarLogging' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Outlook\Options\Mail' -Name 'EnableLogging' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'EnableLogging' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\Common\ClientTelemetry' -Name 'DisableTelemetry' -Value 160000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\Common\ClientTelemetry' -Name 'VerboseLogging' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\Office\16.0\osm") -ne $true) {  New-Item "HKCU:\Software\Policies\Microsoft\Office\16.0\osm" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Office\16.0\osm' -Name 'Enablelogging' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Office\16.0\osm' -Name 'EnableUpload' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'DisableBootToOfficeStart' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'IMEControlActive' -Value 0 -PropertyType DWord -Force

#######################################################################################################网络优化##############################################################################################################################

# CMD优化
'netsh int tcp set global rss=enable' | cmd
'netsh int tcp set global autotuninglevel=normal' | cmd
'netsh int tcp set heuristics disabled' | cmd
'netsh int tcp set global ecncapability=enable' | cmd
'netsh int tcp set global timestamps=disabled' | cmd
'netsh int tcp set global initialrto=2000' | cmd
'netsh int tcp set global rsc=disable' | cmd
'netsh int tcp set global fastopen=enable' | cmd
'netsh int tcp set global hystart=disable' | cmd
'netsh int tcp set global pacingprofile=off' | cmd
'netsh int ip set global minmtu=576' | cmd
'netsh int ip set global flowlabel=disable' | cmd
'netsh int tcp set supplemental internet congestionprovider=CTCP' | cmd
'netsh int tcp set supplemental internet enablecwndrestart=disable' | cmd
'netsh int ip set global icmpredirects=disabled' | cmd
'netsh int ip set global multicastforwarding=disabled' | cmd
'netsh int ip set global groupforwardedfragments=disable' | cmd
'netsh int tcp set security mpp=disabled profiles=disabled' | cmd
'netsh int tcp set heur forcews=disable' | cmd
'netsh int 6to4 set state state=enabled undoonstop=disabled' | cmd
'netsh int 6to4 set routing routing=enabled sitelocals=enabled' | cmd
'netsh int tcp set global nonsackrttresiliency=disabled' | cmd
'netsh wlan stop hostednetwork' | cmd
'netsh wlan set hostednetwork mode=disallow' | cmd
# 设置所有网络类型为专用而非公共
Set-NetConnectionProfile -NetworkCategory Private -Verbose
Set-NetConnectionProfile -InterfaceAlias WLAN -NetworkCategory 'Private'
Set-NetConnectionProfile -InterfaceAlias Ethernet -NetworkCategory 'Private'
# Get-NetAdapterBinding -IncludeHidden -AllBindings | Format-Table -AutoSize
# Get-NetAdapterBinding | Where-Object { $_.Enabled -eq 'True' } | Set-NetAdapterBinding -Enabled 0 -IncludeHidden -AllBindings -Verbose
Set-NetIPInterface -InterfaceAlias '*' -NlMtuBytes 1440
Set-NetAdapterBinding -Name '*' -ComponentID ms_pacer -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_ndiscap -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_lldp -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_msclient -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_lltdio -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_rspndr -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_implat -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_server -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_tcpip6 -Enabled 1
# remove Microsoft Wi-Fi Direct Virtual Adapter
Remove-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\WlanSvc\Parameters\HostedNetworkSettings' -Name 'HostedNetworkSettings' -Force
# When creating a TCP connection, the sending side performs a "TCP slow start" regardles of the receiver RWIN value. TCP slow start only sends two frames, waits for ACK response, and increases speed exponentially provided there are no dropped packets. This slow start algorithm can also be activated if there is no traffic for 200ms. This is not optimal for fast internet connections with intermittent bursts of data. This bottleneck can be avoided by increasing the "InitialcongestionWindow" from the default 2 (or 4) frames to 10+ (See RFC 3390 and RFC 6928).
Set-NetTCPSetting -SettingName Internet -InitialCongestionWindow 10
# Sets the number of times to attempt to reestablish a connection with SYN packets
Set-NetTCPSetting -SettingName Internet -MaxSynRetransmissions 2
# MinRTO Default value: 300 (ms) Recommended: 300 (ms)
Set-NetTCPSetting -SettingName Internet -MinRto 300
# disabled (for gaming and slightly lower latency at the expense of higher CPU usage and more multicast traffic, and when using Wi-Fi adapters), enabled (for pure throughput when lower CPU utilization is important)
Set-NetOffloadGlobalSetting -PacketCoalescingFilter enabled
# Disabling Net Adapter QoS...
Disable-NetAdapterQos -Name '*'
# Disabling Net Adapter Power Management...
Disable-NetAdapterPowerManagement -Name '*'
# Enabling Net Adapter Checksum Offload...
Enable-NetAdapterChecksumOffload -Name '*'
# Disabling Net Adapter Encapsulated Packet Task Offload...
Disable-NetAdapterEncapsulatedPacketTaskOffload -Name '*'
# Enabling Net Adapter IPsec Offload...
Enable-NetAdapterIPsecOffload -Name '*'
# The Disable-NetAdapterLso cmdlet disables the state of the large send offload (LSO) settings, such as LSOv4 and LSOv6, on the network adapter. If neither LSOv4 or LSOv6 is specified, then both are disabled. LSO is a technology in which the work of segmenting data into network frames is performed by the network adapter instead of by the TCP/IP stack. With LSO, TCP/IP sends very large data packets down to the network adapter driver and the network adapter hardware. The network adapter breaks up the data into smaller network-sized frames. This increases the speed of large packet send operations and decreases the processor usage of the computer, because the work is performed on the network adapter.
Disable-NetAdapterLso -Name '*'
# Enabling Net Adapter Packet Direct...
Enable-NetAdapterPacketDirect -Name '*'
# Disabling Net Adapter Receive Side Coalescing...
Disable-NetAdapterRsc -Name '*'
# Enabling Net Adapter Receive Side Scaling...
Enable-NetAdapterRss -Name '*'
# Get-NetAdapterAdvancedProperty -Name "以太网" -AllProperties
Set-NetAdapterAdvancedProperty -Name '以太网' -DisplayName '流控制' -DisplayValue '关闭'
Set-NetAdapterAdvancedProperty -Name '以太网' -DisplayName 'Power Saving Mode' -DisplayValue '关闭'
Set-NetAdapterAdvancedProperty -Name '以太网' -DisplayName '网络唤醒和关机连接速度' -DisplayValue '不降速'
Set-NetAdapterAdvancedProperty -Name '以太网' -DisplayName '中断调整' -DisplayValue 'Disabled'
Set-NetAdapterAdvancedProperty -Name '以太网' -DisplayName '环保节能' -DisplayValue '关闭'
Set-NetAdapterAdvancedProperty -Name '以太网' -DisplayName '节能乙太网路' -DisplayValue '关闭'
Set-NetAdapterAdvancedProperty -Name '以太网' -DisplayName 'Advanced EEE' -DisplayValue '关闭'
Set-NetAdapterAdvancedProperty -Name '以太网' -DisplayName 'ARP 减负' -DisplayValue '关闭'
Set-NetAdapterAdvancedProperty -Name '以太网' -DisplayName 'NS 减负' -DisplayValue '关闭'
Set-NetAdapterAdvancedProperty -Name '以太网' -DisplayName 'Gigabit Lite' -DisplayValue '关闭'

# https://admx.help/?Category=Windows_10_2016&Policy=Microsoft.Policies.QualityofService::QosTimerResolution
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched' -Name 'TimerResolution' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Psched' -Name 'NonBestEffortLimit' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Psched' -Name 'MaxOutstandingSends' -Value -294967296 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming' -Name 'ServiceTypeGuaranteed' -Value 46 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming' -Name 'ServiceTypeNetworkControl' -Value 56 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming' -Name 'ServiceTypeGuaranteed' -Value 46 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming' -Name 'ServiceTypeNetworkControl' -Value 56 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping' -Name 'ServiceTypeGuaranteed' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping' -Name 'ServiceTypeNetworkControl' -Value 7 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS' -Name 'Application DSCP Marking Request' -Value 'Ignored' -PropertyType String -Force
# Disable Peer-to-Peer Networking
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Peernet' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LLTD') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LLTD' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LLTD' -Name 'EnableRspndr' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LLTD' -Name 'EnableLLTDIO' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters' -Name 'BcastNameQueryCount' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters' -Name 'BcastQueryTimeout' -Value 750 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters' -Name 'EnableDns' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters' -Name 'EnableLMHOSTS' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters' -Name 'EnableProxy' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters' -Name 'LmhostsTimeout' -Value 500 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters' -Name 'NameSrvQueryCount' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters' -Name 'NameSrvQueryTimeout' -Value 500 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters' -Name 'SMBDeviceEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters' -Name 'WinsDownTimeout' -Value -1 -PropertyType DWord -Force
# SMB 1.0
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Browser\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\Browser\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Browser\Parameters' -Name 'MaintainServerList' -Value 'Yes' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Browser\Parameters' -Name 'IsDomainMaster' -Value 'True' -PropertyType String -Force
# Disable New Network Location Window
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Network\NewNetworkWindowOff') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Network\NewNetworkWindowOff' -Force };
# Disable Automatic Setup of Network Connected Devices
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\NcdAutoSetup\Private') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\NcdAutoSetup\Private' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\NcdAutoSetup\Private' -Name 'AutoSetup' -Value 0 -PropertyType DWord -Force
# Quality of Service policy
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched' -Name 'MaxOutstandingSends' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched' -Name 'NonBestEffortLimit' -Value 0 -PropertyType DWord -Force
# DNS
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'DnsPriority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'HostsPriority' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'LocalPriority' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'NetbtPriority' -Value 7 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Name 'EnableMulticast' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Name 'RegistrationEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Name 'DisableIdnEncoding' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Name 'EnableIdnMapping' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows NT\DNSClient' -Name 'DoHPolicy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows NT\DNSClient' -Name 'DisableSmartNameResolution' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows NT\DNSClient' -Name 'DisableSmartProtocolReordering' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows NT\DNSClient' -Name 'PreferLocalOverLowerBindingDNS' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows NT\DNSClient' -Name 'QueryNetBTFQDN' -Value 0 -PropertyType DWord -Force
# 关闭DNS加密
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'EnableAutoDoh' -Value 0 -PropertyType DWord -Force
# 关闭mDNS
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'EnableMDNS' -Value 0 -PropertyType DWord -Force
# https://techcommunity.microsoft.com/t5/networking-blog/aligning-on-mdns-ramping-down-netbios-name-resolution-and-llmnr/ba-p/3290816
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'EnableNetbios' -Value 0 -PropertyType DWord -Force
# 
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Network Connections' -Name 'NC_DoNotShowLocalOnlyIcon' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator' -Name 'DisablePassivePolling' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator' -Name 'UseGlobalDNS' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator' -Name 'NoActiveProbe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'EnableActiveProbing' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\DisallowNetworkConnectivityActiveTests") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\DisallowNetworkConnectivityActiveTests" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\DisallowNetworkConnectivityActiveTests' -Name 'value' -Value 1 -PropertyType DWord -Force
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveDnsProbeContent' -Value '131.107.255.255' -PropertyType String -Force
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveDnsProbeContentV6' -Value 'fd3e:4f5a:5b81::1' -PropertyType String -Force
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveDnsProbeHost' -Value 'dns.msftncsi.com' -PropertyType String -Force
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveDnsProbeHostV6' -Value 'dns.msftncsi.com' -PropertyType String -Force
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbeContent' -Value 'Microsoft NCSI' -PropertyType String -Force
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbeContentV6' -Value 'Microsoft NCSI' -PropertyType String -Force
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbeHost' -Value 'www.msftncsi.com' -PropertyType String -Force
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbeHostV6' -Value 'ipv6.msftncsi.com' -PropertyType String -Force
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbePath' -Value 'ncsi.txt' -PropertyType String -Force
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbePathV6' -Value 'ncsi.txt' -PropertyType String -Force
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'MinimumInternetHopCount' -Value 2 -PropertyType DWord -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'AllowUserRawAccess' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'ArpCacheLife' -Value 86400 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'DeadGWDetectDefault' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'DefaultTTL' -Value 128 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'DisableTaskOffload' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'DontAddDefaultGatewayDefault' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'EnableDca' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'EnableICMPRedirect' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'EnablePMTUBHDetect' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'EnablePMTUDiscovery' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'EnableRSS' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'EnableSecurityFilters' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'EnableTCPA' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'EnableTCPChimney' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'EnableWsd' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'ForwardBroadcasts' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'IPAutoconfigurationEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'IPEnableRouter' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'KeepAliveTime' -Value 300000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'NumTcbTablePartitions' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'SackOpts' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'StrictTimeWaitSeqCheck' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'SynAttackProtect' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'TCP1323Opts' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'TcpACKFrequency' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'TcpMaxDupAcks' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'TcpTimedWaitDelay' -Value 30 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'TcpUseRFC1122UrgentPointer' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'TcpWindowSize' -Value 64768 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'UseDomainNameDevolution' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'DisableUserTOSSetting' -Value 1 -PropertyType DWord -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'GlobalMaxTcpWindowSize' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'MaxHashTableSize' -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'PriorityBoost' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'IrpStackSize' -Value 50 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'DefaultSendWindow' -Value 64512 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'DefaultReceiveWindow' -Value 64512 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WinSock2\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\WinSock2\Parameters' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WinSock2\Parameters' -Name 'Ws2_32NumHandleBuckets' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mrxsmb') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\mrxsmb' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer' -Name 'EnableOplocks' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer' -Name 'OplocksDisabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mrxsmb' -Name 'OplocksDisabled' -Value 1 -PropertyType DWord -Force
# ipv6
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters' -Name 'DisabledComponents' -Value 0 -PropertyType DWord -Force
Set-NetTeredoConfiguration -Type Enterpriseclient
Set-NetTeredoConfiguration -ServerName 'teredo.remlab.net'
Set-Net6to4Configuration -State Enabled -AutoSharing Enabled -RelayState Enabled -RelayName '6to4.ipv6.microsoft.com'
#
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters' -Name 'AutoShareServer' -Type DWord -Value 0 -Force
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters' -Name 'AutoShareWks' -Type DWord -Value 0 -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters' -Name 'AdjustedNullSessionPipes' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters' -Name 'Hidden' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters' -Name 'Lmannounce' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters' -Name 'PipeFirewallActive' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters' -Name 'Size' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters' -Name 'ThreadPriority' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters' -Name 'autodisconnect' -Value 15 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters' -Name 'enableforcedlogoff' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters' -Name 'enablesecuritysignature' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters' -Name 'requiresecuritysignature' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters' -Name 'restrictnullsessaccess' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lanmanworkstation\parameters' -Name 'DisableByteRangeLockingOnReadOnlyFiles' -Value 1 -PropertyType DWord -Force
#
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters" -force };
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters' -Name 'BrowserFindMasterTimeout' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters' -Name 'BrowserMinimumConfiguredBrowsers' -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters' -Name 'CscEnabled' -Value 0 -PropertyType DWord -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters' -Name 'DeferredOpensEnabled' -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters' -Name 'EnableCompression' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters' -Name 'IgnoreBindingOrder' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters' -Name 'IrpStackSize' -Value 50 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters' -Name 'MultiUserEnabled' -Value 1 -PropertyType DWord -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters' -Name 'OplocksDisabled' -Force
# TLS 1.2
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client' -Name 'DisabledByDefault' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client' -Name 'Enabled' -Value 1 -PropertyType DWord -Force
# SMB
Set-SmbServerConfiguration -EnableSMB1Protocol $true -Force
Set-SmbClientConfiguration -EnableInsecureGuestLogons 1 -Force
Set-SmbClientConfiguration -EnableBandwidthThrottling 1 -Force

####################################################################################################### 显示/语言 ##############################################################################################################################

# 系统区域
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\International\Geo') -ne $true) { New-Item 'HKCU:\Control Panel\International\Geo' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\Geo' -Name 'Nation' -Value '244' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\Geo' -Name 'Name' -Value 'US' -PropertyType String -Force
# 鼠标
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Mouse') -ne $true) { New-Item 'HKCU:\Control Panel\Mouse' -Force }
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'ActiveWindowTracking' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'Beep' -Value 'No' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'MouseSensitivity' -Value '10' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'MouseSpeed' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'MouseThreshold1' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'MouseThreshold2' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'MouseTrails' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'MouseHoverTime' -Value '1' -PropertyType String -Force
Set-ItemProperty -Path 'HKCU:\Control Panel\Mouse' 'SmoothMouseXCurve' ([byte[]](0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0xCC, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x99, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x66, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x33, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00)) -Force
Set-ItemProperty -Path 'HKCU:\Control Panel\Mouse' 'SmoothMouseXCurve' ([byte[]](0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00)) -Force
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Cursors') -ne $true) { New-Item 'HKCU:\Control Panel\Cursors' -Force }
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'ContactVisualization' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'GestureVisualization' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouclass\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\mouclass\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouclass\Parameters' -Name 'MouseDataQueueSize' -Value 25 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed' -Name 'CursorSensitivity' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed' -Name 'CursorUpdateInterval' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed' -Name 'IRRemoteNavigationDelta' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' -Name 'AttractionRectInsetInDIPS' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' -Name 'DistanceThresholdInDIPS' -Value 40 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' -Name 'MagnetismDelayInMilliseconds' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' -Name 'MagnetismUpdateIntervalInMilliseconds' -Value 16 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' -Name 'VelocityInDIPSPerSecond' -Value 360 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouhid\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\mouhid\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouhid\Parameters' -Name 'UseOnlyMice' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouhid\Parameters' -Name 'TreatAbsolutePointerAsAbsolute' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouhid\Parameters' -Name 'TreatAbsoluteAsRelative' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableCursorSuppression' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\pci\Parameters' -Name 'ASPMOptOut' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\usbflags') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\usbflags' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\usbflags' -Name 'fid_D1Latency' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\usbflags' -Name 'fid_D2Latency' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\usbflags' -Name 'fid_D3Latency' -Value 0 -PropertyType DWord -Force
# 键盘
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters' -Name 'KeyboardDataQueueSize' -Value 25 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Keyboard') -ne $true) { New-Item 'HKCU:\Control Panel\Keyboard' -Force }
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Keyboard' -Name 'KeyboardDelay' -Value '0' -PropertyType String -Force
# 
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\AudioDescription') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\AudioDescription' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\Blind Access') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\Blind Access' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\HighContrast') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\HighContrast' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\Keyboard Preference') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\Keyboard Preference' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\Keyboard Response') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\Keyboard Response' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\MouseKeys') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\MouseKeys' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\On') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\On' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\SlateLaunch') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\SlateLaunch' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\StickyKeys') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\StickyKeys' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\ToggleKeys') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\ToggleKeys' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility' -Name 'MessageDuration' -Value 7 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility' -Name 'DynamicScrollbars' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility' -Name 'Sound on Activation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility' -Name 'Warning Sounds' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\AudioDescription' -Name 'On' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\Blind Access' -Name 'On' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\HighContrast' -Name 'Flags' -Value '4194' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\Keyboard Preference' -Name 'On' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\Keyboard Response' -Name 'Flags' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\MouseKeys' -Name 'Flags' -Value '128' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\On' -Name 'On' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\SlateLaunch' -Name 'ATapp' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\SlateLaunch' -Name 'LaunchAT' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\StickyKeys' -Name 'Flags' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\ToggleKeys' -Name 'Flags' -Value '0' -PropertyType String -Force
# New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -Name 'PinYin' -Value 'C:\Windows\System32\ctfmon.exe' -PropertyType String -Force
# 微软拼音输入法
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1' -Name 'EnableFixedCandidateCountMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1' -Name 'FontStyleTSF3' -Value '20.00pt; Regular; ; Microsoft YaHei UI' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1' -Name 'MaxCandidates' -Value 9 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnablePeopleName' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableUMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'Enable EUDP' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'Enable self-learning' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableSmartSelfLearning' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableLiveSticker' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableVMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableSmartFuzzyPinyin' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'Enable Auto Correction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'English Switch Key' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableSimplifiedTraditionalOutputSwitch' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'Enable Cloud Candidate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'Enable Dynamic Candidate Ranking' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableExtraDomainType' -Value 1 -PropertyType DWord -Force
Remove-Item -LiteralPath 'HKCU:\Control Panel\Input Method\Hot Keys\00000104' -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableHap' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'HalfWidthInputModeByDefault' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableSuperAbbreviatedPinyin' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableOpenEmoticonSymbolView' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1') -ne $true) { New-Item 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1' -Name 'ShowSymbolViewActionButton' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Keyboard Layout\Toggle') -ne $true) { New-Item 'HKCU:\Keyboard Layout\Toggle' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Toggle' -Name 'Language Hotkey' -Value '3' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Toggle' -Name 'Layout Hotkey' -Value '3' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Toggle' -Name 'Hotkey' -Value '3' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\International\User Profile') -ne $true) { New-Item 'HKCU:\Control Panel\International\User Profile' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'ShowAutoCorrection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'ShowTextPrediction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'HttpAcceptLanguageOptOut' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'InputMethodOverride' -Value '0409:00000409' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'UserLocaleFromLanguageProfileOptOut' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\International\User Profile System Backup') -ne $true) { New-Item 'HKCU:\Control Panel\International\User Profile System Backup' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile System Backup' -Name 'ShowAutoCorrection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile System Backup' -Name 'ShowTextPrediction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile System Backup' -Name 'UserLocaleFromLanguageProfileOptOut' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\InputMethod\Settings\CHS') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\InputMethod\Settings\CHS' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\InputMethod\Settings\Shared') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\InputMethod\Settings\Shared' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\InputMethod\Settings\CHS' -Name 'Enable Cloud Candidate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\InputMethod\Settings\Shared' -Name 'Enable Cloud Candidate' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Keyboard Layout\Preload') -ne $true) { New-Item 'HKCU:\Keyboard Layout\Preload' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Preload' -Name '1' -Value '00000409' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Preload' -Name '2' -Value '00000804' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Control Panel\International') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Control Panel\International' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Control Panel\International' -Name 'TurnOffAutocorrectMisspelledWords' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Control Panel\International' -Name 'TurnOffHighlightMisspelledWords' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Control Panel\International' -Name 'TurnOffInsertSpace' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Control Panel\International' -Name 'TurnOffOfferTextPredictions' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7') -ne $true) { New-Item 'HKCU:\Software\Microsoft\TabletTip\1.7' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableAutocorrection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableAutoShiftEngage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableDoubleTapSpace' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableKeyAudioFeedback' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnablePredictionSpaceInsertion' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableSpellchecking' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableTextPrediction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'TipbandDesiredVisibility' -Value 0 -PropertyType DWord -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'AutoAccent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'AutoApostrophe' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'AutoCap' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'AutoCapAllTokens' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'AutoCorrectFirstWord' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'AutoCorrection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'AutoswitchAfterEmoji' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'DictationEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'DisablePersonalization' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'EmojiSuggestion' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'EnableHwkbAutocorrection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'EnableHwkbMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'EnableHwkbTextPrediction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'HarvestContacts' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'HasTrailer' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'HTREnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'HwkbInlinePredictionAlwaysOnList' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'InsightsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'IsVoiceTypingKeyEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'KeyboardMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'LMDataLoggerEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'MultilingualEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'PeriodShortcut' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'Prediction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'Private' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'ProofDataSources' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'SearchDataSources' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'Spellcheck' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings' -Name 'VoiceTypingEnabled' -Value 0 -PropertyType DWord -Force

#######################################################################################################音频设置##############################################################################################################################
#
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Sound') -ne $true) { New-Item 'HKCU:\Control Panel\Sound' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Sound' -Name 'Beep' -Value 'no' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Sound' -Name 'ExtendedSounds' -Value 'no' -PropertyType String -Force
#
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Multimedia\Audio') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Multimedia\Audio' -Force }
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Multimedia\Audio' -Name 'UserDuckingPreference' -Value 3 -PropertyType DWord -Force

#######################################################################################################桌面设置与美化##############################################################################################################################

# XP样式鼠标
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Pin' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Person' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'UpArrow' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeWE' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeNWSE' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'AppStarting' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Arrow' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Hand' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Help' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'No' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'NWPen' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Scheme Source' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeAll' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeNESW' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeNS' -Value '' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Wait' -Value '' -PropertyType ExpandString -Force

# 无用右键菜单
Remove-Item -Path 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\Compressed (zipped) Folder.ZFSendToTarget' -Force
Remove-Item -Path 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\Mail Recipient.MAPIMail' -Force
Remove-Item -Path 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\蓝牙设备.LNK' -Force
Remove-Item -Path 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\文档.mydocs' -Force
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\*\shellex\ContextMenuHandlers\EPP"
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Drive\shellex\ContextMenuHandlers\EPP"
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\EPP"
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{7AD84985-87B4-4a16-BE58-8B72A5B390F7}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{1d27f844-3a1f-4410-85ac-14651078412d}' -Value '' -PropertyType String -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.3mf\Shell\3D Edit' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.bmp\Shell\3D Edit' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.fbx\Shell\3D Edit' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.gif\Shell\3D Edit' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.jfif\Shell\3D Edit' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.jpe\Shell\3D Edit' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.jpeg\Shell\3D Edit' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.jpg\Shell\3D Edit' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.png\Shell\3D Edit' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.tif\Shell\3D Edit' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.tiff\Shell\3D Edit' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.avci\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.avcs\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.avif\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.avifs\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.bmp\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.dib\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.gif\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.heic\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.heics\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.heif\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.heifs\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.hif\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.jfif\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.jpe\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.jpeg\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.jpg\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.png\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.tif\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.tiff\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Classes\SystemFileAssociations\.wdp\Shell\setdesktopwallpaper' -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\Sharing" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\Directory\Background\shellex\ContextMenuHandlers\Sharing" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\Directory\shellex\ContextMenuHandlers\Sharing" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\Directory\shellex\CopyHookHandlers\Sharing" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\Drive\shellex\ContextMenuHandlers\Sharing" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\Drive\shellex\PropertySheetHandlers\Sharing" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\LibraryFolder\background\shellex\ContextMenuHandlers\Sharing" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\UserLibraryFolder\shellex\ContextMenuHandlers\Sharing" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\ModernSharing" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\.contact\ShellNew" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\Folder\shell\pintohome" -Recurse -Force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Folder\shell\pintohome" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\Folder\shellex\ContextMenuHandlers\PintoStartScreen" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\exefile\shellex\ContextMenuHandlers\PintoStartScreen" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\Microsoft.Website\ShellEx\ContextMenuHandlers\PintoStartScreen" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\mscfile\shellex\ContextMenuHandlers\PintoStartScreen" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\lnkfile\shellex\ContextMenuHandlers\Compatibility" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\AllFilesystemObjects\shellex\ContextMenuHandlers\SendTo" -Recurse -Force;
Remove-Item -LiteralPath "HKCR:\UserLibraryFolder\shellex\ContextMenuHandlers\SendTo" -Recurse -Force;

# 无用的我的电脑项目
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Force -Recurse
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" -Force -Recurse
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}\ShellFolder' -Name 'Attributes' -Value '2962227469' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}\ShellFolder' -Name 'Attributes' -Value '2962227469' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{323CA680-C24D-4099-B94D-446DD2D7249E}\ShellFolder' -Name 'Attributes' -Value '2696937728' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Classes\CLSID\{323CA680-C24D-4099-B94D-446DD2D7249E}\ShellFolder' -Name 'Attributes' -Value '2696937728' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{B4FB3F98-C1EA-428d-A78A-D1F5659CBA93}\ShellFolder' -Name 'Attributes' -Value '2962489612' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Classes\CLSID\{B4FB3F98-C1EA-428d-A78A-D1F5659CBA93}\ShellFolder' -Name 'Attributes' -Value '2962489612' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\ShellFolder' -Name 'Attributes' -Value '2962489612' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Classes\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\ShellFolder' -Name 'Attributes' -Value '2962489612' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}\ShellFolder' -Name 'Attributes' -Value '2689597440' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Classes\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}\ShellFolder' -Name 'Attributes' -Value '2689597440' -PropertyType DWord -Force

# 桌面显示我的电脑和控制面板
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{20D04FE0-3AEA-1069-A2D8-08002B30309D}' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}' -Value 0 -PropertyType DWord -Force

# https://docs.microsoft.com/en-us/dotnet/desktop/wpf/advanced/cleartype-registry-settings?view=netframeworkdesktop-4.8
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY1' -Name 'ClearTypeLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY1' -Name 'EnhancedContrastLevel' -Value 200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY1' -Name 'GrayscaleEnhancedContrastLevel' -Value 50 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY1' -Name 'TextContrastLevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY1' -Name 'PixelStructure' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY1' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY2' -Name 'ClearTypeLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY2' -Name 'EnhancedContrastLevel' -Value 200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY2' -Name 'GrayscaleEnhancedContrastLevel' -Value 50 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY2' -Name 'TextContrastLevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY2' -Name 'PixelStructure' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY2' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY3' -Name 'ClearTypeLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY3' -Name 'EnhancedContrastLevel' -Value 200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY3' -Name 'GrayscaleEnhancedContrastLevel' -Value 50 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY3' -Name 'TextContrastLevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY3' -Name 'PixelStructure' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY3' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY4' -Name 'ClearTypeLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY4' -Name 'EnhancedContrastLevel' -Value 200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY4' -Name 'GrayscaleEnhancedContrastLevel' -Value 50 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY4' -Name 'TextContrastLevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY4' -Name 'PixelStructure' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY4' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY5' -Name 'ClearTypeLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY5' -Name 'EnhancedContrastLevel' -Value 200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY5' -Name 'GrayscaleEnhancedContrastLevel' -Value 50 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY5' -Name 'TextContrastLevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY5' -Name 'PixelStructure' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY5' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY6' -Name 'ClearTypeLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY6' -Name 'EnhancedContrastLevel' -Value 200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY6' -Name 'GrayscaleEnhancedContrastLevel' -Value 50 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY6' -Name 'TextContrastLevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY6' -Name 'PixelStructure' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY6' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY7' -Name 'ClearTypeLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY7' -Name 'EnhancedContrastLevel' -Value 200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY7' -Name 'GrayscaleEnhancedContrastLevel' -Value 50 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY7' -Name 'TextContrastLevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY7' -Name 'PixelStructure' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY7' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY8' -Name 'ClearTypeLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY8' -Name 'EnhancedContrastLevel' -Value 200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY8' -Name 'GrayscaleEnhancedContrastLevel' -Value 50 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY8' -Name 'TextContrastLevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY8' -Name 'PixelStructure' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY8' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY9' -Name 'ClearTypeLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY9' -Name 'EnhancedContrastLevel' -Value 200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY9' -Name 'GrayscaleEnhancedContrastLevel' -Value 50 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY9' -Name 'TextContrastLevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY9' -Name 'PixelStructure' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY9' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY10' -Name 'ClearTypeLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY10' -Name 'EnhancedContrastLevel' -Value 200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY10' -Name 'GrayscaleEnhancedContrastLevel' -Value 50 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY10' -Name 'TextContrastLevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY10' -Name 'PixelStructure' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY10' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force

#
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows' -Name 'DisableATMFD' -Value 1 -PropertyType DWord -Force
Remove-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Font Drivers' -Name 'Adobe Type Manager' -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableFontProviders' -Value 0 -PropertyType DWord -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts' -Name '苹方-简 中黑体 (TrueType)' -Value 'PingFangSC-17.d1e2-Medium.otf' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Fonts' -Name '苹方-简 中黑体 (TrueType)' -Value 'PingFangSC-17.d1e2-Medium.otf' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts' -Name 'Cascadia Mono Regular (TrueType)' -Value 'CascadiaMono.ttf' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Fonts' -Name 'Cascadia Mono Regular (TrueType)' -Value 'CascadiaMono.ttf' -PropertyType String -Force
#
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'CaptionFont' -Value ([byte[]](0xf4,0xff,0xff,0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x90,0x01,0x00,0x00,0x00,0x00,0x00,0x86,0x03,0x02,0x01,0x22,0xae,0x5f,0x6f,0x8f,0xc5,0x96,0xd1,0x9e,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'IconFont' -Value ([byte[]](0xf4,0xff,0xff,0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x90,0x01,0x00,0x00,0x00,0x00,0x00,0x86,0x03,0x02,0x01,0x22,0xae,0x5f,0x6f,0x8f,0xc5,0x96,0xd1,0x9e,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'MenuFont' -Value ([byte[]](0xf4,0xff,0xff,0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x90,0x01,0x00,0x00,0x00,0x00,0x00,0x86,0x03,0x02,0x01,0x22,0xae,0x5f,0x6f,0x8f,0xc5,0x96,0xd1,0x9e,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'MessageFont' -Value ([byte[]](0xf4,0xff,0xff,0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x90,0x01,0x00,0x00,0x00,0x00,0x00,0x86,0x03,0x02,0x01,0x22,0xae,0x5f,0x6f,0x8f,0xc5,0x96,0xd1,0x9e,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'SmCaptionFont' -Value ([byte[]](0xf4,0xff,0xff,0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x90,0x01,0x00,0x00,0x00,0x00,0x00,0x86,0x03,0x02,0x01,0x22,0xae,0x5f,0x6f,0x8f,0xc5,0x96,0xd1,0x9e,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'StatusFont' -Value ([byte[]](0xf4,0xff,0xff,0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x90,0x01,0x00,0x00,0x00,0x00,0x00,0x86,0x03,0x02,0x01,0x22,0xae,0x5f,0x6f,0x8f,0xc5,0x96,0xd1,0x9e,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00)) -PropertyType Binary -Force
# 更改PC名称
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName' -Name 'ComputerName' -Value 'Alienware' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName' -Name 'ComputerName' -Value 'Alienware' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'NV Hostname' -Value 'Alienware' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'Hostname' -Value 'Alienware' -PropertyType String -Force
# 任务栏无多余图标
Remove-Item -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband' -Recurse -Force -Verbose
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\AuxilliaryPins') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\AuxilliaryPins' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\AuxilliaryPins' -Name 'MailPin' -Value 1 -PropertyType DWord -Force
# XP图标
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\DefaultIcon' -Name '(default)' -Value '%SystemRoot%\XP_SP2_shell32.dll,15' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{59031A47-3F72-44A7-89C5-5595FE6B30EE}\DefaultIcon' -Name '(default)' -Value '%SystemRoot%\XP_SP2_shell32.dll,5' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\DefaultIcon' -Name 'empty' -Value '%SystemRoot%\XP_SP2_shell32.dll,31' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\DefaultIcon' -Name 'full' -Value '%SystemRoot%\XP_SP2_shell32.dll,32' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\DefaultIcon' -Name '(default)' -Value '%SystemRoot%\XP_SP2_shell32.dll,31' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\DefaultIcon' -Name '(default)' -Value '%SystemRoot%\XP_SP2_shell32.dll,14' -PropertyType ExpandString -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}\DefaultIcon') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}\DefaultIcon' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}\DefaultIcon' -Name '(default)' -Value '%SystemRoot%\XP_SP2_shell32.dll,19' -PropertyType String -Force
# 控制面板小图标
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel' -Name 'StartupPage' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel' -Name 'AllItemsIconView' -Value 0 -PropertyType DWord -Force
# 为单独程序关闭全屏优化
# if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" -force };
# New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'D:\\Steam\\steam.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
'setx __COMPAT_LAYER DISABLEDXMAXIMIZEDWINDOWEDMODE' | cmd
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment' -Name '__COMPAT_LAYER' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
#　设置默认文件夹类型为普通
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell' -Name 'FolderType' -Value 'NotSpecified' -PropertyType String -Force
# 回收站
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume\{cca4ea49-44e6-43ef-a623-ebc88725c706}') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume\{cca4ea49-44e6-43ef-a623-ebc88725c706}' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShellState' -Value 'hex(3):24,00,00,00,33,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,01,00,00,00,13,00,00,00,00,00,00,00,13,00,00,00' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume\{cca4ea49-44e6-43ef-a623-ebc88725c706}' -Name 'NukeOnDelete' -Value 1 -PropertyType DWord -Force
# Always Show Mouse Cursor
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableCursorSurpression' -Value 0 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Desktop') -ne $true) { New-Item 'HKCU:\Control Panel\Desktop' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'AutoColorization' -Value '0' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'MenuShowDelay' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'ForegroundLockTimeout' -Value '0' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'WaitToKillAppTimeout' -Value '750' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'HungAppTimeout' -Value '750' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'LowLevelHooksTimeout' -Value '750' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'WaitToKillServiceTimeout' -Value '750' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'DockMoving' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'WindowArrangementActive' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'DragFullWindows' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'UserPreferencesMask' -Value ([byte[]](0x90, 0x12, 0x03, 0x80, 0x10, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'Win8DpiScaling' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'CaretWidth' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'AutoEndTasks' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'ForegroundFlashCount' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'ForegroundLockTimeout' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'JPEGImportQuality' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'FontSmoothingGamma' -Value 1400 -PropertyType DWord -Force
#
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Control Panel\Desktop' -Name 'ScreenSaveActive' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Control Panel\Desktop' -Name 'RestorePreviousStateRecalcBehavior' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Control Panel\Desktop' -Name 'DragFullWindows' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Control Panel\Desktop' -Name 'MonitorRemovalRecalcBehavior' -Value '0' -PropertyType String -Force
# Desktop Icon Spacing
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'IconSpacing' -Value '-1425' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'IconVerticalSpacing' -Value '-1100' -PropertyType String -Force
#
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'BorderWidth' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'ScrollHeight' -Value '-355' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'ScrollWidth' -Value '-355' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'MinAnimate' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'MaxAnimate' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects' -Name 'VisualFXSetting' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMAeroPeekEnabled' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMSaveThumbnailEnabled' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\DWM') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\DWM' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\DWM' -Name 'EnableAeroPeek' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\DWM' -Name 'AlwaysHibernateThumbnails' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\DWM' -Name 'CompositionPolicy' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\DWM' -Name 'ColorPrevalence' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\DWM' -Name 'DisallowFlip3d' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM' -Name 'DisallowAnimations' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM' -Name 'DWMWA_TRANSITIONS_FORCEDISABLED' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM' -Name 'AnimationAttributionEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Personalization' -Name 'NoLockScreen' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'DisableAcrylicBackgroundOnLogon' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize') -ne $true) { New-Item 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Force };
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'ColorPrevalence' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'AppsUseLightTheme' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'SystemUsesLightTheme' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'EnabledBlurBehind' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'EnableTransparency' -Value 1 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Colors') -ne $true) { New-Item 'HKCU:\Control Panel\Colors' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'ActiveBorder' -Value '212 208 200' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'ActiveTitle' -Value '10 36 106' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'AppWorkSpace' -Value '128 128 128' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'ButtonAlternateFace' -Value '181 181 181' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'ButtonDkShadow' -Value '64 64 64' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'ButtonFace' -Value '212 208 200' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'ButtonHilight' -Value '255 255 255' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'ButtonLight' -Value '212 208 200' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'ButtonShadow' -Value '128 128 128' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'ButtonText' -Value '0 0 0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'GradientActiveTitle' -Value '166 202 240' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'GradientInactiveTitle' -Value '192 192 192' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'GrayText' -Value '128 128 128' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'Hilight' -Value '10 36 106' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'HilightText' -Value '255 255 255' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'HotTrackingColor' -Value '0 0 128' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'InactiveBorder' -Value '212 208 200' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'InactiveTitle' -Value '128 128 128' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'InactiveTitleText' -Value '212 208 200' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'InfoText' -Value '0 0 0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'InfoWindow' -Value '255 255 225' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'Menu' -Value '212 208 200' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'MenuText' -Value '0 0 0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'Scrollbar' -Value '212 208 200' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'TitleText' -Value '255 255 255' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'Window' -Value '255 255 255' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'WindowFrame' -Value '0 0 0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'WindowText' -Value '0 0 0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'Background' -Value '58 110 165' -PropertyType String -Force

<# Windows升级 #>
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' -Name 'DODownloadMode' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config' -Name 'DODownloadMode' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'UpdateNotificationLevel' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'NoAutoRebootWithLoggedOnUsers' -Value 1 -PropertyType DWord -Force
<# Windows间谍软件监控 #>
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\MRT' -Name 'DontOfferThroughWUAU' -Value 1 -PropertyType DWord -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MRT.exe' -Recurse -Force;
<# Windows商店 #>
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore' -Name 'AutoDownload' -Value 2 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate' -Name 'AutoDownload' -Value 5 -PropertyType DWord -Force
# 禁止驱动更新
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata' -Name 'PreventDeviceMetadataFromNetwork' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Name 'DontPromptForWindowsUpdate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Name 'DontSearchWindowsUpdate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Name 'DriverUpdateWizardWuSearchEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Name 'SearchOrderConfig' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'ExcludeWUDriversInQualityUpdate' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\PolicyState') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\PolicyState' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\PolicyState' -Name 'ExcludeWUDrivers' -Value 1 -PropertyType DWord -Force
# 关闭 Virtualization Based Security (VBS)
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard" -force };
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios" -force };
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\CredentialGuard") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\CredentialGuard" -force };
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard' -Name 'RequireMicrosoftSignedBootChain' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard' -Name 'EnableVirtualizationBasedSecurity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios' -Name 'HypervisorEnforcedCodeIntegrity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\CredentialGuard' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name 'HVCIMATRequired' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name 'EnableVirtualizationBasedSecurity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name 'LsaCfgFlags' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name 'ConfigureSystemGuardLaunch' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name 'HypervisorEnforcedCodeIntegrity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name 'RequirePlatformSecurityFeatures' -Value 0 -PropertyType DWord -Force
# 智能主动程序管理
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CI\Policy' -Name 'VerifiedAndReputablePolicyState' -Value 0 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\UnsupportedHardwareNotificationCache') -ne $true) { New-Item 'HKCU:\Control Panel\UnsupportedHardwareNotificationCache' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\UnsupportedHardwareNotificationCache' -Name 'SV1' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\UnsupportedHardwareNotificationCache' -Name 'SV2' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig') -ne $true) { New-Item 'HKLM:\SYSTEM\Setup\LabConfig' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig' -Name 'BypassCPUCheck' -Value 1 -PropertyType DWord
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig' -Name 'BypassDiskCheck' -Value 1 -PropertyType DWord
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig' -Name 'BypassRAMCheck' -Value 1 -PropertyType DWord
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig' -Name 'BypassSecureBootCheck' -Value 1 -PropertyType DWord
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig' -Name 'BypassStorageCheck' -Value 1 -PropertyType DWord
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig' -Name 'BypassTPMCheck' -Value 1 -PropertyType DWord
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\Setup\MoSetup') -ne $true) { New-Item 'HKLM:\SYSTEM\Setup\MoSetup' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\MoSetup' -Name 'AllowUpgradesWithUnsupportedTPMOrCPU' -Value 1 -PropertyType DWord -Force
# 关闭安全中心
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Security Center') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Security Center' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Security Center' -Name 'cval' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
# 关闭smartscreen
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableSmartScreen' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen' -Force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows Defender\SmartScreen' -Name 'ConfigureAppInstallControlEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen' -Name 'ConfigureAppInstallControl' -Value 'Anywhere' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3' -Name '2301' -Value 3 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Browser\AllowSmartScreen') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Browser\AllowSmartScreen' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Browser\AllowSmartScreen' -Name 'value' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'SmartScreenEnabled' -Value 'Off' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost' -Name 'EnableWebContentEvaluation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost' -Name 'PreventOverride' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows Security Health\State') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows Security Health\State' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows Security Health\State' -Name 'AppAndBrowser_StoreAppsSmartScreenOff' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows Security Health\State' -Name 'AppAndBrowser_EdgeSmartScreenOff' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Edge') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Edge' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Edge' -Name 'SmartScreenEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Edge' -Name 'SmartScreenPuaEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter') -ne $true) { New-Item 'HKLM:\Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter' -Force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter' -Name 'EnabledV9' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Internet Explorer\Download') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Internet Explorer\Download' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Internet Explorer\Download' -Name 'RunInvalidSignatures' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Internet Explorer\Download' -Name 'CheckExeSignatures' -Value 'no' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'EnableNegotiate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'WarnOnPostRedirect' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'CertificateRevocation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'LegacyTLSAppcompat' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments' -Name 'SaveZoneInformation' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Policies\Explorer\DisallowRun') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Policies\Explorer\DisallowRun' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Policies\Explorer\DisallowRun' -Name '1' -Value 'smartscreen.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Policies\Explorer\DisallowRun' -Name '2' -Value 'SecurityHealthService.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Policies\Explorer\DisallowRun' -Name '3' -Value 'SecurityHealthSystray.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Policies\Explorer\DisallowRun' -Name '4' -Value 'MpCmdRun.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Policies\Explorer\DisallowRun' -Name '5' -Value 'software_reporter_tool.exe' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Security') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Security' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Security' -Name 'DisableSecuritySettingsCheck' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3' -Name '1806' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3') -ne $true) { New-Item 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3' -Force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3' -Name '1806' -Value 0 -PropertyType DWord -Force
# 事件记录
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Setup' -Name 'Enabled' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application' -Name 'AutoBackupLogFiles' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application' -Name 'MaxSize' -Value 1024 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application' -Name 'Retention' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security' -Name 'Retention' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security' -Name 'AutoBackupLogFiles' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security' -Name 'MaxSize' -Value 20480 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Setup' -Name 'Retention' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Setup' -Name 'MaxSize' -Value 1024 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\Setup' -Name 'AutoBackupLogFiles' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\System' -Name 'Retention' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\System' -Name 'MaxSize' -Value 1024 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\System' -Name 'AutoBackupLogFiles' -Value '0' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{0E28E245-9368-4853-AD84-6DA3BA35BB75}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{0E28E245-9368-4853-AD84-6DA3BA35BB75}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{17D89FEC-5C44-4972-B12D-241CAEF74509}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{17D89FEC-5C44-4972-B12D-241CAEF74509}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{1A6364EB-776B-4120-ADE1-B63A406A76B5}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{1A6364EB-776B-4120-ADE1-B63A406A76B5}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{3A0DBA37-F8B2-4356-83DE-3E90BD5C261F}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{3A0DBA37-F8B2-4356-83DE-3E90BD5C261F}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{5794DAFD-BE60-433f-88A2-1A31939AC01F}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{5794DAFD-BE60-433f-88A2-1A31939AC01F}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{6232C319-91AC-4931-9385-E70C2B099F0E}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{6232C319-91AC-4931-9385-E70C2B099F0E}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{6A4C88C6-C502-4f74-8F60-2CB23EDC24E2}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{6A4C88C6-C502-4f74-8F60-2CB23EDC24E2}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{7150F9BF-48AD-4da4-A49C-29EF4A8369BA}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{7150F9BF-48AD-4da4-A49C-29EF4A8369BA}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{728EE579-943C-4519-9EF7-AB56765798ED}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{728EE579-943C-4519-9EF7-AB56765798ED}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{74EE6C03-5363-4554-B161-627540339CAB}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{74EE6C03-5363-4554-B161-627540339CAB}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{91FBB303-0CD5-4055-BF42-E512A681B325}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{91FBB303-0CD5-4055-BF42-E512A681B325}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{A3F3E39B-5D83-4940-B954-28315B82F0A8}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{A3F3E39B-5D83-4940-B954-28315B82F0A8}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{AADCED64-746C-4633-A97C-D61349046527}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{AADCED64-746C-4633-A97C-D61349046527}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{B087BE9D-ED37-454f-AF9C-04291E351182}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{B087BE9D-ED37-454f-AF9C-04291E351182}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{BC75B1ED-5833-4858-9BB8-CBF0B166DF9D}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{BC75B1ED-5833-4858-9BB8-CBF0B166DF9D}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{C418DD9D-0D14-4efb-8FBF-CFE535C8FAC7}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{C418DD9D-0D14-4efb-8FBF-CFE535C8FAC7}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E47248BA-94CC-49c4-BBB5-9EB7F05183D0}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E47248BA-94CC-49c4-BBB5-9EB7F05183D0}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E4F48E54-F38D-4884-BFB9-D4D2E5729C18}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E4F48E54-F38D-4884-BFB9-D4D2E5729C18}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E5094040-C46C-4115-B030-04FB2E545B00}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E5094040-C46C-4115-B030-04FB2E545B00}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E62688F0-25FD-4c90-BFF5-F508B9D2E31F}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E62688F0-25FD-4c90-BFF5-F508B9D2E31F}' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{F9C77450-3A41-477E-9310-9ACD617BD9E3}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{F9C77450-3A41-477E-9310-9ACD617BD9E3}' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{0E28E245-9368-4853-AD84-6DA3BA35BB75}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{0E28E245-9368-4853-AD84-6DA3BA35BB75}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{17D89FEC-5C44-4972-B12D-241CAEF74509}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{17D89FEC-5C44-4972-B12D-241CAEF74509}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{1A6364EB-776B-4120-ADE1-B63A406A76B5}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{1A6364EB-776B-4120-ADE1-B63A406A76B5}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{3A0DBA37-F8B2-4356-83DE-3E90BD5C261F}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{3A0DBA37-F8B2-4356-83DE-3E90BD5C261F}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{5794DAFD-BE60-433f-88A2-1A31939AC01F}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{5794DAFD-BE60-433f-88A2-1A31939AC01F}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{6232C319-91AC-4931-9385-E70C2B099F0E}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{6232C319-91AC-4931-9385-E70C2B099F0E}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{6A4C88C6-C502-4f74-8F60-2CB23EDC24E2}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{6A4C88C6-C502-4f74-8F60-2CB23EDC24E2}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{7150F9BF-48AD-4da4-A49C-29EF4A8369BA}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{7150F9BF-48AD-4da4-A49C-29EF4A8369BA}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{728EE579-943C-4519-9EF7-AB56765798ED}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{728EE579-943C-4519-9EF7-AB56765798ED}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{74EE6C03-5363-4554-B161-627540339CAB}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{74EE6C03-5363-4554-B161-627540339CAB}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{91FBB303-0CD5-4055-BF42-E512A681B325}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{91FBB303-0CD5-4055-BF42-E512A681B325}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{A3F3E39B-5D83-4940-B954-28315B82F0A8}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{A3F3E39B-5D83-4940-B954-28315B82F0A8}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{AADCED64-746C-4633-A97C-D61349046527}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{AADCED64-746C-4633-A97C-D61349046527}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{B087BE9D-ED37-454f-AF9C-04291E351182}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{B087BE9D-ED37-454f-AF9C-04291E351182}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{BC75B1ED-5833-4858-9BB8-CBF0B166DF9D}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{BC75B1ED-5833-4858-9BB8-CBF0B166DF9D}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{C418DD9D-0D14-4efb-8FBF-CFE535C8FAC7}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{C418DD9D-0D14-4efb-8FBF-CFE535C8FAC7}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E47248BA-94CC-49c4-BBB5-9EB7F05183D0}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E47248BA-94CC-49c4-BBB5-9EB7F05183D0}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E4F48E54-F38D-4884-BFB9-D4D2E5729C18}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E4F48E54-F38D-4884-BFB9-D4D2E5729C18}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E5094040-C46C-4115-B030-04FB2E545B00}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E5094040-C46C-4115-B030-04FB2E545B00}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E62688F0-25FD-4c90-BFF5-F508B9D2E31F}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E62688F0-25FD-4c90-BFF5-F508B9D2E31F}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{F9C77450-3A41-477E-9310-9ACD617BD9E3}' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{F9C77450-3A41-477E-9310-9ACD617BD9E3}' -Name 'TraceLevel' -Value 0 -PropertyType DWord -Force
# Disable all system-wide exploit mitigations. (nx OptIn still enables DEP for Windows Kernel/System processes)
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'MitigationOptions' -Value ([byte[]](0x22,0x22,0x22,0x00,0x00,0x02,0x00,0x00,0x00,0x02,0x00,0x00,0x00,0x00,0x00,0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'MitigationAuditOptions' -Value ([byte[]](0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00)) -PropertyType Binary -Force
Set-ProcessMitigation -System -Disable CFG
# Disable Spectre/Meltdown Mitigation
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'FeatureSettingsOverride' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'FeatureSettingsOverrideMask' -Value 3 -PropertyType DWord -Force
# Enable Intel TSX
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'DisableTsx' -Value 0 -PropertyType DWord -Force
# Low Risk File Types
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations' -Name 'LowRiskFileTypes' -Value '.avi;.bat;.cmd;.exe;.htm;.html;.lnk;.mpg;.mpeg;.mov;.mp3;.mp4;.mkv;.msi;.m3u;.rar;.reg;.txt;.vbs;.wav;.zip;.7z;.msu' -PropertyType String -Force
# https://docs.microsoft.com/en-us/windows-hardware/drivers/pci/enabling-dma-remapping-for-device-drivers
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\DmaGuard\DeviceEnumerationPolicy' -Name 'value' -Value 2 -PropertyType DWord -Force
# https://docs.microsoft.com/en-us/windows/win32/win7appqual/fault-tolerant-heap
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\FTH\State" -force;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\FTH' -Name 'Enabled' -Value 0 -PropertyType DWord -Force

####################################################################################################### 广告追踪 ##############################################################################################################################

# Potplayer
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 p1-play.edge4k.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 p2-play.edge4k.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 p1-play.kgslb.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 kyson.ad.daum.net'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 display.ad.daum.net'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 analytics.ad.daum.net'
Start-Sleep -Milliseconds '10'
# CSGO
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 blog.counter-strike.net'
Start-Sleep -Milliseconds '10'
# https://docs.microsoft.com/en-us/windows/privacy/windows-11-endpoints-non-enterprise-editions
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 activity.windows.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 tile-service.weather.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 bing.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 fp.msedge.net'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 k-ring.msedge.net'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 cs.dds.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 dmd.metaservices.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 v10.events.data.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 watson.telemetry.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 fs.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 inference.location.live.net'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 maps.windows.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 edge.activity.windows.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 edge.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 msedge.api.cdp.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 wdcp.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 wdcpalt.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 smartscreen-prod.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 smartscreen.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 checkappexec.microsoft.com'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 ntp.msn.cn'
Start-Sleep -Milliseconds '10'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 arc.msn.com'
Start-Sleep -Milliseconds '10'

#
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry' -Name 'DontRetryOnError' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry' -Name 'IsCensusDisabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\ClientTelemetry' -Name 'TaskEnableRun' -Value 0 -PropertyType DWord -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack' -Name 'DisableAutomaticTelemetryKeywordReporting' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack' -Name 'TelemetryServiceDisabled' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TestHooks") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TestHooks" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TestHooks' -Name 'DisableAsimovUpload' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\PerfTrack") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\PerfTrack" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\PerfTrack' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowTelemetry') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowTelemetry' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowTelemetry' -Name 'value' -Value 0 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection' -Name 'AllowTelemetry' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection' -Name 'MaxTelemetryAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection' -Name 'MicrosoftEdgeDataOptIn' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'AllowTelemetry' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'DisableEnterpriseAuthProxy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'DoNotShowFeedbackNotifications' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'DisableOneSettingsDownloads' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'AllowCommercialDataPipeline' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'AllowDesktopAnalyticsProcessing' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'AllowDeviceNameInTelemetry' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\DataCollection' -Name 'LimitEnhancedDiagnosticDataWindowsAnalytics' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\DataCollection' -Name 'LimitDumpCollection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\DataCollection' -Name 'AllowCommercialDataPipeline' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\DataCollection' -Name 'LimitDiagnosticLogCollection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\DataCollection' -Name 'AllowUpdateComplianceProcessing' -Value 0 -PropertyType DWord -Force
# Application Compatibility
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'AITEnable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'DisableInventory' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'VDMDisallowed' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'DisableEngine' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'DisablePCA' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'DisablePcaUI' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'SbEnable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'DisableUAR' -Value 1 -PropertyType DWord -Force
# 防火墙
If (!(Test-Path 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile')) { New-Item -Path 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile' -Force }
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile' -Name 'EnableFirewall' -Type DWord -Value 0 -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\Logging') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\Logging' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\Logging' -Name 'LogDroppedPackets' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\Logging' -Name 'LogSuccessfulConnections' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\IPSec\ICFv4') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\IPSec\ICFv4' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\IPSec\ICFv4' -Name 'BypassFirewall' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Messenger\Client') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Messenger\Client' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Messenger\Client' -Name 'CEIP' -Value 2 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Internet Connection Wizard') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Internet Connection Wizard' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Internet Connection Wizard' -Name 'ExitOnMSICW' -Value 1 -PropertyType DWord -Force
# This setting will disable Events.asp hyperlinks in Event Viewer to prevent links to the internet from within events.
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EventViewer') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\EventViewer' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EventViewer' -Name 'MicrosoftEventVwrDisableLinks' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Registration Wizard Control') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Registration Wizard Control' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Registration Wizard Control' -Name 'NoRegistration' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SearchCompanion') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\SearchCompanion' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SearchCompanion' -Name 'DisableContentFileUpdates' -Value 1 -PropertyType DWord -Force
# https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#1816-feedback--diagnostics
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Siuf\Rules') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Siuf\Rules' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Siuf\Rules' -Name 'PeriodInNanoSeconds' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Siuf\Rules' -Name 'NumberOfSIUFInPeriod' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\EdgeUI') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\Windows\EdgeUI' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\EdgeUI' -Name 'DisableMFUTracking' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\EdgeUI' -Name 'DisableHelpSticker' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\EdgeUI' -Name 'DisableRecentApps' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\EdgeUI' -Name 'ShowCommandPromptOnWinX' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsConsumerFeatures' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableSoftLanding' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableCloudOptimizedContent' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableTailoredExperiencesWithDiagnosticData' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableThirdPartySuggestions' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsSpotlightFeatures' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableActivityFeed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'PublishUserActivities' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'UploadUserActivities' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'AllowCrossDeviceClipboard' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'AllowClipboardHistory' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' -Name 'DisableSensors' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' -Name 'DisableLocation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' -Name 'DisableLocationScripting' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications' -Name 'NoCloudApplicationNotification' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Messaging') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Messaging' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Messaging' -Name 'AllowMessageSync' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FindMyDevice') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\FindMyDevice' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FindMyDevice' -Name 'AllowFindMyDevice' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FindMyDevice' -Name 'LocationSyncEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableAppUriHandlers' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo' -Name 'DisabledByGroupPolicy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings' -Name 'AudioCaptureEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings' -Name 'CameraCaptureEnabledByDefault' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings' -Name 'CursorCaptureEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings' -Name 'MicrophoneCaptureEnabledByDefault' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo' -Name 'DisabledByGroupPolicy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableCdp' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy' -Name 'HasAccepted' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings' -Name 'IsMSACloudSearchEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings' -Name 'IsAADCloudSearchEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurfrentVersion\SearchSettings' -Name 'SafeSearchMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings' -Name 'IsDeviceSearchHistoryEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableTailoredExperiencesWithDiagnosticData' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableCloudOptimizedContent' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'ConfigureWindowsSpotlight' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableThirdPartySuggestionss' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsConsumerFeatures' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsSpotlightFeatures' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsSpotlightOnActionCenter' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsSpotlightWindowsWelcomeExperience' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'IncludeEnterpriseSpotlight' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\InternetManagement') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\InternetManagement' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\InternetManagement' -Name 'RestrictCommunication' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft' -Name 'PassportForWork' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork' -Name 'DisablePostLogonProvisioning' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork' -Name 'DisableSmartCardNode' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement' -Name 'ScoobeSystemSettingEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\OOBE') -ne $true) { New-Item 'HKLM:\Software\Policies\Microsoft\Windows\OOBE' -Force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\OOBE' -Name 'DisablePrivacyExperience' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync') -ne $true) { New-Item 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableApplicationSettingSyncUserOverride' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableStartLayoutSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableStartLayoutSettingSyncUserOverride' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableSettingSyncUserOverride' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisablePersonalizationSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisablePersonalizationSettingSyncUserOverride' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableDesktopThemeSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableWebBrowserSettingSyncUserOverride' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableWebBrowserSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableDesktopThemeSettingSyncUserOverride' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableWindowsSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableSyncOnPaidNetwork' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableAppSyncSettingSyncUserOverride' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableAppSyncSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableWindowsSettingSyncUserOverride' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableApplicationSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableCredentialsSettingSyncUserOverride' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\SettingSync' -Name 'DisableCredentialsSettingSync' -Value 2 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components') -ne $true) { New-Item 'HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components' -Force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components' -Name 'ServiceEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components' -Name 'NotifyMalicious' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components' -Name 'NotifyPasswordReuse' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components' -Name 'NotifyUnsafeApp' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PushToInstall') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\PushToInstall' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PushToInstall' -Name 'DisablePushToInstall' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'FeatureManagementEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'OemPreInstalledAppsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'PreInstalledAppsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'RotatingLockScreenEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'RotatingLockScreenOverlayEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SilentInstalledAppsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SoftLandingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SystemPaneSuggestionsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SlideshowEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'IdentityProvider' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'PreInstalledAppsEverEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'ContentDeliveryAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContentEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-310093Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-314559Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-314563Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338387Enabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338388Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338389Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338393Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-353698Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-88000326Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name '338389Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'OldContentDeliveryAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'OldOemPreInstalledAppsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'OldPreInstalledAppsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SilentAppsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-353694Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-353696Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-353697Enabled' -Value 0 -PropertyType DWord -Force
#
if((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications") -ne $true) {  New-Item "HKCU:\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications' -Name 'NoTileApplicationNotification' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications' -Name 'NoCloudApplicationNotification' -Value 1 -PropertyType DWord -Force
#
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance" -force };
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance\BootCKCLSettings") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance\BootCKCLSettings" -force };
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance\ShutdownCKCLSettings") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance\ShutdownCKCLSettings" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance' -Name 'DisableDiagnosticTracing' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance\BootCKCLSettings' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance\ShutdownCKCLSettings' -Name 'Start' -Value 0 -PropertyType DWord -Force
#
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\InputPersonalization") -ne $true) {  New-Item "HKCU:\Software\Microsoft\InputPersonalization" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\InputPersonalization\TrainedDataStore") -ne $true) {  New-Item "HKCU:\Software\Microsoft\InputPersonalization\TrainedDataStore" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputPersonalization' -Name 'RestrictImplicitInkCollection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputPersonalization' -Name 'RestrictImplicitTextCollection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputPersonalization\TrainedDataStore' -Name 'HarvestContacts' -Value 0 -PropertyType DWord -Force
#
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput' -Name 'AllowLinguisticDataCollection' -Value 0 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Input\TIPC') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Input\TIPC' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Input\TIPC' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
#
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Personalization\Settings") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Personalization\Settings" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Personalization\Settings' -Name 'AcceptedPrivacyPolicy' -Value 0 -PropertyType DWord -Force
# Disable Windows customer experience improvement program
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SQMClient') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\SQMClient' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SQMClient' -Name 'CEIPEnable' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows' -Name 'CEIPEnable' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SQMClient' -Name 'CorporateSQMURL' -Value '0.0.0.0' -PropertyType String -Force
#
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth' -Name 'AllowAdvertising' -Value 0 -PropertyType DWord -Force
# Tailored Experiences Diagnostic Data
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy' -Name 'TailoredExperiencesWithDiagnosticDataEnabled' -Value 0 -PropertyType DWord -Force
#
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Speech") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Speech" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Speech' -Name 'AllowSpeechModelUpdate' -Value 0 -PropertyType DWord -Force

<# 错误报告 #>
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name 'LoggingDisabled' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent' -Name 'DefaultConsent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent' -Name 'DefaultOverrideBehavior' -Value 1 -PropertyType DWord -Force

<# 电源管理 #>
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'PowerdownAfterShutdown' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'CsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'EnergyEstimationEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'HiberbootEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'PlatformAoAcOverride' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'ExitLatency' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'ExitLatencyCheckEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'Latency' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'LatencyToleranceDefault' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'LatencyToleranceFSVP' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'LatencyTolerancePerfOverride' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'LatencyToleranceScreenOffIR' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'LatencyToleranceVSyncEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'RtlCapabilityCheckLatency' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'HibernateEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'CoalescingTimerInterval' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power' -Name 'HiberbootEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling' -Name 'PowerThrottlingOff' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters\1a75888d-6e63-4978-b88e-b92747df5e8c') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters\1a75888d-6e63-4978-b88e-b92747df5e8c' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters' -Name 'DeviceSelectiveSuspended' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters' -Name 'SelectiveSuspendEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters' -Name 'SelectiveSuspendSupported' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters\1a75888d-6e63-4978-b88e-b92747df5e8c' -Name 'LEExtendedAdvertisingOptIn' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters\1a75888d-6e63-4978-b88e-b92747df5e8c' -Name 'MsftHciExtensionsTelemetryOptIn' -Value 0 -PropertyType DWord -Force
'powercfg -h off' | cmd
'powercfg -change -monitor-timeout-dc 0' | cmd
'powercfg -change -monitor-timeout-ac 0' | cmd
'powercfg -change -standby-timeout-dc 0' | cmd
'powercfg -change -standby-timeout-ac 0' | cmd

<# 其他性能优化 #>

# 根目录证书
# http://woshub.com/updating-trusted-root-certificates-in-windows-10/
# "certutil.exe -f -generateSSTFromWU C:\TEMP\trustedcerts.sst" | cmd
# Get-ChildItem -Path C:\TEMP\trustedcerts.sst | Import-Certificate -CertStoreLocation Cert:\LocalMachine\Root
# https://docs.microsoft.com/en-us/troubleshoot/windows-server/windows-security/microsoft-trusted-root-store-removal-of-us-federal-common-policy
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate' -Name 'RootDirURL' -Value 'http://ctldl.windowsupdate.com/msdownload/update/v3/static/trustedr/en/test' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate' -Name 'SyncFromDirUrl' -Value 'http://ctldl.windowsupdate.com/msdownload/update/v3/static/trustedr/en/test' -PropertyType String -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\Certificates' -Recurse -Force;
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate' -Name 'EncodedCtl' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate' -Name 'LastSyncTime' -Force
# CPU性能优化
# Dynamic Ticks are a feature that lets windows stop the system timer when nothing is happening in order to conserve power.
'bcdedit /set disabledynamictick yes' | cmd
# Controls the times stamp counter synchronization policy
'bcdedit /set tscsyncpolicy enhanced' | cmd
# https://docs.microsoft.com/en-us/windows/win32/sysinfo/acquiring-high-resolution-time-stamps
'bcdedit /deletevalue useplatformtick' | cmd
# Forces Windows to use hardware timer instead of OS default
'bcdedit /set useplatformclock true' | cmd
#
'bcdedit /set uselegacyapicmode no' | cmd
# 关闭核心内存保护
'bcdedit /set isolatedcontext No' | cmd
'bcdedit /set allowedinmemorysettings 0x0' | cmd
# 关闭虚拟机支持
'bcdedit /set loadoptions DISABLE-LSA-ISO,DISABLE-VBS' | cmd
'bcdedit /set vsmlaunchtype Off' | cmd
'bcdedit /set vm No' | cmd
'bcdedit /set hypervisorlaunchtype off' | cmd
# 关闭低内存
'bcdedit /set firstmegabytepolicy UseAll' | cmd
'bcdedit /set avoidlowmemory 0x8000000' | cmd
'bcdedit /set nolowmem Yes' | cmd
# 启动选项
'bcdedit /timeout 0' | cmd
'bcdedit /set debug No' | cmd
'bcdedit /set bootlog no' | cmd
'bcdedit /set bootmenupolicy legacy' | cmd
'bcdedit /set disableelamdrivers Yes' | cmd
'bcdedit /set quietboot Yes' | cmd
'bcdedit /set recoveryenabled no' | cmd
'bcdedit /set nx OptIn' | cmd
'bcdedit /set bootstatuspolicy ignoreallfailures' | cmd
# fsutil behavior
'fsutil behavior set disable8dot3 1' | cmd
'fsutil behavior set disableencryption 1' | cmd
'fsutil behavior set disablelastaccess 1' | cmd
'fsutil behavior set EncryptPagingFile 0' | cmd
'fsutil behavior set symlinkEvaluation L2R:0 R2R:0 R2L:0' | cmd
'fsutil behavior set allowextchar 1' | cmd
'fsutil behavior set Bugcheckoncorrupt 0' | cmd
'fsutil behavior set disablecompression 1' | cmd
'fsutil behavior set DisableLastAccess 1' | cmd
'fsutil behavior set encryptpagingfile 0' | cmd
'fsutil behavior set memoryusage 2' | cmd
'fsutil behavior set mftzone 2' | cmd
'fsutil behavior set disabledeletenotify 0' | cmd
'cipher /d /s:C:\' | cmd
'compact /CompactOs:never' | cmd
'fsutil resource setavailable c:' | cmd
'fsutil resource setavailable d:' | cmd
'fsutil resource setlog shrink 10 C:\' | cmd
'fsutil resource setlog shrink 10 D:\' | cmd
'fsutil resource setautoreset true c:\' | cmd
'fsutil resource setautoreset true d:\' | cmd
'fsutil usn deletejournal /d /n c:' | cmd
'fsutil usn deletejournal /d /n d:' | cmd
'fsutil bypassIo state C:\' | cmd
#
"netsh advfirewall firewall set rule group='File and Printer Sharing' new enable=Yes" | cmd
"netsh advfirewall firewall set rule group='Network Discovery' new enable=Yes" | cmd
'Netsh advfirewall set allprofile state off' | cmd
#
'netsh wfp set options netevents = off' | cmd
#
'Auditpol /set /category:* /Success:disable /failure:disable' | cmd

#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance' -Name 'MaintenanceDisabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance' -Name 'WakeUp' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics' -Name 'EnabledExecution' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics' -Name 'EnabledExecution' -Value 0 -PropertyType DWord -Force

#
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications' -Name 'GlobalUserDisabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Name 'BackgroundAppGlobalToggle' -Value 0 -PropertyType DWord -Force

# 显卡设置
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}' -Name 'PerfLevelSrc' -Value 8738 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}' -Name 'powermizerenable' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}' -Name 'powermizerlevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}' -Name 'powermizerlevelac' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}' -Name 'PreferSystemMemoryContiguous' -Value 1 -PropertyType DWord -Force
#
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client' -Name 'OptInOrOutPreference' -Value 0 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS' -Name 'EnableGR535' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS' -Name 'EnableRID61684' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\nvlddmkm' -Name 'DisableWriteCombining' -Value 1 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Dwm') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\Dwm' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Dwm' -Name 'OverlayTestMode' -Value 5 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Ansel') -ne $true) { New-Item 'HKCU:\Software\NVIDIA Corporation\Ansel' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Ansel' -Name 'FreestyleEnabled' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Ansel' -Name 'IPCenabled' -Value '0' -PropertyType String -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\NVIDIA Corporation\NvStream') -ne $true) { New-Item 'HKLM:\SOFTWARE\NVIDIA Corporation\NvStream' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\NVIDIA Corporation\NvStream' -Name 'EnableStreaming' -Value 0 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\NVIDIA Corporation\Global\FTS') -ne $true) { New-Item 'HKLM:\SOFTWARE\NVIDIA Corporation\Global\FTS' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\NVIDIA Corporation\Global\FTS' -Name 'EnableRID44231' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\NVIDIA Corporation\Global\FTS' -Name 'EnableRID64640' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\NVIDIA Corporation\Global\FTS' -Name 'EnableRID66610' -Value 0 -PropertyType DWord -Force
# https://docs.microsoft.com/en-us/windows-hardware/drivers/display/seamless-state-transitions-in-wddm-1-2-and-later
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm' -Name 'WDDMv22EnableSmoothTransition' -Value 1 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF' -Name 'LogEnable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'HwSchMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'PlatformSupportMiracast' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'DpiMapIommuContiguous' -Value 1 -PropertyType DWord -Force
Remove-Item -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\BlockList\Kernel' -Recurse -Force -Verbose
# https://docs.microsoft.com/en-us/dotnet/desktop/wpf/graphics-multimedia/graphics-rendering-registry-settings?view=netframeworkdesktop-4.8
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Avalon.Graphics") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Avalon.Graphics" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics' -Name 'DisableHWAcceleration' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics' -Name 'MaxMultisampleType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics' -Name 'UseReferenceRasterizer' -Value 0 -PropertyType DWord -Force
# 关闭系统还原
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore' -Name 'DisableSR' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore' -Name 'DisableConfig' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore' -Name 'RPSessionInterval' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore' -Name 'DisableSR' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore' -Name 'DisableConfig' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\DeviceInstall\Settings') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\DeviceInstall\Settings' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\DeviceInstall\Settings' -Name 'DisableSystemRestore' -Value 1 -PropertyType DWord -Force
# 内存设置优化
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'ClearPageFileAtShutdown' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'DisablePagingExecutive' -Value 1 -PropertyType DWord 
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'DisablePagingCombining' -Value 1 -PropertyType DWord 
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'LargeSystemCache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'SystemPages' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'FeatureSettings' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'SwapfileControl' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'EnableCfg' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'NonPagedPoolSize' -Value 192 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'PagedPoolSize' -Value 192 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'PoolUsageMaximum' -Value 192 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'PagingFiles' -Value @('c:\pagefile.sys 20480 20480') -PropertyType MultiString -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'MoveImages' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'NtfsEncryptPagingFile' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'DontVerifyRandomDrivers' -Value 1 -PropertyType DWord -Force
# 关闭硬盘预先存取
If (!(Test-Path -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters')) { New-Item -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -ItemType Directory -Force }
New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -Name 'EnableBoottrace' -Value '0' -PropertyType DWord -Force
New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -Name 'EnablePrefetcher' -Value '0' -PropertyType DWord -Force
New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -Name 'EnableSuperfetch' -Value '0' -PropertyType DWord -Force
# 关闭Reserved Storage
Set-WindowsReservedStorageState -State Disabled
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager' -Name 'ShippedWithReserves' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager' -Name 'PassedPolicy' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager' -Name 'MiscPolicyInfo' -Value 2 -PropertyType DWord -Force
# winlogon
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'CachedLogonsCount' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'AutoRestartShell' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'DisableCAD' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'EnableFirstLogonAnimation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'ARSOUserConsent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'DisableLockWorkstation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'SFCDisable' -Value 0 -PropertyType DWord -Force
#　允许Windows Script Host
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Script Host\Settings') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows Script Host\Settings' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Script Host\Settings' -Name 'Enabled' -Value 1 -PropertyType DWord -Force
# Disable power management in connected standby mode
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy' -Force };
# High Performance Burst
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power\Profile\Events\{54533251-82be-4824-96c1-47b60b740d00}\{0DA965DC-8FCF-4c0b-8EFE-8DD5E7BC959A}\{7E01ADEF-81E6-4e1b-8075-56F373584694}') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Power\Profile\Events\{54533251-82be-4824-96c1-47b60b740d00}\{0DA965DC-8FCF-4c0b-8EFE-8DD5E7BC959A}\{7E01ADEF-81E6-4e1b-8075-56F373584694}' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power\Profile\Events\{54533251-82be-4824-96c1-47b60b740d00}\{0DA965DC-8FCF-4c0b-8EFE-8DD5E7BC959A}\{7E01ADEF-81E6-4e1b-8075-56F373584694}' -Name 'TimeLimitInSeconds' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'NoUseStoreOpenWith' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'NoDataExecutionPrevention' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'HideRecentlyAddedApps' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'DisableGraphRecentItems' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'ShowRunasDifferentuserinStart' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Explorer' -Name 'DisableSearchBoxSuggestions' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Explorer' -Name 'DisableThumbsDBOnNetworkFolders' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Explorer' -Name 'NoNewAppAlert' -Value 1 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoInternetOpenWith' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'UseDefaultTile' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoRecentDocsHistory' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoLowDiskSpaceChecks' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoDrivesInSendToMenu' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoPublishingWizard' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoInstrumentation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoRecentDocsHistory' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'ClearRecentDocsOnExit' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoThumbnailCache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoRecycleFiles' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoResolveSearch' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'LinkResolveIgnoreLinkInfo' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoResolveTrack' -Value 1 -PropertyType DWord -Force
#
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShowFrequent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShowCloudFilesInQuickAccess' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ExplorerStartupTraceRecorded' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'EnableAutoTray' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'GlobalAssocChangedCounter' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'DesktopProcess' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShowRecent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'AlwaysUnloadDll' -Value 1 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DisableThumbnailCache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Start_SearchFiles' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ServerAdminUI' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Hidden' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowCompColor' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideFileExt' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DontPrettyPath' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowInfoTip' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideIcons' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'MapNetDrvBtn' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'WebView' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Filter' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowSuperHidden' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DisableEdgeDesktopShortcutCreation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DisableThumbsDBOnNetworkFolders' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'SeparateProcess' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'AutoCheckSelect' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowTypeOverlay' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowStatusBar' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ListviewAlphaSelect' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ListviewShadow' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAnimations' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarSizeMove' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DisablePreviewDesktop' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarSmallIcons' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarGlomLevel' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'MMTaskbarGlomLevel' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAutoHideInTabletMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShellMigrationLevel' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'MnRegionChecked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarMn' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarDa' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'StartMenuInit' -Value 13 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'StartShownOnUpgrade' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DITest' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'EnableTaskGroups' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'StoreAppsOnTaskbar' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowCortanaButton' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ReindexedProfile' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowTaskViewButton' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DontUsePowerShellOnWinX' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarBadges' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'LaunchTo' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideDrivesWithNoMedia' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideMergeConflicts' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAppsVisibleInTabletMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'JointResize' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'SnapAssist' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'SnapFill' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Start_TrackDocs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'MMTaskbarEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Start_TrackProgs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowSyncProviderNotifications' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DisallowShaking' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'FolderContentsInfoTip' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowPreviewHandlers' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'SharingWizardOn' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'MultiTaskingAltTabFilter' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'SearchBoxVisibleInTouchImprovement' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'AppIconInTouchImprovement' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'FileExplorerInTouchImprovement' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAcrylicOpacity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAl' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'UseCompactMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowRecent' -PropertyType DWord -Value 0 -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowFrequent' -PropertyType DWord -Value 0 -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'EnableSnapAssistFlyout' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Start_Layout' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'PersistBrowsers' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'IconsOnly' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'UseOLEDTaskbarTransparency' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'EnableSnapBar' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ThumbnailLivePreviewHoverTime' -Value 90000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ExtendedUIHoverTime' -Value 90000 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\StartMode') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\StartMode' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\StartMode' -Name 'ActualStartMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\StartMode' -Name 'Start_ShowClassicMode' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People' -Name 'PeopleBand' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MultitaskingView\AllUpView') -ne $true) { New-Item 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MultitaskingView\AllUpView' -Force };
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MultitaskingView\AllUpView' -Name 'AllUpView' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MultitaskingView\AllUpView' -Name 'Remove TaskView' -Value 1 -PropertyType DWord -Force
# 强制Explorer刷新
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID') -ne $true) { New-Item 'HKLM:\SOFTWARE\Classes\CLSID' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID' -Name 'DontRefresh' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{ BDEADE7F-C265-11D0-BCED-00A0C90AB50F }\Instance') -ne $true) { New-Item 'HKLM:\SOFTWARE\Classes\CLSID\ { BDEADE7F-C265-11D0-BCED-00A0C90AB50F }\Instance' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{BDEADE7F-C265-11D0-BCED-00A0C90AB50F}\Instance' -Name 'DontRefresh' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{ BDEADE7F-C265-11D0-BCED-00A0C90AB50F }\Instance') -ne $true) { New-Item 'HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\ { BDEADE7F-C265-11D0-BCED-00A0C90AB50F }\Instance' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{BDEADE7F-C265-11D0-BCED-00A0C90AB50F}\Instance' -Name 'DontRefresh' -Value 0 -PropertyType DWord -Force
# 无小娜功能
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Cortana') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Cortana' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Cortana' -Name 'IsAvailable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Cortana' -Name 'CortanaInstalledAtSomePoint' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows Search') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows Search' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows Search' -Name 'CortanaConsent' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Search') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows Search' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Search' -Name 'AllowCortana' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowCortana' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowCloudSearch' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'DisableWebSearch' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowSearchToUseLocation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'ConnectedSearchPrivacy' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'ConnectedSearchSafeSearch' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'ConnectedSearchUseWeb' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowCortanaAboveLock' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowIndexingEncryptedStoresOrItems' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'BingSearchEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'ConnectedSearchUseWebOverMeteredConnections' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'DisableRemovableDriveIndexing' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'DisableSearchBoxSuggestions' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'DoNotUseWebResults' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'PreventIndexingOutlook' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'PreventRemoteQueries' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Name 'SearchboxTaskbarMode' -Value 0 -PropertyType DWord -Force
# 无后台程序
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BamThrottling') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BamThrottling' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BamThrottling' -Name 'DisableWindowHinting' -Value 1 -PropertyType DWord -Force

# no suggestions for using my Android phone with Windows
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Mobility') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Mobility' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Mobility' -Name 'OptedIn' -Value 0 -PropertyType DWord -Force
# Do not add the "- Shortcut" suffix to the file name of created shortcuts
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'link' -Value ([byte[]](0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates' -Name 'ShortcutNameTemplate' -Force
# 蓝屏报告
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'DisplayParameters' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'AutoReboot' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'CrashDumpEnabled' -Value 0 -PropertyType DWord -Force
Remove-Item -Path 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AeDebug' -Force -Recurse
# Disable PerfTrack (tracking of responsiveness events)
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}' -Name 'ScenarioExecutionEnabled' -Value 0 -PropertyType DWord -Force
# 关闭UAC
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'ConsentPromptBehaviorAdmin' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'ConsentPromptBehaviorUser' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableSecureUIAPaths' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'ValidateAdminCodeSignatures' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'FilterAdministratorToken' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'LocalAccountTokenFilterPolicy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableLUA' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableInstallerDetection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'PromptOnSecureDesktop' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableLinkedConnections' -Value 1 -PropertyType DWord -Force
# 无睡眠按钮
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings' -Name 'ShowSleepOption' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings' -Name 'ShowHibernateOption' -Value 0 -PropertyType DWord -Force
# .NET运行库设置
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\.NETFramework') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\.NETFramework' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\.NETFramework') -ne $true) { New-Item 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\.NETFramework' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\.NETFramework' -Name 'OnlyUseLatestCLR' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\.NETFramework' -Name 'OnlyUseLatestCLR' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\.NET') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\.NET' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\.NET' -Name 'AllowAUOnServerOS' -Value 1 -PropertyType DWord -Force
# Don't use AutoPlay for all media and devices
New-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers' -Name 'DisableAutoplay' -PropertyType DWord -Value '1' -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoAutorun' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoAutoplayfornonVolume' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'DontSetAutoplayCheckbox' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoDriveTypeAutoRun' -Value '255' -PropertyType DWord -Force
# Disable thumbnail cache removal
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache') -ne $true) { New-Item 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache' -Name 'Autorun' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache' -Name 'Autorun' -Value 0 -PropertyType DWord -Force
# Disable the "Open", "Print", and "Edit" items if more than 15 files selected
Remove-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'MultipleInvokePromptMinimum' -Force
# 游戏模式
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'AppCaptureEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'KGLToGCSUpdatedRevision' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'KGLRevision' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'AudioCaptureEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'GameDVR_Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'HistoricalCaptureEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\GameBar') -ne $true) { New-Item 'HKCU:\Software\Microsoft\GameBar' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'ShowStartupPanel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'GamePanelStartupTipIndex' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'AllowAutoGameMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'AutoGameModeEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'UseNexusForGameBarEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'ShowGameModeNotifications' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR' -Force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\GameDVR' -Name 'AllowGameDVR' -Value 0 -PropertyType DWord -Force
Remove-Item -LiteralPath 'HKCU:\System\GameConfigStore\Children' -Force -Recurse
Remove-Item -LiteralPath 'HKCU:\System\GameConfigStore\Parents' -Force -Recurse
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\GameUX\ServiceLocation') -ne $true) { New-Item 'HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\GameUX\ServiceLocation' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\GameUX\ServiceLocation' -Name 'Games' -Value '0.0.0.0' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKCU:\System\GameConfigStore') -ne $true) { New-Item 'HKCU:\System\GameConfigStore' -Force };
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_FSEBehaviorMode' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_FSEBehavior' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_HonorUserFSEBehaviorMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_DXGIHonorFSEWindowsCompatible' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_EFSEFeatureFlags' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_DSEBehavior' -Value 2 -PropertyType DWord -Force
# Disable File History
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\FileHistory') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\FileHistory' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\FileHistory' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
# Disable Reconnect Network Drives Notification
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\NetworkProvider') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\NetworkProvider' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\NetworkProvider' -Name 'RestoreConnection' -Value 0 -PropertyType DWord -Force
# Registry Automatically Back up Disable
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager' -Name 'EnablePeriodicBackup' -Force
# Win 11 - No Widgets
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Dsh') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Dsh' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Dsh' -Name 'AllowNewsAndInterests' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Chat') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Chat' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Chat' -Name 'ChatIcon' -Value 3 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds' -Name 'EnableFeeds' -Value 0 -PropertyType DWord -Force
# https://forums.mydigitallife.net/threads/discussion-windows-10-final-build-19041-2-3-4-pc-20h1-2-21h1-2-vb_release.80763/page-74#post-1588296
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'CreateNewWindowsVersion' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'DisableResetbase' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'DisableComponentBackups' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'DisableWerReporting' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'SupersededActions' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'LatentActions' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'OptionalFeatureActions' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'CompressBackups' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'CompressMutables' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'NTFSCompressPayload' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'PreserveFileCompressionState' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'TransientManifestCache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'DisableManifestCache' -Value 1 -PropertyType DWord -Force
# Turn Off Suggested Actions
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SmartActionPlatform\SmartClipboard') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SmartActionPlatform\SmartClipboard' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SmartActionPlatform\SmartClipboard' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FVE') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\FVE' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FVE' -Name 'DisableExternalDMAUnderLock' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'DisableHHDEP' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager' -Name 'ProtectionMode' -Value 0 -PropertyType DWord -Force
#
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.exe' -Name 'MitigationOptions' -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\clview.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\clview.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cnfnot32.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cnfnot32.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\conhost.exe\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\conhost.exe\PerfOptions" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\excel.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\excel.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\excelcnv.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\excelcnv.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ExtExport.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ExtExport.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GameBarPresenceWriter.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GameBarPresenceWriter.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\graph.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\graph.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ie4uinit.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ie4uinit.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieinstal.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieinstal.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ielowutil.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ielowutil.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieUnatt.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieUnatt.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MicrosoftEdgeUpdate.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MicrosoftEdgeUpdate.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MpCmdRun.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MpCmdRun.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msaccess.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msaccess.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mscorsvw.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mscorsvw.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msfeedssync.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msfeedssync.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mshta.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mshta.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsMpEng.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsMpEng.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msoadfsb.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msoadfsb.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msoasb.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msoasb.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msohtmed.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msohtmed.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msosrec.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msosrec.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msoxmled.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msoxmled.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mspub.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mspub.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msqry32.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msqry32.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsSense.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsSense.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngen.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngen.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngentask.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngentask.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\onenote.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\onenote.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\onenotem.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\onenotem.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\orgchart.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\orgchart.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\orgwiz.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\orgwiz.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\outlook.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\outlook.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\powerpnt.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\powerpnt.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PresentationHost.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PresentationHost.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintDialog.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintDialog.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintIsolationHost.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintIsolationHost.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\projimpt.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\projimpt.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\runtimebroker.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\runtimebroker.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\scanost.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\scanost.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\scanpst.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\scanpst.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sdxhelper.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sdxhelper.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecHealthUI.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecHealthUI.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecurityHealthService.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecurityHealthService.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecurityHealthSystray.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecurityHealthSystray.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\selfcert.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\selfcert.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\setlang.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\setlang.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\software_reporter_tool.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\software_reporter_tool.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\splwow64.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\splwow64.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlimpt.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlimpt.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\visio.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\visio.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\vpreview.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\vpreview.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winproj.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winproj.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winword.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winword.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wordconv.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wordconv.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DeviceCensus.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DeviceCensus.exe" -force };
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\clview.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cnfnot32.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\excel.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\excelcnv.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ExtExport.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\graph.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ie4uinit.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieinstal.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ielowutil.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieUnatt.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msaccess.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mscorsvw.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msfeedssync.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mshta.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msoadfsb.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msoasb.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msohtmed.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msosrec.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msoxmled.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mspub.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msqry32.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsSense.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngen.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngentask.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\onenote.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\onenotem.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\orgchart.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\orgwiz.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\outlook.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\powerpnt.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PresentationHost.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintDialog.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintIsolationHost.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\projimpt.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\runtimebroker.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\scanost.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\scanpst.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sdxhelper.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\selfcert.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\setlang.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\splwow64.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlimpt.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\visio.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\vpreview.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winproj.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winword.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wordconv.exe' -Name 'MitigationOptions' -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\conhost.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\conhost.exe\PerfOptions' -Name 'IoPriority' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions' -Name 'IoPriority' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions' -Name 'IoPriority' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions' -Name 'IoPriority' -Value 3 -PropertyType DWord -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe' -Name 'Debugger' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GameBarPresenceWriter.exe' -Name 'Debugger' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MicrosoftEdgeUpdate.exe' -Name 'DisableExceptionChainValidation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MpCmdRun.exe' -Name 'Debugger' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsMpEng.exe' -Name 'Debugger' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecHealthUI.exe' -Name 'Debugger' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecurityHealthService.exe' -Name 'Debugger' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecurityHealthSystray.exe' -Name 'Debugger' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe' -Name 'Debugger' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\software_reporter_tool.exe' -Name 'Debugger' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DeviceCensus.exe' -Name 'Debugger' -Value '0' -PropertyType String -Force

# 无启动延迟
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'AsyncScriptDelay' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableLogonScriptDelay' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize' -Name 'StartupDelayInMSec' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'DelayedDesktopSwitchTimeout' -Value 0 -PropertyType DWord -Force

# Blocking Windows driver co-installer applications
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Installer' -Name 'DisableCoInstallers' -Value 1 -PropertyType DWord -Force
# Disable WFP logging - https://docs.microsoft.com/en-US/troubleshoot/windows-client/networking/lots-disk-io-writes-wfpdiag-etl-log
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BFE\Parameters\Policy\Options' -Name 'CollectNetEvents' -Value 0 -PropertyType DWord -Force
# do not notifiy USB deivce error
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Shell\USB') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Shell\USB' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Shell\USB' -Name 'NotifyOnUsbErrors' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Shell\USB' -Name 'NotifyOnWeakCharger' -Value 1 -PropertyType DWord -Force
# 不允许启动磁盘整理
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction' -Name 'Enable' -Value 'n' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Prefetcher' -Name 'BootFilesOptimized' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OptimalLayout' -Name 'EnableAutoLayout' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction' -Name 'Enable' -Value 'N' -PropertyType String -Force
# Disable UwpStartupTasks
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableUwpStartupTasks' -Value 0 -PropertyType DWord -Force
# never auto logoff
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'InactivityTimeoutSecs' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\ServerManager') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\ServerManager' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\ServerManager' -Name 'DoNotOpenServerManagerAtLogon' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device' -Name 'DevicePasswordLessBuildVersion' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\Reliability') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\Reliability' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\Reliability' -Name 'ShutDownReasonOn' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WSMAN\Service') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WSMAN\Service' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WSMAN\Service' -Name 'allow_remote_requests' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\VideoSettings') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\VideoSettings' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\VideoSettings' -Name 'EnableAutoEnhanceDuringPlayback' -Value 1 -PropertyType DWord -Force
# svchost.exe split threshold to reduce the amount of svchost.exe processes that run simultaneously.
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control' -Name 'SvcHostSplitThresholdInKB' -Value 376926742 -PropertyType DWord -Force
# Allow DSCP tagging on non-domain
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\QoS') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\QoS' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\QoS' -Name 'Do not use NLA' -Value '1' -PropertyType String -Force
# Disable Automatic Online Activation / Validation Telemetry
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation' -Name 'Manual' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation' -Name 'NotificationDisabled' -Value 1 -PropertyType DWord -Force
# 禁止bitlocker
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker' -Name 'PreventDeviceEncryption' -Value 1 -PropertyType DWord -Force
# 禁用Windows RE恢复环境
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager' -Name 'BootExecute' -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager' -Name 'BootExecute' -Value @('') -PropertyType MultiString -Force
# Disabling Ease of Access
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Ease of Access') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Ease of Access' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Ease of Access' -Name 'selfscan' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Ease of Access' -Name 'selfvoice' -Value 0 -PropertyType DWord -Force
#关闭系统级代理开关
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'ProxyEnable' -Value 0 -PropertyType DWord -Force
# 开启多显示器光标跳动
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'CursorDeadzoneJumpingSetting' -Value 1 -PropertyType DWord -Force
# 关闭F1
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\TypeLib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win64' -Name '(default)' -Value '' -PropertyType String -Force
#开启窗口模式游戏加速
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\DirectX\GraphicsSettings') -ne $true) { New-Item 'HKCU:\Software\Microsoft\DirectX\GraphicsSettings' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\DirectX\UserGpuPreferences') -ne $true) { New-Item 'HKCU:\Software\Microsoft\DirectX\UserGpuPreferences' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\DirectX\GraphicsSettings' -Name 'SwapEffectUpgradeCache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\DirectX\UserGpuPreferences' -Name 'DirectXUserGlobalSettings' -Value 'SwapEffectUpgradeEnable=1;' -PropertyType String -Force
#无时间同步
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\W32Time\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\W32Time\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\W32Time\Parameters' -Name 'Type' -Value 'NoSync' -PropertyType String -Force
# disable updates to the disk failure prediction model
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\StorageHealth') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\StorageHealth' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\StorageHealth' -Name 'AllowDiskHealthModelUpdates' -Value 0 -PropertyType DWord -Force
# reduce DWM lag
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows' -Name 'DwmInputUsesIoCompletionPort' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows' -Name 'EnableDwmInputProcessing' -Value 0 -PropertyType DWord -Force
# windows app tracking
if ((Test-Path -LiteralPath 'HKCU:\SOFTWARE\Policies\Microsoft\Windows') -ne $true) { New-Item 'HKCU:\SOFTWARE\Policies\Microsoft\Windows' -Force };
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Policies\Microsoft\Windows' -Name 'DisableMFUTracking' -Value 1 -PropertyType DWord -Force
# Do not let Windows manage my default printer
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows' -Name 'LegacyDefaultPrinterMode' -Value 1 -PropertyType DWord -Force
# Disk Quota
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota' -Name 'Enable' -Value 0 -PropertyType DWord -Force
# Set a reliable 1 ms (minimum) timestamp. Only for untweaked systems (disabling it with 0 is recommended on tweaked systems).
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability' -Name 'TimeStampInterval' -Value 0 -PropertyType DWord -Force
# no HDD Parking
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\amdsbs\Settings\CAM') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\amdsbs\Settings\CAM' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\amdsbs\Settings\CAM' -Name 'EnableHDDParking' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaStorAC\Parameters\Device') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\iaStorAC\Parameters\Device' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaStorAC\Parameters\Device' -Name 'EnableAPM' -Value 0 -PropertyType DWord -Force
# Backup & Restore
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Backup') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Backup' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Backup' -Name 'DisableRestoreUI' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Backup' -Name 'DisableBackupUI' -Value 1 -PropertyType DWord -Force
# PreviousVersions
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\PreviousVersions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\PreviousVersions" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PreviousVersions' -Name 'DisableBackupRestore' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'NoPreviousVersionsPage' -Value 1 -PropertyType DWord -Force
# Allow Login Screen Password Reveal
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CredUI') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CredUI' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CredUI' -Name 'DisablePasswordReveal' -Value 0 -PropertyType DWord -Force
# PassiveIntRealTimeWorkerPriority
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System' -Name 'PassiveIntRealTimeWorkerPriority' -Value 24 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\KernelVelocity' -Name 'DisableFGBoostDecay' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFullAboveNormal') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFullAboveNormal' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLowBackgroundBegin') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLowBackgroundBegin' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\UnmanagedAboveNormal') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\UnmanagedAboveNormal' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\BackgroundDefault') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\BackgroundDefault' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Frozen') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Frozen' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNCS') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNCS' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNK') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNK' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenPPLE') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenPPLE' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Paused') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Paused' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PausedDNK') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PausedDNK' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Pausing') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Pausing' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PrelaunchForeground') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PrelaunchForeground' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\ThrottleGPUInterference') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\ThrottleGPUInterference' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Critical') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Critical' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\CriticalNoUi') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\CriticalNoUi' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\EmptyHostPPLE') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\EmptyHostPPLE' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\High') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\High' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Low') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Low' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Lowest') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Lowest' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Medium') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Medium' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\MediumHigh') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\MediumHigh' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\StartHost') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\StartHost' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryHigh') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryHigh' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryLow') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryLow' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\IO\NoCap') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\IO\NoCap' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Memory\NoCap') -ne $true) { New-Item 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Memory\NoCap' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0' -Name 'CapPercentage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0' -Name 'SchedulingType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused' -Name 'CapPercentage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused' -Name 'SchedulingType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull' -Name 'CapPercentage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull' -Name 'SchedulingType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFullAboveNormal' -Name 'CapPercentage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFullAboveNormal' -Name 'PriorityClass' -Value 32 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFullAboveNormal' -Name 'SchedulingType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow' -Name 'CapPercentage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow' -Name 'SchedulingType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLowBackgroundBegin' -Name 'CapPercentage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLowBackgroundBegin' -Name 'PriorityClass' -Value 32 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLowBackgroundBegin' -Name 'SchedulingType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\UnmanagedAboveNormal' -Name 'CapPercentage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\UnmanagedAboveNormal' -Name 'PriorityClass' -Value 32 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\UnmanagedAboveNormal' -Name 'SchedulingType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\BackgroundDefault' -Name 'IsLowPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Frozen' -Name 'IsLowPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNCS' -Name 'IsLowPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNK' -Name 'IsLowPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenPPLE' -Name 'IsLowPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Paused' -Name 'IsLowPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PausedDNK' -Name 'IsLowPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Pausing' -Name 'IsLowPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PrelaunchForeground' -Name 'IsLowPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\ThrottleGPUInterference' -Name 'IsLowPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Critical' -Name 'BasePriority' -Value 130 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Critical' -Name 'OverTargetPriority' -Value 80 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\CriticalNoUi' -Name 'BasePriority' -Value 130 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\CriticalNoUi' -Name 'OverTargetPriority' -Value 80 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\EmptyHostPPLE' -Name 'BasePriority' -Value 130 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\EmptyHostPPLE' -Name 'OverTargetPriority' -Value 80 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\High' -Name 'BasePriority' -Value 130 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\High' -Name 'OverTargetPriority' -Value 80 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Low' -Name 'BasePriority' -Value 130 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Low' -Name 'OverTargetPriority' -Value 80 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Lowest' -Name 'BasePriority' -Value 130 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Lowest' -Name 'OverTargetPriority' -Value 80 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Medium' -Name 'BasePriority' -Value 130 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Medium' -Name 'OverTargetPriority' -Value 80 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\MediumHigh' -Name 'BasePriority' -Value 130 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\MediumHigh' -Name 'OverTargetPriority' -Value 80 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\StartHost' -Name 'BasePriority' -Value 130 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\StartHost' -Name 'OverTargetPriority' -Value 80 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryHigh' -Name 'BasePriority' -Value 130 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryHigh' -Name 'OverTargetPriority' -Value 80 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryLow' -Name 'BasePriority' -Value 130 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryLow' -Name 'OverTargetPriority' -Value 80 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\IO\NoCap' -Name 'IOBandwidth' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Memory\NoCap' -Name 'CommitLimit' -Value -1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Memory\NoCap' -Name 'CommitTarget' -Value -1 -PropertyType DWord -Force
# if you don’t care to increase the quantum on the foreground window but, instead, just want short, fixed quanta (effectively around 60ms) for all processes to improve response time on a system with a lot of processes? Setting Win32PrioritySeparation to 0x28 will take care of that.
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl' -Name 'Win32PrioritySeparation' -Value 40 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager' -Name 'AlpcWakePolicy' -Value 1 -PropertyType DWord -Force
# Remote Assistance
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance' -Name 'fAllowFullControl' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance' -Name 'fAllowToGetHelp' -Value 0 -PropertyType DWord -Force
# Disable Microsoft Store Apps Open Files in Default Desktop App
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations' -Name 'BlockFileElevation' -Value 1 -PropertyType DWord -Force
# LanmanWorkstation Policy
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'DisableBandwidthThrottling' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'FileInfoCacheEntriesMax' -Value 1024 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'DirectoryCacheEntriesMax' -Value 1024 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'FileNotFoundCacheEntriesMax' -Value 1024 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'DormantFileLimit' -Value 256 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'AllowInsecureGuestAuth' -Value 1 -PropertyType DWord -Force
# no lock screen
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization' -Name 'NoLockScreen' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization' -Name 'LockScreenOverlaysDisabled' -Value 1 -PropertyType DWord -Force
# default drag and drop to move only not copy
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Classes\*') -ne $true) { New-Item 'HKLM:\SOFTWARE\Classes\*' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\*' -Name 'DefaultDropEffect' -Value 2 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Classes\AllFilesystemObjects') -ne $true) { New-Item 'HKLM:\SOFTWARE\Classes\AllFilesystemObjects' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\AllFilesystemObjects' -Name 'DefaultDropEffect' -Value 2 -PropertyType DWord -Force
# 文件系统
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'DisableDeleteNotification' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NTFSDisable8Dot3NameCreation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsDisableCompression' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsDisableEncryption' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsDisableLastAccessUpdate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsDisableLfsDowngrade' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsDisableLfsUpgrade' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsMemoryUsage' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsMftZoneReservation' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsEncryptPagingFile' -Value 0 -PropertyType DWord -Force
# 无网络位置提示
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Network\NetworkLocationWizard') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Network\NetworkLocationWizard' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Network\NetworkLocationWizard' -Name 'HideWizard' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Network\SharedAccessConnection') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Network\SharedAccessConnection' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Network\SharedAccessConnection' -Name 'EnableControl' -Value 0 -PropertyType DWord -Force
# no Maintenance task start
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance') -ne $true) { New-Item 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance' -Name 'WakeUp' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance' -Name 'MaintenanceDisabled' -Value 1 -PropertyType DWord -Force
# By default, MMCSS will leave 20% of your CPU power for other things besides your multimedia task
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'NetworkThrottlingIndex' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'SystemResponsiveness' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'NoLazyMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'LazyModeTimeout' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'AlwaysOn' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'BackgroundPriority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Latency Sensitive' -Value 'True' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'BackgroundPriority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force

# 允许安装所有类型appx
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock' -Name 'AllowAllTrustedApps' -Value 1 -PropertyType DWord -Force

# 剪切板功能
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Clipboard' -Name 'IsClipboardSignalProducingFeatureAvailable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Clipboard' -Name 'IsCloudAndHistoryFeatureAvailable' -Value 0 -PropertyType DWord -Force

# 无离线文件服务
if((Test-Path -LiteralPath "HKLM:\Software\Microsoft\Windows\CurrentVersion\NetCache") -ne $true) {  New-Item "HKLM:\Software\Microsoft\Windows\CurrentVersion\NetCache" -force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\NetCache' -Name 'Enabled' -Value 0 -PropertyType DWord -Force

# 允许摄像头使用Windows Media Foundation
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows Media Foundation") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows Media Foundation" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows Media Foundation\Platform") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows Media Foundation\Platform" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Media Foundation' -Name 'EnableFrameServerMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Media Foundation\Platform' -Name 'EnableFrameServerMode' -Value 0 -PropertyType DWord -Force

# 关机是关闭激活服务延迟
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform' -Name 'InactivityShutdownDelay' -Value 15 -PropertyType DWord -Force

# 关闭注册表备份
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager' -Name 'EnablePeriodicBackup' -Value 0 -PropertyType DWord -Force

# https://www.geoffchappell.com/studies/windows/km/ntoskrnl/api/wdi/sem.htm
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WDI\Config' -Name 'SEMEnabled' -Value 0 -PropertyType DWord -Force

# 关闭显示器时不关闭其他USB设备
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\USB\AutomaticSurpriseRemoval' -Name 'AttemptRecoveryFromUsbPowerDrain' -Value 0 -PropertyType DWord -Force

#
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}' -Name 'LowerFilters' -Value '' -PropertyType String -Force

# Disable all WAN miniport driver
# Get-pnpdevice -friendlyname 'Microsoft 存储空间控制器' | select-object -expandproperty instanceid
Get-PnpDevice -InstanceId 'ROOT\KDNIC\0000' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -InstanceId 'ROOT\VID\0000' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -InstanceId 'ROOT\NDISVIRTUALBUS\0000' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -InstanceId 'ROOT\SPACEPORT\0000' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -InstanceId 'ROOT\UMBUS\0000' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -InstanceId 'SWD\MMDEVAPI\MICROSOFTGSWAVETABLESYNTH' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -FriendlyName '高精度事件计时器' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -FriendlyName 'AMD PSP 11.0 Device' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -FriendlyName 'AMD SMBus' | Disable-PnpDevice -Confirm:$false -Verbose

# Disable Nagle's Algorithm
$i = 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces'  
Get-ChildItem $i | ForEach-Object {  
    Set-ItemProperty -Path "$i\$($_.pschildname)" -Name TcpAckFrequency -Value 1
    Set-ItemProperty -Path "$i\$($_.pschildname)" -Name TCPNoDelay -Value 1
}

# uncheck "Allow the computer to turn off this device to save power" on all USB Controllers
# Dynamic power devices
$powerMgmt = Get-CimInstance -ClassName MSPower_DeviceEnable -Namespace root/WMI

# All USB devices
$UsbDevices = Get-CimInstance -ClassName Win32_PnPEntity -Filter 'PNPClass = "USB"'

$UsbDevices | ForEach-Object {
    # Get the power management instance for this device, if there is one
    $powerMgmt | Where-Object InstanceName -Like "*$($_.InstanceId)*"
} | Set-CimInstance -Property @{Enable = $false }

####################################################################################################### 总结工作 #######################################################################################################
Get-ChildItem 'C:\Windows\SoftwareDistribution' | Remove-Item -Recurse -Force -Verbose
Get-ChildItem 'C:\Users\Administrator\AppData\Local\Temp' | Remove-Item -Recurse -Force -Verbose
Remove-Item c:\Users\Public\Desktop\desktop.ini -Force
Remove-Item c:\Users\Administrator\Desktop\desktop.ini -Force
Copy-Item "C:\Windows\Setup\Scripts\Runstartuptask.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup" -Force
Start-Sleep -Seconds '2'
Get-ChildItem 'C:\Windows\Setup\Scripts' | Remove-Item -Recurse -Force -Verbose
Restart-Computer -Force
