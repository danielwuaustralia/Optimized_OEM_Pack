$ErrorActionPreference = 'SilentlyContinue'
$ProgressPreference = 'SilentlyContinue'
$ConfirmPreference = 'None'
$PSModuleAutoloadingPreference = 'All'
#
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope LocalMachine
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell' -Name 'Path' -Value 'C:\Program Files\PowerShell\7-preview\pwsh.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell' -Name 'ExecutionPolicy' -Value 'Bypass' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell') -ne $true) { New-Item 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell' -Name 'Path' -Value 'C:\Program Files\PowerShell\7-preview\pwsh.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell' -Name 'ExecutionPolicy' -Value 'Bypass' -PropertyType String -Force
#
Start-Transcript -Path c:\1.txt -Force
New-PSDrive -PSProvider Registry -Name HKCR -Root HKEY_CLASSES_ROOT
# Potplayer Setting
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
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64') -ne $true) { New-Item 'HKCU:\Software\Daum\PotPlayerMini64' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{E8E73B6B-4CB3-44A4-BE99-4F7BCB96E491}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'Name' -Value 'LAV Audio Decoder' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'CLSID' -Value '{E8E73B6B-4CB3-44A4-BE99-4F7BCB96E491}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'Merit' -Value -1140850433 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000' -Name 'MeritHi' -Value 520256 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'DisplayName' -Value '@device:dmo:{BBEEA841-0A63-4F52-A7AB-A9B3A84ED38A}{57F2DB8B-E6BB-4513-9D43-DCD2A6593125}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'Name' -Value 'MP3 Decoder DMO' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'Merit' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{4A2286E0-7BEF-11CE-9BD9-0000E202599C}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'Name' -Value 'MPEG Audio Decoder' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'CLSID' -Value '{4A2286E0-7BEF-11CE-9BD9-0000E202599C}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'Merit' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{FEB50740-7BEF-11CE-9BD9-0000E202599C}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'Name' -Value 'MPEG Video Decoder' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'CLSID' -Value '{FEB50740-7BEF-11CE-9BD9-0000E202599C}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'Merit' -Value 256 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{EE30215D-164F-4A92-A4EB-9D4C13390F9F}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'Name' -Value 'LAV Video Decoder' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'CLSID' -Value '{EE30215D-164F-4A92-A4EB-9D4C13390F9F}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'Merit' -Value 261888 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004' -Name 'MeritHi' -Value 201330492 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{212690FB-83E5-4526-8FD7-74478B7939CD}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'Name' -Value 'Microsoft DTV-DVD Video Decoder' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'CLSID' -Value '{212690FB-83E5-4526-8FD7-74478B7939CD}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'Merit' -Value 13056 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'DisplayName' -Value '@device:dmo:{2A11BAE2-FE6E-4249-864B-9E9ED6E8DBC2}{4A69B442-28BE-4991-969C-B500ADF5D8A8}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'Name' -Value 'Mpeg4s Decoder DMO' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'Merit' -Value 3072 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'DisplayName' -Value '@device:dmo:{82D353DF-90BD-4382-8BC2-3F6192B76E34}{4A69B442-28BE-4991-969C-B500ADF5D8A8}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'Name' -Value 'WMVideo Decoder DMO' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'Merit' -Value 245760 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007' -Name 'MeritHi' -Value 3072 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{1B544C20-FD0B-11CE-8C63-00AA0044B51E}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'Name' -Value 'AVI Splitter' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'CLSID' -Value '{1B544C20-FD0B-11CE-8C63-00AA0044B51E}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'Merit' -Value 262144 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{336475D0-942A-11CE-A870-00AA002FEAB5}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'Name' -Value 'MPEG-I Stream Splitter' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'CLSID' -Value '{336475D0-942A-11CE-A870-00AA002FEAB5}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'Merit' -Value 34603008 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{AFB6C280-2C41-11D3-8A60-0000F81E0E4A}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'Name' -Value 'MPEG-2 Demultiplexer' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'CLSID' -Value '{AFB6C280-2C41-11D3-8A60-0000F81E0E4A}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'Merit' -Value 6291456 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{3AE86B20-7BE8-11D1-ABE6-00A0C905F375}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'Name' -Value 'MPEG-2 Splitter' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'CLSID' -Value '{3AE86B20-7BE8-11D1-ABE6-00A0C905F375}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'Merit' -Value 2097152 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'DisplayName' -Value '@device:dmo:{2EEB4ADF-4578-4D10-BCA7-BB955F56320A}{57F2DB8B-E6BB-4513-9D43-DCD2A6593125}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'Name' -Value 'WMAudio Decoder DMO' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'Merit' -Value 1006632960 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'DisplayName' -Value '@device:dmo:{5210F8E4-B0BB-47C3-A8D9-7B2282CC79ED}{57F2DB8B-E6BB-4513-9D43-DCD2A6593125}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'Name' -Value 'WMAPro over S/PDIF DMO' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'Merit' -Value 268435456 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'DisplayName' -Value '@device:dmo:{7BAFB3B1-D8F4-4279-9253-27DA423108DE}{4A69B442-28BE-4991-969C-B500ADF5D8A8}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'Name' -Value 'WMV Screen decoder DMO' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'Merit' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014' -Name 'MeritHi' -Value 12 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'DisplayName' -Value '@device:dmo:{874131CB-4ECC-443B-8948-746B89595D20}{57F2DB8B-E6BB-4513-9D43-DCD2A6593125}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'Name' -Value 'WMSpeech Decoder DMO' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'CLSID' -Value '{94297043-BD82-4DFD-B0DE-8177739C6D20}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'Merit' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015' -Name 'MeritHi' -Value 65536 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{D51BD5A1-7548-11CF-A520-0080C77EF58A}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'Name' -Value 'Wave Parser' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'CLSID' -Value '{D51BD5A1-7548-11CF-A520-0080C77EF58A}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'Merit' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016' -Name 'MeritHi' -Value 1048576 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'DisplayName' -Value '/f' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'Name' -Value 'LAV Splitter Source' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'CLSID' -Value '{B98D13E7-55DB-4385-A33D-09FD1BA26338}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'FilterType' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'Merit' -Value 1140588544 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017' -Name 'MeritHi' -Value 1048707 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0018' -Name 'Type' -Value -2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{E8E73B6B-4CB3-44A4-BE99-4F7BCB96E491}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'Name' -Value 'LAV Audio Decoder' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'CLSID' -Value '{E8E73B6B-4CB3-44A4-BE99-4F7BCB96E491}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0000' -Value '{ED0B916A-044D-11D1-AA78-00C04FC31D60}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0001' -Value '{E06D802B-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0002' -Value '{36523B13-8EE5-11D1-8CA3-0060B057664A}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0003' -Value '{E06D802B-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0004' -Value '{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0005' -Value '{E06D802B-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0006' -Value '{ED0B916A-044D-11D1-AA78-00C04FC31D60}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0007' -Value '{E06D802C-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0008' -Value '{36523B13-8EE5-11D1-8CA3-0060B057664A}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0009' -Value '{E06D802C-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0010' -Value '{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0011' -Value '{E06D802C-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0012' -Value '{ED0B916A-044D-11D1-AA78-00C04FC31D60}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0013' -Value '{E06D8033-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0014' -Value '{36523B13-8EE5-11D1-8CA3-0060B057664A}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0015' -Value '{E06D8033-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0016' -Value '{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0017' -Value '{E06D8033-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0018' -Value '{ED0B916A-044D-11D1-AA78-00C04FC31D60}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0019' -Value '{E06D8032-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0020' -Value '{36523B13-8EE5-11D1-8CA3-0060B057664A}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0021' -Value '{E06D8032-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0022' -Value '{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0023' -Value '{E06D8032-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0024' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0025' -Value '{000000FF-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0026' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0027' -Value '{000001FF-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0028' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0029' -Value '{00001602-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0030' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0031' -Value '{4134504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0032' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0033' -Value '{6134706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0034' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0035' -Value '{53544441-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0036' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0037' -Value '{00001600-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0038' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0039' -Value '{00001601-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0040' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0041' -Value '{00001610-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0042' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0043' -Value '{20534C41-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0044' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0045' -Value '{E06D802C-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0046' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0047' -Value '{A7FB87AF-2D02-42FB-A4D4-05CD93843BDD}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0048' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0049' -Value '{71CFA727-37E4-404A-AEC0-34842532EFF7}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0050' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0051' -Value '{EB27CEC4-163E-4CA3-8B74-8E25F91B517E}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0052' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0053' -Value '{00002000-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0054' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0055' -Value '{E06D8033-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0056' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0057' -Value '{00002001-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0058' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0059' -Value '{A2E58EB7-0FA9-48BB-A40C-FA0E156D0645}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0060' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0061' -Value '{E436EB80-524F-11CE-9F53-0020AF0BA770}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0062' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0063' -Value '{E436EB81-524F-11CE-9F53-0020AF0BA770}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0064' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0065' -Value '{00000050-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0066' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0067' -Value '{E06D802B-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0068' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0069' -Value '{00000055-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0070' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0071' -Value '{0000F1AC-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0072' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0073' -Value '{1541C5C0-CDDF-477D-BC0A-86F8AE7F8354}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0074' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0075' -Value '{8D2FD10B-5841-4A6B-8905-588FEC1ADED9}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0076' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0077' -Value '{000077A1-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0078' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0079' -Value '{00005756-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0080' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0081' -Value '{20504C4D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0082' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0083' -Value '{63616C61-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0084' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0085' -Value '{B82196E9-1B3F-4796-A636-46239087B38E}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0086' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0087' -Value '{33534541-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0088' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0089' -Value '{E06D8032-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0090' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0091' -Value '{A23EB7FC-510B-466F-9FBF-5F878F69347C}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0092' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0093' -Value '{949F97FD-56F6-4527-B4AE-DDEB375AB80F}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0094' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0095' -Value '{454E4F4E-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0096' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0097' -Value '{20776172-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0098' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0099' -Value '{736F7774-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0100' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0101' -Value '{74776F73-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0102' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0103' -Value '{34326E69-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0104' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0105' -Value '{32336E69-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0106' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0107' -Value '{32336C66-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0108' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0109' -Value '{34366C66-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0110' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0111' -Value '{696E3234-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0112' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0113' -Value '{696E3332-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0114' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0115' -Value '{666C3332-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0116' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0117' -Value '{666C3634-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0118' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0119' -Value '{00000160-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0120' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0121' -Value '{00000161-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0122' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0123' -Value '{00000162-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0124' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0125' -Value '{00000163-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0126' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0127' -Value '{4B4F4F43-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0128' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0129' -Value '{43414152-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0130' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0131' -Value '{50434152-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0132' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0133' -Value '{52504953-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0134' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0135' -Value '{00000130-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0136' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0137' -Value '{54454E44-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0138' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0139' -Value '{385F3832-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0140' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0141' -Value '{345F3431-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0142' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0143' -Value '{464C4152-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0144' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0145' -Value '{0000A109-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0146' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0147' -Value '{0000704F-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0148' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0149' -Value '{5355504F-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0150' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0151' -Value '{726D6173-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0152' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0153' -Value '{4C4C454E-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0154' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0155' -Value '{00000006-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0156' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0157' -Value '{00000007-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0158' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0159' -Value '{00000031-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0160' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0161' -Value '{00000002-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0162' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0163' -Value '{00000022-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0164' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0165' -Value '{324D4451-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0166' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0167' -Value '{00000075-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0168' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0169' -Value '{00000270-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0170' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0171' -Value '{43525441-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0172' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0173' -Value '{E923AABF-CB58-4471-A119-FFFA01E4CE62}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0174' -Value '{73647561-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'mod0175' -Value '{AFBC2343-3DCB-4047-9655-E1E62A61B1C5}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'FilterType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'Merit' -Value 8388611 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0000' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{B98D13E7-55DB-4385-A33D-09FD1BA26338}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'Name' -Value 'LAV Splitter Source' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'CLSID' -Value '{B98D13E7-55DB-4385-A33D-09FD1BA26338}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'FilterType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'Merit' -Value 8388612 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0001' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'Type' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'Disabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'DisplayName' -Value '@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{EE30215D-164F-4A92-A4EB-9D4C13390F9F}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'Name' -Value 'LAV Video Decoder' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'CLSID' -Value '{EE30215D-164F-4A92-A4EB-9D4C13390F9F}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0000' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0001' -Value '{34363248-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0002' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0003' -Value '{34363268-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0004' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0005' -Value '{34363258-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0006' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0007' -Value '{34363278-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0008' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0009' -Value '{31435641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0010' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0011' -Value '{31637661-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0012' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0013' -Value '{31564343-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0014' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0015' -Value '{8D2D71CB-243F-45E3-B2D8-5FD7967EC09B}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0016' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0017' -Value '{43564D41-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0018' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0019' -Value '{3143564D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0020' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0021' -Value '{43564548-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0022' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0023' -Value '{31435648-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0024' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0025' -Value '{30314D48-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0026' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0027' -Value '{E436EB81-524F-11CE-9F53-0020AF0BA770}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0028' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0029' -Value '{E436EB86-524F-11CE-9F53-0020AF0BA770}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0030' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0031' -Value '{E06D8026-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0032' -Value '{ED0B916A-044D-11D1-AA78-00C04FC31D60}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0033' -Value '{E06D8026-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0034' -Value '{36523B13-8EE5-11D1-8CA3-0060B057664A}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0035' -Value '{E06D8026-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0036' -Value '{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0037' -Value '{E06D8026-DB46-11CF-B4D1-00805F6CBBEA}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0038' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0039' -Value '{47504A4D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0040' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0041' -Value '{6765706A-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0042' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0043' -Value '{62706A6D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0044' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0045' -Value '{31435657-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0046' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0047' -Value '{31637677-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0048' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0049' -Value '{41564D57-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0050' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0051' -Value '{61766D77-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0052' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0053' -Value '{32505657-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0054' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0055' -Value '{32707677-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0056' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0057' -Value '{31564D57-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0058' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0059' -Value '{31766D77-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0060' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0061' -Value '{32564D57-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0062' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0063' -Value '{32766D77-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0064' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0065' -Value '{33564D57-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0066' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0067' -Value '{33766D77-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0068' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0069' -Value '{50564D57-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0070' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0071' -Value '{70766D77-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0072' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0073' -Value '{30375056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0074' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0075' -Value '{30385056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0076' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0077' -Value '{30395056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0078' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0079' -Value '{31305641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0080' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0081' -Value '{44495658-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0082' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0083' -Value '{64697678-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0084' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0085' -Value '{58564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0086' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0087' -Value '{78766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0088' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0089' -Value '{78766944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0090' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0091' -Value '{30355844-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0092' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0093' -Value '{30357864-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0094' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0095' -Value '{5634504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0096' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0097' -Value '{7634706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0098' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0099' -Value '{3253344D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0100' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0101' -Value '{3273346D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0102' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0103' -Value '{5334504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0104' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0105' -Value '{7334706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0106' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0107' -Value '{34504D46-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0108' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0109' -Value '{58564933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0110' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0111' -Value '{78766933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0112' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0113' -Value '{31564933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0114' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0115' -Value '{31766933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0116' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0117' -Value '{32564933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0118' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0119' -Value '{32766933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0120' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0121' -Value '{305A4C42-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0122' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0123' -Value '{564F4547-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0124' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0125' -Value '{3447504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0126' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0127' -Value '{3467706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0128' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0129' -Value '{3134504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0130' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0131' -Value '{3134706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0132' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0133' -Value '{31564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0134' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0135' -Value '{31766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0136' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0137' -Value '{3234504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0138' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0139' -Value '{3234706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0140' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0141' -Value '{32564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0142' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0143' -Value '{32766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0144' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0145' -Value '{3334504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0146' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0147' -Value '{3334706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0148' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0149' -Value '{33564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0150' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0151' -Value '{33766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0152' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0153' -Value '{3347504D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0154' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0155' -Value '{3367706D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0156' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0157' -Value '{34564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0158' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0159' -Value '{34766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0160' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0161' -Value '{35564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0162' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0163' -Value '{35766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0164' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0165' -Value '{36564944-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0166' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0167' -Value '{36766964-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0168' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0169' -Value '{33585644-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0170' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0171' -Value '{33787664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0172' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0173' -Value '{44564933-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0174' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0175' -Value '{31564C46-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0176' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0177' -Value '{31766C66-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0178' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0179' -Value '{30365056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0180' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0181' -Value '{30367076-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0182' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0183' -Value '{31365056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0184' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0185' -Value '{31367076-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0186' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0187' -Value '{32365056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0188' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0189' -Value '{32367076-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0190' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0191' -Value '{41365056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0192' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0193' -Value '{61367076-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0194' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0195' -Value '{46365056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0196' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0197' -Value '{66367076-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0198' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0199' -Value '{34564C46-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0200' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0201' -Value '{34766C66-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0202' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0203' -Value '{31565346-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0204' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0205' -Value '{30315652-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0206' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0207' -Value '{30325652-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0208' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0209' -Value '{30335652-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0210' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0211' -Value '{30345652-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0212' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0213' -Value '{64737664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0214' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0215' -Value '{44535644-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0216' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0217' -Value '{48564443-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0218' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0219' -Value '{43564443-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0220' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0221' -Value '{35564443-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0222' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0223' -Value '{35327664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0224' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0225' -Value '{35325644-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0226' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0227' -Value '{30357664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0228' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0229' -Value '{30355644-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0230' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0231' -Value '{70637664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0232' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0233' -Value '{70357664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0234' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0235' -Value '{6E357664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0236' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0237' -Value '{70707664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0238' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0239' -Value '{20637664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0240' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0241' -Value '{31687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0242' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0243' -Value '{32687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0244' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0245' -Value '{33687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0246' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0247' -Value '{34687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0248' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0249' -Value '{35687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0250' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0251' -Value '{36687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0252' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0253' -Value '{71687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0254' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0255' -Value '{70687664-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0256' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0257' -Value '{76645641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0258' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0259' -Value '{31645641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0260' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0261' -Value '{32706A6D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0262' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0263' -Value '{43324A4D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0264' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0265' -Value '{43324A4C-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0266' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0267' -Value '{4B324A4C-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0268' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0269' -Value '{324A5049-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0270' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0271' -Value '{31515653-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0272' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0273' -Value '{33515653-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0274' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0275' -Value '{31363248-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0276' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0277' -Value '{31363268-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0278' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0279' -Value '{33363248-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0280' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0281' -Value '{33363268-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0282' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0283' -Value '{33363273-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0284' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0285' -Value '{33363273-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0286' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0287' -Value '{33363249-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0288' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0289' -Value '{33363269-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0290' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0291' -Value '{4F454854-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0292' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0293' -Value '{6F656874-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0294' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0295' -Value '{63637374-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0296' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0297' -Value '{32637374-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0298' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0299' -Value '{30355649-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0300' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0301' -Value '{31345649-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0302' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0303' -Value '{31335649-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0304' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0305' -Value '{32335649-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0306' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0307' -Value '{31535046-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0308' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0309' -Value '{55594648-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0310' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0311' -Value '{5347414C-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0312' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0313' -Value '{64697663-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0314' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0315' -Value '{20656C72-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0316' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0317' -Value '{30335056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0318' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0319' -Value '{31335056-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0320' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0321' -Value '{44435343-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0322' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0323' -Value '{47455051-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0324' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0325' -Value '{302E3151-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0326' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0327' -Value '{312E3151-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0328' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0329' -Value '{485A534D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0330' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0331' -Value '{42494C5A-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0332' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0333' -Value '{617A7072-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0334' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0335' -Value '{00000001-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0336' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0337' -Value '{68637061-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0338' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0339' -Value '{6E637061-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0340' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0341' -Value '{73637061-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0342' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0343' -Value '{6F637061-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0344' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0345' -Value '{68347061-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0346' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0347' -Value '{78347061-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0348' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0349' -Value '{41524C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0350' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0351' -Value '{47524C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0352' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0353' -Value '{30594C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0354' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0355' -Value '{32594C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0356' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0357' -Value '{34594C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0358' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0359' -Value '{32595155-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0360' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0361' -Value '{47525155-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0362' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0363' -Value '{41525155-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0364' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0365' -Value '{30484C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0366' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0367' -Value '{32484C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0368' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0369' -Value '{34484C55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0370' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0371' -Value '{32594D55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0372' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0373' -Value '{32484D55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0374' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0375' -Value '{34594D55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0376' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0377' -Value '{34484D55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0378' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0379' -Value '{47524D55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0380' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0381' -Value '{41524D55-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0382' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0383' -Value '{56564D41-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0384' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0385' -Value '{46564D41-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0386' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0387' -Value '{64726376-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0388' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0389' -Value '{63617264-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0390' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0391' -Value '{6E645641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0392' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0393' -Value '{68645641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0394' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0395' -Value '{4D415243-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0396' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0397' -Value '{4356534D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0398' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0399' -Value '{4D414857-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0400' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0401' -Value '{53504238-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0402' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0403' -Value '{4F434F4C-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0404' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0405' -Value '{56424D5A-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0406' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0407' -Value '{31524356-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0408' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0409' -Value '{43534141-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0410' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0411' -Value '{574F4E53-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0412' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0413' -Value '{31564646-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0414' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0415' -Value '{48564646-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0416' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0417' -Value '{636E4D56-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0418' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0419' -Value '{434C4641-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0420' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0421' -Value '{344D3247-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0422' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0423' -Value '{646F6369-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0424' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0425' -Value '{4B435544-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0426' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0427' -Value '{30324D54-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0428' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0429' -Value '{44484643-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0430' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0431' -Value '{5947414D-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0432' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0433' -Value '{694B4942-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0434' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0435' -Value '{624B4942-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0436' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0437' -Value '{324B4D53-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0438' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0439' -Value '{344B4D53-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0440' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0441' -Value '{56504854-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0442' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0443' -Value '{56516F52-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0444' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0445' -Value '{20676E70-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0446' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0447' -Value '{46464954-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0448' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0449' -Value '{20504D42-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0450' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0451' -Value '{20464947-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0452' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0453' -Value '{20414754-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0454' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0455' -Value '{30313276-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0456' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0457' -Value '{30313476-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0458' -Value '{73646976-0000-0010-8000-00AA00389B71}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'mod0459' -Value '{D80FA03C-35C1-4FA1-8C8E-375C8667166E}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'FilterType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'Merit' -Value 8388611 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0002' -Name 'MeritHi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Override\0003' -Name 'Type' -Value -2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'MainWidth2' -Value 1920 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'MainHeight2' -Value 876 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowWidth' -Value -1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowHeight' -Value -1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'MainWindowState' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowRectL0' -Value 102 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowRectT0' -Value 143 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowRectR0' -Value 2022 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowRectB0' -Value 1019 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowState1' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowRectL1' -Value 438 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowRectT1' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowRectR1' -Value 724 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowRectB1' -Value 508 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowState2' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowRectL2' -Value 869 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowRectT2' -Value 549 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowRectR2' -Value 1199 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'VideoWindowRectB2' -Value 744 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'ChatWindowVisible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'PlayListWindowVisible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'PlayListWidth' -Value 286 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow0' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow1' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow2' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow3' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow4' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow5' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow6' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow7' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow8' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'TopMostWindow9' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'ControlBoxWidth' -Value 330 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Positions' -Name 'ControlBoxHeight' -Value 195 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LanguageIni' -Value 'Chinese(Simplified).ini' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'MftDecoder' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DmoDecoder' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Info1' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Info6' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Info7' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LastConfigPage' -Value 355 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PlaybackMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LastPlayListName' -Value 'PotPlayerMini64.dpl' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LastSkinName' -Value 'YouTube_Slim.dsf' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LastSkinXmlName' -Value 'VideoSkin.xml' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LastSkinXmlNameVideo' -Value 'VideoSkin.xml' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'VideoRen2' -Value 10 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudioVolume' -Value 95 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'CaptionStyle' -Value '5;5;5;5;2;0;2.000000;2.000000;3.000000;3.000000;0xffffff;0x000000;0x000000;0x000000;0x00;0x00;0x00;0x90;1;微软雅黑;18.000000;100.000000;100.000000;0.000000;700;0;0;0;0;0.000000;0.000000;0.000000;0.000000;2;1;1;50;95;0.000000;0;0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'CaptionAltFont' -Value '微软雅黑' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'RepeatPlay2' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'RepeatPlayAudio' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PreviewSeekTime' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PreviewThumbnail' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PlaybackSearchFile' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'MotionBlur' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudioNormalize' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'OpenWithSameName' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'RememberPosition' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'RememberPositionAudio' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'ShowRememberList' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'CaptionIgnoreAbsSize' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AllowMultiple' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'UseTooltip' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'UseMagWindow' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'EffectPage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'EffectCastOnly' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'SkipCastPreview' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'ChatAttachToMain2' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'BroadcastAttachToMain2' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PlaylistAttachSize2' -Value 288 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'NormalAviSrc_new1' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DemageAviSrc_new1' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'NormalAsfSrc_new1' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DemageAsfSrc_new1' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'MkvSrc_new1' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg1Src_new1' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg2PsSrc_new1' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg2TsSrc_new1' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mp4Src_new1' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'OggSrc_new1' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mp3Src_new1' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AacSrc1' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'FlacSrc1' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'FlvSrc1' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WaveSrc1' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg1Video_new' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg2Video_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'XvidVideo_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DivxVideo_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'H264Video_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Avc1Video_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'H265Video_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'HevcVideo_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Vc1Video_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WMV1Video_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WMV2Video_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WMV3Video_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Vp8Video' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Vp9Video' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Vc1Image_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WMV3Image_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mss1Video_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mss2Video_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mss3Video_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mss4Video_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mp3Audio_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg1Audio_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Mpg2Audio_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AacAudio_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LatmAudio_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Ac3Audio_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Eac3Audio_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'TrueHDAudio_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'MlpAudio_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DtsAudio_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Lpcm2Audio_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'HdmvLpcmAudio' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'VorbisAudio_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'FlacAudio' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WmaV1Audio' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WmaV2Audio' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WmaProAudio' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WmaLosslessAudio' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WmaVoiceAudio' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WavPackAudio' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'OpusAudio' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudSpkIndex_new' -Value 22 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudOutBit_new' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'VideoTransformUseMode' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'VideoTransformSwitcher' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudioTransformUseMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudioTransformSwitcher' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'BuiltInAudioSwitcher' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'WinampDspIndex' -Value -1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'UseMediaKey' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'ItuRecSpec' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'RGB2YUVLevel' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PauseOnMin' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'PauseOnLock' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'StartScreenSize' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'CaptionTranslateEngine2' -Value 'SubtitleTranslate - google.as' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'VMR9ColorManagementEnable' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'D3DFullScreenUi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'MessageFontWeight' -Value 400 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'MessageFontSize' -Value 14 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'SO_Desktop' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'SO_Download' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AttachWindowIndex' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AudioVolumeWaveMax' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AutoLoadExtAudio' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'SaveConfigPause' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'Win7WorkTool' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AutoAlignWindow' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'UseSideWindow' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DialogBaseFontSize' -Value 10 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'DialogCharset' -Value 134 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'UseATextOut' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'CaptionMaxRes' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'TouchSupport' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'CheckAutoUpdate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'LastCheckDays' -Value 18712 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AutoUpdateStart' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\Settings' -Name 'AutoDownloadFile' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64' -Name 'AddMyComPL' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64' -Name 'ServiceValue' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64' -Name 'Check118_119' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64' -Name '' -Value 1 -PropertyType DWord -Force
# LAV Filter Settings
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV') -ne $true) { New-Item 'HKCU:\Software\LAV' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Audio') -ne $true) { New-Item 'HKCU:\Software\LAV\Audio' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Audio\Formats') -ne $true) { New-Item 'HKCU:\Software\LAV\Audio\Formats' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Splitter') -ne $true) { New-Item 'HKCU:\Software\LAV\Splitter' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats') -ne $true) { New-Item 'HKCU:\Software\LAV\Splitter\Formats' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Video') -ne $true) { New-Item 'HKCU:\Software\LAV\Video' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Video\Formats') -ne $true) { New-Item 'HKCU:\Software\LAV\Video\Formats' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel') -ne $true) { New-Item 'HKCU:\Software\LAV\Video\HWAccel' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\LAV\Video\Output') -ne $true) { New-Item 'HKCU:\Software\LAV\Video\Output' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'TrayIcon' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'DRCEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'DRCLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'DTSHDFraming' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'BitstreamingFallback' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'AutoAVSync' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'ExpandMono' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Expand61' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'OutputStandardLayout' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Output51Legacy' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'AudioDelayEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'AudioDelay' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Mixing' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'MixingLayout' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'MixingFlags' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'MixingMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'MixingCenterLevel' -Value 7071 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'MixingSurroundLevel' -Value 7071 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'MixingLFELevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Bitstreaming_ac3' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Bitstreaming_eac3' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Bitstreaming_truehd' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Bitstreaming_dts' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'Bitstreaming_dtshd' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'SampleFormat_s16' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'SampleFormat_s24' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'SampleFormat_s32' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'SampleFormat_u8' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'SampleFormat_fp32' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio' -Name 'SampleConvertDither' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'aac' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'ac3' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'eac3' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'dts' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'mp2' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'mp3float' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'truehd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'flac' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'vorbis' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'lpcm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'pcm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'wavpack' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'tta' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'wma' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'wmapro' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'cook' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'realaudio' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'wmalossless' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'alac' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'opus' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'amr' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'nellymoser' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'mspcm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'truespeech' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'tak' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Audio\Formats' -Name 'atrac' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'TrayIcon' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'prefAudioLangs' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'prefSubLangs' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'subtitleAdvanced' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'subtitleMode' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'PGSForcedStream' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'PGSOnlyForced' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'vc1TimestampMode' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'substreams' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'MatroskaExternalSegments' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'StreamSwitchReselectSubs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'StreamSwitchRemoveAudio' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'PreferHighQualityAudio' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'ImpairedAudio' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'QueueMaxSize' -Value 256 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'NetworkAnalysisDuration' -Value 1000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter' -Name 'QueueMaxPackets' -Value 350 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'matroska' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'avi' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mp4' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mpegts' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mpeg' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'bluray' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'flv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ogg' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'wtv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'asf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mxf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'bink' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'avisynth' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rtmp' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rtsp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rtp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mms' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dts' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ac3' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'aac' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mp3' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'flac' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name '3dostr' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name '4xm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'aa' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'aax' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ace' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'acm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'act' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'adf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'adp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ads' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'adx' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'aea' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'afc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'aiff' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'aix' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'alaw' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'alias_pix' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'alp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'amr' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'amrnb' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'amrwb' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'anm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'apc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ape' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'apm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'apng' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'aptx' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'aptx_hd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'aqtitle' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'argo_asf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'argo_brp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'argo_cvg' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ast' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'au' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'av1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'avr' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'avs' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'avs2' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'avs3' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'bethsoftvid' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'bfi' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'bfstm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'bin' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'binka' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'bit' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'bitpacked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'bmp_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'bmv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'boa' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'brender_pix' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'brstm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'c93' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'caf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'cavsvideo' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'cdg' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'cdxl' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'cine' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'codec2' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'codec2raw' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'concat' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'cri_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dash' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'data' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'daud' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dcstr' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dds_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'derf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dfa' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dhav' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dpx_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dsf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dsicin' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dss' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dtshd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dvbsub' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dvbtxt' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'dxa' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ea' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ea_cdata' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'eac3' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'epaf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'exr_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'film_cpk' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'filmstrip' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'fits' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'flic' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'frm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'fsb' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'fwse' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'g723_1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'g726' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'g726le' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'g729' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'gdv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'gem_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'genh' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'gif' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'gif_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'gxf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'hca' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'hcom' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'hls' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'hnm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ico' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'idcin' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'idf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'iff' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ifv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ilbc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'image2' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'imf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ipmovie' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ipu' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ircam' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'iss' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'iv8' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ivf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ivr' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'j2k_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'jacosub' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'jpeg_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'jpegls_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'jv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'kux' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'kvag' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'live_flv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'lmlm4' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'loas' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'lrc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'luodat' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'lvf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'lxf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'm4v' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mca' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mcc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mgsts' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'microdvd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mjpeg_2000' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mlp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mlv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mmf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mods' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'moflex' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mpc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mpc8' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mpegvideo' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mpjpeg' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mpl2' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mpsub' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'msf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'msnwctcp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'msp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mtaf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mtv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mulaw' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'musx' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mvi' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'mxg' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'nc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'nistsphere' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'nsp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'nsv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'nut' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'nuv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'obu' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'oma' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'paf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'pam_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'pbm_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'pcx_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'pgm_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'pgmyuv_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'pgx_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'photocd_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'pictor_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'pjs' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'pmp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'png_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'pp_bnk' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ppm_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'psd_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'psxstr' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'pva' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'pvf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'qcp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'qdraw_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'r3d' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rawaudio' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rawvideo' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'realtext' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'redspark' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rl2' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'roq' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rpl' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rsd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'rso' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 's337m' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sami' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sap' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sbc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sbg' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'scc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'scd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sdp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sdr2' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sds' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sdx' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ser' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sga' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sgi_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'shn' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'siff' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'simbiosis_imx' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sln' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'smjpeg' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'smk' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'smush' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sol' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sox' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'srt' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'stl' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'subviewer' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'subviewer1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sunrast_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'sup' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'svag' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'svg_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'svs' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'swf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'tak' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'tedcaptions' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'thp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'tiertexseq' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'tiff_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'tmv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'truehd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'tta' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'txd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'ty' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'v210' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'v210x' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'vag' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'vidc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'vividas' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'vivo' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'vmd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'vobsub' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'voc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'vpk' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'vplayer' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'vqf' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'w64' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'wav' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'wc3movie' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'webp_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'webvtt' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'wsaud' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'wsd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'wsvqa' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'wv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'wve' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'xa' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'xbin' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'xbm_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'xmv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'xpm_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'xvag' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'xwd_pipe' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'xwma' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'y4m' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Splitter\Formats' -Name 'yop' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video' -Name 'TrayIcon' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video' -Name 'StreamAR' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video' -Name 'NumThreads' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video' -Name 'DeintFieldOrder' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video' -Name 'DeintMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video' -Name 'RGBRange' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video' -Name 'DVDVideo' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video' -Name 'MSWMV9DMO' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video' -Name 'SWDeintMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video' -Name 'SWDeintOutput' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video' -Name 'DitherMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'h264' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'vc1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'mpeg1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'mpeg2' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'mpeg4' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'msmpeg4' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'vp8' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'wmv3' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'wmv12' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'mjpeg' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'theora' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'flash' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'vp6' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'svq' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'h261' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'h263' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'indeo' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'tscc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'fraps' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'huffyuv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'qtrle' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'dvvideo' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'bink' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'smackvideo' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'rv12' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'rv34' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'lagarith' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'cinepak' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'cscd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'qpeg' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'zlib' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'rpza' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'png' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'msrle' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'prores' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'utvideo' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'dirac' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'dnxhd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'msvideo1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name '8bps' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'loco' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'zmbv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'vcr1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'snow' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'ffv1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'v210/v410' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'jpeg2000' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'vmnc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'flic' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'g2m' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'icod' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'thp' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'hevc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'vp9' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'truemotion' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'vp7' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'h264mvc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'cfhd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'magicyuv' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Formats' -Name 'av1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'HWAccel' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'h264' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'vc1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'mpeg2' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'mpeg4' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'dvd' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'hevc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'vp9' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'h264mvc' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'av1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'HWResFlags' -Value 7 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'HWDeintMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'HWDeintOutput' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'HWAccelDeviceDXVA2' -Value -1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'HWAccelDeviceDXVA2Desc' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'HWAccelDeviceD3D11' -Value -1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'HWAccelDeviceD3D11Desc' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\HWAccel' -Name 'HWAccelCUVIDXVA' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'yv12' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'nv12' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'yuy2' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'uyvy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'ayuv' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'p010' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'p210' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'y410' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'p016' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'p216' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'y416' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'rgb32' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'rgb24' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'v210' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'v410' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'yv16' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'yv24' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\LAV\Video\Output' -Name 'rgb48' -Value 1 -PropertyType DWord -Force
# Chrome 策略
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DefaultGeolocationSetting' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DefaultSensorsSetting' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AdsSettingForIntrusiveAdsSites' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AdvancedProtectionAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AudioProcessHighPriorityEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AudioSandboxEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AutofillCreditCardEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'AutoplayAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'BackgroundModeEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'BatterySaverModeAvailability' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'BuiltInDnsClientEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'BookmarkBarEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'BrowserNetworkTimeQueriesEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DNSInterceptionChecksEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DiskCacheDir' -Value 'C:\TEMP' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DiskCacheSize' -Value 1717986918 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DnsOverHttpsMode' -Value 'off' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DownloadRestrictions' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'EncryptedClientHelloEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'FetchKeepaliveDurationSecondsOnShutdown' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'ForceGoogleSafeSearch' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'ForceYouTubeRestrict' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'HighEfficiencyModeEnabled' -Value 0 -PropertyType DWord -Force
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
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'ShoppingListEnabled' -Value 0 -PropertyType DWord -Force
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
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'HistoryClustersVisible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'PaymentMethodQueryEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'RequireOnlineRevocationChecksForLocalAnchors' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'SavingBrowserHistoryDisabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'SearchSuggestEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'ShowAppsShortcutInBookmarkBar' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'TranslateEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'UrlKeyedAnonymizedDataCollectionEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'DefaultClipboardSetting' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome' -Name 'NetworkServiceSandboxEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome\SpellcheckLanguage') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Google\Chrome\SpellcheckLanguage' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Google\Chrome\SpellcheckLanguage' -Name '1' -Value 'en-US' -PropertyType String -Force
# Firefox策略
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Certificates') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Certificates' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Cookies') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Cookies' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\DNSOverHTTPS') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\DNSOverHTTPS' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Autoplay') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Autoplay' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Camera') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Camera' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Location') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Location' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Microphone') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Microphone' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Notifications') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Notifications' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\VirtualReality') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\VirtualReality' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\PictureInPicture') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\PictureInPicture' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\PopupBlocking') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\PopupBlocking' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Proxy') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Proxy' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'AppAutoUpdate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'BackgroundAppUpdate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DefaultDownloadDirectory' -Value 'D:\Downloads' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableDefaultBrowserAgent' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableFirefoxStudies' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisablePocket' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableTelemetry' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DontCheckDefaultBrowser' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableAppUpdate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableFeedbackCommands' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableFirefoxScreenshots' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableMasterPasswordCreation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableProfileRefresh' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableSafeMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisableSetDesktopBackground' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'DisplayBookmarksToolbar' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'ExtensionUpdate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'HardwareAcceleration' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'LegacyProfiles' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'NetworkPrediction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'NewTabPage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'NoDefaultBookmarks' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'OverrideFirstRunPage' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'OverridePostUpdatePage' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'PromptForDownloadLocation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'SearchSuggestEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'ShowHomeButton' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'WindowsSSO' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox' -Name 'RequestedLocales' -Value 'zh-CN,en-US' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Certificates' -Name 'ImportEnterpriseRoots' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Cookies' -Name 'AcceptThirdParty' -Value 'from-visited' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Cookies' -Name 'RejectTracker' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Cookies' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\DNSOverHTTPS' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection' -Name 'Value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection' -Name 'Cryptomining' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection' -Name 'Fingerprinting' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome' -Name 'Search' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome' -Name 'TopSites' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome' -Name 'SponsoredTopSites' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome' -Name 'Highlights' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome' -Name 'Pocket' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome' -Name 'SponsoredPocket' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome' -Name 'Snippets' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Autoplay' -Name 'BlockNewRequests' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Autoplay' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Camera' -Name 'BlockNewRequests' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Camera' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Location' -Name 'BlockNewRequests' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Location' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Microphone' -Name 'BlockNewRequests' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Microphone' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Notifications' -Name 'BlockNewRequests' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Notifications' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\VirtualReality' -Name 'BlockNewRequests' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Permissions\VirtualReality' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\PictureInPicture' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\PictureInPicture' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\PopupBlocking' -Name 'Default' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\PopupBlocking' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Proxy' -Name 'Mode' -Value 'none' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Proxy' -Name 'Locked' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Proxy' -Name 'UseHTTPProxyForAllProtocols' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Proxy' -Name 'UseProxyForDNS' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Name 'Cache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown' -Name 'Downloads' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging' -Name 'WhatsNew' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging' -Name 'ExtensionRecommendations' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging' -Name 'FeatureRecommendations' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging' -Name 'UrlbarInterventions' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging' -Name 'SkipOnboarding' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging' -Name 'MoreFromMozilla' -Value 0 -PropertyType DWord -Force
# SysinternalsSuite
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\AccessChk') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\AccessChk' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\AccessEnum') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\AccessEnum' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\AdExplorer') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\AdExplorer' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\AdInsight') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\AdInsight' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\AdRestore') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\AdRestore' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Autologon') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Autologon' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Autoruns') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Autoruns' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\BgInfo') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\BgInfo' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\BlueScreen') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\BlueScreen' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\CacheSet') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\CacheSet' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\ClockRes') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\ClockRes' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Contig') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Contig' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Coreinfo') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Coreinfo' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Ctrl2cap') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Ctrl2cap' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\DebugView') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\DebugView' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Desktops') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Desktops' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Disk Usage') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Disk Usage' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Disk2vhd') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Disk2vhd' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\DiskExt') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\DiskExt' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Diskmon') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Diskmon' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\DiskView') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\DiskView' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\EFSDump') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\EFSDump' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Handle') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Handle' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Hex2dec') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Hex2dec' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Junction') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Junction' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\LDMDump') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\LDMDump' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\ListDLLs') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\ListDLLs' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\LiveKd') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\LiveKd' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\LoadOrder') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\LoadOrder' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\LogonSessions') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\LogonSessions' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\MoveFile') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\MoveFile' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\NTFSInfo') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\NTFSInfo' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PageDefrag') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PageDefrag' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PendMoves') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PendMoves' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PipeList') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PipeList' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PortMon') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PortMon' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\ProcDump') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\ProcDump' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Process Explorer') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Process Explorer' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Process Monitor') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Process Monitor' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\ProcFeatures') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\ProcFeatures' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsExec') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsExec' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsFile') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsFile' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsGetSid') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsGetSid' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsInfo') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsInfo' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsKill') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsKill' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsList') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsList' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsLoggedOn') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsLoggedOn' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsLogList') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsLogList' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsPasswd') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsPasswd' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsService') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsService' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsShutdown') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsShutdown' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsSuspend') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsSuspend' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\PsTools') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\PsTools' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\RAMMap') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\RAMMap' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\RegDelNull') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\RegDelNull' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\RegJump') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\RegJump' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\RootkitRevealer') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\RootkitRevealer' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\SDelete') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\SDelete' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\ShareEnum') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\ShareEnum' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\ShellRunas') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\ShellRunas' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Sigcheck') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Sigcheck' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Streams') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Streams' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Strings') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Strings' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Sync') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Sync' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\TCPView') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\TCPView' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\VMMap') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\VMMap' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\VolumeId') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\VolumeId' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\Whois') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\Whois' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\WinObj') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\WinObj' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Sysinternals\ZoomIt') -ne $true) { New-Item 'HKCU:\Software\Sysinternals\ZoomIt' -Force };
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
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Process Explorer' -Name 'OneInstance' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Sysinternals\Process Explorer' -Name 'AlwaysOntop' -Value 1 -PropertyType DWord -Force
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
# startisback
if ((Test-Path -LiteralPath 'HKCU:\Software\StartIsBack') -ne $true) { New-Item 'HKCU:\Software\StartIsBack' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'ModernIconsColorized' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'SettingsVersion' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'WelcomeShown' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'FrameStyle' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'OrbBitmap' -Value 'C:\Program Files\StartAllBack\Orbs\Vista.png' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarStyle' -Value 'Windows 7.msstyles' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'SysTrayStyle' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarOneSegment' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarCenterIcons' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarTranslucentEffect' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'AlterStyle' -Value 'Windows 7.msstyles' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'BottomDetails' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'NoXAMLMenus' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'UndeadControlPanel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'StartMenuAlpha' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarAlpha' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarColor' -Value 16777215 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'CustomColors' -Value 'ColorA=FFFFFFFF' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarBlur' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'OldSearch' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarLargerIcons' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarSpacierIcons' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_LargeAllAppsIcons' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'AllProgramsFlyout' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'StartMetroAppsFolder' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_SortOverride' -Value 10 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_NotifyNewApps' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_AutoCascade' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_AskCortana' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'HideUserFrame' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_RightPaneIcons' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowUser' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowMyDocs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowMyPics' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowMyMusic' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowVideos' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowDownloads' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowSkyDrive' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'StartMenuFavorites' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowRecentDocs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowNetPlaces' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowNetConn' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowMyComputer' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowControlPanel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowPCSettings' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_AdminToolsRoot' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowPrinters' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowSetProgramAccessAndDefaults' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowTerminal' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowCommandPrompt' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'Start_ShowRun' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'StartMenuBlur' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'StartMenuColor' -Value 16777215 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'RestyleControls' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'RestyleIcons' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'WinLangID' -Value 2052 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'TaskbarJumpList' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\StartIsBack' -Name 'NavBarGlass' -Value 0 -PropertyType DWord -Force
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
# Office套件
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\Teams') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\Teams' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\Teams' -Name 'PreventInstallationFromMsi' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications' -Name 'ConfigureChatAutoInstall' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate' -Name 'preventteamsinstall' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate' -Name 'preventbinginstall' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Office\16.0\firstrun') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Office\16.0\firstrun' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Office\16.0\firstrun' -Name 'disablemovie' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Office\16.0\firstrun' -Name 'ootedrtm' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\office\16.0\common' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\clienttelemetry') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\office\16.0\common\clienttelemetry' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\fixedformat') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\office\16.0\common\fixedformat' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\general') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\office\16.0\common\general' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\graphics') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\office\16.0\common\graphics' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\security\applicationguard') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\office\16.0\common\security\applicationguard' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\firstrun') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\office\16.0\firstrun' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\osm') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\office\16.0\osm' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common' -Name 'updatereliabilitydata' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common' -Name 'qmenable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common' -Name 'sendcustomerdata' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common' -Name 'insiderslabbehavior' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\clienttelemetry' -Name 'sendtelemetry' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\fixedformat' -Name 'disablepublishtofixedformat' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\general' -Name 'disablebackgrounds' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\general' -Name 'disableboottoofficestart' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\general' -Name 'skydrivesigninoption' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\general' -Name 'useofficeuifont' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\general' -Name 'shownfirstrunoptin' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\graphics' -Name 'disableanimations' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\graphics' -Name 'disablehardwareacceleration' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common\security\applicationguard' -Name 'disableappguard' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\firstrun' -Name 'disablemovie' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\firstrun' -Name 'bootedrtm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\osm' -Name 'enablelogging' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\osm' -Name 'enableupload' -Value 0 -PropertyType DWord -Force
Remove-Item -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides' -Recurse -Force;
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Word') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Word' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Excel') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Excel' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Powerpoint') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Powerpoint' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Outlook') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Outlook' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\access') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\access' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\onenote') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\onenote' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\project') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\project' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\publisher') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\publisher' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\visio') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\visio' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides' -Name 'Microsoft.Office.UXPlatform.SmartQAT' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Word' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Word' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Word' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Word' -Name 'Microsoft.Office.UXPlatform.SmartQAT' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Excel' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Excel' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Excel' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Excel' -Name 'Microsoft.Office.UXPlatform.SmartQAT' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Powerpoint' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Powerpoint' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Powerpoint' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Powerpoint' -Name 'Microsoft.Office.UXPlatform.SmartQAT' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Outlook' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Outlook' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Outlook' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\Outlook' -Name 'Microsoft.Office.UXPlatform.SmartQAT' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\access' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\access' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\access' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\access' -Name 'Microsoft.Office.UXPlatform.SmartQAT' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\onenote' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\onenote' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\onenote' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\onenote' -Name 'Microsoft.Office.UXPlatform.SmartQAT' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\project' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\project' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\project' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\project' -Name 'Microsoft.Office.UXPlatform.SmartQAT' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\publisher' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\publisher' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\publisher' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\publisher' -Name 'Microsoft.Office.UXPlatform.SmartQAT' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\visio' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\visio' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\visio' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\visio' -Name 'Microsoft.Office.UXPlatform.SmartQAT' -Value 'true' -PropertyType String -Force
# 7zip
Remove-Item -LiteralPath "HKCU:\SOFTWARE\Classes\*\shell\Windows.CompressTo" -force;
New-Item "HKCU:\SOFTWARE\Classes\*\shell\Windows.CompressTo" -force
if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Classes\*\shell\Windows.CompressTo\command") -ne $true) { New-Item "HKCU:\SOFTWARE\Classes\*\shell\Windows.CompressTo\command" -force };
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Classes\*\shell\Windows.CompressTo' -Name 'MuiVerb' -Value '@C:\Program Files\7-Zip\7-zip.dll,-2322' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Classes\*\shell\Windows.CompressTo' -Name 'Position' -Value 'Middle' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Classes\*\shell\Windows.CompressTo' -Name 'Icon' -Value 'C:\Program Files\7-Zip\7-zip.dll,0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Classes\*\shell\Windows.CompressTo' -Name 'MultiSelectModel' -Value 'Single' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Classes\*\shell\Windows.CompressTo\command' -Name '(default)' -Value '"C:\Program Files\7-Zip\7zFM.exe" "%1"' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\7-Zip') -ne $true) { New-Item 'HKCU:\Software\7-Zip' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\7-Zip' -Name 'LargePages' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\7-Zip\Options') -ne $true) { New-Item 'HKCU:\Software\7-Zip\Options' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\7-Zip\Options' -Name 'CascadedMenu' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\7-Zip\Options' -Name 'TempRemovableOnly' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\7-Zip\Options' -Name 'ContextMenu' -Value 103 -PropertyType DWord -Force
# Adobe Acrobat
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockdown') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockdown' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockdown\cIPM') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockdown\cIPM' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockdown' -Name 'bUpdater' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockdown' -Name 'bUsageMeasurement' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockdown' -Name 'iProtectedView' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockdown\cIPM' -Name 'bShowMsgAtLaunch' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Adobe\Adobe Acrobat\DC\Originals') -ne $true) { New-Item 'HKCU:\Software\Adobe\Adobe Acrobat\DC\Originals' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Adobe\Adobe Acrobat\DC\TrustManager') -ne $true) { New-Item 'HKCU:\Software\Adobe\Adobe Acrobat\DC\TrustManager' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Adobe\Adobe Acrobat\DC\Originals' -Name 'bDisplayAboutDialog' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Adobe\Adobe Acrobat\DC\TrustManager' -Name 'bTrustOSTrustedSites' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Adobe\Adobe Acrobat\DC\Originals' -Name 'bDisplayedSplash' -Value 1 -PropertyType DWord -Force
# Java Runtime
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\JreMetrics') -ne $true) { New-Item 'HKLM:\SOFTWARE\JreMetrics' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\JreMetrics' -Name 'DisableSponsors' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\JreMetrics') -ne $true) { New-Item 'HKLM:\SOFTWARE\Wow6432Node\JreMetrics' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\JreMetrics' -Name 'DisableSponsors' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Javasoft\Java Update\Policy') -ne $true) { New-Item 'HKLM:\SOFTWARE\Javasoft\Java Update\Policy' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Javasoft\Java Update\Policy' -Name 'EnableJavaUpdate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Javasoft\Java Update\Policy' -Name 'NotifyDownload' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Javasoft\Java Update\Policy') -ne $true) { New-Item 'HKLM:\SOFTWARE\Wow6432Node\Javasoft\Java Update\Policy' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Javasoft\Java Update\Policy' -Name 'EnableJavaUpdate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Javasoft\Java Update\Policy' -Name 'NotifyDownload' -Value 0 -PropertyType DWord -Force

# 关闭所有声音提示
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Microsoft.WindowsStore_8wekyb3d8bbwe!App') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Microsoft.WindowsStore_8wekyb3d8bbwe!App' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.StartupApp') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.StartupApp' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Microsoft.WindowsStore_8wekyb3d8bbwe!App' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.StartupApp' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\EditionOverrides' -Name 'UserSetting_DisableStartupSound' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes' -Name 'ThemeChangesDesktopIcons' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes' -Name 'ThemeChangesMousePointers' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes' -Name 'ColorSetFromTheme' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes' -Name 'WallpaperSetFromTheme' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Personalization') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\Windows\Personalization' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Personalization' -Name 'NoChangingSoundScheme' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\AppEvents\Schemes' -Name '(default)' -Value '.None' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\.Default\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\.Default\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\.Default\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\CriticalBatteryAlarm\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\CriticalBatteryAlarm\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\CriticalBatteryAlarm\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\DeviceFail\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\DeviceFail\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\DeviceFail\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\FaxBeep\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\FaxBeep\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\FaxBeep\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\LowBatteryAlarm\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\LowBatteryAlarm\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\LowBatteryAlarm\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\MailBeep\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\MailBeep\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\MailBeep\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\MessageNudge\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\MessageNudge\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\MessageNudge\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.Default\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.Default\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.Default\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.IM\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.IM\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.IM\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.Mail\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.Mail\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.Mail\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.Proximity\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.Proximity\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.Proximity\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.Reminder\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.Reminder\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.Reminder\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.SMS\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.SMS\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\Notification.SMS\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\ProximityConnection\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\ProximityConnection\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\ProximityConnection\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\SystemAsterisk\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\SystemAsterisk\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\SystemAsterisk\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\SystemExclamation\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\SystemExclamation\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\SystemExclamation\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\SystemHand\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\SystemHand\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\SystemHand\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\SystemNotification\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\SystemNotification\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\SystemNotification\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\WindowsUAC\.Current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\.Default\WindowsUAC\.Current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\.Default\WindowsUAC\.Current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\sapisvr\DisNumbersSound\.current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\sapisvr\DisNumbersSound\.current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\sapisvr\DisNumbersSound\.current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\sapisvr\HubOffSound\.current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\sapisvr\HubOffSound\.current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\sapisvr\HubOffSound\.current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\sapisvr\HubOnSound\.current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\sapisvr\HubOnSound\.current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\sapisvr\HubOnSound\.current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\sapisvr\HubSleepSound\.current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\sapisvr\HubSleepSound\.current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\sapisvr\HubSleepSound\.current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\sapisvr\MisrecoSound\.current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\sapisvr\MisrecoSound\.current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\sapisvr\MisrecoSound\.current' -Force };
Remove-Item -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\sapisvr\PanelSound\.current' -Force;
if ((Test-Path -LiteralPath 'HKCU:\AppEvents\Schemes\Apps\sapisvr\PanelSound\.current') -ne $true) { New-Item 'HKCU:\AppEvents\Schemes\Apps\sapisvr\PanelSound\.current' -Force };

# 美化
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Desktop') -ne $true) { New-Item 'HKCU:\Control Panel\Desktop' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'AutoEndTasks' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'MenuShowDelay' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'LowLevelHooksTimeout' -Value '1000' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'WaitToKillAppTimeout' -Value '2000' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'HungAppTimeout' -Value '1000' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'ForegroundLockTimeout' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'AutoColorization' -Value '0' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'DockMoving' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'WindowArrangementActive' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'DragFullWindows' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'UserPreferencesMask' -Value ([byte[]](0x90, 0x12, 0x03, 0x80, 0x10, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'Win8DpiScaling' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'ForegroundFlashCount' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'JPEGImportQuality' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'FontSmoothingGamma' -Value 1400 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'ScrollHeight' -Value '-355' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'ScrollWidth' -Value '-355' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'BorderWidth' -Value '0' -PropertyType String -Force
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
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ListviewAlphaSelect' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ListviewShadow' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAnimations' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'PaddedBorderWidth' -Value '-48' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM' -Name 'DisallowAnimations' -Value 1 -PropertyType DWord -Force
# 颜色主题
Remove-Item -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent" -force;
New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" -force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent' -Name 'AccentPalette' -Value ([byte[]](0x00, 0x9d, 0xff, 0xaa, 0x00, 0x9d, 0xff, 0xaa, 0x00, 0x9d, 0xff, 0xaa, 0x00, 0x9d, 0xff, 0xaa, 0x00, 0x00, 0x00, 0xaa, 0x00, 0x00, 0x00, 0xaa, 0x00, 0x00, 0x00, 0xaa, 0x00, 0x00, 0x00, 0xaa)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent' -Name 'AccentColorMenu' -Value -1442840576 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent' -Name 'StartColorMenu' -Value -1440735200 -PropertyType DWord -Force
Remove-Item -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\DWM" -force;
New-Item 'HKCU:\Software\Microsoft\Windows\DWM' -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\DWM' -Name 'ColorPrevalence' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\DWM' -Name 'AccentColor' -Value -1442840576 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\DWM' -Name 'AccentColorInactive' -Value -1440735200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\DWM' -Name 'EnableAeroPeek' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\DWM' -Name 'AlwaysHibernateThumbnails' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\Dwm") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\Dwm" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Dwm' -Name 'ForceEffectMode' -Value 1 -PropertyType DWord -Force
Remove-Item -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -force;
New-Item 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'ColorPrevalence' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'AppsUseLightTheme' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'SystemUsesLightTheme' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'EnabledBlurBehind' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'EnableTransparency' -Value 1 -PropertyType DWord -Force
Remove-Item -LiteralPath "HKCU:\Control Panel\Colors" -force;
New-Item "HKCU:\Control Panel\Colors" -force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'Hilight' -Value '0 157 255' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'HotTrackingColor' -Value '0 157 255' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'MenuHilight' -Value '0 157 255' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Colors' -Name 'ActiveBorder' -Value '0 0 0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'Background' -Value '0 0 0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'DisableAcrylicBackgroundOnLogon' -Value 1 -PropertyType DWord -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'DisableLogonBackgroundImage' -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Personalization' -Name 'PersonalColors_Background' -Value '#000000' -PropertyType String -Force
Remove-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Personalization' -Name 'PersonalColors_Accent' -Force
# 字体
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Avalon.Graphics\DISPLAY1") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Avalon.Graphics\DISPLAY1" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Avalon.Graphics\DISPLAY1' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force
Remove-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Font Drivers' -Name 'Adobe Type Manager' -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableFontProviders' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\RegEdit') -ne $true) { New-Item 'HKLM:\Software\Microsoft\Windows\CurrentVersion\RegEdit' -Force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\RegEdit' -Name 'FontFace' -Value '微软雅黑' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\RegEdit' -Name 'FontSize' -Value 90 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\RegEdit' -Name 'FontWeight' -Value 400 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\RegEdit' -Name 'FontItalic' -Value 0 -PropertyType DWord -Force
# 安装新字体
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts' -Name '苹方-简 中黑体 (TrueType)' -Value 'PingFangSC-Mod-18.d1-Medium.otf' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Fonts' -Name '苹方-简 中黑体 (TrueType)' -Value 'PingFangSC-Mod-18.d1-Medium.otf' -PropertyType String -Force
# 默认字体
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes' -Name 'MS Shell Dlg' -Value 'Segoe UI' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes' -Name 'MS Shell Dlg 2' -Value 'Microsoft YaHei UI' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontLink\SystemLink' -Name 'Microsoft JhengHei' -Value @("MSYH.TTC,Microsoft YaHei,128,96", "MSYH.TTC,Microsoft YaHei", "SEGOEUI.TTF,Segoe UI,114,78", "SEGOEUI.TTF,Segoe UI", "MINGLIU.TTC,MingLiU", "MEIRYO.TTC,Meiryo,128,85", "MEIRYO.TTC,Meiryo", "MALGUN.TTF,Malgun Gothic,128,96", "MALGUN.TTF,Malgun Gothic", "YUGOTHM.TTC,Yu Gothic UI,128,96", "YUGOTHM.TTC,Yu Gothic UI", "SEGUISYM.TTF,Segoe UI Symbol") -PropertyType MultiString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontLink\SystemLink' -Name 'Microsoft JhengHei UI' -Value @("MSYH.TTC,Microsoft YaHei UI", "SEGOEUI.TTF,Segoe UI,114,78", "SEGOEUI.TTF,Segoe UI", "MINGLIU.TTC,MingLiU", "MEIRYO.TTC,Meiryo UI", "MALGUN.TTF,Malgun Gothic,128,96", "MALGUN.TTF,Malgun Gothic", "YUGOTHM.TTC,Yu Gothic UI,128,96", "YUGOTHM.TTC,Yu Gothic UI", "SEGUISYM.TTF,Segoe UI Symbol") -PropertyType MultiString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontLink\SystemLink' -Name 'Microsoft YaHei' -Value @("MSJH.TTC,Microsoft JhengHei,128,96", "MSJH.TTC,Microsoft JhengHei", "SEGOEUI.TTF,Segoe UI,120,80", "SEGOEUI.TTF,Segoe UI", "SIMSUN.TTC,SimSun", "MEIRYO.TTC,Meiryo,128,85", "MEIRYO.TTC,Meiryo", "MALGUN.TTF,Malgun Gothic,128,96", "MALGUN.TTF,Malgun Gothic", "YUGOTHM.TTC,Yu Gothic UI,128,96", "YUGOTHM.TTC,Yu Gothic UI") -PropertyType MultiString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontLink\SystemLink' -Name 'Microsoft YaHei UI' -Value @("MSJH.TTC,Microsoft Jhenghei UI", "SEGOEUI.TTF,Segoe UI,120,80", "SEGOEUI.TTF,Segoe UI", "SIMSUN.TTC,SimSun", "MEIRYO.TTC,Meiryo UI", "MALGUN.TTF,Malgun Gothic,128,96", "MALGUN.TTF,Malgun Gothic", "YUGOTHM.TTC,Yu Gothic UI,128,96", "YUGOTHM.TTC,Yu Gothic UI") -PropertyType MultiString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontLink\SystemLink' -Name 'Segoe UI' -Value @("MSYH.TTC,Microsoft YaHei UI,128,96", "MSYH.TTC,Microsoft YaHei UI", "MSJH.TTC,Microsoft Jhenghei UI,128,96", "MSJH.TTC,Microsoft Jhenghei UI", "TAHOMA.TTF,Tahoma", "MEIRYO.TTC,Meiryo UI,128,96", "MEIRYO.TTC,Meiryo UI", "SIMSUN.TTC,SimSun", "MINGLIU.TTC,PMingLiU", "MSGOTHIC.TTC,MS UI Gothic", "MALGUN.TTF,Malgun Gothic,128,96", "MALGUN.TTF,Malgun Gothic", "GULIM.TTC,Gulim", "YUGOTHM.TTC,Yu Gothic UI,128,96", "YUGOTHM.TTC,Yu Gothic UI", "SEGUISYM.TTF,Segoe UI Symbol") -PropertyType MultiString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontLink\SystemLink' -Name 'Segoe UI Variable Display' -Value @("MSYH.TTC,Microsoft YaHei UI,128,96", "MSYH.TTC,Microsoft YaHei UI", "MSJH.TTC,Microsoft Jhenghei UI,128,96", "MSJH.TTC,Microsoft Jhenghei UI", "TAHOMA.TTF,Tahoma", "MEIRYO.TTC,Meiryo UI,128,96", "MEIRYO.TTC,Meiryo UI", "SIMSUN.TTC,SimSun", "MINGLIU.TTC,PMingLiU", "MSGOTHIC.TTC,MS UI Gothic", "MALGUN.TTF,Malgun Gothic,128,96", "MALGUN.TTF,Malgun Gothic", "GULIM.TTC,Gulim", "YUGOTHM.TTC,Yu Gothic UI,128,96", "YUGOTHM.TTC,Yu Gothic UI", "SEGUISYM.TTF,Segoe UI Symbol") -PropertyType MultiString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontLink\SystemLink' -Name 'Segoe UI Variable Text' -Value @("MSYH.TTC,Microsoft YaHei UI,128,96", "MSYH.TTC,Microsoft YaHei UI", "MSJH.TTC,Microsoft Jhenghei UI,128,96", "MSJH.TTC,Microsoft Jhenghei UI", "TAHOMA.TTF,Tahoma", "MEIRYO.TTC,Meiryo UI,128,96", "MEIRYO.TTC,Meiryo UI", "SIMSUN.TTC,SimSun", "MINGLIU.TTC,PMingLiU", "MSGOTHIC.TTC,MS UI Gothic", "MALGUN.TTF,Malgun Gothic,128,96", "MALGUN.TTF,Malgun Gothic", "GULIM.TTC,Gulim", "YUGOTHM.TTC,Yu Gothic UI,128,96", "YUGOTHM.TTC,Yu Gothic UI", "SEGUISYM.TTF,Segoe UI Symbol") -PropertyType MultiString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontLink\SystemLink' -Name 'SimSun' -Value @("MSYH.TTC,Microsoft YaHei UI", "MICROSS.TTF,Microsoft Sans Serif,108,122", "MICROSS.TTF,Microsoft Sans Serif", "MINGLIU.TTC,PMingLiU", "MSMINCHO.TTC,MS PMincho", "BATANG.TTC,Batang", "MSJH.TTC,Microsoft JhengHei UI", "YUGOTHM.TTC,Yu Gothic UI", "MALGUN.TTF,Malgun Gothic") -PropertyType MultiString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontLink\SystemLink' -Name 'Tahoma' -Value @("MSYH.TTC,Microsoft YaHei UI,128,96", "MSYH.TTC,Microsoft YaHei UI", "MSJH.TTC,Microsoft JhengHei UI", "SIMSUN.TTC,SimSun", "MINGLIU.TTC,PMingLiU", "MSGOTHIC.TTC,MS UI Gothic", "BATANG.TTC,Batang", "YUGOTHM.TTC,Yu Gothic UI", "MALGUN.TTF,Malgun Gothic", "SEGUISYM.TTF,Segoe UI Symbol") -PropertyType MultiString -Force

# 系统区域
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\International\Geo') -ne $true) { New-Item 'HKCU:\Control Panel\International\Geo' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\Geo' -Name 'Nation' -Value '244' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\Geo' -Name 'Name' -Value 'US' -PropertyType String -Force

# 鼠标键盘
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
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouclass\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\mouclass\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouclass\Parameters' -Name 'MouseDataQueueSize' -Value 25 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouclass\Parameters' -Name 'WppRecorder_TraceGuid' -Value '{fc8df8fd-d105-40a9-af75-2eec294adf8d}' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters' -Name 'KeyboardDataQueueSize' -Value 25 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Keyboard') -ne $true) { New-Item 'HKCU:\Control Panel\Keyboard' -Force }
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Keyboard' -Name 'KeyboardDelay' -Value '0' -PropertyType String -Force

# 显卡优化
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\DirectX\GraphicsSettings') -ne $true) { New-Item 'HKCU:\Software\Microsoft\DirectX\GraphicsSettings' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\DirectX\GraphicsSettings' -Name 'SwapEffectUpgradeCache' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\DirectX\UserGpuPreferences') -ne $true) { New-Item 'HKCU:\Software\Microsoft\DirectX\UserGpuPreferences' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\DirectX\UserGpuPreferences' -Name 'DirectXUserGlobalSettings' -Value 'SwapEffectUpgradeEnable=1;' -PropertyType String -Force
Remove-Item -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\BlockList\Kernel' -Recurse -Force -Verbose
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'PlatformSupportMiracast' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'HwSchMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'DpiMapIommuContiguous' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'EnableAcmSupportDeveloperPreview' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'TdrDelay' -Value 10 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\System\CurrentControlSet\Control\GraphicsDrivers\FeatureSetUsage") -ne $true) { New-Item "HKLM:\System\CurrentControlSet\Control\GraphicsDrivers\FeatureSetUsage" -force };
New-ItemProperty -LiteralPath 'HKLM:\System\CurrentControlSet\Control\GraphicsDrivers\FeatureSetUsage' -Name 'DisplayWCG' -Value 1 -PropertyType DWord -Force
# 小米43宽屏显示器
if ((Test-Path -LiteralPath "HKLM:\System\CurrentControlSet\Control\GraphicsDrivers\MonitorDataStore\XMI34440_28_07E3_95") -ne $true) { New-Item "HKLM:\System\CurrentControlSet\Control\GraphicsDrivers\MonitorDataStore\XMI34440_28_07E3_95" -force };
New-ItemProperty -LiteralPath 'HKLM:\System\CurrentControlSet\Control\GraphicsDrivers\MonitorDataStore\XMI34440_28_07E3_95' -Name 'AutoColorManagementSupported' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\System\CurrentControlSet\Control\GraphicsDrivers\MonitorDataStore\XMI34440_28_07E3_95' -Name 'AdvancedColorEnabled' -Value 1 -PropertyType DWord -Force
# nvidia
Set-ItemProperty -Path 'HKLM:\Software\NVIDIA Corporation\Global\FTS' -Name 'EnableRID44231' -Type 'DWORD' -Value '0' -Force
Set-ItemProperty -Path 'HKLM:\Software\NVIDIA Corporation\Global\FTS' -Name 'EnableRID64640' -Type 'DWORD' -Value '0' -Force
Set-ItemProperty -Path 'HKLM:\Software\NVIDIA Corporation\Global\FTS' -Name 'EnableRID66610' -Type 'DWORD' -Value '0' -Force
New-Item -Path 'HKLM:\Software\NVIDIA Corporation\NvControlPanel2\Client' -Force
Set-ItemProperty -Path 'HKLM:\Software\NVIDIA Corporation\NvControlPanel2\Client' -Name 'OptInOrOutPreference' -Type 'DWORD' -Value '0' -Force
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\services\NvTelemetryContainer' -Name 'Start' -Type 'DWORD' -Value '4' -Force
Set-ItemProperty -Path 'HKLM:\Software\NVIDIA Corporation\Global\Startup\SendTelemetryData' -Name '0' -Type 'DWORD' -Value '0' -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Dwm' -Name 'OverlayTestMode' -Value '5' -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Ansel') -ne $true) { New-Item 'HKCU:\Software\NVIDIA Corporation\Ansel' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Ansel' -Name 'FreestyleEnabled' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Ansel' -Name 'IPCenabled' -Value '0' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm' -Name 'RmGpsPsEnablePerCpuCoreDpc' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\nvlddmkm' -Name 'DisableWriteCombining' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\nvlddmkm' -Name 'DisablePreemption' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\nvlddmkm' -Name 'DisableCudaContextPreemption' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'CoalescingTimerInterval' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI' -Name 'RmGpsPsEnablePerCpuCoreDpc' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak' -Name 'RmGpsPsEnablePerCpuCoreDpc' -Value '1' -PropertyType DWord -Force
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup' -Name 'SendTelemetryData' -Type 'DWORD' -Value '0' -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}' -Name 'PreferSystemMemoryContiguous' -Value '1' -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\NVIDIA Corporation\NvTray') -ne $true) { New-Item 'HKCU:\Software\NVIDIA Corporation\NvTray' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\NvTray' -Name 'StartOnLogin' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Global\CoProcManager') -ne $true) { New-Item 'HKCU:\Software\NVIDIA Corporation\Global\CoProcManager' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Global\CoProcManager' -Name 'ShowContextMenu' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Global\NvCplApi\Policies') -ne $true) { New-Item 'HKCU:\Software\NVIDIA Corporation\Global\NvCplApi\Policies' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Global\NvCplApi\Policies' -Name 'ContextUIPolicy' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000' -Name 'PreferSystemMemoryContiguous' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000' -Name 'SetDefaultFullRGBRangeOnHDMI' -Value 1 -PropertyType DWord -Force

# 微软拼音输入法
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1' -Name 'EnableFixedCandidateCountMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1' -Name 'FontStyleTSF3' -Value '23.00pt; Regular; ; Microsoft YaHei UI' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1' -Name 'MaxCandidates' -Value 9 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1' -Name 'CustomizedPagingKey' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableVMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'English Switch Key' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableChineseEnglishPunctuationSwitch' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableSimplifiedTraditionalOutputSwitch' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'Enable Auto Correction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableSmartFuzzyPinyin' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableSuperAbbreviatedPinyin' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnablePeopleName' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableUMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'Enable EUDP' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'Enable self-learning' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableSmartSelfLearning' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableLiveSticker' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'English Switch Key' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'Enable Cloud Candidate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'Enable Dynamic Candidate Ranking' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableExtraDomainType' -Value 1 -PropertyType DWord -Force
Remove-Item -LiteralPath 'HKCU:\Control Panel\Input Method\Hot Keys\00000104' -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableHap' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'HalfWidthInputModeByDefault' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableOpenEmoticonSymbolView' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1') -ne $true) { New-Item 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1' -Name 'ShowSymbolViewActionButton' -Value 0 -PropertyType DWord -Force
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
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\International\User Profile') -ne $true) { New-Item 'HKCU:\Control Panel\International\User Profile' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'ShowAutoCorrection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'ShowTextPrediction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'InputMethodOverride' -Value '0409:00000409' -PropertyType String -Force
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

# 更改PC名称
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName' -Name 'ComputerName' -Value 'Alienware' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName' -Name 'ComputerName' -Value 'Alienware' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'NV Hostname' -Value 'Alienware' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'Hostname' -Value 'Alienware' -PropertyType String -Force

# 账户策略
cmd.exe /c 'net accounts /lockoutthreshold:0'
cmd.exe /c 'net accounts /MINPWAGE:0'
cmd.exe /c 'net accounts /MAXPWAGE:UNLIMITED'
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters' -Name 'MaximumPasswordAge' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters' -Name 'RequireStrongKey' -Value 0 -PropertyType DWord -Force

# 增加环境变量
[Environment]::SetEnvironmentVariable('PATH', $Env:PATH + '; C:\Windows\SysWOW64', [EnvironmentVariableTarget]::Machine)

# 更改TEMP文件夹位置
New-ItemProperty -LiteralPath 'HKCU:\Environment' -Name 'TEMP' -Value 'C:\TEMP' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Environment' -Name 'TMP' -Value 'C:\TEMP' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment' -Name 'TEMP' -Value 'C:\TEMP' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment' -Name 'TMP' -Value 'C:\TEMP' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\DefaultUserEnvironment' -Name 'TEMP' -Value 'C:\TEMP' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\DefaultUserEnvironment' -Name 'TMP' -Value 'C:\TEMP' -PropertyType ExpandString -Force

# 禁用无用设备
Get-PnpDevice -InstanceId 'ROOT\SPACEPORT\0000' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -InstanceId 'ROOT\VID\0000' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -InstanceId 'ROOT\RDPBUS\0000' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -InstanceId 'ACPI\PNP0501\0' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -FriendlyName 'AMD PSP 11.0 Device' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -FriendlyName '高精度事件计时器' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -FriendlyName 'Microsoft Device Association Root Enumerator' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -InstanceId 'PCI\VEN_10EC&DEV_8168&SUBSYS_E0001458&REV_16\AEEEED4DC018000000' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -InstanceId 'HDAUDIO\FUNC_01&VEN_10DE&DEV_009E&SUBSYS_10B02482&REV_1001\5&27112D9C&0&0001' | Disable-PnpDevice -Confirm:$false -Verbose
Remove-Printer -Name 'OneNote (Desktop)'

# 网络优化
Get-NetConnectionProfile | Set-NetConnectionProfile -NetworkCategory Private
Enable-NetAdapterChecksumOffload -Name *
Set-NetOffloadGlobalSetting -Chimney Disabled
Enable-NetAdapterRss -Name *
Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing disabled
Set-NetOffloadGlobalSetting -PacketCoalescingFilter disabled
Disable-NetAdapterLso -Name *
Set-NetTCPSetting -SettingName InternetCustom -MinRto 300
Set-NetTCPSetting -SettingName InternetCustom -InitialCongestionWindow 10
Get-NetAdapter -IncludeHidden | Set-NetIPInterface -WeakHostSend Enabled -WeakHostReceive Enabled
cmd.exe /c 'netsh int tcp set supplemental Internet congestionprovider=bbr2'
cmd.exe /c 'netsh int tcp set global autotuninglevel=normal'
cmd.exe /c 'netsh int tcp set global ecncapability=disabled'
cmd.exe /c 'netsh int tcp set global dca=enabled'
cmd.exe /c 'netsh int tcp set global netdma=enabled'
cmd.exe /c 'netsh int tcp set global rsc=disabled'
cmd.exe /c 'netsh int tcp set global rss=enabled'
cmd.exe /c 'netsh int tcp set global timestamps=disabled'
cmd.exe /c 'netsh int tcp set global initialRto=2000'
cmd.exe /c 'netsh int tcp set global nonsackrttresiliency=disabled'
cmd.exe /c 'netsh int tcp set global maxsynretransmissions=2'
cmd.exe /c 'netsh int tcp set heuristics disabled'
cmd.exe /c 'netsh int ip set global neighborcachelimit=4096'
cmd.exe /c 'netsh wlan stop hostednetwork'
cmd.exe /c 'netsh wlan set hostednetwork mode=disallow'
cmd.exe /c 'netsh int tcp set supplemental internet enablecwndrestart=disable'
cmd.exe /c 'netsh int ip set global icmpredirects=disabled'
cmd.exe /c 'netsh int ip set global multicastforwarding=disabled'
cmd.exe /c 'netsh int ip set global groupforwardedfragments=disable'
cmd.exe /c 'netsh int tcp set security mpp=disabled profiles=disabled'
cmd.exe /c 'netsh int tcp set heur forcews=disable'
# Get-NetAdapterBinding -AllBindings | Format-Table -AutoSize
# Get-NetAdapterBinding | Where-Object { $_.Enabled -eq 'True' } | Set-NetAdapterBinding -Enabled 0 -IncludeHidden -AllBindings -Verbose
Set-NetIPInterface -InterfaceAlias '*' -NlMtuBytes 1440
Set-NetAdapterBinding -Name '*' -ComponentID ms_pacer -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_lldp -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_msclient -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_lltdio -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_rspndr -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_implat -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_server -Enabled 0
Set-NetAdapterBinding -Name '*' -ComponentID ms_tcpip6 -Enabled 1
# Get-NetAdapterAdvancedProperty -Name "以太网" -AllProperties
Set-NetAdapterAdvancedProperty -Name '以太网' -RegistryKeyword 'PnPCapabilities' -RegistryValue '24'
# Get-NetAdapterAdvancedProperty -Name "WLAN" -AllProperties
Set-NetAdapterAdvancedProperty -Name 'WLAN' -RegistryKeyword 'PnPCapabilities' -RegistryValue '24'
#
if((Test-Path -LiteralPath "HKLM:\Software\Policies\Microsoft\Windows\TCPIP\v6Transition") -ne $true) {  New-Item "HKLM:\Software\Policies\Microsoft\Windows\TCPIP\v6Transition" -force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\TCPIP\v6Transition' -Name 'Teredo_State' -Value 'Enterprise Client' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\TCPIP\v6Transition' -Name 'Teredo_DefaultQualified' -Value 'Enabled' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\TCPIP\v6Transition' -Name 'ISATAP_State' -Value 'Disabled' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\TCPIP\v6Transition' -Name '6to4_State' -Value 'Disabled' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\TCPIP\v6Transition' -Name 'Teredo_ClientPort' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\TCPIP\v6Transition' -Name 'Teredo_RefreshRate' -Value 30 -PropertyType DWord -Force
netsh interface Teredo set state servername=default
#
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'MaxConnectionsPer1_0Server' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'MaxConnectionsPerServer' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'DnsCacheTimeout' -Value 7200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'ReceiveTimeout' -Value 60000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'SocketReceiveBufferLength' -Value 65536 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'KeepAliveTimeout' -Value 300000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'ServerInfoTimeOut' -Value 300000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'SocketSendBufferLength' -Value 65536 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'ProxyEnable' -Value 0 -PropertyType DWord -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001' -Name '*ReceiveBuffers' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001' -Name '*TransmitBuffers' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\params\*ReceiveBuffers' -Name 'Min' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\params\*TransmitBuffers' -Name 'Min' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\params\*FlowControl' -Name 'default' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\params\*InterruptModeration' -Name 'default' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\params\*NumRssQueues\enum' -Name '4' -Value '4' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0000\Ndi\params\*FlowControl' -Name 'default' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0000\Ndi\params\*InterruptModeration' -Name 'default' -Value '0' -PropertyType String -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters' -Name 'DeadGWDetectDefault' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters' -Name 'DisableReverseAddressRegistrations' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters' -Name 'DisableDynamicUpdate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters' -Name 'EnableICMPRedirect' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters' -Name 'IGMPLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters' -Name 'PerformRouterDiscovery' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters\Interfaces') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters\Interfaces' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters\Interfaces' -Name 'MTU' -Value 1492 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters\Interfaces' -Name 'TcpWindowSize' -Value 65340 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters\Interfaces' -Name 'TcpAckFrequency' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters\Interfaces' -Name 'TCPInitialRtt' -Value 2 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'Class' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'DnsPriority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'HostsPriority' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'LocalPriority' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'NetbtPriority' -Value 7 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'AddrConfigControl' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'DisableParallelAandAAAA' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'EnableNetbios' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'EnableMDNS' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'EnableAutoDoh' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'NegativeCacheTime' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'NetFailureCacheTime' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'NegativeSOACacheTime' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'MaxCacheTtl' -Value 14400 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'MaxNegativeCacheTtlValue' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'ServiceDllUnloadOnStop' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'CacheHashTableBucketSize' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'CacheHashTableSize' -Value 384 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'MaxCacheEntryTtlLimit' -Value 10800 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'MaxSOACacheEntryTtlLimit' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Name 'EnableMDNS' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Name 'EnableMulticast' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Name 'RegistrationEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows NT\DNSClient' -Name 'DisableSmartNameResolution' -Value 1 -PropertyType DWord -Force
Remove-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\WlanSvc\Parameters\HostedNetworkSettings' -Name 'HostedNetworkSettings' -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'BufferMultiplier' -Value 1024 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'MediumBufferSize' -Value 12032 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'DefaultReceiveWindow' -Value 516096 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'LargeBufferSize' -Value 32768 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'NonBlockingSendSpecialBuffering' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'SmallBufferSize' -Value 1024 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'DefaultSendWindow' -Value 172032 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters' -Name 'DisabledComponents' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\HotspotAuthentication') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\HotspotAuthentication' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\HotspotAuthentication' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config' -Name 'AutoConnectAllowedOEM' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\crowdsrcplugin') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\crowdsrcplugin' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\crowdsrcplugin' -Name 'EnableWiFiCrowdsourcing' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowInternetSharing') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowInternetSharing' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowInternetSharing' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting' -Name 'value' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\Context\CloudExperienceHostIntent\Wireless") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\Context\CloudExperienceHostIntent\Wireless" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\Context\CloudExperienceHostIntent\Wireless' -Name 'ScoobeCheckCompleted' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\010103000F0000F0010000000F0000F0C967A3643C3AD745950DA7859209176EF5B87C875FA20DF21951640E807D7C24') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\010103000F0000F0010000000F0000F0C967A3643C3AD745950DA7859209176EF5B87C875FA20DF21951640E807D7C24' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\010103000F0000F0010000000F0000F0C967A3643C3AD745950DA7859209176EF5B87C875FA20DF21951640E807D7C24' -Name 'Category' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WlanSvc\AnqpCache') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\WlanSvc\AnqpCache' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WlanSvc\AnqpCache' -Name 'OsuRegistrationStatus' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\QoS') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\QoS' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\QoS' -Name 'Do not use NLA' -Value '1' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS' -Name 'Application DSCP Marking Request' -Value 'Allowed' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS' -Name 'Tcp Autotuning Level' -Value 'Experimental' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched' -Name 'TimerResolution' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched' -Name 'NonBestEffortLimit' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched' -Name 'NonBestEfforLimit' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LLTD') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LLTD' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LLTD' -Name 'EnableRspndr' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LLTD' -Name 'EnableLLTDIO' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'CallLegacyWCMPolicies' -Value 0 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections' -Name 'SavedLegacySettings' -Value 'hex(3):46,00,00,00,03,00,00,00,01,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections' -Name 'DefaultConnectionSettings' -Value 'hex(3):46,00,00,00,03,00,00,00,01,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00' -PropertyType String -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy' -Name 'fMinimizeConnections' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy' -Name 'fSoftDisconnectConnections' -Value 0 -PropertyType DWord -Force
#
set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\services\NetBT\Parameters\Interfaces\tcpip*' -Name 'NetbiosOptions' -Value 2 -Force
#
if ((Test-Path -LiteralPath "HKLM:\Software\Microsoft\Windows\CurrentVersion\NcdAutoSetup\NetworkSetting\{58DE2963-00B3-447E-B8AD-B285322324AC}") -ne $true) { New-Item "HKLM:\Software\Microsoft\Windows\CurrentVersion\NcdAutoSetup\NetworkSetting\{58DE2963-00B3-447E-B8AD-B285322324AC}" -force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\NcdAutoSetup\NetworkSetting\{58DE2963-00B3-447E-B8AD-B285322324AC}' -Name 'NetworkSize' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\NcdAutoSetup\NetworkSetting\{58DE2963-00B3-447E-B8AD-B285322324AC}' -Name 'AutoSetup' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\Software\Microsoft\Windows\CurrentVersion\NcdAutoSetup\Private") -ne $true) { New-Item "HKLM:\Software\Microsoft\Windows\CurrentVersion\NcdAutoSetup\Private" -force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\NcdAutoSetup\Private' -Name 'AutoSetup' -Value 1 -PropertyType DWord -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'AllowInsecureGuestAuth' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LanmanWorkstation") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LanmanWorkstation" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'AllowInsecureGuestAuth' -Value 1 -PropertyType DWord -Force
#
$i = 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces'
Get-ChildItem $i | ForEach-Object {
  Set-ItemProperty -Path "$i\$($_.pschildname)" -Name TcpAckFrequency -Value 1
  Set-ItemProperty -Path "$i\$($_.pschildname)" -Name TCPNoDelay -Value 1
  Set-ItemProperty -Path "$i\$($_.pschildname)" -Name TcpDelAckTicks 0
}

# 开机bcdedit优化
# Avoid the use of uncontiguous portions of low-memory from the OS. Boosts memory performance and improves microstuttering at least 80% of the cases. Also fixes the command buffer stutter after disabling 5-level paging on 10th gen Intel.
cmd.exe /c 'bcdedit /set firstmegabytepolicy UseAll'
cmd.exe /c 'bcdedit /set avoidlowmemory 0x8000000'
cmd.exe /c 'bcdedit /set nolowmem Yes'
# Enable X2Apic and enable Memory Mapping for PCI-E devices.
cmd.exe /c 'bcdedit /set x2apicpolicy Enable'
cmd.exe /c 'bcdedit /set configaccesspolicy Default'
cmd.exe /c 'bcdedit /set MSI Default'
cmd.exe /c 'bcdedit /set usephysicaldestination No'
cmd.exe /c 'bcdedit /set usefirmwarepcisettings No'
# use synthetic TSC tick
cmd.exe /c 'bcdedit /set disabledynamictick yes'
cmd.exe /c 'bcdedit /set useplatformtick No'
cmd.exe /c 'bcdedit /set tscsyncpolicy Legacy'
cmd.exe /c 'bcdedit /set useplatformclock Yes'
cmd.exe /c 'bcdedit /timeout 0'
cmd.exe /c 'bcdedit /set debug No'
cmd.exe /c 'bcdedit /set displaybootmenu no'
cmd.exe /c 'bcdedit /set advancedoptions false'
cmd.exe /c 'bcdedit /set bootems no'
cmd.exe /c 'bcdedit /set recoveryenabled no'
cmd.exe /c 'bcdedit /set nx OptIn'
cmd.exe /c 'bcdedit /set bootmenupolicy legacy'
cmd.exe /c 'bcdedit /set bootstatuspolicy ignoreallfailures'
cmd.exe /c 'bcdedit /set quietboot On'
cmd.exe /c 'bcdedit /set bootuxdisabled On'
cmd.exe /c 'bcdedit /set {globalsettings} custom:16000067 true'
cmd.exe /c 'bcdedit /set {globalsettings} custom:16000068 true'
cmd.exe /c 'bcdedit /set {globalsettings} custom:16000069 true'
cmd.exe /c 'fsutil behavior set disable8dot3 1'
cmd.exe /c 'fsutil behavior set disableencryption 1'
cmd.exe /c 'fsutil behavior set disablelastaccess 1'
cmd.exe /c 'fsutil behavior set EncryptPagingFile 0'
cmd.exe /c 'fsutil behavior set symlinkEvaluation L2R:0 R2R:0 R2L:0'
cmd.exe /c 'fsutil behavior set allowextchar 1'
cmd.exe /c 'fsutil behavior set Bugcheckoncorrupt 0'
cmd.exe /c 'fsutil behavior set disablecompression 1'
cmd.exe /c 'fsutil behavior set memoryusage 2'
cmd.exe /c 'fsutil behavior set mftzone 2'
cmd.exe /c 'fsutil behavior set disabledeletenotify 0'
cmd.exe /c 'cipher /d /s:C:\'
cmd.exe /c 'compact /CompactOs:never'
cmd.exe /c 'fsutil resource setavailable c:'
cmd.exe /c 'fsutil resource setavailable d:'
cmd.exe /c 'fsutil resource setlog shrink 10 C:\'
cmd.exe /c 'fsutil resource setlog shrink 10 D:\'
cmd.exe /c 'fsutil resource setautoreset true c:\'
cmd.exe /c 'fsutil resource setautoreset true d:\'
cmd.exe /c 'fsutil usn deletejournal /d /n c:'
cmd.exe /c 'fsutil usn deletejournal /d /n d:'
cmd.exe /c 'fsutil bypassIo state C:\'
cmd.exe /c 'netsh wfp set options netevents = off'
cmd.exe /c 'reagentc /disable'
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Policies') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Policies' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Policies' -Name 'NtfsDisableEncryption' -Value 1 -PropertyType DWord -Force

# 关闭所有安全守护功能
cmd.exe /c 'bcdedit /set isolatedcontext No'
cmd.exe /c 'bcdedit /set allowedinmemorysettings 0x0'
cmd.exe /c 'bcdedit /set disableelamdrivers Yes'
cmd.exe /c 'bcdedit /set loadoptions DISABLE-LSA-ISO,DISABLE-VBS'
cmd.exe /c 'bcdedit /set vsmlaunchtype Off'
cmd.exe /c 'bcdedit /set vm No'
cmd.exe /c 'bcdedit /set hypervisorlaunchtype off'
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Acrobat.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcrobatInfo.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcroCEF.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcroRd32.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcroServicesUpdater.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ExtExport.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ie4uinit.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieinstal.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ielowutil.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieUnatt.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\iexplore.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mscorsvw.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msfeedssync.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mshta.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngen.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngentask.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PresentationHost.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintDialog.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintIsolationHost.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\runtimebroker.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\splwow64.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe' -Name 'MitigationOptions' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.exe' -Name 'MitigationOptions' -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'MitigationOptions' -Value ([byte[]](0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'DisableExceptionChainValidation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'KernelSEHOPEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'DisableHHDEP' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager' -Name 'ProtectionMode' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'FeatureSettings' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'FeatureSettingsOverride' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'FeatureSettingsOverrideMask' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'EnableCfg' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'MoveImages' -Value 0 -PropertyType DWord -Force
# https://docs.microsoft.com/en-us/windows/security/identity-protection/credential-guard/credential-guard-manage
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI' -Name 'AllowAppHVSI_ProviderSet' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI' -Name 'AuditApplicationGuard' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI' -Name 'AllowAppHVSI' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI' -Name 'AllowPersistence' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FVE') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\FVE' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FVE' -Name 'DisableExternalDMAUnderLock' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FVE' -Name 'ActiveDirectoryBackup' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FVE' -Name 'OSEnablePrebootInputProtectorsOnSlates' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FVE' -Name 'RequireActiveDirectoryBackup' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FVE' -Name 'RDVConfigureBDE' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FVE' -Name 'RDVAllowBDE' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FVE' -Name 'RDVDisableBDE' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Hvsi') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Hvsi' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Hvsi' -Name 'DisableHvsi' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name 'HVCIMATRequired' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name 'EnableVirtualizationBasedSecurity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name 'LsaCfgFlags' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name 'RequirePlatformSecurityFeatures' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\CredentialGuard') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\CredentialGuard' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\CredentialGuard' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
Remove-Item -Path 'C:\Windows\System32\CodeIntegrity\SIPolicy.p7b' -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Main') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Main' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Main' -Name 'DEPOff' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'NoDataExecutionPrevention' -Value 1 -PropertyType DWord -Force

# 隐私
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack' -Recurse -Force;
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation' -Name 'Manual' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation' -Name 'NotificationDisabled' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Siuf\Rules') -ne $true) { New-Item 'HKCU:\SOFTWARE\Microsoft\Siuf\Rules' -Force };
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Siuf\Rules' -Name 'NumberOfSIUFInPeriod' -Value 0 -PropertyType DWord -Force
Remove-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Siuf\Rules' -Name 'PeriodInNanoSeconds' -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'AllowTelemetry' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'DoNotShowFeedbackNotifications' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'AllowCommercialDataPipeline' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'DisableEnterpriseAuthProxy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'DisableOneSettingsDownloads' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds' -Name 'AllowBuildPreview' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds' -Name 'EnableConfigFlighting' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds' -Name 'EnableExperimentation' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\System') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\System' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\System' -Name 'AllowExperimentation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableCdp' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\MSDeploy\3') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\MSDeploy\3' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\MSDeploy\3' -Name 'EnableTelemetry' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows' -Name 'CEIPEnable' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\SQM') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\SQM' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\SQM' -Name 'DisableCustomerImprovementProgram' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveDnsProbeContent' -Value '131.107.255.255' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveDnsProbeContentV6' -Value 'fd3e:4f5a:5b81::1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveDnsProbeHost' -Value 'dns.msftncsi.com' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveDnsProbeHostV6' -Value 'dns.msftncsi.com' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbeContent' -Value 'Microsoft NCSI' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbeContentV6' -Value 'Microsoft NCSI' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbeHost' -Value 'www.msftncsi.com' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbeHostV6' -Value 'ipv6.msftncsi.com' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbePath' -Value 'ncsi.txt' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbePathV6' -Value 'ncsi.txt' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'MinimumInternetHopCount' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Network Connections' -Name 'NC_DoNotShowLocalOnlyIcon' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator' -Name 'UseGlobalDNS' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SystemPaneSuggestionsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'RotatingLockScreenEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'RotatingLockScreenOverlayEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SilentInstalledAppsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SoftLandingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'ContentDeliveryAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'OemPreInstalledAppsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'RotatingLockScreenOverlayEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'PreInstalledAppsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'RotatingLockScreenOverlayVisible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'CreativeJson' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'ShowSyncProviderNotifications' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'TailoredExperiencesWithDiagnosticDataEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-202913Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-202914Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-280797Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-280811Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-280810Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-280817Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-280814Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-280815Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-310091Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-310092Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-310093Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-310094Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-314558Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-314559Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-314566Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-314567Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338380Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338387Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338381Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338388Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338382Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338389Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338386Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338393Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-346480Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-346481Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-353694Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-353695Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-353696Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-353697Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-353698Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-353699Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-88000044Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-88000045Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-88000105Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-88000106Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-88000161Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-88000162Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-88000163Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-88000164Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-88000165Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-88000166Enabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications' -Name 'NoCloudApplicationNotification' -Value 1 -PropertyType DWord -Force
Remove-Item -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\Subscriptions' -Recurse -Force;
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Tracing\DllHost_RASAPI32') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Tracing\DllHost_RASAPI32' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Tracing\DllHost_RASAPI32' -Name 'EnableAutoFileTracing' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Tracing\DllHost_RASAPI32' -Name 'EnableConsoleTracing' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Tracing\DllHost_RASAPI32' -Name 'EnableFileTracing' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy' -Name 'TailoredExperiencesWithDiagnosticDataEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\InternetManagement') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\InternetManagement' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\InternetManagement' -Name 'RestrictCommunication' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoPublishingWizard' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoInternetOpenWith' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy' -Name 'HasAccepted' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'DoReport' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Internet Connection Wizard') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Internet Connection Wizard' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Internet Connection Wizard' -Name 'ExitOnMSICW' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Registration Wizard Control') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Registration Wizard Control' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Registration Wizard Control' -Name 'NoRegistration' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SearchCompanion') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\SearchCompanion' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SearchCompanion' -Name 'DisableContentFileUpdates' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'IncludeKernelFaults' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'AllOrNone' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'IncludeMicrosoftApps' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'IncludeWindowsApps' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'IncludeShutdownErrs' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsConsumerFeatures' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableSoftLanding' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableCloudOptimizedContent' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableTailoredExperiencesWithDiagnosticData' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableThirdPartySuggestions' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsSpotlightFeatures' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'ConfigureWindowsSpotlight' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsSpotlightWindowsWelcomeExperience' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsSpotlightOnActionCenter' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsSpotlightOnSettings' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PushToInstall') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\PushToInstall' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PushToInstall' -Name 'DisablePushToInstall' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo' -Name 'DisabledByGroupPolicy' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' -Name 'DisableSensors' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' -Name 'DisableLocation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' -Name 'DisableLocationScripting' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' -Name 'DisableWindowsLocationProvider' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location' -Name 'Value' -Value 'Deny' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\input\Settings') -ne $true) { New-Item 'HKCU:\Software\Microsoft\input\Settings' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\input\Settings' -Name 'InsightsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowClipboardHistory' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowCortana' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowDeviceDiscovery' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowFindMyDevice' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowManualMDMUnenrollment' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowSIMErrorDialogPromptWhenNoSIM' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowSpotlightCollection' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowSyncMySettings' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowTailoredExperiencesWithDiagnosticData' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowTaskSwitcher' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowThirdPartySuggestionsInWindowsSpotlight' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowVoiceRecording' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowWindowsConsumerFeatures' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowWindowsSpotlight' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowWindowsSpotlightOnActionCenter' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowWindowsSpotlightOnSettings' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowWindowsSpotlightWindowsWelcomeExperience' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowWindowsTips' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\ConfigureChatIcon' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\ConfigureWindowsSpotlightOnLockScreen' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\DisableCloudOptimizedContent' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\DisableConsumerAccountStateContent' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\DoNotShowFeedbackNotifications' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\DoNotSyncBrowserSettings' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\PreventUsersFromTurningOnBrowserSyncing' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Experience\ShowLockOnUserTile' -Name 'value' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowCellularData') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowCellularData' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowCellularDataRoaming') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowCellularDataRoaming' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowConnectedDevices') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowConnectedDevices' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowNFC') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowNFC' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowPhonePCLinking') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowPhonePCLinking' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\DisallowNetworkConnectivityActiveTests') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\DisallowNetworkConnectivityActiveTests' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\DisallowNetworkConnectivityPassivePolling') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\DisallowNetworkConnectivityPassivePolling' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowCellularData' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowCellularDataRoaming' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowConnectedDevices' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowNFC' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowPhonePCLinking' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\DisallowNetworkConnectivityActiveTests' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\DisallowNetworkConnectivityPassivePolling' -Name 'value' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput' -Name 'AllowLinguisticDataCollection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowBuildPreview' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowCommercialDataPipeline' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowDesktopAnalyticsProcessing' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowDeviceNameInDiagnosticData' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowEmbeddedMode' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowFontProviders' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowLocation' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowMicrosoftManagedDesktopProcessing' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowStorageCard' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowTelemetry' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowUpdateComplianceProcessing' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowUserToResetPhone' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowWUfBCloudProcessing' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\ConfigureTelemetryOptInChangeNotification' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\ConfigureTelemetryOptInSettingsUx' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\DisableEnterpriseAuthProxy' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\DisableOneSettingsDownloads' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\EnableOneSettingsAuditing' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\FeedbackHubAlwaysSaveDiagnosticsLocally' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\LimitDiagnosticLogCollection' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\LimitDumpCollection' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\LimitEnhancedDiagnosticDataWindowsAnalytics' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\TurnOffFileHistory' -Name 'value' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoRecentDocsHistory' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoInstrumentation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'ClearRecentDocsOnExit' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoCDBurning' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'DisableThumbnailsOnNetworkFolders' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoReadingPane' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoNetConnectDisconnect' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Start_TrackDocs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Start_TrackProgs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'HttpAcceptLanguageOptOut' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'AllowCrossDeviceClipboard' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableActivityFeed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'PublishUserActivities' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'UploadUserActivities' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'AllowClipboardHistory' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableAppUriHandlers' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Messaging') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Messaging' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Messaging' -Name 'AllowMessageSync' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Settings\FindMyDevice') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Settings\FindMyDevice' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Settings\FindMyDevice' -Name 'LocationSyncEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync' -Name 'DisableApplicationSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync' -Name 'DisableAppSyncSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync' -Name 'DisableWebBrowserSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync' -Name 'DisableDesktopThemeSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync' -Name 'DisableSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync' -Name 'DisableWindowsSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync' -Name 'DisableCredentialsSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync' -Name 'DisablePersonalizationSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync' -Name 'DisableStartLayoutSettingSync' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync' -Name 'DisableSettingSyncUserOverride' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\MSOIdentityCRL\Trace') -ne $true) { New-Item 'HKCU:\Software\Microsoft\MSOIdentityCRL\Trace' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\MSOIdentityCRL\Trace' -Name 'Flags' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\MSOIdentityCRL\Trace' -Name 'level' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\MSOIdentityCRL\Trace') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\MSOIdentityCRL\Trace' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\MSOIdentityCRL\Trace' -Name 'Flags' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\MSOIdentityCRL\Trace' -Name 'level' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\MSOIdentityCRL\Trace') -ne $true) { New-Item 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\MSOIdentityCRL\Trace' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\MSOIdentityCRL\Trace' -Name 'Flags' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\MSOIdentityCRL\Trace' -Name 'level' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting' -Name 'DontSendAdditionalData' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting' -Name 'DontShowUI' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting' -Name 'LoggingDisabled' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name 'DontSendAdditionalData' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name 'DontShowUI' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name 'LoggingDisabled' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'DontSendAdditionalData' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'LoggingDisabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'AutoApproveOSDumps' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'BypassPowerThrottling' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'BypassNetworkCostThrottling' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'BypassDataThrottling' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Messenger\Client') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Messenger\Client' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Messenger\Client' -Name 'PreventAutoRun' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Messenger\Client' -Name 'PreventRun' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\safer\codeidentifiers') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\safer\codeidentifiers' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\safer\codeidentifiers' -Name 'authenticodeenabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\Local') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\Local' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\Local' -Name 'WCMPresent' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Wbem\CIMOM' -Name 'EnableEvents' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Wbem\CIMOM' -Name 'Logging' -Value '0' -PropertyType String -Force
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\business") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\business" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\creative") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\creative" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\entertainment") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\entertainment" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\family") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\family" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\gaming") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\gaming" -force };
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\schoolwork") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\schoolwork" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\business' -Name 'Priority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\business' -Name 'Intent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\creative' -Name 'Priority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\creative' -Name 'Intent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\entertainment' -Name 'Intent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\entertainment' -Name 'Priority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\family' -Name 'Intent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\family' -Name 'Priority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\gaming' -Name 'Priority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\gaming' -Name 'Intent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\schoolwork' -Name 'Priority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\schoolwork' -Name 'Intent' -Value 0 -PropertyType DWord -Force

# 禁用smartscreen
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows Security Health\State') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows Security Health\State' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows Security Health\State' -Name 'AccountProtection_MicrosoftAccount_Disconnected' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows Security Health\State' -Name 'AppAndBrowser_EdgeSmartScreenOff' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Edge\SmartScreenEnabled' -Name '(default)' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Edge\SmartScreenPuaEnabled' -Name '(default)' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost' -Name 'EnableWebContentEvaluation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost' -Name 'SmartScreenEnabled' -Value 'Off' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost' -Name 'PreventOverride' -Value 0 -PropertyType DWord -Force

# 无小娜
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowCortanaButton' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowCortanaButton' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Name 'DeviceHistoryEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Name 'HistoryViewEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Name 'SearchboxTaskbarMode' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows Search') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows Search' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows Search' -Name 'CortanaConsent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows Search' -Name 'CortanaIsReplaceable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows Search' -Name 'CortanaIsReplaced' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows Search' -Name 'SearchboxTaskbarMode' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\InputPersonalization') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\InputPersonalization' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\InputPersonalization\TrainedDataStore') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\InputPersonalization\TrainedDataStore' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\InputPersonalization' -Name 'RestrictImplicitInkCollection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\InputPersonalization' -Name 'RestrictImplicitTextCollection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\InputPersonalization\TrainedDataStore' -Name 'HarvestContacts' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Personalization\Settings' -Name 'AcceptedPrivacyPolicy' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Experience') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Experience' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Experience' -Name 'AllowCortana' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Speech_OneCore\Preferences') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Speech_OneCore\Preferences' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Speech_OneCore\Preferences' -Name 'ModelDownloadAllowed' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' -Name 'SearchboxTaskbarMode' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization' -Name 'RestrictImplicitInkCollection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization' -Name 'RestrictImplicitTextCollection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization' -Name 'AllowInputPersonalization' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Search\DisableSearch') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Search\DisableSearch' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Search\DisableSearch' -Name 'value' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'DisableSearch' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowCortana' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowCloudSearch' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'DisableWebSearch' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowSearchToUseLocation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'ConnectedSearchPrivacy' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'ConnectedSearchSafeSearch' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'ConnectedSearchUseWeb' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'ConnectedSearchUseWebOverMeteredConnections' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search' -Name 'AllowCortana' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Name 'BackgroundAppGlobalToggle' -Value 0 -PropertyType DWord -Force

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

# 根目录证书
# http://woshub.com/updating-trusted-root-certificates-in-windows-10/
# "certutil.exe -f -generateSSTFromWU C:\TEMP\trustedcerts.sst" | cmd
# Get-ChildItem -Path C:\TEMP\trustedcerts.sst | Import-Certificate -CertStoreLocation Cert:\LocalMachine\Root
# https://learn.microsoft.com/en-us/security/trusted-root/testing
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\Certificates' -Recurse -Force;
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate' -Name 'EncodedCtl' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate' -Name 'LastSyncTime' -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate' -Name 'RootDirURL' -Value 'http://ctldl.windowsupdate.com/msdownload/update/v3/static/trustedr/en' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate' -Name 'SyncFromDirUrl' -Value 'http://ctldl.windowsupdate.com/msdownload/update/v3/static/trustedr/en' -PropertyType String -Force

# 电源设置
cmd.exe /c 'powercfg -h off'
cmd.exe /c 'powercfg -Change -monitor-timeout-ac 0'
cmd.exe /c 'powercfg -Change -monitor-timeout-dc 0'
cmd.exe /c 'powercfg -Change -standby-timeout-ac 0'
cmd.exe /c 'powercfg -Change -standby-timeout-dc 0'
cmd.exe /c 'powercfg /attributes sub_processor 0cc5b647-c1df-4637-891a-dec35c318583 -ATTRIB_HIDE'
cmd.exe /c 'powercfg /attributes sub_processor ea062031-0e34-4ff1-9b6d-eb1059334028 -ATTRIB_HIDE'
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'HiberbootEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'PowerdownAfterShutdown' -Value '1' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power' -Name 'HiberbootEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling' -Name 'PowerThrottlingOff' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings' -Name 'ShowSleepOption' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings' -Name 'ShowHibernateOption' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'HibernateEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'PlatformAoAcOverride' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'CsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'ExitLatency' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'ExitLatencyCheckEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'Latency' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'LatencyToleranceDefault' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'LatencyToleranceFSVP' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'LatencyTolerancePerfOverride' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'LatencyToleranceScreenOffIR' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'LatencyToleranceVSyncEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'RtlCapabilityCheckLatency' -Value 1 -PropertyType DWord -Force

# Multimedia Class Scheduler Service API
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'NetworkThrottlingIndex' -Value -1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'SystemResponsiveness' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'NoLazyMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'LazyModeTimeout' -Value 150000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Priority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Priority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Priority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Priority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Priority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Priority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Priority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Priority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force

# GameDVR
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'AppCaptureEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'GameDVR_Enabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\GameBar') -ne $true) { New-Item 'HKCU:\Software\Microsoft\GameBar' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'AllowAutoGameMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'AutoGameModeEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'UseNexusForGameBarEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'ShowGameModeNotifications' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR' -Force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\GameDVR' -Name 'AllowGameDVR' -Value 0 -PropertyType DWord -Force
Remove-Item -LiteralPath 'HKCU:\System\GameConfigStore\Children' -Force -Recurse
Remove-Item -LiteralPath 'HKCU:\System\GameConfigStore\Parents' -Force -Recurse
if ((Test-Path -LiteralPath 'HKCU:\System\GameConfigStore') -ne $true) { New-Item 'HKCU:\System\GameConfigStore' -Force };
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_FSEBehaviorMode' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_FSEBehavior' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_HonorUserFSEBehaviorMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_DXGIHonorFSEWindowsCompatible' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_EFSEFeatureFlags' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_DSEBehavior' -Value 2 -PropertyType DWord -Force

# 我的电脑单独进程启动
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'SeparateProcess' -Value 1 -PropertyType DWord -Force
#
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Force };
# 我的电脑不显示office.com文件
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShowCloudFilesInQuickAccess' -Value 0 -PropertyType DWord -Force
# 不显示常用文件
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShowFrequent' -Value 0 -PropertyType DWord -Force
# 不显示最近文件
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShowRecent' -Value 0 -PropertyType DWord -Force
#
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'AltTabSettings' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'EnableAutoTray' -Value 0 -PropertyType DWord -Force
# 桌面显示我的PC和控制面板
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{20D04FE0-3AEA-1069-A2D8-08002B30309D}' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}' -Value 0 -PropertyType DWord -Force
# 移除多余文件夹显示
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -force;
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}' -Name 'HideIfEnabled' -Value 36354489 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}' -Name 'HideIfEnabled' -Value 36354489 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}' -Name 'HideIfEnabled' -Value 36354489 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}' -Name 'HideIfEnabled' -Value 36354489 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}' -Name 'HideIfEnabled' -Value 36354489 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}' -Name 'HideIfEnabled' -Value 36354489 -PropertyType DWord -Force
# 无quick access
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderMSGraph\NameSpace\DelegateFolders\{3936E9E4-D92C-4EEE-A85A-BC16D5EA0819}" -force;
# 无home
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'HubMode' -Value 1 -PropertyType DWord -Force
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace_36354489\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}" -force;
# 无favourite
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderMSGraph\NameSpace\DelegateFolders\{3134ef9c-6b18-4996-ad04-ed5912e00eb5}" -force;
# 无库library
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}' -Name 'System.IsPinnedToNameSpaceTree' -Value 0 -PropertyType DWord -Force
# 移除用户文件夹
Remove-Item -LiteralPath "HKCU:\Software\Classes\CLSID\{59031a47-3f72-44a7-89c5-5595fe6b30ee}" -force;
# 不显示所有文件夹
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'NavPaneShowAllFolders' -Value 0 -PropertyType DWord -Force
# 不扩展到当前文件夹
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'NavPaneExpandToCurrentFolder' -Value 0 -PropertyType DWord -Force
# 任务栏小图标且从不合并
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarSmallIcons' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarGlomLevel' -Value 2 -PropertyType DWord -Force
# 只显示图标无缩略图
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'IconsOnly' -Value 1 -PropertyType DWord -Force
# 显示文件预览
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowPreviewHandlers' -Value 1 -PropertyType DWord -Force
# 添加设备和打印机到我的PC
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}") -ne $true) { New-Item "HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}\DefaultIcon") -ne $true) { New-Item "HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}\DefaultIcon" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}\InProcServer32") -ne $true) { New-Item "HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}\InProcServer32" -force };
if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{A8A91A66-3A7D-4424-8D24-04E180695C7A}") -ne $true) { New-Item "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{A8A91A66-3A7D-4424-8D24-04E180695C7A}" -force };
if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel") -ne $true) { New-Item "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}' -Name '(default)' -Value 'Device Center' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}' -Name 'System.IsPinnedToNamespaceTree' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}' -Name 'SortOrderIndex' -Value 60 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}' -Name 'System.ApplicationName' -Value 'Microsoft.DevicesAndPrinters' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}\DefaultIcon' -Name '(default)' -Value '%systemroot%\system32\DeviceCenter.dll,-1' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}\InProcServer32' -Name '(default)' -Value '%systemroot%\system32\DeviceCenter.dll' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}\InProcServer32' -Name 'LoadWithoutCOM' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\CLSID\{A8A91A66-3A7D-4424-8D24-04E180695C7A}\InProcServer32' -Name 'ThreadingModel' -Value 'Both' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{A8A91A66-3A7D-4424-8D24-04E180695C7A}' -Name '(default)' -Value 'Device Center' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{A8A91A66-3A7D-4424-8D24-04E180695C7A}' -Value 1 -PropertyType DWord -Force
# 添加网络到我的PC
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}' -Name 'System.IsPinnedToNameSpaceTree' -Value 1 -PropertyType DWord -Force

# hosts
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 p1-play.edge4k.com'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 p2-play.edge4k.com'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 p1-play.kgslb.com'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 kyson.ad.daum.net'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 display.ad.daum.net'
Add-Content -Encoding UTF8 C:\Windows\system32\drivers\etc\hosts '127.0.0.1 analytics.ad.daum.net'

# 无用户账户控制
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableLUA' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'ConsentPromptBehaviorAdmin' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'PromptOnSecureDesktop' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'FilterAdministratorToken' -Value 0 -PropertyType DWord -Force

# 关闭系统还原
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore' -Name 'DisableSR' -Value 1 -PropertyType DWord -Force

# 无远程协助
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance' -Name 'fAllowFullControl' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance' -Name 'fAllowToGetHelp' -Value 0 -PropertyType DWord -Force

# Disk Quota
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota' -Name 'Enable' -Value 0 -PropertyType DWord -Force

# 无taskview
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowTaskViewButton' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowTaskViewButton' -Value 0 -PropertyType DWord -Force

# 无人脉
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Explorer') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\Windows\Explorer' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Explorer' -Name 'HidePeopleBar' -Value 1 -PropertyType DWord -Force

# 无垃圾桶图标
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum' -Name '{645FF040-5081-101B-9F08-00AA002F954E}' -Value 1 -PropertyType DWord -Force

# 下载文件不提示不安全
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments' -Name 'SaveZoneInformation' -Value 1 -PropertyType DWord -Force

# https://docs.microsoft.com/en-us/windows-hardware/drivers/pci/enabling-dma-remapping-for-device-drivers
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\DmaGuard\DeviceEnumerationPolicy' -Name 'value' -Value 2 -PropertyType DWord -Force

# 无之前的版本
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PreviousVersions') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\PreviousVersions' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PreviousVersions' -Name 'DisableBackupRestore' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'NoPreviousVersionsPage' -Value 1 -PropertyType DWord -Force

# https://docs.microsoft.com/en-us/windows/win32/win7appqual/fault-tolerant-heap
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\FTH\State' -Force;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\FTH' -Name 'Enabled' -Value 0 -PropertyType DWord -Force

# Disable File History
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\FileHistory') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\FileHistory' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\FileHistory' -Name 'Disabled' -Value 1 -PropertyType DWord -Force

# FindMyDevice
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FindMyDevice') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\FindMyDevice' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FindMyDevice' -Name 'AllowFindMyDevice' -Value 0 -PropertyType DWord -Force

# Backup & Restore
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Backup') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Backup' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Backup' -Name 'DisableRestoreUI' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Backup' -Name 'DisableBackupUI' -Value 1 -PropertyType DWord -Force

# 无自动运行
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers' -Name 'DisableAutoplay' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoDriveTypeAutoRun' -Value 255 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\AutorunINFLegacyArrival') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\AutorunINFLegacyArrival' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\CameraAlternate\ShowPicturesOnArrival') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\CameraAlternate\ShowPicturesOnArrival' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\StorageOnArrival') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\StorageOnArrival' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\AutorunINFLegacyArrival') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\AutorunINFLegacyArrival' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\CameraAlternate\ShowPicturesOnArrival') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\CameraAlternate\ShowPicturesOnArrival' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\StorageOnArrival') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\StorageOnArrival' -Force };
Remove-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers' -Name 'DisableAutoplay' -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\AutorunINFLegacyArrival' -Name '(default)' -Value 'MSTakeNoAction' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\CameraAlternate\ShowPicturesOnArrival' -Name '(default)' -Value 'MSTakeNoAction' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\StorageOnArrival' -Name '(default)' -Value 'MSTakeNoAction' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\AutorunINFLegacyArrival' -Name '(default)' -Value 'MSTakeNoAction' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\CameraAlternate\ShowPicturesOnArrival' -Name '(default)' -Value 'MSTakeNoAction' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\StorageOnArrival' -Name '(default)' -Value 'MSTakeNoAction' -PropertyType String -Force

# Disable Administrative shares
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters' -Name 'AutoShareServer' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters' -Name 'AutoShareWks' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters' -Name 'autodisconnect' -Value -1 -PropertyType DWord -Force

# "ValidateAdminCodeSignatures" will prevent exe without a digital signature to run as admin: "A referral was returned from the server"
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'ValidateAdminCodeSignatures' -Value 0 -PropertyType DWord -Force

# 
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Biometrics') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Biometrics' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Biometrics' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Biometrics\Credential Provider') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Biometrics\Credential Provider' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Biometrics\Credential Provider' -Name 'Enabled' -Value 0 -PropertyType DWord -Force

# Settings Pane Online Tips/Help
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'AllowOnlineTips' -Value 0 -PropertyType DWord -Force

# Meet Now
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'HideSCAMeetNow' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'HideSCAMeetNow' -Value 1 -PropertyType DWord -Force

# Disable PerfTrack (tracking of responsiveness events)
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WDI') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WDI' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WDI' -Name 'ScenarioExecutionEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}' -Name 'ScenarioExecutionEnabled' -Value 0 -PropertyType DWord -Force

# Bluetooth Marketing Advertising
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth' -Name 'AllowAdvertising' -Value 0 -PropertyType DWord -Force

# Application Compatibility
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'AITEnable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'DisablePCA' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'DisableUAR' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'DisableInventory' -Value 1 -PropertyType DWord -Force

# no touchpad
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Status') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Status' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Status' -Name 'Enabled' -Value 0 -PropertyType DWord -Force

# Turn Off "Automatically save my restartable apps and restart them when I sign back in"
if ((Test-Path -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon') -ne $true) { New-Item 'HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Force };
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'RestartApps' -Value 0 -PropertyType DWord -Force

# Turn Off "Restore previous folder windows at logon"
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'PersistBrowsers' -Value 0 -PropertyType DWord -Force

# 驱动更新
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\DeviceHealthAttestationService') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\DeviceHealthAttestationService' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\DeviceHealthAttestationService' -Name 'EnableDeviceHealthAttestationService' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings' -Name 'DisableSendGenericDriverNotFoundToWER' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings' -Name 'DisableSendRequestAdditionalSoftwareToWER' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings' -Name 'BehaviorOnFailedVerify' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows NT\Driver Signing') -ne $true) { New-Item 'HKCU:\Software\Policies\Microsoft\Windows NT\Driver Signing' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows NT\Driver Signing' -Name 'BehaviorOnFailedVerify' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata' -Name 'PreventDeviceMetadataFromNetwork' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Name 'DontPromptForWindowsUpdate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Name 'DontSearchWindowsUpdate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Name 'DriverUpdateWizardWuSearchEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Name 'SearchOrderConfig' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'ExcludeWUDriversInQualityUpdate' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices' -Name 'TCGSecurityActivationDisabled' -Value 0 -PropertyType DWord -Force

# 关闭磁盘省电
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Storage' -Name 'StorageD3InModernStandby' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\stornvme\Parameters\Device' -Name 'IdlePowerMode' -Value 0 -PropertyType DWord -Force

# 关闭后台优化
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance' -Name 'MaintenanceDisabled' -Value 1 -PropertyType DWord -Force

# 关闭内存压缩
Disable-MMAgent -ApplicationLaunchPrefetching
Disable-MMAgent -ApplicationPreLaunch
Disable-MMAgent -MemoryCompression
Disable-MMAgent -PageCombining

# No suggestions for using my Android phone with Windows
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Mobility') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Mobility' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Mobility' -Name 'OptedIn' -Value 0 -PropertyType DWord -Force

# Disable Application Manager Background scans
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BamThrottling') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BamThrottling' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BamThrottling' -Name 'DisableWindowHinting' -Value 1 -PropertyType DWord -Force

# 文件系统
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NTFSDisable8Dot3NameCreation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsDisableCompression' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsDisableEncryption' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsDisableLastAccessUpdate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsDisableLfsDowngrade' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsDisableLfsUpgrade' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsMemoryUsage' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsMftZoneReservation' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsEncryptPagingFile' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'Win31FileSystem' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'DisableDeleteNotification' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'Win95TruncatedExtensions' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsAllowExtendedCharacter8dot3Rename' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsAllowUsnMinSize1Mb' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsBugcheckOnCorrupt' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'UdfsCloseSessionOnEject' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'UdfsSoftwareDefectManagement' -Value 0 -PropertyType DWord -Force

# 回收站
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume\{cca4ea49-44e6-43ef-a623-ebc88725c706}') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume\{cca4ea49-44e6-43ef-a623-ebc88725c706}' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShellState' -Value 'hex(3):24,00,00,00,33,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,01,00,00,00,13,00,00,00,00,00,00,00,13,00,00,00' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume\{cca4ea49-44e6-43ef-a623-ebc88725c706}' -Name 'NukeOnDelete' -Value 1 -PropertyType DWord -Force

# 内存设置优化
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'PagingFiles' -Value @('c:\pagefile.sys 32768 32768') -PropertyType MultiString -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'ClearPageFileAtShutdown' -Value '0' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'DisablePagingExecutive' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'DisablePagingCombining' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'LargeSystemCache' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'SystemPages' -Value '0' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'FeatureSettings' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'SwapfileControl' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'NonPagedPoolSize' -Value '192' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'PagedPoolSize' -Value '192' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'PoolUsageMaximum' -Value '192' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'NtfsEncryptPagingFile' -Value '0' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'DontVerifyRandomDrivers' -Value '1' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'IoPageLockLimit' -Value '128' -PropertyType DWord -Force

# if you don’t care to increase the quantum on the foreground window but, instead, just want short, fixed quanta (effectively around 60ms) for all processes to improve response time on a system with a lot of processes? Setting Win32PrioritySeparation to 0x28 will take care of that.
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl' -Name 'Win32PrioritySeparation' -Value 40 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl' -Name 'IRQ8Priority' -Value 1 -PropertyType DWord -Force

# 蓝屏报告
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'AutoReboot' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'CrashDumpEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'DumpLogLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'EnableLogFile' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'LogEvent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'MinidumpsCount' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'Overwrite' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'AlwaysKeepMemoryDump' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'DisplayParameters' -Value 1 -PropertyType DWord -Force

# Low Disk Space Checks
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoLowDiskSpaceChecks' -Value 1 -PropertyType DWord -Force

# Recently Added Apps in Start Menu
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'HideRecentlyAddedApps' -Value 1 -PropertyType DWord -Force

# Chkdsk
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager' -Name 'AutoChkTimeout' -Value 0 -PropertyType DWord -Force

# 无锁屏界面
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization' -Name 'NoLockScreen' -Value 1 -PropertyType DWord -Force

# 关闭辅助功能
if ((Test-Path -LiteralPath 'HKCU:\Keyboard Layout\Toggle') -ne $true) { New-Item 'HKCU:\Keyboard Layout\Toggle' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Toggle' -Name 'Language Hotkey' -Value '3' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Toggle' -Name 'Layout Hotkey' -Value '3' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Toggle' -Name 'Hotkey' -Value '3' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKCU:\SOFTWARE\Microsoft\ScreenMagnifier') -ne $true) { New-Item 'HKCU:\SOFTWARE\Microsoft\ScreenMagnifier' -Force };
if ((Test-Path -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Narrator') -ne $true) { New-Item 'HKCU:\SOFTWARE\Microsoft\Narrator' -Force };
if ((Test-Path -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Narrator\NarratorHome') -ne $true) { New-Item 'HKCU:\SOFTWARE\Microsoft\Narrator\NarratorHome' -Force };
if ((Test-Path -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Narrator\NoRoam') -ne $true) { New-Item 'HKCU:\SOFTWARE\Microsoft\Narrator\NoRoam' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Narrator\NoRoam') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Narrator\NoRoam' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Narrator') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Narrator' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Ease of Access') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Ease of Access' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\HighContrast') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\HighContrast' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\Keyboard Response') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\Keyboard Response' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\MouseKeys') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\MouseKeys' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\StickyKeys') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\StickyKeys' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\ToggleKeys') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\ToggleKeys' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\SoundSentry') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\SoundSentry' -Force };
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Accessibility\SlateLaunch') -ne $true) { New-Item 'HKCU:\Control Panel\Accessibility\SlateLaunch' -Force };
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\ScreenMagnifier' -Name 'FollowCaret' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\ScreenMagnifier' -Name 'FollowNarrator' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\ScreenMagnifier' -Name 'FollowMouse' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\ScreenMagnifier' -Name 'FollowFocus' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Narrator' -Name 'IntonationPause' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Narrator' -Name 'ReadHints' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Narrator' -Name 'ErrorNotificationType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Narrator' -Name 'EchoChars' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Narrator' -Name 'EchoWords' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Narrator\NarratorHome' -Name 'MinimizeType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Narrator\NarratorHome' -Name 'AutoStart' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Narrator\NoRoam' -Name 'EchoToggleKeys' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Narrator\NoRoam' -Name 'DuckAudio' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Narrator\NoRoam' -Name 'WinEnterLaunchEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Narrator\NoRoam' -Name 'ScriptingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Narrator\NoRoam' -Name 'OnlineServicesEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Narrator' -Name 'NarratorCursorHighlight' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Narrator' -Name 'CoupleNarratorCursorKeyboard' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Ease of Access' -Name 'selfvoice' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Ease of Access' -Name 'selfscan' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility' -Name 'Sound on Activation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility' -Name 'Warning Sounds' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\HighContrast' -Name 'Flags' -Value '4194' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\Keyboard Response' -Name 'Flags' -Value '2' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\Keyboard Response' -Name 'AutoRepeatRate' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\Keyboard Response' -Name 'AutoRepeatDelay' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\MouseKeys' -Name 'Flags' -Value '130' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\MouseKeys' -Name 'MaximumSpeed' -Value '39' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\MouseKeys' -Name 'TimeToMaximumSpeed' -Value '3000' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\StickyKeys' -Name 'Flags' -Value '2' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\ToggleKeys' -Name 'Flags' -Value '34' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\SoundSentry' -Name 'Flags' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\SoundSentry' -Name 'FSTextEffect' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\SoundSentry' -Name 'TextEffect' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\SoundSentry' -Name 'WindowsEffect' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\SlateLaunch' -Name 'ATapp' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility\SlateLaunch' -Name 'LaunchAT' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCR:\TypeLib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win32') -ne $true) { New-Item 'HKCR:\TypeLib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win32' -Force };
New-ItemProperty -LiteralPath 'HKCR:\TypeLib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win32' -Name '(default)' -Value '' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKCR:\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win64') -ne $true) { New-Item 'HKCR:\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win64' -Force };
New-ItemProperty -LiteralPath 'HKCR:\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win64' -Name '(default)' -Value '' -PropertyType String -Force

# show Disabled/Disconnected Audio Devices
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Multimedia\Audio\DeviceCpl') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Multimedia\Audio\DeviceCpl' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Multimedia\Audio\DeviceCpl' -Name 'ShowHiddenDevices' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Multimedia\Audio\DeviceCpl' -Name 'ShowDisconnectedDevices' -Value 1 -PropertyType DWord -Force

# no Maintenance task start
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Task Scheduler\Maintenance') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Task Scheduler\Maintenance' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Task Scheduler\Maintenance' -Name 'MaintenanceDisabled' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics' -Name 'EnabledExecution' -Value 0 -PropertyType DWord -Force

# Disable Spelling/Typing Related Aid.
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7') -ne $true) { New-Item 'HKCU:\Software\Microsoft\TabletTip\1.7' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableAutocorrection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableAutoShiftEngage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableDoubleTapSpace' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableKeyAudioFeedback' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnablePredictionSpaceInsertion' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableSpellchecking' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableTextPrediction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'TipbandDesiredVisibility' -Value 0 -PropertyType DWord -Force

# 禁止运行后台APP
# New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications' -Name 'GlobalUserDisabled' -Value 1 -PropertyType DWord -Force

# 为单独程序关闭全屏优化
# New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment' -Name '__COMPAT_LAYER' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'D:\Steam\steamapps\common\Divinity Original Sin 2\DefEd\\bin\\EoCApp.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'D:\Steam\steamapps\common\Skyrim Special Edition\SkyrimSE.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'D:\Steam\steamapps\common\Red Dead Redemption 2\RDR2.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'D:\Steam\steamapps\common\Alien Isolation\AI.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'D:\Steam\steamapps\common\Counter-Strike Global Offensive\csgo.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'D:\Steam\steamapps\common\ForzaHorizon4\ForzaHorizon4.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force

# Secure Logon (Ctrl+alt+del)
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'AutoRestartShell' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'DisableCAD' -Value 1 -PropertyType DWord -Force

# https://admx.help/?Category=Windows_11_2022&Policy=Microsoft.Policies.WindowsLogon::SyncForegroundPolicy
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Winlogon') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Winlogon' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'SyncForegroundPolicy' -Value 0 -PropertyType DWord -Force

# Determines how many user account entries Windows saves in the logon cache on the local computer.
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'CachedLogonsCount' -Value 0 -PropertyType DWord -Force

# 无启动延迟
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize' -Name 'StartupDelayInMSec' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'AsyncScriptDelay' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableLogonScriptDelay' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'DelayedDesktopSwitchTimeout' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'NoInternetOpenWith' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'SynchronousMachineGroupPolicy' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'SynchronousUserGroupPolicy' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'DisableStatusMessages' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control' -Name 'WaitToKillServiceTimeout' -Value 2000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control' -Name 'SvcHostSplitThresholdInKB' -Value 4000000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control' -Name 'ServicesPipeTimeout' -Value 600000 -PropertyType DWord -Force

# Disable "Let's finish setting up your device"
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement' -Name 'ScoobeSystemSettingEnabled' -Value 0 -PropertyType DWord -Force

# Disable Sync Provider Notifications in File Explorer
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowSyncProviderNotifications' -Value 0 -PropertyType DWord -Force

# JumpList显示文件数量为0
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'JumpListItems_Maximum' -Value 0 -PropertyType DWord -Force

# Low Risk File Types
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations' -Name 'LowRiskFileTypes' -Value '.avi;.bat;.cmd;.exe;.htm;.html;.lnk;.mpg;.mpeg;.mov;.mp3;.mp4;.mkv;.msi;.m3u;.rar;.reg;.txt;.vbs;.wav;.zip;.7z;.msu' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations' -Name 'DefaultFileTypeRisk' -Value 1808 -PropertyType DWord -Force

# Always Show Mouse Cursor
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableCursorSurpression' -Value 0 -PropertyType DWord -Force

# Maximize Context Menu Handlers
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'MultipleInvokePromptMinimum' -Value 256 -PropertyType DWord -Force

# Open Explorer in 'This PC'
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'LaunchTo' -Value 1 -PropertyType DWord -Force

# Do not add the "- Shortcut" suffix to the file name of created shortcuts
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'link' -Value ([byte[]](0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates' -Name 'ShortcutNameTemplate' -Force

# Disable Active Desktop
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop' -Name 'NoAddingComponents' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop' -Name 'NoComponents' -Value 1 -PropertyType DWord -Force

# Disable Sharing Wizard
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'SharingWizardOn' -Value 0 -PropertyType DWord -Force

# Hide Folder Merge Conflicts
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideMergeConflicts' -Value 1 -PropertyType DWord -Force

# Disable Aero Shake
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DisallowShaking' -Value 1 -PropertyType DWord -Force

# Disable Aero Snap Assist
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'JointResize' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'SnapAssist' -Value 0 -PropertyType DWord -Force

# 无桌面右下角不支持提示
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\UnsupportedHardwareNotificationCache') -ne $true) { New-Item 'HKCU:\Control Panel\UnsupportedHardwareNotificationCache' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\UnsupportedHardwareNotificationCache' -Name 'SV1' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\UnsupportedHardwareNotificationCache' -Name 'SV2' -Value 0 -PropertyType DWord -Force

# Always Desktop-Mode
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell' -Name 'TabletMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell' -Name 'SignInMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell' -Name 'ConvertibleSlateModePromptPreference' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAutoHideInTabletMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAppsVisibleInTabletMode' -Value 1 -PropertyType DWord -Force

# Unhide Known File Extensions
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideFileExt' -Value 0 -PropertyType DWord -Force

# Show (Super) Hidden Files
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Hidden' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowSuperHidden' -Value 0 -PropertyType DWord -Force

# UWP Disable Dynamic Scrollbars
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Accessibility' -Name 'DynamicScrollbars' -Value 0 -PropertyType DWord -Force

# Show/Hide Status Bar
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowStatusBar' -Value 0 -PropertyType DWord -Force

# Show Empty Drives
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideDrivesWithNoMedia' -Value 0 -PropertyType DWord -Force

# 无商店APP打开提示
Remove-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Explorer' -Name 'NoUseStoreOpenWith' -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'NoUseStoreOpenWith' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Explorer' -Name 'NoNewAppAlert' -Value 1 -PropertyType DWord -Force

# Explorer Thumbnail Cache
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoThumbnailCache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DisableThumbnailCache' -Value 1 -PropertyType DWord -Force

#　无任务栏缩略图
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ThumbnailLivePreviewHoverTime' -Value 90000 -PropertyType DWord -Force

# Disable Touch Screen Gestures
if ((Test-Path -LiteralPath 'HKCU:\Control Panel\Cursors') -ne $true) { New-Item 'HKCU:\Control Panel\Cursors' -Force }
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'ContactVisualization' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'GestureVisualization' -Value 0 -PropertyType DWord -Force

# Disable Reconnect Network Drives Notification
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\NetworkProvider') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\NetworkProvider' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\NetworkProvider' -Name 'RestoreConnection' -Value 0 -PropertyType DWord -Force

# Disable Show Pop-up Description for Folder and Desktop Items
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowInfoTip' -Value 0 -PropertyType DWord -Force

# 关闭硬盘预先存取
If (!(Test-Path -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters')) { New-Item -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -ItemType Directory -Force }
New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -Name 'EnableBoottrace' -Value '0' -PropertyType DWord -Force
New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -Name 'EnablePrefetcher' -Value '0' -PropertyType DWord -Force
New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -Name 'EnableSuperfetch' -Value '0' -PropertyType DWord -Force
New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -Name 'SfTracingState' -Value '0' -PropertyType DWord -Force

# 关闭Reserved Storage
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager' -Name 'ShippedWithReserves' -Value 0 -PropertyType DWord -Force

# .NET运行库设置
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\.NET') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\.NET' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\.NET' -Name 'AllowAUOnServerOS' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\.NETFramework') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\.NETFramework' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\.NETFramework' -Name 'OnlyUseLatestCLR' -Value 1 -PropertyType DWord -Force

# Win 11 No Widgets
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Dsh') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Dsh' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Dsh' -Name 'AllowNewsAndInterests' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Chat') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Chat' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Chat' -Name 'ChatIcon' -Value 3 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds' -Name 'EnableFeeds' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarMn' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAl' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds' -Name 'ShellFeedsTaskbarViewMode' -Value 2 -PropertyType DWord -Force

# DISM Config
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'CreateNewWindowsVersion' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'CBSLogCompress' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'DisableComponentBackups' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'DisableWerReporting' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'SupersededActions' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'PreserveFileCompressionState' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'NumCBSPersistLogs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'NTFSCompressPayload' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'DisableManifestCache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'TransientManifestCache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'DisableResetbase' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'CompressBackups' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'CompressMutables' -Value 0 -PropertyType DWord -Force

# Troubleshooting Wizards
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnostics') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnostics' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnostics' -Name 'EnableDiagnostics' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy' -Name 'DisableQueryRemoteServer' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy' -Name 'EnableQueryRemoteServer' -Value 0 -PropertyType DWord -Force

# Disable System Debugger (Dr. Watson)
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug' -Name 'Auto' -Value '0' -PropertyType String -Force

# Turn Off Suggested Actions
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SmartActionPlatform\SmartClipboard') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SmartActionPlatform\SmartClipboard' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SmartActionPlatform\SmartClipboard' -Name 'Disabled' -Value 1 -PropertyType DWord -Force

# Blocking Windows driver co-installer applications
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Installer' -Name 'DisableCoInstallers' -Value 1 -PropertyType DWord -Force

# Disable WFP logging - https://docs.microsoft.com/en-US/troubleshoot/windows-client/networking/lots-disk-io-writes-wfpdiag-etl-log
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BFE\Parameters\Policy\Options' -Name 'CollectNetEvents' -Value 0 -PropertyType DWord -Force

# disable usb message This device can perform faster
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Usb') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Usb' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Usb' -Name 'LegacyCheckingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Usb' -Name 'ErrorCheckingEnabled' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Shell\USB') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Shell\USB' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Shell\USB' -Name 'NotifyOnUsbErrors' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Shell\USB' -Name 'NotifyOnWeakCharger' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\USB\AutomaticSurpriseRemoval') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\USB\AutomaticSurpriseRemoval' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\USB\AutomaticSurpriseRemoval' -Name 'AttemptRecoveryFromUsbPowerDrain' -Value 0 -PropertyType DWord -Force

# 不允许启动磁盘整理
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Prefetcher' -Name 'BootFilesOptimized' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OptimalLayout' -Name 'EnableAutoLayout' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction' -Name 'Enable' -Value 'n' -PropertyType String -Force

#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\ServerManager') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\ServerManager' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\ServerManager' -Name 'DoNotOpenServerManagerAtLogon' -Value 1 -PropertyType DWord -Force

#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device' -Name 'DevicePasswordLessBuildVersion' -Value 0 -PropertyType DWord -Force

#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\Reliability') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\Reliability' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\Reliability' -Name 'ShutDownReasonOn' -Value 0 -PropertyType DWord -Force

# Turn On Auto Enhance during Video Playback
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\VideoSettings') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\VideoSettings' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\VideoSettings' -Name 'EnableAutoEnhanceDuringPlayback' -Value 1 -PropertyType DWord -Force

# 禁止bitlocker
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker' -Name 'PreventDeviceEncryption' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\BitLocker") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\BitLocker" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\BitLocker' -Name 'IsBdeDriverPresent' -Value 0 -PropertyType DWord -Force

# 禁用Windows RE恢复环境
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager' -Name 'BootExecute' -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager' -Name 'BootExecute' -Value @('') -PropertyType MultiString -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRE') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRE' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRE' -Name 'DisableSetup' -Value 1 -PropertyType DWord -Force

# https://admx.help/?Category=Windows_11_2022&Policy=Microsoft.Policies.StorageHealth::SH_AllowDiskHealthModelUpdates
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\StorageHealth') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\StorageHealth' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\StorageHealth' -Name 'AllowDiskHealthModelUpdates' -Value 0 -PropertyType DWord -Force

# No StorageSense
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\StorageSense') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\StorageSense' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\StorageSense' -Name 'AllowStorageSenseGlobal' -Value 0 -PropertyType DWord -Force

# Set a reliable 1 ms (minimum) timestamp. Only for untweaked systems (disabling it with 0 is recommended on tweaked systems).
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability' -Name 'TimeStampInterval' -Value 0 -PropertyType DWord -Force

# Disable Microsoft Store Apps Open Files in Default Desktop App
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations' -Name 'BlockFileElevation' -Value 1 -PropertyType DWord -Force

# 允许安装所有类型appx
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock' -Name 'AllowAllTrustedApps' -Value 1 -PropertyType DWord -Force

# 剪切板功能
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Clipboard' -Name 'IsClipboardSignalProducingFeatureAvailable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Clipboard' -Name 'IsCloudAndHistoryFeatureAvailable' -Value 0 -PropertyType DWord -Force

# 无离线文件服务
if ((Test-Path -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\NetCache') -ne $true) { New-Item 'HKLM:\Software\Microsoft\Windows\CurrentVersion\NetCache' -Force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows\CurrentVersion\NetCache' -Name 'Enabled' -Value 0 -PropertyType DWord -Force

# 允许摄像头使用Windows Media Foundation
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Media Foundation') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows Media Foundation' -Force };
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Media Foundation\Platform') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows Media Foundation\Platform' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Media Foundation' -Name 'EnableFrameServerMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Media Foundation\Platform' -Name 'EnableFrameServerMode' -Value 0 -PropertyType DWord -Force

# 关机是关闭激活服务延迟
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform' -Name 'InactivityShutdownDelay' -Value 15 -PropertyType DWord -Force

# 关闭注册表备份
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager' -Name 'EnablePeriodicBackup' -Value 0 -PropertyType DWord -Force

# https://www.geoffchappell.com/studies/windows/km/ntoskrnl/api/wdi/sem.htm
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WDI\Config' -Name 'SEMEnabled' -Value 0 -PropertyType DWord -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WDI\Config' -Name 'ServerName' -Force

# To Disable Snap Layouts on Top of Screen
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'EnableSnapBar' -Value 0 -PropertyType DWord -Force

# Turn ON tablet optimized taskbar
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ExpandableTaskbar' -Value 1 -PropertyType DWord -Force

# Specifies how the System responds when a user tries to install device driver files that are not digitally signed / 00 - Ignore / 01 - Warn / 02 - Block
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Driver Signing') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Driver Signing' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Driver Signing' -Name 'Policy' -Value ([byte[]](0x00)) -PropertyType Binary -Force

#
if ((Test-Path -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell') -ne $true) { New-Item 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell' -Name 'FolderType' -Value 'NotSpecified' -PropertyType String -Force

# 0 - Disable configuring the machine at boot-up
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'DSCAutomationHostEnabled' -Value 0 -PropertyType DWord -Force

# https://admx.help/?Category=Windows_11_2022&Policy=Microsoft.Policies.EdgeUI::AllowEdgeSwipe
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\EdgeUI') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\EdgeUI' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\EdgeUI' -Name 'AllowEdgeSwipe' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\EdgeUI' -Name 'DisableHelpSticker' -Value 1 -PropertyType DWord -Force

# Removing metadata tracking
Remove-Item -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata' -Recurse -Force -Verbose

# https://stealthbits.com/blog/wdigest-clear-text-passwords-stealing-more-than-a-hash/
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest' -Name 'UseLogonCredential' -Value 0 -PropertyType DWord -Force

# EarlyAppResolverStart
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'EarlyAppResolverStart' -Value 0 -PropertyType DWord -Force

# ActiveSetup
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ActiveSetupDisabled' -Value 1 -PropertyType DWord -Force

# Set LanmanWorkstation and Downloads - Optimization Configs
if ((Test-Path -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters') -ne $true) { New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'AuditSmb1Access' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'DisableBandwidthThrottling' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'EnableWsd' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters' -Name 'DisableCompression' -Value 1 -PropertyType DWord -Force

#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer' -Name 'DisablePatchUninstall' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer' -Name 'DisableRollback' -Value 0 -PropertyType DWord -Force

# Remove Mixed Reality page from Settings
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Holographic') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Holographic' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Holographic' -Name 'FirstRunSucceeded' -Value 0 -PropertyType DWord -Force

# 文件夹视图记住20000个
if ((Test-Path -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell') -ne $true) { New-Item 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell' -Name 'BagMRU Size' -Value 20000 -PropertyType DWord -Force

# 不分享到附近设备
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CDP') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CDP' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CDP' -Name 'NearShareChannelUserAuthzPolicy' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CDP' -Name 'CdpSessionUserAuthzPolicy' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CDP\SettingsPage') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CDP\SettingsPage' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CDP\SettingsPage' -Name 'BluetoothLastDisabledNearShare' -Value 0 -PropertyType DWord -Force

# 地图
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Maps' -Name 'AutoUpdateEnabled' -Value 0 -PropertyType DWord -Force

# Turn Off Start Narrator after Sign-in
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Accessibility') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Accessibility' -Force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Accessibility' -Name 'Configuration' -Value '' -PropertyType String -Force

# Explorer Animation / Shortcut Resolve Speed
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoResolveSearch' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'LinkResolveIgnoreLinkInfo' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoResolveTrack' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'TurnOffSPIAnimations' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ExtendedUIHoverTime' -Value 500 -PropertyType DWord -Force

# Automatic Sign-in after restart / automatically start previously opened programs.
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'DisableAutomaticRestartSignOn' -Value 1 -PropertyType DWord -Force

# Desktop Icon Spacing (Before per system tweaking, its too narrow by default)
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'IconVerticalSpacing' -PropertyType String -Value '-1100' -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'IconSpacing' -PropertyType String -Value '-1425' -Force

# Disable Peek
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DisablePreviewDesktop' -Value 1 -PropertyType DWord -Force

# 任务栏无多余图标
Remove-Item -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\AuxilliaryPins' -Recurse -Force;
Remove-Item -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband' -Recurse -Force;

# https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CI\Config' -Name 'VulnerableDriverBlocklistEnable' -Value 0 -PropertyType DWord -Force

# https://learn.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-coremmres-nophysicalcameraled
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\OEM\Device\Capture") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\OEM\Device\Capture" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\OEM\Device\Capture' -Name 'NoPhysicalCameraLED' -Value 1 -PropertyType DWord -Force

# 服务器版本特别设置
if ((Test-Path -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows NT\Reliability') -ne $true) { New-Item 'HKLM:\Software\Policies\Microsoft\Windows NT\Reliability' -Force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows NT\Reliability' -Name 'ShutdownReasonOn' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows NT\Reliability' -Name 'SnapShot' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows NT\CurrentVersion\MYS') -ne $true) { New-Item 'HKLM:\Software\Policies\Microsoft\Windows NT\CurrentVersion\MYS' -Force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows NT\CurrentVersion\MYS' -Name 'DisableShowAtLogon' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}' -Name 'IsInstalled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap' -Name 'IEHarden' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Server\InitialConfigurationTasks') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Server\InitialConfigurationTasks' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Server\InitialConfigurationTasks' -Name 'DoNotOpenAtLogon' -Value 1 -PropertyType DWord -Force

# 无用项目
Remove-Item -LiteralPath 'HKCU:\Software\Microsoft\EdgeUpdate' -Recurse -Force;
Remove-Item -LiteralPath 'HKCU:\Software\Microsoft\EdgeWebView' -Recurse -Force;
Remove-Item -LiteralPath 'HKCU:\Software\Classes\*\shellex\ContextMenuHandlers\ FileSyncEx' -Force;
Remove-Item -LiteralPath 'HKCU:\Software\Classes\Directory\shellex\ContextMenuHandlers\ FileSyncEx' -Force;
Remove-Item -LiteralPath 'HKCU:\Software\Classes\Directory\Background\shellex\ContextMenuHandlers\ FileSyncEx' -Force;
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run' -Name 'Acrobat Assistant 8.0' -Force
Remove-ItemProperty -LiteralPath 'HKCU:\Environment' -Name 'OneDrive' -Force
Remove-Item -LiteralPath 'HKCU:\Software\Classes\grvopen' -Recurse -Force;
Remove-Item -LiteralPath 'HKCU:\Software\Microsoft\OneDrive' -Recurse -Force;
Remove-Item -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\IrisService' -Recurse -Force;
Remove-Item -Path 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\Compressed (zipped) Folder.ZFSendToTarget' -Force
Remove-Item -Path 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\蓝牙设备.LNK' -Force
Remove-Item -Path 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\Mail Recipient.MAPIMail' -Force
Remove-Item -Path 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\文档.mydocs' -Force
Get-ChildItem 'C:\Users\Administrator\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar' | Remove-Item -Recurse -Force
Get-ChildItem 'C:\Users\Administrator\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\ImplicitAppShortcuts' | Remove-Item -Recurse -Force

###########################################
Remove-PSDrive -Name HKCR
######################################################
Start-Process -Wait -FilePath 'C:\Windows\SysWOW64\PowerRun_x64.exe' -ArgumentList '"C:\Program Files\PowerShell\7\pwsh.exe" -ExecutionPolicy Bypass -File "C:\TEMP\Setup3.ps1"'
#############################################################
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce' -Name '1' -Value 'C:\TEMP\AAFOptimusDCHAudioPack.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce' -Name '2' -Value 'C:\Program Files\NVidiaProfileInspector\nvidiaProfileInspector.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce' -Name '3' -Value 'C:\TEMP\Acrobat\autoplay.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce' -Name '4' -Value 'C:\TEMP\Startallback.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce' -Name '5' -Value 'C:\Windows\System32\cmd.exe /q /c DISM /Online /Cleanup-Image /StartComponentCleanup' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce' -Name '6' -Value 'C:\Windows\System32\cmd.exe /q /c copy "C:\Windows\Runstartuptask.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup" /y' -PropertyType String -Force
##########################################################################
Restart-Computer -Force