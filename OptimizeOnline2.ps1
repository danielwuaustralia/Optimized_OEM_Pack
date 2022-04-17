# Powershell设置
$ErrorActionPreference = "SilentlyContinue"
$ProgressPreference = "SilentlyContinue"
$ConfirmPreference = "None"
$PSModuleAutoloadingPreference = "All"
Start-Transcript -Path c:\OptimizeOnline2.txt -Force
Set-ItemProperty -path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell" EnableScripts 1 -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\Windows\PowerShell") -ne $true) { New-Item "HKCU:\Software\Policies\Microsoft\Windows\PowerShell" -force }
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\Software\Policies\Microsoft\Windows\PowerShell") -ne $true) { New-Item "HKLM:\Software\Policies\Microsoft\Windows\PowerShell" -force }
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell") -ne $true) { New-Item "HKCU:\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force

# 命令行优化
"fsutil bypassIo state C:\" | cmd
"netsh advfirewall firewall set rule group='File and Printer Sharing' new enable=Yes" | cmd
"netsh advfirewall firewall set rule group='Network Discovery' new enable=Yes" | cmd
"Netsh advfirewall set allprofile state off" | cmd
"bcdedit /set useplatformtick no" | cmd
"bcdedit /set useplatformclock no" | cmd
"bcdedit /set disabledynamictick yes" | cmd
"bcdedit /set tscsyncpolicy legacy" | cmd
"bcdedit /set allowedinmemorysettings 0" | cmd
"bcdedit /set debug No" | cmd
"bcdedit /set isolatedcontext No" | cmd
"bcdedit /set pae ForceEnable" | cmd
"bcdedit /set bootmenupolicy Legacy" | cmd
"bcdedit /set usefirmwarepcisettings No" | cmd
"bcdedit /set sos Yes" | cmd
"bcdedit /set disableelamdrivers Yes" | cmd
"bcdedit /set quietboot Yes" | cmd
"bcdedit /set x2apicpolicy Enable" | cmd
"bcdedit /set vsmlaunchtype Off" | cmd
"bcdedit /set usephysicaldestination No" | cmd
"bcdedit /set ems No" | cmd
"bcdedit /set firstmegabytepolicy UseAll" | cmd
"bcdedit /set configaccesspolicy Default" | cmd
"bcdedit /set linearaddress57 optin" | cmd
"bcdedit /set noumex Yes" | cmd
"bcdedit /set bootems No" | cmd
"bcdedit /set graphicsmodedisabled No" | cmd
"bcdedit /set extendedinput Yes" | cmd
"bcdedit /set highestmode Yes" | cmd
"bcdedit /set forcefipscrypto No" | cmd
"bcdedit /set perfmem 0" | cmd
"bcdedit /set clustermodeaddressing 1" | cmd
"bcdedit /set configflags 0" | cmd
"bcdedit /set uselegacyapicmode No" | cmd
"bcdedit /set onecpu No" | cmd
"bcdedit /set halbreakpoint No" | cmd
"bcdedit /set forcelegacyplatform No" | cmd
"bcdedit /set flightsigning Yes" | cmd
"fsutil behavior set disable8dot3 1" | cmd
"fsutil behavior set disableencryption 1" | cmd
"fsutil behavior set disablelastaccess 1" | cmd
"fsutil behavior set EncryptPagingFile 0" | cmd
"fsutil behavior set symlinkEvaluation L2R:0 R2R:0 R2L:0" | cmd
"cipher /d /s:C:\" | cmd
"netsh int tcp set global rss=enable" | cmd
"netsh int tcp set global autotuninglevel=experimental" | cmd
"netsh int tcp set global ecncapability=disable" | cmd
"netsh int tcp set global timestamps=enable" | cmd
"netsh int tcp set global initialrto=300" | cmd
"netsh int tcp set global rsc=disable" | cmd
"netsh int tcp set global fastopen=enable" | cmd
"netsh int tcp set global hystart=disable" | cmd
"netsh int tcp set global pacingprofile=off" | cmd
"netsh int ip set global minmtu=576" | cmd
"netsh int ip set global flowlabel=disable" | cmd
"netsh int tcp set supplemental internet congestionprovider=ctcp" | cmd
"netsh int tcp set supplemental internet enablecwndrestart=disable" | cmd
"netsh int ip set global icmpredirects=disabled" | cmd
"netsh int ip set global multicastforwarding=disabled" | cmd
"netsh int ip set global groupforwardedfragments=disable" | cmd
"netsh int tcp set security mpp=disabled profiles=disabled" | cmd
"netsh int tcp set heur forcews=disable" | cmd
"netsh int 6to4 set state state=enabled undoonstop=disabled" | cmd
"netsh int 6to4 set routing routing=enabled sitelocals=enabled" | cmd
"compact /CompactOs:never" | cmd
"fsutil behavior set allowextchar 1" | cmd
"fsutil behavior set Bugcheckoncorrupt 0" | cmd
"fsutil behavior set disablecompression 1" | cmd
"fsutil behavior set DisableLastAccess 1" | cmd
"fsutil behavior set encryptpagingfile 0" | cmd
"fsutil behavior set memoryusage 2" | cmd
"fsutil behavior set mftzone 2" | cmd
"fsutil resource setavailable c:" | cmd
"fsutil resource setavailable d:" | cmd
"fsutil resource setlog shrink 10 C:\" | cmd
"fsutil resource setlog shrink 10 D:\" | cmd
"fsutil resource setautoreset true c:\" | cmd
"fsutil resource setautoreset true d:\" | cmd
"fsutil usn deletejournal /d /n c:" | cmd
"fsutil usn deletejournal /d /n d:" | cmd
"powercfg -h off" | cmd
"powercfg -change -monitor-timeout-dc 0" | cmd
"powercfg -change -monitor-timeout-ac 0" | cmd
"fsutil behavior set disabledeletenotify 0" | cmd
"Auditpol /set /category:* /Success:disable" | cmd
"netsh wlan stop hostednetwork" | cmd
"netsh wlan set hostednetwork mode=disallow" | cmd
"attrib +r 'C:\ProgramData\NVIDIA Corporation\nvtopps\nvtopps.db3'" | cmd
"attrib +r 'C:\ProgramData\NVIDIA Corporation\nvtopps\nvtopps.log'" | cmd

# https://github.com/thebookisclosed/ViVe
# Enable Tabs in File Explorer
"vivetool addconfig 34370472 2" | cmd

# 根目录证书
# http://woshub.com/updating-trusted-root-certificates-in-windows-10/
# "C:\Program Files\PowerShell\7-preview\pwsh.exe" -Command "certutil.exe -f -generateSSTFromWU %SystemDrive%\TEMP\roots.sst"
Get-ChildItem -Path %SystemDrive%\TEMP\roots.sst | Import-Certificate -CertStoreLocation Cert:\LocalMachine\Root
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\SystemCertificates\ChainEngine\Config") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\SystemCertificates\ChainEngine\Config" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SystemCertificates\ChainEngine\Config' -Name 'ChainRevAccumulativeUrlRetrievalTimeoutMilliseconds' -Value 20000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SystemCertificates\ChainEngine\Config' -Name 'ChainUrlRetrievalTimeoutMilliseconds' -Value 15000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\SystemCertificates\ChainEngine\Config' -Name 'CrossCertDownloadIntervalHours' -Value 168 -PropertyType DWord -Force

# 更改TEMP文件夹位置
if ((Test-Path -LiteralPath "HKCU:\Environment") -ne $true) { New-Item "HKCU:\Environment" -force };
New-ItemProperty -LiteralPath 'HKCU:\Environment' -Name 'TEMP' -Value '%SystemDrive%\TEMP' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Environment' -Name 'TMP' -Value '%SystemDrive%\TEMP' -PropertyType ExpandString -Force

# 更改颜色配置
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\ICM\RegisteredProfiles") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\ICM\RegisteredProfiles" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\ICM\RegisteredProfiles' -Name 'sRGB' -Value 'DCI-P3-D65.icc' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\ICM\RegisteredProfiles' -Name 'camp' -Value 'D50.camp' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\ICM\RegisteredProfiles") -ne $true) { New-Item "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\ICM\RegisteredProfiles" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\ICM\RegisteredProfiles' -Name 'sRGB' -Value 'DCI-P3-D65.icc' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\ICM\RegisteredProfiles' -Name 'camp' -Value 'D50.camp' -PropertyType String -Force

# 增加环境变量
[Environment]::SetEnvironmentVariable("PATH", $Env:PATH + "; C:\Windows\SysWOW64", [EnvironmentVariableTarget]::Machine)

# Potplayer Setting
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayer64") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayer64" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayer64' -Name 'ProgramAPI' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayer64' -Name 'ProgramFolder' -Value 'C:\Program Files\PotPlayer' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayer64' -Name 'ProgramPath' -Value 'C:\Program Files\PotPlayer\PotPlayerMini64.exe' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\AtscAntenaList") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\AtscAntenaList" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\AtscCableList") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\AtscCableList" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\BMItem_0") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\BMItem_0" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\Dialog324") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\Dialog324" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\DvbcList") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\DvbcList" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\DvbsList") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\DvbsList" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\DvbtList") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\DvbtList" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0000" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0001" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0002" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0003" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0004" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0005" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0006" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0007" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0008" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0009" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0010" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0011" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0012" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0013" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0014" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0015" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0016" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0017" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0018") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\ExtCodec\0018" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\Override\0000") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\Override\0000" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\Override\0001") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\Override\0001" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\Override\0002") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\Override\0002" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\Override\0003") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\Override\0003" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0000" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0001" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0002") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\Override_Settings\0002" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\Positions") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\Positions" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\RememberFiles") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\RememberFiles" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\Settings") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\Settings" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64" -force };
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
# block potplayer ad
Add-Content -Encoding UTF8  C:\Windows\system32\drivers\etc\hosts "127.0.0.1 p1-play.edge4k.com"
Add-Content -Encoding UTF8  C:\Windows\system32\drivers\etc\hosts "127.0.0.1 p2-play.edge4k.com"
Add-Content -Encoding UTF8  C:\Windows\system32\drivers\etc\hosts "127.0.0.1 p1-play.kgslb.com"
Add-Content -Encoding UTF8  C:\Windows\system32\drivers\etc\hosts "127.0.0.1 kyson.ad.daum.net"
Add-Content -Encoding UTF8  C:\Windows\system32\drivers\etc\hosts "127.0.0.1 display.ad.daum.net"
Add-Content -Encoding UTF8  C:\Windows\system32\drivers\etc\hosts "127.0.0.1 analytics.ad.daum.net"
# Potplayer关联
if ((Test-Path -LiteralPath "HKCU:\Software\Daum\PotPlayerMini64\FileIconList") -ne $true) { New-Item "HKCU:\Software\Daum\PotPlayerMini64\FileIconList" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '110' -Value '.XSS*XSS - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '109' -Value '.XSPF*XSPF - Playlist File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '108' -Value '.WVX*WVX - Windows 媒体文件*C:\Program Files\PotPlayer\PotIcons64.dll*9' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '107' -Value '.WV*WV - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '106' -Value '.WTV*WTV - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '105' -Value '.WMX*WMX - Windows 媒体文件*C:\Program Files\PotPlayer\PotIcons64.dll*8' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '104' -Value '.WMV*WMV - Windows 媒体文件*C:\Program Files\PotPlayer\PotIcons64.dll*7' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '103' -Value '.WMP*WMP - Windows 媒体文件*C:\Program Files\PotPlayer\PotIcons64.dll*6' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '102' -Value '.WMA*WMA - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*47' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '111' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '100' -Value '.WEBM*WEBM - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '99' -Value '.WAX*WAX - Playlist File*C:\Program Files\PotPlayer\PotIcons64.dll*55' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '98' -Value '.WAV*WAV - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*70' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '97' -Value '.VTT*VTT - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '96' -Value '.VOB*VOB - DVD 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*18' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '95' -Value '.USF*USF - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '94' -Value '.TTML*TTML - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '93' -Value '.TTA*TTA - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '92' -Value '.TS*TS - MPEG2 Transport 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*33' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '91' -Value '.TRP*TRP - MPEG2 Transport 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*34' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '90' -Value '.TPR*TPR - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*35' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '89' -Value '.TP*TP - MPEG2 Transport 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*16' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '88' -Value '.TAK*TAK - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '87' -Value '.SUP*SUP - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '86' -Value '.SUB*SUB - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*76' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '85' -Value '.SSF*SSF - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '84' -Value '.SSA*SSA - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*74' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '101' -Value '.WM*WM - Windows 媒体文件*C:\Program Files\PotPlayer\PotIcons64.dll*5' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '83' -Value '.SRT*SRT - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*72' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '0' -Value '.3G2*3G2 - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*41' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '1' -Value '.3GP*3GP - 手机电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*28' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '2' -Value '.3GP2*3GP2 - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*42' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '3' -Value '.3GPP*3GPP - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*40' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '4' -Value '.AAC*AAC - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*63' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '5' -Value '.AC3*AC3 - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*62' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '6' -Value '.AIF*AIF - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '7' -Value '.AIFF*AIFF - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '8' -Value '.AMR*AMR - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*46' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '9' -Value '.AMV*AMV - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '10' -Value '.APE*APE - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*64' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '11' -Value '.ASF*ASF - Windows 媒体文件*C:\Program Files\PotPlayer\PotIcons64.dll*3' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '12' -Value '.ASS*ASS - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*73' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '13' -Value '.ASX*ASX - Windows 媒体文件*C:\Program Files\PotPlayer\PotIcons64.dll*4' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '14' -Value '.AVI*AVI - Windows 标准视频文件*C:\Program Files\PotPlayer\PotIcons64.dll*1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '15' -Value '.CDA*CDA - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '16' -Value '.CUE*CUE - Playlist File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '17' -Value '.DIVX*DIVX - 视频文件*C:\Program Files\PotPlayer\PotIcons64.dll*2' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '18' -Value '.DMSKM*DMSKM - 手机电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*31' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '19' -Value '.DPG*DPG - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '20' -Value '.DPL*DPL - Playlist File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '21' -Value '.DSF*DSF - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '22' -Value '.DTS*DTS - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*67' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '23' -Value '.DTSHD*DTSHD - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '24' -Value '.DVR-MS*DVR-MS - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '25' -Value '.EAC3*EAC3 - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '26' -Value '.EVO*EVO - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '27' -Value '.F4V*F4V - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '28' -Value '.FLAC*FLAC - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*68' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '29' -Value '.FLV*FLV - Flash(FLV) 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*32' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '30' -Value '.IDX*IDX - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*75' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '31' -Value '.IFO*IFO - DVD 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*17' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '32' -Value '.K3G*K3G - 手机电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*29' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '33' -Value '.LMP4*LMP4 - MPEG-4 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*27' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '34' -Value '.M1A*M1A - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*49' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '35' -Value '.M1V*M1V - MPEG 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*10' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '36' -Value '.M2A*M2A - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*50' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '37' -Value '.M2T*M2T - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '38' -Value '.M2TS*M2TS - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*77' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '39' -Value '.M2V*M2V - MPEG 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*11' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '40' -Value '.M3U*M3U - Playlist File*C:\Program Files\PotPlayer\PotIcons64.dll*53' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '41' -Value '.M3U8*M3U8 - Playlist File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '42' -Value '.M4A*M4A - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*51' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '43' -Value '.M4B*M4B - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*39' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '44' -Value '.M4P*M4P - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*38' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '45' -Value '.M4V*M4V - MPEG-4 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*26' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '46' -Value '.MKA*MKA - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*69' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '47' -Value '.MKV*MKV - Matroska 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*20' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '48' -Value '.MOD*MOD - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*65' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '49' -Value '.MOV*MOV - Quicktime 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*23' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '50' -Value '.MP2*MP2 - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*59' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '51' -Value '.MP2V*MP2V - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*37' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '52' -Value '.MP3*MP3 - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*60' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '53' -Value '.MP4*MP4 - MPEG-4 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*25' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '54' -Value '.MPA*MPA - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*48' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '55' -Value '.MPC*MPC - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*66' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '56' -Value '.MPE*MPE - MPEG 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*12' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '57' -Value '.MPEG*MPEG - MPEG 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*13' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '58' -Value '.MPG*MPG - MPEG 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*14' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '59' -Value '.MPL*MPL - Playlist File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '60' -Value '.MPLS*MPLS - Playlist File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '61' -Value '.MPV2*MPV2 - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*36' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '62' -Value '.MQV*MQV - QT 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*24' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '63' -Value '.MTS*MTS - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*78' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '64' -Value '.MXF*MXF - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*79' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '65' -Value '.NSR*NSR - DRM 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '66' -Value '.NSV*NSV - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '67' -Value '.OGG*OGG - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*61' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '68' -Value '.OGM*OGM - OGM 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*19' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '69' -Value '.OGV*OGV - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*80' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '70' -Value '.OPUS*OPUS - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '71' -Value '.PLS*PLS - Playlist File*C:\Program Files\PotPlayer\PotIcons64.dll*54' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '72' -Value '.PSB*PSB - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '73' -Value '.QT*QT - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*45' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '74' -Value '.RA*RA - Audio File*C:\Program Files\PotPlayer\PotIcons64.dll*52' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '75' -Value '.RAM*RAM - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*43' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '76' -Value '.RM*RM - RealMedia 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*21' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '77' -Value '.RMVB*RMVB - RealMedia 电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*22' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '78' -Value '.RPM*RPM - Video File*C:\Program Files\PotPlayer\PotIcons64.dll*44' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '79' -Value '.RT*RT - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '80' -Value '.SBV*SBV - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '81' -Value '.SKM*SKM - 手机电影文件*C:\Program Files\PotPlayer\PotIcons64.dll*30' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Daum\PotPlayerMini64\FileIconList' -Name '82' -Value '.SMI*SMI - Subtitle File*C:\Program Files\PotPlayer\PotIcons64.dll*71' -PropertyType String -Force

# LAV Filter Settings
if ((Test-Path -LiteralPath "HKCU:\Software\LAV") -ne $true) { New-Item "HKCU:\Software\LAV" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\LAV\Audio") -ne $true) { New-Item "HKCU:\Software\LAV\Audio" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\LAV\Audio\Formats") -ne $true) { New-Item "HKCU:\Software\LAV\Audio\Formats" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\LAV\Splitter") -ne $true) { New-Item "HKCU:\Software\LAV\Splitter" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\LAV\Splitter\Formats") -ne $true) { New-Item "HKCU:\Software\LAV\Splitter\Formats" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\LAV\Video") -ne $true) { New-Item "HKCU:\Software\LAV\Video" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\LAV\Video\Formats") -ne $true) { New-Item "HKCU:\Software\LAV\Video\Formats" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\LAV\Video\Output") -ne $true) { New-Item "HKCU:\Software\LAV\Video\Output" -force };
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

# Powershell Module
Import-Module PSWindowsUpdate

# XP样式鼠标
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Pin' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Person' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'UpArrow' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeWE' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeNWSE' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name '(default)' -Value '' -PropertyType String -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'AppStarting' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Arrow' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Hand' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Help' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'No' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'NWPen' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Scheme Source' -Value 0 -PropertyType DWord -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeAll' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeNESW' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeNS' -Value '' -PropertyType ExpandString -Force
# New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Wait' -Value '' -PropertyType ExpandString -Force
# macOS鼠标
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Cursors\Schemes") -ne $true) { New-Item "HKCU:\Control Panel\Cursors\Schemes" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Pin' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Pin.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Zoom-out' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Zoom-out.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Zoom-in' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Zoom-in.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'AppStarting' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Working.ani' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Arrow' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Normal.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Crosshair' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Precision.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Hand' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Link.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Help' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Help.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'IBeam' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Text.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'No' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Unavailable.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'NWPen' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Handwriting.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Scheme Source' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeAll' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Move.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeNESW' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Diagonal Resize 2.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeNS' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Vertical Resize.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeNWSE' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Diagonal Resize 1.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'SizeWE' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Horizontal Resize.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'UpArrow' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Alternate.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Wait' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Busy.ani' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name '(default)' -Value 'macOS Cursors L With Shadow Newer' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Grabbing' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Closehand.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Person' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Person.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'precisionhair' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Precision.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Pan' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Pan.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'Grab' -Value 'C:\Windows\Cursors\macosCursorsL-s-n\Move.cur' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors\Schemes' -Name 'macOS Cursors L With Shadow Newer' -Value '%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Normal.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Help.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Working.ani,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Busy.ani,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Precision.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Text.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Handwriting.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Unavailable.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Vertical Resize.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Horizontal Resize.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Diagonal Resize 1.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Diagonal Resize 2.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Move.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Alternate.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Link.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Pin.cur,%SYSTEMROOT%\Cursors\macosCursorsL-s-n\Person.cur' -PropertyType ExpandString -Force

# 桌面设置
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Desktop") -ne $true) { New-Item "HKCU:\Control Panel\Desktop" -force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'AutoColorization' -Value '0' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'MenuShowDelay' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'ForegroundLockTimeout' -Value '0' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'WaitToKillAppTimeout' -Value '2500' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'HungAppTimeout' -Value '2500' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'LowLevelHooksTimeout' -Value '2500' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'WaitToKillServiceTimeout' -Value '2500' -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'DockMoving' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'WindowArrangementActive' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'DragFullWindows' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'UserPreferencesMask' -Value ([byte[]](0x90, 0x12, 0x03, 0x80, 0x10, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'Win8DpiScaling' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'CaretWidth' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'CursorBlinkRate' -Value '200' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'AutoEndTasks' -Value 1 -PropertyType DWord -Force
# Specifies the number of times the taskbar button flashes to notify the user that the system has activated a background window
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'ForegroundFlashCount' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'ForegroundLockTimeout' -Value 0 -PropertyType DWord -Force
# Set the quality factor of the JPEG desktop wallpapers to maximum
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop' -Name 'JPEGImportQuality' -Value 100 -PropertyType DWord -Force
# No Screen Saver
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Control Panel\Desktop' -Name 'ScreenSaveActive' -Value '0' -PropertyType String -Force
# Win11 - save window location on reboot/application exit
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Control Panel\Desktop' -Name 'RestorePreviousStateRecalcBehavior' -Value '0' -PropertyType String -Force
# Win11 - no Drag Full Window
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Control Panel\Desktop' -Name 'DragFullWindows' -Value '0' -PropertyType String -Force
# Win11 - Disable_rminimize_windows_when_monitor_is_disconnected
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Control Panel\Desktop' -Name 'MonitorRemovalRecalcBehavior' -Value '0' -PropertyType String -Force
# WindowMetrics
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Desktop\WindowMetrics") -ne $true) { New-Item "HKCU:\Control Panel\Desktop\WindowMetrics" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'BorderWidth' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'CaptionFont' -Value ([byte[]](0xf4, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x05, 0x00, 0x4d, 0x00, 0x69, 0x00, 0x63, 0x00, 0x72, 0x00, 0x6f, 0x00, 0x73, 0x00, 0x6f, 0x00, 0x66, 0x00, 0x74, 0x00, 0x20, 0x00, 0x59, 0x00, 0x61, 0x00, 0x48, 0x00, 0x65, 0x00, 0x69, 0x00, 0x20, 0x00, 0x55, 0x00, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'CaptionHeight' -Value '-270' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'CaptionWidth' -Value '-270' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'IconFont' -Value ([byte[]](0xf4, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x05, 0x00, 0x4d, 0x00, 0x69, 0x00, 0x63, 0x00, 0x72, 0x00, 0x6f, 0x00, 0x73, 0x00, 0x6f, 0x00, 0x66, 0x00, 0x74, 0x00, 0x20, 0x00, 0x59, 0x00, 0x61, 0x00, 0x48, 0x00, 0x65, 0x00, 0x69, 0x00, 0x20, 0x00, 0x55, 0x00, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'IconTitleWrap' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'MenuFont' -Value ([byte[]](0xf4, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x05, 0x00, 0x4d, 0x00, 0x69, 0x00, 0x63, 0x00, 0x72, 0x00, 0x6f, 0x00, 0x73, 0x00, 0x6f, 0x00, 0x66, 0x00, 0x74, 0x00, 0x20, 0x00, 0x59, 0x00, 0x61, 0x00, 0x48, 0x00, 0x65, 0x00, 0x69, 0x00, 0x20, 0x00, 0x55, 0x00, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'MenuHeight' -Value '-270' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'MenuWidth' -Value '-270' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'MessageFont' -Value ([byte[]](0xf4, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x05, 0x00, 0x4d, 0x00, 0x69, 0x00, 0x63, 0x00, 0x72, 0x00, 0x6f, 0x00, 0x73, 0x00, 0x6f, 0x00, 0x66, 0x00, 0x74, 0x00, 0x20, 0x00, 0x59, 0x00, 0x61, 0x00, 0x48, 0x00, 0x65, 0x00, 0x69, 0x00, 0x20, 0x00, 0x55, 0x00, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'ScrollHeight' -Value '-240' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'ScrollWidth' -Value '-240' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'Shell Icon Size' -Value '32' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'SmCaptionFont' -Value ([byte[]](0xf4, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x05, 0x00, 0x4d, 0x00, 0x69, 0x00, 0x63, 0x00, 0x72, 0x00, 0x6f, 0x00, 0x73, 0x00, 0x6f, 0x00, 0x66, 0x00, 0x74, 0x00, 0x20, 0x00, 0x59, 0x00, 0x61, 0x00, 0x48, 0x00, 0x65, 0x00, 0x69, 0x00, 0x20, 0x00, 0x55, 0x00, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'SmCaptionHeight' -Value '-180' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'SmCaptionWidth' -Value '-180' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'StatusFont' -Value ([byte[]](0xf4, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x05, 0x00, 0x4d, 0x00, 0x69, 0x00, 0x63, 0x00, 0x72, 0x00, 0x6f, 0x00, 0x73, 0x00, 0x6f, 0x00, 0x66, 0x00, 0x74, 0x00, 0x20, 0x00, 0x59, 0x00, 0x61, 0x00, 0x48, 0x00, 0x65, 0x00, 0x69, 0x00, 0x20, 0x00, 0x55, 0x00, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'PaddedBorderWidth' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'AppliedDPI' -Value 96 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'IconSpacing' -Value '-1125' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'IconVerticalSpacing' -Value '-1150' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'MinAnimate' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'MaxAnimate' -Value '0' -PropertyType String -Force
# 无任何动画
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
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\Themes' -Name 'DefaultApplied' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation' -Name 'DefaultApplied' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\DWM") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\DWM" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\DWM' -Name 'EnableAeroPeek' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\DWM' -Name 'AlwaysHibernateThumbnails' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\DWM' -Name 'CompositionPolicy' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'IconsOnly' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'UseOLEDTaskbarTransparency' -Value 0 -PropertyType DWord -Force
# This policy setting controls the appearance of window animations such as those found when restoring, minimizing, and maximizing windowss
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM' -Name 'DisallowAnimations' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM' -Name 'DWMWA_TRANSITIONS_FORCEDISABLED' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DWM' -Name 'AnimationAttributionEnabled' -Value 0 -PropertyType DWord -Force
Remove-Item -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent" -recurse -force;
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'AppsUseLightTheme' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'SystemUsesLightTheme' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'EnabledBlurBehind' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'EnableTransparency' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'DisableAcrylicBackgroundOnLogon' -Value 1 -PropertyType DWord -Force
Remove-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Personalization' -Name 'PersonalColors_Accent' -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Personalization' -Name 'NoLockScreen' -Value 1 -PropertyType DWord -Force

# Vista颜色样式
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Colors") -ne $true) { New-Item "HKCU:\Control Panel\Colors" -force -ea SilentlyContinue };
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

# 系统区域
if ((Test-Path -LiteralPath "HKCU:\Control Panel\International\Geo") -ne $true) { New-Item "HKCU:\Control Panel\International\Geo" -force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\Geo' -Name 'Nation' -Value '244' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\Geo' -Name 'Name' -Value 'US' -PropertyType String -Force

# 关闭系统还原
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore' -Name 'DisableSR' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore' -Name 'DisableConfig' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore' -Name 'RPSessionInterval' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore' -Name 'DisableSR' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore' -Name 'DisableConfig' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\DeviceInstall\Settings") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\DeviceInstall\Settings" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\DeviceInstall\Settings' -Name 'DisableSystemRestore' -Value 1 -PropertyType DWord -Force

# 页面文件优化
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'ClearPageFileAtShutdown' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'DisablePagingExecutive' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'LargeSystemCache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'SystemPages' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'FeatureSettings' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'SwapfileControl' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'FeatureSettingsOverride' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'FeatureSettingsOverrideMask' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'EnableCfg' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'NonPagedPoolSize' -Value 192 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'PagedPoolSize' -Value 192 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'PoolUsageMaximum' -Value 192 -PropertyType DWord -Force
# 页面文件大小
if ((Test-Path -LiteralPath "HKLM:\System\ControlSet001\Control\Session Manager\Memory Management") -ne $true) { New-Item "HKLM:\System\ControlSet001\Control\Session Manager\Memory Management" -force };
New-ItemProperty -LiteralPath 'HKLM:\System\ControlSet001\Control\Session Manager\Memory Management' -Name 'PagingFiles' -Value @("c:\pagefile.sys 20480 20480") -PropertyType MultiString -Force
# 关闭硬盘预先存取
If (!(Test-Path -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters")) { New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" -ItemType Directory -Force }
New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -Name 'EnableBoottrace' -Value '0' -PropertyType DWord -Force
New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -Name 'EnablePrefetcher' -Value '0' -PropertyType DWord -Force
New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -Name 'EnableSuperfetch' -Value '0' -PropertyType DWord -Force

# 关闭Reserved Storage
Set-WindowsReservedStorageState -State Disabled
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager' -Name 'ShippedWithReserves' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager' -Name 'PassedPolicy' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager' -Name 'MiscPolicyInfo' -Value 2 -PropertyType DWord -Force

# disable location and sensors
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' -Name 'DisableSensors' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' -Name 'DisableLocation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' -Name 'DisableLocationScripting' -Value 1 -PropertyType DWord -Force

# disable access to notifications
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications' -Name 'NoCloudApplicationNotification' -Value 1 -PropertyType DWord -Force

# disable access to messaging
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Messaging") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Messaging" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Messaging' -Name 'AllowMessageSync' -Value 0 -PropertyType DWord -Force

# disable activity history
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableActivityFeed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'PublishUserActivities' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'UploadUserActivities' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'AllowCrossDeviceClipboard' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'AllowClipboardHistory' -Value 0 -PropertyType DWord -Force

if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications' -Name 'NoCloudApplicationNotification' -Value 1 -PropertyType DWord -Force

# disable find my device
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\FindMyDevice") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\FindMyDevice" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FindMyDevice' -Name 'AllowFindMyDevice' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Settings\FindMyDevice") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Settings\FindMyDevice" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Settings\FindMyDevice' -Name 'LocationSyncEnabled' -Value 0 -PropertyType DWord -Force

# 从我的电脑移除多余的文件夹
# Remove Desktop from This PC
Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" -Force -Verbose
# Remove Documents from This PC
Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}" -Force -Verbose
# Remove Downloads from This PC
Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B }" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905 - 0323 - 4b02-9826-5d99428e115f}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905 - 0323 - 4b02-9826-5d99428e115f}" -Force -Verbose
# Remove Music from This PC
Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" -Force -Verbose
# Remove Pictures from This PC
Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" -Force -Verbose
# Remove Videos from This PC
Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" -Force -Verbose
Remove-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" -Force -Verbose
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag") -ne $true) { New-Item "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag' -Name 'ThisPCPolicy' -Value 'Hide' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\CLSID\{ 031E4825 - 7B94-4dc3-B131-E946B44C8DD5 }\ShellFolder") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\CLSID\ { 031E4825 - 7B94-4dc3-B131-E946B44C8DD5 }\ShellFolder" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{ 031E4825 - 7B94-4dc3-B131-E946B44C8DD5 }\ShellFolder") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\ { 031E4825 - 7B94-4dc3-B131-E946B44C8DD5 }\ShellFolder" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\CLSID\{ 323CA680-C24D-4099-B94D-446DD2D7249E }\ShellFolder") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\CLSID\ { 323CA680-C24D-4099-B94D-446DD2D7249E }\ShellFolder" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{ 323CA680-C24D-4099-B94D-446DD2D7249E }\ShellFolder") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\ { 323CA680-C24D-4099-B94D-446DD2D7249E }\ShellFolder" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\CLSID\{ 679f85cb-0220-4080-b29b-5540cc05aab6 }\ShellFolder") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\CLSID\ { 679f85cb-0220-4080-b29b-5540cc05aab6 }\ShellFolder" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{ 679f85cb-0220-4080-b29b-5540cc05aab6 }\ShellFolder") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\ { 679f85cb-0220-4080-b29b-5540cc05aab6 }\ShellFolder" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}\ShellFolder' -Name 'Attributes' -Value -1332739827 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}\ShellFolder' -Name 'Attributes' -Value -1332739827 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{323CA680-C24D-4099-B94D-446DD2D7249E}\ShellFolder' -Name 'Attributes' -Value -1598029568 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{323CA680-C24D-4099-B94D-446DD2D7249E}\ShellFolder' -Name 'Attributes' -Value -1598029568 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}\ShellFolder' -Name 'Attributes' -Value -1605369856 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}\ShellFolder' -Name 'Attributes' -Value -1605369856 -PropertyType DWord -Force

# 无回收站图标
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{645FF040-5081-101B-9F08-00AA002F954E}' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu' -Name '{645FF040-5081-101B-9F08-00AA002F954E}' -Value 1 -PropertyType DWord -Force

# 关闭SmartScreen
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableSmartScreen' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Browser\AllowSmartScreen") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Browser\AllowSmartScreen" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Browser\AllowSmartScreen' -Name 'value' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'SmartScreenEnabled' -Value 'off' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen' -Name 'ConfigureAppInstallControlEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen' -Name 'ConfigureAppInstallControl' -Value 'Anywhere' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter' -Name 'EnabledV8' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter' -Name 'EnabledV9' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Edge") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Edge" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Edge' -Name 'SmartScreenEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter' -Name 'EnabledV9' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3' -Name '2301' -Value 3 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost' -Name 'EnableWebContentEvaluation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost' -Name 'PreventOverride' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Browser") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Browser" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Browser' -Name 'AllowSmartScreen' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'SmartScreenEnabled' -Value 'Off' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Edge") -ne $true) { New-Item "HKCU:\Software\Microsoft\Edge" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Edge' -Name 'SmartScreenEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Edge' -Name 'SmartScreenPuaEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe' -Name 'Debugger' -Value 'C:\Windows\system32\systray.exe' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows Security Health\State") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows Security Health\State" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows Security Health\State' -Name 'AppAndBrowser_StoreAppsSmartScreenOff' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows Security Health\State' -Name 'AppAndBrowser_EdgeSmartScreenOff' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows Security Health\State' -Name 'AppAndBrowser_PhishingSensorsOff' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows Security Health\State' -Name 'AccountProtection_MicrosoftAccount_Disconnected' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows Security Health\State' -Name 'AccountProtection_WindowsHello_Available' -Value 0 -PropertyType DWord -Force

# 删除无用菜单
Remove-Item -Path "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\Compressed (zipped) Folder.ZFSendToTarget" -Force -Recurse
Remove-Item -Path "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\Mail Recipient.MAPIMail" -Force -Recurse
Remove-Item -Path "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\蓝牙文件传送.LNK" -Force -Recurse
Remove-Item -Path "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\文档.mydocs" -Force -Recurse
#  Remove Turn on BitLocker
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\Drive\shell\encrypt-bde") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\Drive\shell\encrypt-bde" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\Drive\shell\encrypt-bde-elev") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\Drive\shell\encrypt-bde-elev" -force -ea SilentlyContinue };
#  Remove Give access to
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\*\shellex\ContextMenuHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Directory\Background\shellex\ContextMenuHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Directory\shellex\CopyHookHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Drive\shellex\ContextMenuHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Drive\shellex\PropertySheetHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\LibraryFolder\background\shellex\ContextMenuHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\UserLibraryFolder\shellex\ContextMenuHandlers\Sharing" -recurse -force;
#  Remove Pin to Start
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Folder\shellex\ContextMenuHandlers\PintoStartScreen" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\exefile\shellex\ContextMenuHandlers\PintoStartScreen" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Microsoft.Website\ShellEx\ContextMenuHandlers\PintoStartScreen" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\mscfile\shellex\ContextMenuHandlers\PintoStartScreen" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\*\shellex\ContextMenuHandlers\{a2a9545d-a0c2-42b4-9708-a0b2badd77c8}" -recurse -force;
#  Remove Pin to Quick access
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Folder\shell\pintohome" -recurse -force;
#  Remove Include in library
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Folder\ShellEx\ContextMenuHandlers\Library Location" -recurse -force;
#  Remove Share
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\*\shellex\ContextMenuHandlers\ModernSharing" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing" -recurse -force;
#  Remove Restore previous versions from Properties tab
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Drive\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" -recurse -force;
#  Remove Restore previous versions from context menu
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Drive\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" -recurse -force;
#  Remove Restore previous versions from any policies
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\PreviousVersions") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\PreviousVersions" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\PreviousVersions") -ne $true) { New-Item "HKCU:\Software\Policies\Microsoft\PreviousVersions" -force -ea SilentlyContinue };
#  Remove Cast to Device
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" -force -ea SilentlyContinue };
#  Remove New .rtf .zip
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\.rtf\ShellNew" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\.zip\CompressedFolder\ShellNew" -recurse -force;
#  Remove Edit with Paint 3D
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\SystemFileAssociations\.3mf\Shell\3D Edit" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\SystemFileAssociations\.bmp\Shell\3D Edit" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\SystemFileAssociations\.fbx\Shell\3D Edit" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\SystemFileAssociations\.gif\Shell\3D Edit" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\SystemFileAssociations\.jfif\Shell\3D Edit" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\SystemFileAssociations\.jpe\Shell\3D Edit" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\SystemFileAssociations\.jpeg\Shell\3D Edit" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\SystemFileAssociations\.jpg\Shell\3D Edit" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\SystemFileAssociations\.png\Shell\3D Edit" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\SystemFileAssociations\.tif\Shell\3D Edit" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\SystemFileAssociations\.tiff\Shell\3D Edit" -recurse -force;
#  Remove Create a new video
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\AppX43hnxtbyyps62jhe9sqpdzxn1790zetc\Shell\ShellCreateVideo") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\AppX43hnxtbyyps62jhe9sqpdzxn1790zetc\Shell\ShellCreateVideo" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\AppXk0g4vb8gvt7b93tg50ybcy892pge6jmt\Shell\ShellCreateVideo") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\AppXk0g4vb8gvt7b93tg50ybcy892pge6jmt\Shell\ShellCreateVideo" -force -ea SilentlyContinue };
#  Remove Edit with Photos
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\AppX43hnxtbyyps62jhe9sqpdzxn1790zetc\Shell\ShellEdit") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\AppX43hnxtbyyps62jhe9sqpdzxn1790zetc\Shell\ShellEdit" -force -ea SilentlyContinue };
#  Remove Burn disc image
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Windows.IsoFile\shell\burn" -recurse -force;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Drive\shell\encrypt-bde' -Name 'LegacyDisable' -Value '' -PropertyType String -recurse -force;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Drive\shell\encrypt-bde-elev' -Name 'LegacyDisable' -Value '' -PropertyType String -recurse -force;
Remove-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'NoPreviousVersionsPage' -recurse -force;
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'NoPreviousVersionsPage' -recurse -force;
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PreviousVersions' -Name 'DisableLocalPage' -recurse -force;
Remove-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\PreviousVersions' -Name 'DisableLocalPage' -recurse -force;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{7AD84985-87B4-4a16-BE58-8B72A5B390F7}' -Value 'Play to Menu' -PropertyType String -recurse -force;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{1d27f844-3a1f-4410-85ac-14651078412d}' -Value '' -PropertyType String -recurse -force;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\AppX43hnxtbyyps62jhe9sqpdzxn1790zetc\Shell\ShellCreateVideo' -Name 'ProgrammaticAccessOnly' -Value '' -PropertyType String -recurse -force;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\AppXk0g4vb8gvt7b93tg50ybcy892pge6jmt\Shell\ShellCreateVideo' -Name 'ProgrammaticAccessOnly' -Value '' -PropertyType String -recurse -force;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\AppX43hnxtbyyps62jhe9sqpdzxn1790zetc\Shell\ShellEdit' -Name 'ProgrammaticAccessOnly' -Value '' -PropertyType String -recurse -force;

# AdvertisingInfo
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo' -Name 'DisabledByGroupPolicy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo' -Name 'Id' -Value 'null' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings' -Name 'AudioCaptureEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings' -Name 'CameraCaptureEnabledByDefault' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings' -Name 'CursorCaptureEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings' -Name 'MicrophoneCaptureEnabledByDefault' -Value 0 -PropertyType DWord -Force

# winlogon
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'AutoRestartShell' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'DisableCAD' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'EnableFirstLogonAnimation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'ARSOUserConsent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'DisableLockWorkstation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name 'SFCDisable' -Value 0 -PropertyType DWord -Force

# disable advertising info and accessing my language list
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo' -Name 'DisabledByGroupPolicy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableCdp' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo' -Name 'Enabled' -Value 0 -PropertyType DWord -Force

# ContentDeliveryManager
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\PushToInstall") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\PushToInstall" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PushToInstall' -Name 'DisablePushToInstall' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -force -ea SilentlyContinue };
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

#　允许Windows Script Host
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows Script Host\Settings") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows Script Host\Settings" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Script Host\Settings' -Name 'Enabled' -Value 1 -PropertyType DWord -Force

# Disable suggestions on how I can set up my device
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement' -Name 'ScoobeSystemSettingEnabled' -Value 0 -PropertyType DWord -Force

# Add This PC And Control Panel to Desktop
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{20D04FE0-3AEA-1069-A2D8-08002B30309D}' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu' -Name '{20D04FE0-3AEA-1069-A2D8-08002B30309D}' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu' -Name '{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}' -Value 0 -PropertyType DWord -Force

# Advanced Explorer Policy
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShowFrequent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShowCloudFilesInQuickAccess' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ExplorerStartupTraceRecorded' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'EnableAutoTray' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'GlobalAssocChangedCounter' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'DesktopProcess' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShowRecent' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -force };
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
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\StartMode") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\StartMode" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\StartMode' -Name 'ActualStartMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\StartMode' -Name 'Start_ShowClassicMode' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People' -Name 'PeopleBand' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MultitaskingView\AllUpView") -ne $true) { New-Item "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MultitaskingView\AllUpView" -force };
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MultitaskingView\AllUpView' -Name 'AllUpView' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MultitaskingView\AllUpView' -Name 'Remove TaskView' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\Teams") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\Teams" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\Teams' -Name 'PreventInstallationFromMsi' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\Teams") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\Teams" -force -ea };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications' -Name 'ConfigureChatAutoInstall' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\PersonalMenu") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\PersonalMenu" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\PersonalMenu' -Name 'Enabled' -Value 1 -PropertyType DWord -Force

# 文件管理器历史记录
Remove-Item -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" -force

# 广告追踪
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack' -Name 'DiagTrackStatus' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack' -Name 'DiagTrackAuthorization' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack' -Name 'DisableAutomaticTelemetryKeywordReporting' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack' -Name 'TelemetryServiceDisabled' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowTelemetry") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowTelemetry" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\System\AllowTelemetry' -Name 'value' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection' -Name 'AllowTelemetry' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection' -Name 'MaxTelemetryAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection' -Name 'MicrosoftEdgeDataOptIn' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'AITEnable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'DisableInventory' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'AllowTelemetry' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'DoNotShowFeedbackNotifications' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'DisableEnterpriseAuthProxy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'DisableOneSettingsDownloads' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'AllowCommercialDataPipeline' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'AllowDesktopAnalyticsProcessing' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'AllowDeviceNameInTelemetry' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'DisableTelemetryOptInChangeNotification' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'DisableTelemetryOptInSettingsUx' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'MaxTelemetryAllowed' -Value 0 -PropertyType DWord -Force

# 文件传输窗口
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager' -Name 'EnthusiastMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager' -Name 'ConfirmationCheckBoxDoForAll' -Value 0 -PropertyType DWord -Force

# 强制Explorer刷新
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\CLSID") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\CLSID" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID' -Name 'DontRefresh' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\CLSID\{ BDEADE7F-C265-11D0-BCED-00A0C90AB50F }\Instance") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\CLSID\ { BDEADE7F-C265-11D0-BCED-00A0C90AB50F }\Instance" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{BDEADE7F-C265-11D0-BCED-00A0C90AB50F}\Instance' -Name 'DontRefresh' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{ BDEADE7F-C265-11D0-BCED-00A0C90AB50F }\Instance") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\ { BDEADE7F-C265-11D0-BCED-00A0C90AB50F }\Instance" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{BDEADE7F-C265-11D0-BCED-00A0C90AB50F}\Instance' -Name 'DontRefresh' -Value 0 -PropertyType DWord -Force

# 无小娜功能
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Cortana") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Cortana" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Cortana' -Name 'IsAvailable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Cortana' -Name 'CortanaInstalledAtSomePoint' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows Search") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows Search" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows Search' -Name 'CortanaConsent' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows Search") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows Search" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Search' -Name 'AllowCortana' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -force -ea SilentlyContinue };
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
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Name 'SearchboxTaskbarMode' -Value 0 -PropertyType DWord -Force

# Prevent access to 16-bit applications
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat' -Name 'VDMDisallowed' -Value 1 -PropertyType DWord -Force

# Do not display the recycle bin files delete confirmation dialog
$ShellState = Get-ItemPropertyValue -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShellState
$ShellState[4] = 55
New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShellState -PropertyType Binary -Value $ShellState -Force

# Control Panel
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel' -Name 'AllItemsIconView' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel' -Name 'StartupPage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel' -Name 'ForceClassicControlPanel' -Value 1 -PropertyType DWord -Force

# Do not add the "- Shortcut" suffix to the file name of created shortcuts
if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates))
{ New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates -Force }
New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates -Name ShortcutNameTemplate -PropertyType String -Value "%s.lnk" -Force

# Use the Print screen button to open screen snipping
New-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name PrintScreenKeyForSnippingEnabled -PropertyType DWord -Value 1 -Force

# No quick edit for Console
if ((Test-Path -LiteralPath "HKCU:\Console") -ne $true) { New-Item "HKCU:\Console" -force };
New-ItemProperty -LiteralPath 'HKCU:\Console' -Name 'QuickEdit' -Value 0 -PropertyType DWord -Force

# Turn on Storage Sense
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -force };
if ((Test-Path -LiteralPath "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\ { 12D482B0-0934-4041-8562-B378BFB15347 }") -ne $true) { New-Item "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\ { 12D482B0-0934-4041-8562-B378BFB15347 }" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy' -Name '256' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy' -Name '1024' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy' -Name '01' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy' -Name '2048' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy' -Name '04' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy' -Name '08' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{12D482B0-0934-4041-8562-B378BFB15347}' -Name 'Triggers' -Value 'hex(3):17,00,00,00,00,00,00,00,00,D8,B4,72,38,C5,11,00,FF,FF,FF,FF,FF,FF,FF,FF,00,D8,B4,72,38,C5,11,00,00,00,00,00,00,00,00,00,7E,A1,40,43,48,48,48,48,CA,72,23,FC,48,48,48,48,28,00,00,00,48,48,48,48,41,00,75,00,74,00,68,00,65,00,6E,00,74,00,69,00,63,00,61,00,74,00,65,00,64,00,20,00,55,00,73,00,65,00,72,00,73,00,00,00,00,00,00,00,48,48,48,48,00,48,48,48,48,48,48,48,00,48,48,48,48,48,48,48,04,00,00,00,48,48,48,48,10,00,00,00,48,48,48,48,01,02,00,00,00,00,00,05,20,00,00,00,21,02,00,00,00,00,00,00,48,48,48,48,58,00,00,00,48,48,48,48,00,00,00,00,FF,FF,FF,FF,84,03,00,00,FF,FF,FF,FF,07,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,49,00,43,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,01,00,00,00,00,00,00,00,00,00,01,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{12D482B0-0934-4041-8562-B378BFB15347}' -Name 'Hash' -Value 'hex(3):3E,8C,5F,E6,F1,FB,A0,C2,D4,3B,13,80,A4,E7,4F,7F,79,E4,D7,82,48,7C,D8,AA,45,07,99,15,41,17,F1,C2' -PropertyType String -Force

# 蓝屏报告
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'AutoReboot' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'CrashDumpEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'EnableLogFile' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'DisplayParameters' -Value 1 -PropertyType DWord -Force

# Never notify The User Account Control (UAC) behavior
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'ConsentPromptBehaviorAdmin' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'ConsentPromptBehaviorUser' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableSecureUIAPaths' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'ValidateAdminCodeSignatures' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'FilterAdministratorToken' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'LocalAccountTokenFilterPolicy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableLUA' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableInstallerDetection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'PromptOnSecureDesktop' -Value 0 -PropertyType DWord -Force

# 无睡眠按钮
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings' -Name 'ShowSleepOption' -Value 0 -PropertyType DWord -Force

# Turn on access to mapped drives from app running with elevated permissions with Admin Approval Mode enabled
New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLinkedConnections -PropertyType DWord -Value 1 -Force

# Do not let Windows manage my default printer
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" -Name LegacyDefaultPrinterMode -PropertyType DWord -Value 1 -Force

# Use the latest installed .NET runtime for all apps
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\.NETFramework") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\.NETFramework" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\.NETFramework") -ne $true) { New-Item "HKLM:\SOFTWARE\WOW6432Node\Microsoft\.NETFramework" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\.NETFramework' -Name 'OnlyUseLatestCLR' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\.NETFramework' -Name 'OnlyUseLatestCLR' -Value 1 -PropertyType DWord -Force

# 关闭F1帮助按钮
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Typelib\{ 8cec5860-07a1-11d9-b15e-000d56bfe6ee }\1.0\0") -ne $true) { New-Item "HKCU:\Software\Classes\Typelib\ { 8cec5860-07a1-11d9-b15e-000d56bfe6ee }\1.0\0" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Typelib\{ 8cec5860-07a1-11d9-b15e-000d56bfe6ee }\1.0\0\win32") -ne $true) { New-Item "HKCU:\Software\Classes\Typelib\ { 8cec5860-07a1-11d9-b15e-000d56bfe6ee }\1.0\0\win32" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Typelib\{ 8cec5860-07a1-11d9-b15e-000d56bfe6ee }\1.0\0\win64") -ne $true) { New-Item "HKCU:\Software\Classes\Typelib\ { 8cec5860-07a1-11d9-b15e-000d56bfe6ee }\1.0\0\win64" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win64' -Name '(default)' -Value '' -PropertyType String -Force

# Enable Num Lock at startup
New-ItemProperty -LiteralPath 'Registry::\HKEY_USERS\.DEFAULT\Control Panel\Keyboard' -Name 'InitialKeyboardIndicators' -Value '2147483650' -PropertyType String -Force
New-ItemProperty -LiteralPath 'Registry::\HKEY_USERS\S-1-5-18\Control Panel\Keyboard' -Name 'InitialKeyboardIndicators' -Value '2147483650' -PropertyType String -Force
New-ItemProperty -LiteralPath 'Registry::\HKEY_USERS\S-1-5-19\Control Panel\Keyboard' -Name 'InitialKeyboardIndicators' -Value '2147483650' -PropertyType String -Force
New-ItemProperty -LiteralPath 'Registry::\HKEY_USERS\S-1-5-20\Control Panel\Keyboard' -Name 'InitialKeyboardIndicators' -Value '2147483650' -PropertyType String -Force
New-ItemProperty -LiteralPath 'Registry::\HKCU\Control Panel\Keyboard' -Name 'InitialKeyboardIndicators' -Value '2147483650' -PropertyType String -Force

# Don't use AutoPlay for all media and devices
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" -Name "DisableAutoplay" -PropertyType DWord -Value "1" -Force

# Disable thumbnail cache removal
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache") -ne $true) { New-Item "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache' -Name 'Autorun' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache' -Name 'Autorun' -Value 0 -PropertyType DWord -Force

if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config' -Name 'DownloadMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config' -Name 'DODownloadMode' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings' -Name 'DownloadMode' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate") -ne $true) { New-Item "HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate" -force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate' -Name 'SetDisablePauseUXAccess' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate' -Name 'UpdateNotificationLevel' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate' -Name 'DisableWUfBSafeguards' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update' -Name 'EnableFeaturedSoftware' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971F918-A847-4430-9279-4A52D1EFE18D") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971F918-A847-4430-9279-4A52D1EFE18D" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services' -Name 'DefaultService' -Value '7971f918-a847-4430-9279-4a52d1efe18d' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971F918-A847-4430-9279-4A52D1EFE18D' -Name 'RegisteredWithAU' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\BITS") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\BITS" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\BITS' -Name 'DisablePeerCachingClient' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\BITS' -Name 'DisablePeerCachingServer' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\BITS' -Name 'EnableBandwidthLimits' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\BITS' -Name 'EnableBITSMaxBandwidth' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'DetectionFrequency' -Value 20 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'DetectionFrequencyEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'EnableFeaturedSoftware' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'AllowMUUpdateService' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'AUPowerManagement' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'IncludeRecommendedUpdates' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'NoAutoRebootWithLoggedOnUsers' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'NoAUAsDefaultShutdownOption' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'UseWUServer' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\Software\Microsoft\WindowsUpdate\UX\Settings") -ne $true) { New-Item "HKLM:\Software\Microsoft\WindowsUpdate\UX\Settings" -force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\WindowsUpdate\UX\Settings' -Name 'SmartActiveHoursState' -Value 0 -PropertyType DWord -Force

# 去除提示 Your PC does not meet the mínimum hardware requirements for Windows 11. Your device is not eligible to join the Windows Insider Programo n Windows 11. 
if ((Test-Path -LiteralPath "HKCU:\Control Panel\UnsupportedHardwareNotificationCache") -ne $true) { New-Item "HKCU:\Control Panel\UnsupportedHardwareNotificationCache" -force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\UnsupportedHardwareNotificationCache' -Name 'SV1' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\UnsupportedHardwareNotificationCache' -Name 'SV2' -Value 0 -PropertyType DWord -Force

# Disabling automatic driver update
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Name 'DontPromptForWindowsUpdate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Name 'DontSearchWindowsUpdate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Name 'DriverUpdateWizardWuSearchEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching' -Name 'SearchOrderConfig' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'ExcludeWUDriversInQualityUpdate' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\PolicyState") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\PolicyState" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\PolicyState' -Name 'ExcludeWUDrivers' -Value 1 -PropertyType DWord -Force

# no auto update for windows store
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore' -Name 'AutoDownload' -Value 2 -PropertyType DWord -Force

# 加入Windows Insider
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\Applicability") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\Applicability" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\Applicability' -Name 'EnablePreviewBuilds' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\Applicability' -Name 'BranchName' -Value 'Dev' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\Applicability' -Name 'Ring' -Value 'External' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\Applicability' -Name 'ContentType' -Value 'Mainline' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\Applicability' -Name 'IsBuildFlightingEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\Applicability' -Name 'BranchBackup' -Value 'Dev' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\Applicability' -Name 'TestFlags' -Value 32 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility' -Name 'UIHiddenElements_Rejuv' -Value 254 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\SLS\Programs\RingExternal") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\SLS\Programs\RingExternal" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\SLS\Programs\RingExternal' -Name 'Enabled' -Value '1' -PropertyType String -Force

# 错误报告
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\Windows Error Reporting") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\Windows Error Reporting" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting' -Name 'AutoApproveOSDumps' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting' -Name 'ConfigureArchive' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting' -Name 'DefaultConsent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting' -Name 'DisableArchive' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting' -Name 'DontSendAdditionalData' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\Windows Error Reporting' -Name 'LoggingDisabled' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\SQMClient\IE") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\SQMClient\IE" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\SQMClient\Reliability") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\SQMClient\Reliability" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\SQMClient\Windows") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\SQMClient\Windows" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SQMClient\IE' -Name 'CEIPEnable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SQMClient\IE' -Name 'SqmLoggerRunning' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SQMClient\Reliability' -Name 'CEIPEnable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SQMClient\Reliability' -Name 'SqmLoggerRunning' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SQMClient\Windows' -Name 'CEIPEnable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SQMClient\Windows' -Name 'DisableOptinExperience' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\SQMClient\Windows' -Name 'SqmLoggerRunning' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance' -Name 'MaintenanceDisabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance' -Name 'WakeUp' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics' -Name 'EnabledExecution' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name 'ErrorPort' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name 'DontSendAdditionalData' -Value '1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent' -Name 'DefaultConsent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent' -Name '(default)' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent' -Name 'NewUserDefaultConsent' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'DoReport' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'IncludeKernelFaults' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'AllOrNone' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'IncludeMicrosoftApps' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'IncludeWindowsApps' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'IncludeShutdownErrs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'DWFileTreeRoot' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'DWNoExternalURL' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'DWNoFileCollection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'DWNoSecondLevelCollection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'DWReporteeName' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting' -Name 'ForceQueueMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW' -Name 'DWFileTreeRoot' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW' -Name 'DWNoExternalURL' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW' -Name 'DWNoFileCollection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW' -Name 'DWNoSecondLevelCollection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW' -Name 'DWReporteeName' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW' -Name 'ForceQueueMode' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting\Consent") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting\Consent" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'LoggingDisabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'AutoApproveOSDumps' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'BypassDataThrottling' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'BypassNetworkCostThrottling' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'BypassPowerThrottling' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'DefaultConsent' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'DontSendAdditionalData' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting' -Name 'DontShowUI' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting\Consent' -Name 'DefaultConsent' -Value 0 -PropertyType DWord -Force

# disable speech recognition
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy") -ne $true) { New-Item "HKCU:\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy' -Name 'HasAccepted' -Value 0 -PropertyType DWord -Force

# disable search permissions
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings' -Name 'IsMSACloudSearchEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings' -Name 'IsAADCloudSearchEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings' -Name 'SafeSearchMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings' -Name 'IsDeviceSearchHistoryEnabled' -Value 0 -PropertyType DWord -Force

# disable inking & typing personalization
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Input\TIPC") -ne $true) { New-Item "HKCU:\Software\Microsoft\Input\TIPC" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Input\TIPC' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Personalization\Settings") -ne $true) { New-Item "HKCU:\Software\Microsoft\Personalization\Settings" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Personalization\Settings' -Name 'AcceptedPrivacyPolicy' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Personalization\Settings' -Name 'RestrictImplicitInkCollection' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\InputPersonalization") -ne $true) { New-Item "HKCU:\Software\Microsoft\InputPersonalization" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\InputPersonalization\TrainedDataStore") -ne $true) { New-Item "HKCU:\Software\Microsoft\InputPersonalization\TrainedDataStore" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputPersonalization' -Name 'RestrictImplicitInkCollection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputPersonalization' -Name 'RestrictImplicitTextCollection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputPersonalization' -Name 'HarvestContacts' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputPersonalization\TrainedDataStore' -Name 'HarvestContacts' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputPersonalization\TrainedDataStore' -Name 'RestrictImplicitInkCollection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputPersonalization\TrainedDataStore' -Name 'RestrictImplicitTextCollection' -Value 1 -PropertyType DWord -Force

# Enable hardware-accelerated GPU scheduling
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" -Name HwSchMode -PropertyType DWord -Value 2 -Force

# Disable the "Open", "Print", and "Edit" items if more than 15 files selected
Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "MultipleInvokePromptMinimum" -Force

# Explorer Policy
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'NoUseStoreOpenWith' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'NoDataExecutionPrevention' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'HideRecentlyAddedApps' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'DisableGraphRecentItems' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'ShowRunasDifferentuserinStart' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Explorer' -Name 'NoUseStoreOpenWith' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Explorer' -Name 'DisableSearchBoxSuggestions' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Explorer' -Name 'DisableThumbsDBOnNetworkFolders' -Value 1 -PropertyType DWord -Force

# Hide the "Open in Windows Terminal" item in the folders context menu
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{9F156763-7844-4DC4-B2B1-901F640F5155}' -Value '' -PropertyType String -Force

# Determines in milliseconds how long the System waits for services to stop after notifying the service that the System is shutting down
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control' -Name 'WaitToKillServiceTimeout' -Value '25000' -PropertyType String -Force

# GameConfigStore
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'AppCaptureEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'KGLToGCSUpdatedRevision' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'KGLRevision' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'AudioCaptureEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'GameDVR_Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'HistoricalCaptureEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\GameBar") -ne $true) { New-Item "HKCU:\Software\Microsoft\GameBar" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'ShowStartupPanel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'GamePanelStartupTipIndex' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'AllowAutoGameMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'AutoGameModeEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'UseNexusForGameBarEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\GameBar' -Name 'ShowGameModeNotifications' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR' -Name 'AllowgameDVR' -Value 0 -PropertyType DWord -Force
Remove-Item -LiteralPath "HKCU:\System\GameConfigStore\Children" -force -Recurse
Remove-Item -LiteralPath "HKCU:\System\GameConfigStore\Parents" -force -Recurse
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\GameUX\ServiceLocation") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\GameUX\ServiceLocation" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\GameUX\ServiceLocation' -Name 'Games' -Value '0.0.0.0' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\System\GameConfigStore") -ne $true) { New-Item "HKCU:\System\GameConfigStore" -force };
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_FSEBehaviorMode' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_FSEBehavior' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_HonorUserFSEBehaviorMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_DXGIHonorFSEWindowsCompatible' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_EFSEFeatureFlags' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\System\GameConfigStore' -Name 'GameDVR_DSEBehavior' -Value 2 -PropertyType DWord -Force
# 为单独程序关闭全屏优化
if ((Test-Path -LiteralPath "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers") -ne $true) { New-Item "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" -force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'D:\\Steam\\steamapps\\Common\\Counter-Strike Global Offensive\\csgo.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'C:\\Users\\Administrator\\AppData\\Local\\Google\\Chrome SxS\\Application\\chrome.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'C:\\Program Files\\PotPlayer\\PotPlayerMini64.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'C:\\Program Files\\mpvnet\\mpvnet.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'C:\\Program Files\\Microsoft VS Code Insiders\\Code - Insiders.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'D:\\Steam\\steam.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'D:\\RockStarLauncher\\Launcher.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' -Name 'D:\\UbisoftConnect\\UbisoftConnect.exe' -Value '~ DISABLEDXMAXIMIZEDWINDOWEDMODE' -PropertyType String -Force

# Disable sensor features, such as screen auto rotation
If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors")) { New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" -Force }
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" -Name "DisableSensors" -Type DWord -Value 1 -Force

# Disable implicit administrative shares
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "AutoShareServer" -Type DWord -Value 0 -Force
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "AutoShareWks" -Type DWord -Value 0 -Force

#  Configure Power Plan Settings
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Power") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\Power" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'CsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'EnergyEstimationEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'HiberbootEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'HibernateEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power' -Name 'PlatformAoAcOverride' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\d639518a-e56d-4345-8af2-b9f32fb26109") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\d639518a-e56d-4345-8af2-b9f32fb26109" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\d639518a-e56d-4345-8af2-b9f32fb26109' -Name 'Attributes' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100' -Name 'Attributes' -Value 2 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling' -Name 'PowerThrottlingOff' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters\1a75888d-6e63-4978-b88e-b92747df5e8c") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters\1a75888d-6e63-4978-b88e-b92747df5e8c" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters' -Name 'DeviceSelectiveSuspended' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters' -Name 'SelectiveSuspendEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters' -Name 'SelectiveSuspendSupported' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters\1a75888d-6e63-4978-b88e-b92747df5e8c' -Name 'LEExtendedAdvertisingOptIn' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_8087&PID_0026\5&423ce07&0&14\Device Parameters\1a75888d-6e63-4978-b88e-b92747df5e8c' -Name 'MsftHciExtensionsTelemetryOptIn' -Value 0 -PropertyType DWord -Force

# Disable power management in connected standby mode
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" -force };
# High Performance Burst
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ControlSet001\Control\Power\Profile\Events\{ 54533251 - 82be-4824-96c1-47b60b740d00 }\ { 0DA965DC-8FCF-4c0b-8EFE-8DD5E7BC959A }\ { 7E01ADEF-81E6-4e1b-8075-56F373584694 }") -ne $true) { New-Item "HKLM:\SYSTEM\ControlSet001\Control\Power\Profile\Events\ { 54533251 - 82be-4824-96c1-47b60b740d00 }\ { 0DA965DC-8FCF-4c0b-8EFE-8DD5E7BC959A }\ { 7E01ADEF-81E6-4e1b-8075-56F373584694 }" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ControlSet001\Control\Power\Profile\Events\{54533251-82be-4824-96c1-47b60b740d00}\{0DA965DC-8FCF-4c0b-8EFE-8DD5E7BC959A}\{7E01ADEF-81E6-4e1b-8075-56F373584694}' -Name 'TimeLimitInSeconds' -Value 2 -PropertyType DWord -Force

# no volume down when detect other audio
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Multimedia\Audio") -ne $true) { New-Item "HKCU:\Software\Microsoft\Multimedia\Audio" -force }
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Multimedia\Audio' -Name 'UserDuckingPreference' -Value 3 -PropertyType DWord -Force

# New PC name
# Rename-Computer -NewName 'Alienware'
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName' -Name 'ComputerName' -Value 'ALIENWARE' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName' -Name 'ComputerName' -Value 'ALIENWARE' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'NV Hostname' -Value 'Alienware' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'Hostname' -Value 'Alienware' -PropertyType String -Force

# Keyboard and Mouse
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Mouse") -ne $true) { New-Item "HKCU:\Control Panel\Mouse" -force }
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'ActiveWindowTracking' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'Beep' -Value 'No' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'MouseSensitivity' -Value '10' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'MouseSpeed' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'MouseThreshold1' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'MouseThreshold2' -Value '0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Mouse' -Name 'MouseTrails' -Value '0' -PropertyType String -Force
Set-ItemProperty -Path 'HKCU:\Control Panel\Mouse' 'SmoothMouseXCurve' ([byte[]](0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0xCC, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x99, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x66, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x33, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00)) -Force
Set-ItemProperty -Path 'HKCU:\Control Panel\Mouse' 'SmoothMouseXCurve' ([byte[]](0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00)) -Force
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Cursors") -ne $true) { New-Item "HKCU:\Control Panel\Cursors" -force }
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'ContactVisualization' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'GestureVisualization' -Value 0 -PropertyType DWord -Force

if ((Test-Path -LiteralPath "HKCU:\Control Panel\Keyboard") -ne $true) { New-Item "HKCU:\Control Panel\Keyboard" -force }
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Keyboard' -Name 'KeyboardDelay' -Value '0' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed' -Name 'CursorSensitivity' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed' -Name 'CursorUpdateInterval' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed' -Name 'IRRemoteNavigationDelta' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' -Name 'AttractionRectInsetInDIPS' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' -Name 'DistanceThresholdInDIPS' -Value 40 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' -Name 'MagnetismDelayInMilliseconds' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' -Name 'MagnetismUpdateIntervalInMilliseconds' -Value 16 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' -Name 'VelocityInDIPSPerSecond' -Value 360 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\mouhid\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouhid\Parameters' -Name 'UseOnlyMice' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouhid\Parameters' -Name 'TreatAbsolutePointerAsAbsolute' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouhid\Parameters' -Name 'TreatAbsoluteAsRelative' -Value 0 -PropertyType DWord -Force
# Disable CursorSuppression
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableCursorSuppression' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\pci\Parameters' -Name 'ASPMOptOut' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\usbflags") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\usbflags" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\usbflags' -Name 'fid_D1Latency' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\usbflags' -Name 'fid_D2Latency' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\usbflags' -Name 'fid_D3Latency' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Accessibility") -ne $true) { New-Item "HKCU:\Control Panel\Accessibility" -force };
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Accessibility\AudioDescription") -ne $true) { New-Item "HKCU:\Control Panel\Accessibility\AudioDescription" -force };
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Accessibility\Blind Access") -ne $true) { New-Item "HKCU:\Control Panel\Accessibility\Blind Access" -force };
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Accessibility\HighContrast") -ne $true) { New-Item "HKCU:\Control Panel\Accessibility\HighContrast" -force };
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Accessibility\Keyboard Preference") -ne $true) { New-Item "HKCU:\Control Panel\Accessibility\Keyboard Preference" -force };
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Accessibility\Keyboard Response") -ne $true) { New-Item "HKCU:\Control Panel\Accessibility\Keyboard Response" -force };
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Accessibility\MouseKeys") -ne $true) { New-Item "HKCU:\Control Panel\Accessibility\MouseKeys" -force };
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Accessibility\On") -ne $true) { New-Item "HKCU:\Control Panel\Accessibility\On" -force };
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Accessibility\SlateLaunch") -ne $true) { New-Item "HKCU:\Control Panel\Accessibility\SlateLaunch" -force };
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Accessibility\StickyKeys") -ne $true) { New-Item "HKCU:\Control Panel\Accessibility\StickyKeys" -force };
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Accessibility\ToggleKeys") -ne $true) { New-Item "HKCU:\Control Panel\Accessibility\ToggleKeys" -force };
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

# Tcpip Parameters
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -force }
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'DelayedAckFrequency' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'DelayedAckTicks' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'CongestionAlgorithm' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'MultihopSets' -Value 15 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'FastCopyReceiveThreshold' -Value 16384 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'FastSendDatagramThreshold' -Value 16384 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'UseDomainNameDevolution' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'DisableTaskOffload' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'Tcp1323Opts' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'EnableDca' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'EnableTCPA' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'NetDMA' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'DisableRss' -Value 1 -PropertyType DWord -Force
# Set DefaultTTL to 64: It is a limit to the time and number of hops/routers a packet will travel before being discarded. A number that's too small (below 32) risks packets being discarded before reaching their destination. A number that's too large (over 128) will cause delay in when lost IP packets are discarded.
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'DefaultTTL' -Value 64 -PropertyType DWord -Force
# Set MaxUserPort to 65534: Short lived (ephemeral) TCP/IP ports above 1024 are allocated as needed by the OS. The Windows 8/2012 defaults are usually sufficient under normal network load. However, under heavy network load it may be necessary to adjust this registry setting to increase port availability.
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'MaxUserPort' -Value 65534 -PropertyType DWord -Force
# Set TCPTimedWaitDelay to 30: Combine with the above tweak to decrease the time to wait before reclaiming unused ports.
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'TcpTimedWaitDelay' -Value 30 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters" -force }
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'DefaultReceiveWindow' -Value 16384 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'DefaultSendWindow' -Value 16384 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'FastCopyReceiveThreshold' -Value 16384 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'FastSendDatagramThreshold' -Value 16384 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'IgnorePushBitOnReceives' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'NonBlockingSendSpecialBuffering' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters' -Name 'DisableRawSecurity' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\WinSock2\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\WinSock2\Parameters" -force }
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WinSock2\Parameters' -Name 'Ws2_32NumHandleBuckets' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\mrxsmb") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\mrxsmb" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer' -Name 'EnableOplocks' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer' -Name 'OplocksDisabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mrxsmb' -Name 'OplocksDisabled' -Value 1 -PropertyType DWord -Force

# 跳过Win11升级检查
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\Setup\LabConfig") -ne $true) { New-Item "HKLM:\SYSTEM\Setup\LabConfig" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig' -Name 'BypassCPUCheck' -Value 1 -PropertyType DWord
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig' -Name 'BypassDiskCheck' -Value 1 -PropertyType DWord
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig' -Name 'BypassRAMCheck' -Value 1 -PropertyType DWord
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig' -Name 'BypassSecureBootCheck' -Value 1 -PropertyType DWord
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig' -Name 'BypassStorageCheck' -Value 1 -PropertyType DWord
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\LabConfig' -Name 'BypassTPMCheck' -Value 1 -PropertyType DWord
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\Setup\MoSetup") -ne $true) { New-Item "HKLM:\SYSTEM\Setup\MoSetup" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\Setup\MoSetup' -Name 'AllowUpgradesWithUnsupportedTPMOrCPU' -Value 1 -PropertyType DWord -Force

# Host Resolution Priority Tweak
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" -force }
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'DnsPriority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'HostsPriority' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'LocalPriority' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider' -Name 'NetbtPriority' -Value 7 -PropertyType DWord -Force

# Turnoff NCSI
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbeContent' -Value 'Microsoft NCSI' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbeContentV6' -Value 'Microsoft NCSI' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbeHost' -Value 'www.msftncsi.com' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbeHostV6' -Value 'ipv6.msftncsi.com' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbePath' -Value 'ncsi.txt' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'ActiveWebProbePathV6' -Value 'ncsi.txt' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet' -Name 'EnableActiveProbing' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" -force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Name 'UseDomainNameDevolution' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Name 'DisableSmartNameResolution' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Name 'EnableMDNS' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator' -Name 'UseGlobalDNS' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator' -Name 'NoActiveProbe' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator' -Name 'DisablePassivePolling' -Value 0 -PropertyType DWord -Force

# Disabling Link-Local Multicast Name Resolution (LLMNR)
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient' -Name 'EnableMulticast' -Value 0 -PropertyType DWord -Force

# https://admx.help/?Category=Windows_10_2016&Policy=Microsoft.Policies.QualityofService::QosTimerResolution
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched" -force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched' -Name 'TimerResolution' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Psched' -Name 'NonBestEffortLimit' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Psched' -Name 'MaxOutstandingSends' -Value -294967296 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" -force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming' -Name 'ServiceTypeGuaranteed' -Value 46 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming' -Name 'ServiceTypeNetworkControl' -Value 56 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" -force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming' -Name 'ServiceTypeGuaranteed' -Value 46 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming' -Name 'ServiceTypeNetworkControl' -Value 56 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping" -force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping' -Name 'ServiceTypeGuaranteed' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping' -Name 'ServiceTypeNetworkControl' -Value 7 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS' -Name 'Tcp Autotuning Level' -Value 'Experimental' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS' -Name 'Application DSCP Marking Request' -Value 'Allowed' -PropertyType String -Force

# 安装新字体
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts' -Name '苹方-简 中黑体 (TrueType)' -Value 'PingFangSC-17.d1e2-Medium.otf' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Fonts' -Name '苹方-简 中黑体 (TrueType)' -Value 'PingFangSC-17.d1e2-Medium.otf' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts' -Name '更紗黑體 CL & 更纱黑体 SC & 更紗黑體 TC & 更紗黑體 HC & Sarasa Gothic J & Sarasa Gothic K & 更紗黑體 UI CL & 更纱黑体 UI SC & 更紗黑體 UI TC & 更紗黑體 UI HC & Sarasa UI J & Sarasa UI K & 等距更紗黑體 CL & 等距更纱黑体 SC & 等距更紗黑體 TC & 等距更紗黑體 HC & Sarasa Mono J & Sarasa Mono K & 等距更紗黑體 Slab CL & 等距更纱黑体' -Value 'sarasa-regular.ttc' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Fonts' -Name '更紗黑體 CL & 更纱黑体 SC & 更紗黑體 TC & 更紗黑體 HC & Sarasa Gothic J & Sarasa Gothic K & 更紗黑體 UI CL & 更纱黑体 UI SC & 更紗黑體 UI TC & 更紗黑體 UI HC & Sarasa UI J & Sarasa UI K & 等距更紗黑體 CL & 等距更纱黑体 SC & 等距更紗黑體 TC & 等距更紗黑體 HC & Sarasa Mono J & Sarasa Mono K & 等距更紗黑體 Slab CL & 等距更纱黑体' -Value 'sarasa-regular.ttc' -PropertyType String -Force

# 微软雅黑
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts' -Name 'SimSun & NSimSun (TrueType)' -Value 'msyh.ttc' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes' -Name 'MS Shell Dlg 2' -Value 'Microsoft YaHei' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes' -Name 'MS Shell Dlg' -Value 'Microsoft YaHei' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes' -Name 'SimSun' -Value 'Microsoft YaHei' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes' -Name 'NSimSun' -Value 'Microsoft YaHei' -PropertyType String -Force

# Sound
if ((Test-Path -LiteralPath "HKCU:\Control Panel\Sound") -ne $true) { New-Item "HKCU:\Control Panel\Sound" -force };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Sound' -Name 'Beep' -Value 'no' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Sound' -Name 'ExtendedSounds' -Value 'no' -PropertyType String -Force

# disable diagnostics & feedback
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy' -Name 'PrivacyConsentSettingsVersion' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Siuf\Rules") -ne $true) { New-Item "HKCU:\Software\Microsoft\Siuf\Rules" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Siuf\Rules' -Name 'PeriodInNanoSeconds' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Siuf\Rules' -Name 'NumberOfSIUFInPeriod' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\Windows\CloudContent") -ne $true) { New-Item "HKCU:\Software\Policies\Microsoft\Windows\CloudContent" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableTailoredExperiencesWithDiagnosticData' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableCloudOptimizedContent' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'ConfigureWindowsSpotlight' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableThirdPartySuggestionss' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsConsumerFeatures' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsSpotlightFeatures' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsSpotlightOnActionCenter' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsSpotlightWindowsWelcomeExperience' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\CloudContent' -Name 'IncludeEnterpriseSpotlight' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\Windows\EdgeUI") -ne $true) { New-Item "HKCU:\Software\Policies\Microsoft\Windows\EdgeUI" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\EdgeUI' -Name 'DisableMFUTracking' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\EdgeUI' -Name 'DisableHelpSticker' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\EdgeUI' -Name 'DisableRecentApps' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\EdgeUI' -Name 'ShowCommandPromptOnWinX' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsConsumerFeatures' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableSoftLanding' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableCloudOptimizedContent' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'AllowProjectionToPC' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableTailoredExperiencesWithDiagnosticData' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableThirdPartySuggestions' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -Name 'DisableWindowsSpotlightFeatures' -Value 0 -PropertyType DWord -Force

# Turn Autocorrect Off
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\TabletTip\1.7") -ne $true) { New-Item "HKCU:\Software\Microsoft\TabletTip\1.7" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableAutocorrection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableAutoShiftEngage' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableDoubleTapSpace' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableKeyAudioFeedback' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnablePredictionSpaceInsertion' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableSpellchecking' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'EnableTextPrediction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\TabletTip\1.7' -Name 'TipbandDesiredVisibility' -Value 0 -PropertyType DWord -Force

# Disable File History
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\FileHistory") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\FileHistory" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\FileHistory' -Name 'Disabled' -Value 1 -PropertyType DWord -Force

# Disable Reconnect Network Drives Notification
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\NetworkProvider") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\NetworkProvider" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\NetworkProvider' -Name 'RestoreConnection' -Value 0 -PropertyType DWord -Force

# Registry Automatically Back up Disable
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager" -force };
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager' -Name 'EnablePeriodicBackup' -Force

# no Hibernate Option in start menu
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings' -Name 'ShowHibernateOption' -Value 0 -PropertyType DWord -Force

# No Startup Delay
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize' -Name 'StartupDelayInMSec' -Value 0 -PropertyType DWord -Force

# Apply default User account picture to all accounts
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'UseDefaultTile' -Value 1 -PropertyType DWord -Force

# Disable Low Disk Space Alerts
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoLowDiskSpaceChecks' -Value 1 -PropertyType DWord -Force

# Win 11 - No Widgets
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Dsh") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Dsh" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Dsh' -Name 'AllowNewsAndInterests' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests\AllowNewsAndInterests") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests\AllowNewsAndInterests" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests\AllowNewsAndInterests' -Name 'value' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarDa' -Value 0 -PropertyType DWord -Force

# https://forums.mydigitallife.net/threads/windows-10-hotfix-repository.57050/page-622#post-1655591
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'DisableResetbase' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'SupersededActions' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'CBSLogCompress' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'DisableComponentBackups' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'NumCBSPersistLogs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' -Name 'TransientManifestCache' -Value 1 -PropertyType DWord -Force

# turnoff Font streaming
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableFontProviders' -Value 0 -PropertyType DWord -Force

# Disable Virtualization-based Security (VBS) & Opt out of HVCI enablement
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\CredentialGuard") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\CredentialGuard" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard' -Name 'EnableVirtualizationBasedSecurity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\CredentialGuard' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableVirtualization' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios' -Name 'HypervisorEnforcedCodeIntegrity' -Value 0 -PropertyType DWord -Force

# Process Mitigations
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'DpcWatchdogProfileOffset' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'MitigationOptions' -Value ([byte[]](0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x20, 0x02, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'MitigationAuditOptions' -Value ([byte[]](0x20, 0x00, 0x00, 0x20, 0x20, 0x20, 0x22, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'DisableExceptionChainValidation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'KernelSEHOPEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'MaximumSharedReadyQueueSize' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'DisableAutoBoost' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'DistributeTimers' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'DpcTimeout' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'IdealDpcRate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'MaximumDpcQueueDepth' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'MinimumDpcRate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'ThreadDpcEnable' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'AdjustDpcThreshold' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name 'DpcWatchdogPeriod' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\FVE") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\FVE" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\FVE' -Name 'DisableExternalDMAUnderLock' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name 'HVCIMATRequired' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name 'EnableVirtualizationBasedSecurity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'DisableHHDEP' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager' -Name 'ProtectionMode' -Value 0 -PropertyType DWord -Force

# 输入法
# New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -Name 'PinYin' -Value 'C:\Windows\System32\ctfmon.exe' -PropertyType String -Force
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
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'English Switch Key' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableSimplifiedTraditionalOutputSwitch' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'Enable Cloud Candidate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'Enable Dynamic Candidate Ranking' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableExtraDomainType' -Value 1 -PropertyType DWord -Force
Remove-Item -LiteralPath "HKCU:\Control Panel\Input Method\Hot Keys\00000104" -force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableHap' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'HalfWidthInputModeByDefault' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableSuperAbbreviatedPinyin' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\Settings\CHS' -Name 'EnableOpenEmoticonSymbolView' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1") -ne $true) { New-Item "HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\InputMethod\CandidateWindow\CHS\1' -Name 'ShowSymbolViewActionButton' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Keyboard Layout\Toggle") -ne $true) { New-Item "HKCU:\Keyboard Layout\Toggle" -force };
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Toggle' -Name 'Language Hotkey' -Value '3' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Toggle' -Name 'Layout Hotkey' -Value '3' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Toggle' -Name 'Hotkey' -Value '3' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\Control Panel\International\User Profile") -ne $true) { New-Item "HKCU:\Control Panel\International\User Profile" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'ShowAutoCorrection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'ShowTextPrediction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'HttpAcceptLanguageOptOut' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'InputMethodOverride' -Value '0409:00000409' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile' -Name 'UserLocaleFromLanguageProfileOptOut' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Control Panel\International\User Profile System Backup") -ne $true) { New-Item "HKCU:\Control Panel\International\User Profile System Backup" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile System Backup' -Name 'ShowAutoCorrection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile System Backup' -Name 'ShowTextPrediction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\International\User Profile System Backup' -Name 'UserLocaleFromLanguageProfileOptOut' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Input\Settings") -ne $true) { New-Item "HKCU:\Software\Microsoft\Input\Settings" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Input\Settings' -Name 'EnableHwkbAutocorrection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Input\Settings' -Name 'EnableHwkbTextPrediction' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Input\Settings' -Name 'InsightsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Input\Settings' -Name 'IsVoiceTypingKeyEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Input\Settings' -Name 'MultilingualEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Input\Settings' -Name 'VoiceTypingEnabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\InputMethod\Settings\CHS") -ne $true) { New-Item "HKCU:\Software\Policies\Microsoft\InputMethod\Settings\CHS" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\InputMethod\Settings\Shared") -ne $true) { New-Item "HKCU:\Software\Policies\Microsoft\InputMethod\Settings\Shared" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\InputMethod\Settings\CHS' -Name 'Enable Cloud Candidate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\InputMethod\Settings\Shared' -Name 'Enable Cloud Candidate' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Keyboard Layout\Preload") -ne $true) { New-Item "HKCU:\Keyboard Layout\Preload" -force };
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Preload' -Name '1' -Value '00000409' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Keyboard Layout\Preload' -Name '2' -Value '00000804' -PropertyType String -Force

# Blocking Windows driver co-installer applications
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Installer' -Name 'DisableCoInstallers' -Value 1 -PropertyType DWord -Force

# Disable WFP logging - https://docs.microsoft.com/en-US/troubleshoot/windows-client/networking/lots-disk-io-writes-wfpdiag-etl-log
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BFE\Parameters\Policy\Options' -Name 'CollectNetEvents' -Value 0 -PropertyType DWord -Force

# Office Setting
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common' -Name 'UI Theme' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common' -Name 'QMEnable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common' -Name 'sendcustomerdata' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common' -Name 'SendCustomerDataOptIn' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common' -Name 'SendCustomerDataOptInReason' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common' -Name 'SuppressMarkAsFinalPrompt' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Security\FileBlock' -Name 'OpenInProtectedView' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations' -Name 'AllowNetworkLocations' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations\Location0' -Name 'Path' -Value '%APPDATA%\Microsoft\Templates' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations\Location0' -Name 'AllowSubfolders' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations\Location0' -Name 'Description' -Value '0' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\FileIO") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\FileIO" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\general") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\general" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\HelpViewer") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\HelpViewer" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\Identity") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\Identity" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\internet") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\internet" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\LanguageResources") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\LanguageResources" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\Open Find") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\Open Find" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\PTWatson") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\PTWatson" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\Research\Options") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\Research\Options" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\Research\Options\Favorite") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\Research\Options\Favorite" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\FileIO' -Name 'AgeOutPolicy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\FileIO' -Name 'DisableLongTermCaching' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\general' -Name 'FileFormatBallotBoxTelemetryConfirmationEventSent' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\general' -Name 'LastAutoSavePurgeTime' -Value 27317620 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\general' -Name 'SkyDriveSignInOption' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\general' -Name 'PreferCloudSaveLocations' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\general' -Name 'FileFormatBallotBoxTelemetrySent' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\HelpViewer' -Name 'UseOnlineContent' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\Identity' -Name 'FBAHostActionList' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\Identity' -Name 'TCSettingBlockFBAPrompts' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\internet' -Name 'useonlinecontent' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\LanguageResources' -Name 'UIFallbackSource' -Value 200 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\LanguageResources' -Name 'HelpLanguageTag' -Value 'zh-CN' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\PTWatson' -Name 'PTWOptIn' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\Research\Options' -Name 'DiscoveryNeedOptIn' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\Research\Options\Favorite' -Name '(default)' -Value '{00000000-0000-0000-0000-000000000000}' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\security\filevalidation") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\security\filevalidation" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\Toolbars\Word") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\Toolbars\Word" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\wef\trustedcatalogs") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\wef\trustedcatalogs" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Word") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Word" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Word\Options") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Word\Options" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Word\Security") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Word\Security" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Word\Security\FileBlock") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Word\Security\FileBlock" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations\Location0") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations\Location0" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations\Location1") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations\Location1" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\Common\Security") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\Common\Security" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\Common\UserInfo") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\Common\UserInfo" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Shared Tools\Proofing Tools\1.0\Office") -ne $true) { New-Item "HKCU:\Software\Microsoft\Shared Tools\Proofing Tools\1.0\Office" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\VBA\Forms3\Controls") -ne $true) { New-Item "HKCU:\Software\Microsoft\VBA\Forms3\Controls" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\VBA\Trusted") -ne $true) { New-Item "HKCU:\Software\Microsoft\VBA\Trusted" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\security\filevalidation' -Name 'disablereporting' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\Toolbars\Word' -Name 'WordIsSearchBoxAlwaysCollapsed' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\wef\trustedcatalogs' -Name 'disableomexcatalogs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word' -Name 'AutoSaveByDefaultUserChoice' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'RenderForMonitorDpi' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'DisableBootToOfficeStart' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'DOC-PATH' -Value 'D:\Downloads\' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'AUTOSAVE-PATH' -Value 'C:\Windows\Temp\' -PropertyType ExpandString -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'AutosaveInterval' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'IMEControlActive' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'AutoHideRuler' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'AnimateScreenMove' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'ShowStats' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'VisiFlm' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Options' -Name 'DraftFont' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Security' -Name 'VBAWarnings' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Security' -Name 'AccessVBOM' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView' -Name 'DisableAttachmentsInPV' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView' -Name 'DisableInternetFilesInPV' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView' -Name 'DisableUnsafeLocationsInPV' -Value 1 -PropertyType DWord -Force
Remove-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations\Location1' -Name 'AllowSubFolders' -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations\Location1' -Name 'AllowSubfolders' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\Common\Security' -Name 'UFIControls' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\Common\UserInfo' -Name 'UserName' -Value 'Daniel' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\Common\UserInfo' -Name 'UserInitials' -Value 'Dan' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Shared Tools\Proofing Tools\1.0\Office' -Name 'WordSpellingOptions' -Value 5 -PropertyType DWord -Force
Remove-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\VBA\Forms3\Controls' -Name 'EnableActiveXControlArchitetureIndependent' -Force
Remove-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\VBA\Forms3\Controls' -Name 'EnableActiveXControlMSWebBrowserArchiteturePersistenceIssue' -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Office\16.0\osm" -Name Enablelogging -Type DWord -Value 0 -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Office\16.0\osm" -Name EnableUpload -Type DWord -Value 0 -Force
# No more forced O365 login requests
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Outlook\AutoDiscover") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Outlook\AutoDiscover" -force s };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Outlook\AutoDiscover' -Name 'ExcludeExplicitO365Endpoint' -Value 1 -PropertyType DWord -Force
# Enable new office design
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\word") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\word" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\excel") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\excel" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\onenote") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\onenote" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\outlook") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\outlook" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\powerpoint") -ne $true) { New-Item "HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\powerpoint" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\word' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\word' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\word' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\excel' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\excel' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\excel' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\onenote' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\onenote' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\onenote' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\outlook' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\outlook' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\outlook' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\powerpoint' -Name 'Microsoft.Office.UXPlatform.FluentSVRefresh' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\powerpoint' -Name 'Microsoft.Office.UXPlatform.RibbonTouchOptimization' -Value 'true' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Common\ExperimentConfigs\ExternalFeatureOverrides\powerpoint' -Name 'Microsoft.Office.UXPlatform.FluentSVRibbonOptionsMenu' -Value 'true' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\office\16.0\common") -ne $true) { New-Item "HKCU:\Software\Policies\Microsoft\office\16.0\common" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\office\16.0\common' -Name 'insiderslabbehavior' -Value 1 -PropertyType DWord -Force

# Disable Peer-to-Peer Networking
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Peernet' -Name 'Disabled' -Value 1 -PropertyType DWord -Force

# do not notifiy USB deivce error
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Shell\USB") -ne $true) { New-Item "HKCU:\Software\Microsoft\Shell\USB" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Shell\USB' -Name 'NotifyOnUsbErrors' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Shell\USB' -Name 'NotifyOnWeakCharger' -Value 1 -PropertyType DWord -Force

# no startup delay
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'AsyncScriptDelay' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableLogonScriptDelay' -Value 0 -PropertyType DWord -Force

# https://www.tenforums.com/tutorials/103059-enable-disable-diagnostic-data-viewer-windows-10-a.html
# New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\EventTranscriptKey' -Name 'EnableEventTranscript' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" -force };

# no boot optimize
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction' -Name 'Enable' -Value 'n' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Prefetcher' -Name 'BootFilesOptimized' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OptimalLayout' -Name 'EnableAutoLayout' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics' -Name 'EnabledExecution' -Value 0 -PropertyType DWord -Force

# Disable UwpStartupTasks
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableUwpStartupTasks' -Value 0 -PropertyType DWord -Force

# never auto logoff
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'InactivityTimeoutSecs' -Value 0 -PropertyType DWord -Force

# Disable LLTDIO driver and Responder RSPNDR driver
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LLTD") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LLTD" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LLTD' -Name 'EnableRspndr' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\LLTD' -Name 'EnableLLTDIO' -Value 0 -PropertyType DWord -Force

# Disable Microsoft Store Apps Open Files in Default Desktop App
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations' -Name 'BlockFileElevation' -Value 1 -PropertyType DWord -Force

# Removing Kernel Blacklist
Remove-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\BlockList\Kernel" -Recurse -Force -Verbose

# disable open file warning
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations' -Name 'ModRiskFileTypes' -Value '.bat;.exe;.reg;.vbs;.chm;.msi;.js;.cmd' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations' -Name 'ModRiskFileTypes' -Value '.bat;.exe;.reg;.vbs;.chm;.msi;.js;.cmd' -PropertyType String -Force

#　Edge浏览器
# 禁止重装
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\EdgeUpdate") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\EdgeUpdate" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\EdgeUpdate' -Name 'DoNotUpdateToEdgeWithChromium' -Value 1 -PropertyType DWord -Force
# Fake MDM-Enrollment - Key 1 of 2 - let a Win10 Machine "feel" MDM-Managed
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Enrollments\FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF ") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Enrollments\FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF " -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Enrollments\FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF' -Name 'EnrollmentState' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Enrollments\FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF' -Name 'EnrollmentType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Enrollments\FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF' -Name 'IsFederated' -Value 0 -PropertyType DWord -Force
# Fake MDM-Enrollment - Key 2 of 2 - let a Win10 Machine "feel" MDM-Managed
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Provisioning\OMADM\Accounts\FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Provisioning\OMADM\Accounts\FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Provisioning\OMADM\Accounts\FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF' -Name 'Flags' -Value 14089087 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Provisioning\OMADM\Accounts\FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF' -Name 'AcctUId' -Value '0x000000000000000000000000000000000000000000000000000000000000000000000000' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Provisioning\OMADM\Accounts\FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF' -Name 'RoamingCount' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Provisioning\OMADM\Accounts\FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF' -Name 'SslClientCertReference' -Value 'MY;User;0000000000000000000000000000000000000000' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Provisioning\OMADM\Accounts\FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF' -Name 'ProtoVer' -Value '1.2' -PropertyType String -Force
# Edge策略
# https://docs.microsoft.com/en-us/deployedge/microsoft-edge-policies
# https://docs.microsoft.com/en-us/deployedge/microsoft-edge-update-policies
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Edge\RestoreOnStartupURLs") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Edge\RestoreOnStartupURLs" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Edge' -Name 'DefaultSearchProviderEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Edge' -Name 'DefaultSearchProviderSearchURL' -Value '{google:baseURL}search?q={searchTerms}&{google:RLZ}{google:originalQueryForSuggestion}{google:assistedQueryStats}{google:searchFieldtrialParameter}{google:searchClient}{google:sourceId}ie={inputEncoding}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Edge' -Name 'DefaultSearchProviderName' -Value 'Google-Policy-Locked' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Edge' -Name 'RestoreOnStartup' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Edge' -Name 'ShowHomeButton' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Edge' -Name 'HomepageLocation' -Value 'about:blank' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Edge' -Name 'NewTabPageLocation' -Value 'about:blank' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Edge\RestoreOnStartupURLs' -Name '1' -Value 'about:blank' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Addons") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Addons" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FlipAhead") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FlipAhead" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Addons' -Name 'FlashPlayerEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FlipAhead' -Name 'FPEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main' -Name 'FormSuggest Passwords' -Value 'no' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter' -Name 'EnabledV9' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI' -Name 'ShowSearchHistory' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Addons") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Addons" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\AppLinks") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\AppLinks" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\CaretBrowsing") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\CaretBrowsing" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FlipAhead") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FlipAhead" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\New Windows") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\New Windows" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Privacy") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Privacy" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI\ShowSearchHistory") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI\ShowSearchHistory" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\User") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\User" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\User\Default") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\User\Default" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\User\Default\SearchScopes") -ne $true) { New-Item "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\User\Default\SearchScopes" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Addons' -Name 'FlashPlayerEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\AppLinks' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\CaretBrowsing' -Name 'DontShowPrompt' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\CaretBrowsing' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\CaretBrowsing' -Name 'EnableOnStartup' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FlipAhead' -Name 'FPEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main' -Name 'AskToCloseAllTabs' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main' -Name 'DisallowDefaultBrowserPrompt' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main' -Name 'DoNotTrack' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main' -Name 'FormSuggest Passwords' -Value 'no' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main' -Name 'OptimizeWindowsSearchResultsForScreenReaders' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main' -Name 'ShowSearchSuggestionsGlobal' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main' -Name 'Theme' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main' -Name 'Use FormSuggest' -Value 'no' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\New Windows' -Name 'PopupMgr' -Value 'yes' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter' -Name 'EnabledV9' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Privacy' -Name 'EnableEncryptedMediaExtensions' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI' -Name 'EnableCortana' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI' -Name 'UsePaymentFormFill' -Value 'no' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI\ShowSearchHistory' -Name '(default)' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\User\Default\SearchScopes' -Name 'ShowSearchSuggestionsGlobal' -Value 0 -PropertyType DWord -Force
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\EdgeUpdate\UsageStats" -Recurse -Force;

# LanmanWorkstation Policy
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'DisableBandwidthThrottling' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'FileInfoCacheEntriesMax' -Value 1024 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'DirectoryCacheEntriesMax' -Value 1024 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'FileNotFoundCacheEntriesMax' -Value 1024 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'DormantFileLimit' -Value 256 -PropertyType DWord -Force

# no lock screen
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization' -Name 'NoLockScreen' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization' -Name 'LockScreenOverlaysDisabled' -Value 1 -PropertyType DWord -Force

# default drag and drop to move only not copy
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\*") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\*" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\*' -Name 'DefaultDropEffect' -Value 2 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\AllFilesystemObjects") -ne $true) { New-Item "HKLM:\SOFTWARE\Classes\AllFilesystemObjects" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\AllFilesystemObjects' -Name 'DefaultDropEffect' -Value 2 -PropertyType DWord -Force

# 文件系统
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'NtfsDisableLastAccessUpdate' -Value 1 -PropertyType DWord -Force

# 无网络位置提示
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Network\NetworkLocationWizard") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\Network\NetworkLocationWizard" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Network\NetworkLocationWizard' -Name 'HideWizard' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Network\SharedAccessConnection") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\Network\SharedAccessConnection" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Network\SharedAccessConnection' -Name 'EnableControl' -Value 0 -PropertyType DWord -Force

# Remove Meet Now
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies' -Name 'HideSCAMeetNow' -Value 1 -PropertyType DWord -Force

# no Maintenance task start
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance") -ne $true) { New-Item "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance' -Name 'WakeUp' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance' -Name 'MaintenanceDisabled' -Value 1 -PropertyType DWord -Force

# By default, MMCSS will leave 20% of your CPU power for other things besides your multimedia task
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'NetworkThrottlingIndex' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'SystemResponsiveness' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'NoLazyMode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'LazyModeTimeout' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile' -Name 'AlwaysOn' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Background Only' -Value 'True' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Priority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'Scheduling Category' -Value 'Medium' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio' -Name 'SFIO Priority' -Value 'Normal' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Background Only' -Value 'True' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Priority' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'Scheduling Category' -Value 'Medium' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture' -Name 'SFIO Priority' -Value 'Normal' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Background Only' -Value 'True' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'BackgroundPriority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing' -Name 'SFIO Priority' -Value 'Normal' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Background Only' -Value 'True' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Priority' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'Scheduling Category' -Value 'Medium' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution' -Name 'SFIO Priority' -Value 'Normal' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Priority' -Value 6 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'SFIO Priority' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games' -Name 'Latency Sensitive' -Value 'True' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'BackgroundPriority' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Priority' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'Scheduling Category' -Value 'Medium' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback' -Name 'SFIO Priority' -Value 'Normal' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Background Only' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Priority' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'Scheduling Category' -Value 'High' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio' -Name 'SFIO Priority' -Value 'Normal' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Affinity' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Background Only' -Value 'True' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Clock Rate' -Value 10000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'GPU Priority' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Priority' -Value 5 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'Scheduling Category' -Value 'Medium' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager' -Name 'SFIO Priority' -Value 'Normal' -PropertyType String -Force

# Mouse and Keyboard Buffer
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\mouclass\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mouclass\Parameters' -Name 'MouseDataQueueSize' -Value 16 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters' -Name 'KeyboardDataQueueSize' -Value 16 -PropertyType DWord -Force

# Windows 10 implements parallel loading by creating a thread pool of worker threads when the process initializes. MaxLoaderThreads set to 1 to disable parallel loading.
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe' -Name 'MaxLoaderThreads' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe' -Name 'MaxLoaderThreads' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RuntimeBroker.exe") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RuntimeBroker.exe" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RuntimeBroker.exe' -Name 'MaxLoaderThreads' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe' -Name 'MaxLoaderThreads' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe' -Name 'MaxLoaderThreads' -Value 1 -PropertyType DWord -Force

# Quality of Service policy
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched' -Name 'MaxOutstandingSends' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched' -Name 'NonBestEffortLimit' -Value 0 -PropertyType DWord -Force

# 回收站确认删除
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShellState' -Value 'hex(3):24,00,00,00,33,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,01,00,00,00,13,00,00,00,00,00,00,00,63,00,00,00' -PropertyType String -Force

# 关闭预览窗格
if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Modules\GlobalSettings\Sizer") -ne $true) { New-Item "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Modules\GlobalSettings\Sizer" -force };
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Modules\GlobalSettings\Sizer' -Name 'PageSpaceControlSizer' -Value ([byte[]](0xa0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xec, 0x03, 0x00, 0x00)) -PropertyType Binary -Force

#回收站无需确认即可删除
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume\{ 6b755b3f-b7c5-4866-8662-e3a2a6f9374b }") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume\ { 6b755b3f-b7c5-4866-8662-e3a2a6f9374b }" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume\ { cca4ea49-44e6-43ef-a623-ebc88725c706 }") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume\ { cca4ea49-44e6-43ef-a623-ebc88725c706 }" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume\{6b755b3f-b7c5-4866-8662-e3a2a6f9374b}' -Name 'NukeOnDelete' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume\{cca4ea49-44e6-43ef-a623-ebc88725c706}' -Name 'NukeOnDelete' -Value 1 -PropertyType DWord -Force
# delete taskbar shortcuts
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" -Recurse -Force -Verbose
# unpin Mail app
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\AuxilliaryPins") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\AuxilliaryPins" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\AuxilliaryPins' -Name 'MailPin' -Value 1 -PropertyType DWord -Force

#无Windows安全中心
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications' -Name 'DisableNotifications' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications' -Name 'DisableEnhancedNotifications' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray' -Name 'HideSystray' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Security Center") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Security Center" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Security Center' -Name 'cval' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.CapabilityAccess") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.CapabilityAccess" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.StartupApp") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.StartupApp" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.CapabilityAccess' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.StartupApp' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Microsoft.WindowsStore_8wekyb3d8bbwe!App' -Name 'Enabled' -Value 0 -PropertyType DWord -Force

# Disable Firewall
If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile")) { New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" -Force }
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" -Name "EnableFirewall" -Type DWord -Value 0 -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\Logging") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\Logging" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\Logging' -Name 'LogDroppedPackets' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\Logging' -Name 'LogSuccessfulConnections' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\IPSec\ICFv4") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\IPSec\ICFv4" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\IPSec\ICFv4' -Name 'BypassFirewall' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection" };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection' -Name 'EnableNetworkProtection' -Value 0 -PropertyType DWord -Force

# Disable Malicious Software Reporting Tool
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\MRT") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\MRT" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\MRT' -Name 'DontOfferThroughWUAU' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\MRT' -Name 'DontReportInfectionInformation' -Value 1 -PropertyType DWord -Force

# Disable WMI Autologgers
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\FaceRecoTel") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\FaceRecoTel" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\FaceTel") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\FaceTel" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\FaceUnlock") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\FaceUnlock" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\IntelPTTEKRecertification") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\IntelPTTEKRecertification" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\IntelRST") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\IntelRST" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NetCore") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NetCore" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NtfsLog") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NtfsLog" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RadioMgr") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RadioMgr" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReFSLog") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReFSLog" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UnionFS-Filter") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UnionFS-Filter" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WifiDriverSession") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WifiDriverSession" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WMI_Traces") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WMI_Traces" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\FaceRecoTel' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\FaceTel' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\FaceUnlock' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\IntelPTTEKRecertification' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\IntelRST' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NetCore' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NtfsLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RadioMgr' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReFSLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UnionFS-Filter' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WifiDriverSession' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WMI_Traces' -Name 'Start' -Value 0 -PropertyType DWord -Force

#
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft' -Name 'PassportForWork' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork' -Name 'DisablePostLogonProvisioning' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork' -Name 'DisableSmartCardNode' -Value 0 -PropertyType DWord -Force

# nVidia设置
# NIS is performed on shaders for Pascal and Maxwell rather than the dedicated hardware present for Ampere and Turing based cards
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS' -Name 'EnableGR535' -Value 0 -PropertyType DWord -Force
# Unlocking SILK Smoothness
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS' -Name 'EnableRID61684' -Value 1 -PropertyType DWord -Force
# Disable Nvidia MPO
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\Dwm") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\Dwm" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\Dwm' -Name 'OverlayTestMode' -Value 5 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\NVIDIA Corporation\Ansel") -ne $true) { New-Item "HKCU:\Software\NVIDIA Corporation\Ansel" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Ansel' -Name 'FreestyleEnabled' -Value 'False' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Ansel' -Name 'IPCenabled' -Value '0' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\Software\NVIDIA Corporation\Global\ShadowPlay\NVSPCAPS") -ne $true) { New-Item "HKCU:\Software\NVIDIA Corporation\Global\ShadowPlay\NVSPCAPS" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Global\ShadowPlay\NVSPCAPS' -Name '{1B1D3DAA-601D-49E5-8508-81736CA28C6D}' -Value ([byte[]](0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Global\ShadowPlay\NVSPCAPS' -Name 'DVRBufferLen' -Value ([byte[]](0x0f, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Global\ShadowPlay\NVSPCAPS' -Name 'DwmEnabled' -Value ([byte[]](0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Global\ShadowPlay\NVSPCAPS' -Name 'DwmEnabledUser' -Value ([byte[]](0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Global\ShadowPlay\NVSPCAPS' -Name 'EncoderProfile' -Value ([byte[]](0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Global\ShadowPlay\NVSPCAPS' -Name 'HLEnabled' -Value ([byte[]](0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Global\ShadowPlay\NVSPCAPS' -Name 'IsShadowPlayEnabled' -Value ([byte[]](0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\NVIDIA Corporation\Global\ShadowPlay\NVSPCAPS' -Name 'IsShadowPlayEnabledUser' -Value ([byte[]](0x00, 0x00, 0x00, 0x00)) -PropertyType Binary -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\NVIDIA Corporation\NvStream") -ne $true) { New-Item "HKLM:\SOFTWARE\NVIDIA Corporation\NvStream" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\NVIDIA Corporation\NvStream' -Name 'EnableStreaming' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\NVIDIA Corporation\Global\FTS") -ne $true) { New-Item "HKLM:\SOFTWARE\NVIDIA Corporation\Global\FTS" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\NVIDIA Corporation\Global\FTS' -Name 'EnableRID44231' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\NVIDIA Corporation\Global\FTS' -Name 'EnableRID64640' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\NVIDIA Corporation\Global\FTS' -Name 'EnableRID66610' -Value 0 -PropertyType DWord -Force
# https://docs.microsoft.com/en-us/windows-hardware/drivers/display/seamless-state-transitions-in-wddm-1-2-and-later
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm' -Name 'WDDMv22EnableSmoothTransition' -Value 1 -PropertyType DWord -Force

# Disabling Ease of Access
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Ease of Access") -ne $true) { New-Item "HKCU:\Software\Microsoft\Ease of Access" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Ease of Access' -Name 'selfscan' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Ease of Access' -Name 'selfvoice' -Value 0 -PropertyType DWord -Force

#关闭系统级代理开关
if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings") -ne $true) { New-Item "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" -force };
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'CertificateRevocation' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'DisableCachingOfSSLPages' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'PrivacyAdvanced' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'SecureProtocols' -Value 10912 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'EnableNegotiate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'MigrateProxy' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'ProxyEnable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'WarnonZoneCrossing' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'EnableHttp1_1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'ProxyHttp1.1' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'EnableHTTP2' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'EnablePunycode' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'UrlEncoding' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'DisableIDNPrompt' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'ShowPunycode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'WarnonBadCertRecving' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'WarnOnPostRedirect' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings' -Name 'SyncMode5' -Value 3 -PropertyType DWord -Force

# 开启多显示器光标跳动
New-ItemProperty -LiteralPath 'HKCU:\Control Panel\Cursors' -Name 'CursorDeadzoneJumpingSetting' -Value 1 -PropertyType DWord -Force

#开启窗口模式游戏加速
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\DirectX\GraphicsSettings") -ne $true) { New-Item "HKCU:\Software\Microsoft\DirectX\GraphicsSettings" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\DirectX\UserGpuPreferences") -ne $true) { New-Item "HKCU:\Software\Microsoft\DirectX\UserGpuPreferences" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\DirectX\GraphicsSettings' -Name 'SwapEffectUpgradeCache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\DirectX\UserGpuPreferences' -Name 'DirectXUserGlobalSettings' -Value 'SwapEffectUpgradeEnable=1;' -PropertyType String -Force

#右键发送到菜单无驱动器选项
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'NoDrivesInSendToMenu' -Value 1 -PropertyType DWord -Force

#无时间同步
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\W32Time\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\W32Time\Parameters" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\W32Time\Parameters' -Name 'Type' -Value 'NoSync' -PropertyType String -Force

# disable updates to the disk failure prediction model
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\StorageHealth") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\StorageHealth" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\StorageHealth' -Name 'AllowDiskHealthModelUpdates' -Value 0 -PropertyType DWord -Force

# Force contiguous memory allocation in the DirectX Graphics Kernel
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'DpiMapIommuContiguous' -Value 1 -PropertyType DWord -Force

# windows app tracking
if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Policies\Microsoft\Windows") -ne $true) { New-Item "HKCU:\SOFTWARE\Policies\Microsoft\Windows" -force };
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Policies\Microsoft\Windows' -Name 'DisableMFUTracking' -Value 1 -PropertyType DWord -Force

# turn off apps for websites
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableAppUriHandlers' -Value 0 -PropertyType DWord -Force

# 0 - Disable LMHOSTS Lookup on all adapters / 1 - Enable
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters' -Name 'EnableLMHOSTS' -Value 1 -PropertyType DWord -Force

# reduce DWM lag
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows' -Name 'DwmInputUsesIoCompletionPort' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows' -Name 'EnableDwmInputProcessing' -Value 0 -PropertyType DWord -Force

# Set a reliable 1 ms (minimum) timestamp. Only for untweaked systems (disabling it with 0 is recommended on tweaked systems).
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability' -Name 'TimeStampInterval' -Value 0 -PropertyType DWord -Force

# no HDD Parking
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\amdsbs\Settings\CAM") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\amdsbs\Settings\CAM" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\amdsbs\Settings\CAM' -Name 'EnableHDDParking' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\iaStorAC\Parameters\Device") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\iaStorAC\Parameters\Device" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaStorAC\Parameters\Device' -Name 'EnableAPM' -Value 0 -PropertyType DWord -Force

# PassiveIntRealTimeWorkerPriority
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System' -Name 'PassiveIntRealTimeWorkerPriority' -Value 24 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\KernelVelocity' -Name 'DisableFGBoostDecay' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFullAboveNormal") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFullAboveNormal" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLowBackgroundBegin") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLowBackgroundBegin" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\UnmanagedAboveNormal") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\UnmanagedAboveNormal" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\BackgroundDefault") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\BackgroundDefault" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Frozen") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Frozen" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNCS") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNCS" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNK") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNK" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenPPLE") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenPPLE" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Paused") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Paused" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PausedDNK") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PausedDNK" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Pausing") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Pausing" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PrelaunchForeground") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PrelaunchForeground" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\ThrottleGPUInterference") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\ThrottleGPUInterference" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Critical") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Critical" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\CriticalNoUi") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\CriticalNoUi" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\EmptyHostPPLE") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\EmptyHostPPLE" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\High") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\High" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Low") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Low" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Lowest") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Lowest" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Medium") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Medium" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\MediumHigh") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\MediumHigh" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\StartHost") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\StartHost" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryHigh") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryHigh" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryLow") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryLow" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\IO\NoCap") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\IO\NoCap" -force };
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Memory\NoCap") -ne $true) { New-Item "HKLM:\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Memory\NoCap" -force };
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

# 允许未授权用户登录网络
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name 'AllowInsecureGuestAuth' -Value 1 -PropertyType DWord -Force

# https://docs.microsoft.com/en-us/dotnet/desktop/wpf/graphics-multimedia/graphics-rendering-registry-settings?view=netframeworkdesktop-4.8
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Avalon.Graphics") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Avalon.Graphics" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics") -ne $true) { New-Item "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics" -force };
if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Microsoft\Avalon.Graphics") -ne $true) { New-Item "HKCU:\SOFTWARE\Microsoft\Avalon.Graphics" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Avalon.Graphics' -Name 'DisableHWAcceleration' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Avalon.Graphics' -Name 'MaxMultisampleSize' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Avalon.Graphics' -Name 'UseReferenceRasterizer' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics' -Name 'DisableHWAcceleration' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics' -Name 'MaxMultisampleSize' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics' -Name 'UseReferenceRasterizer' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Avalon.Graphics' -Name 'DisableHWAcceleration' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Avalon.Graphics' -Name 'MaxMultisampleSize' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Avalon.Graphics' -Name 'UseReferenceRasterizer' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Direct3D") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Direct3D" -force };
if ((Test-Path -LiteralPath "Registry::\HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Direct3D") -ne $true) { New-Item "Registry::\HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Direct3D" -force };
if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Microsoft\Direct3D") -ne $true) { New-Item "HKCU:\SOFTWARE\Microsoft\Direct3D" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Direct3D\Drivers") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Direct3D\Drivers" -force };
if ((Test-Path -LiteralPath "Registry::\HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Direct3D\Drivers") -ne $true) { New-Item "Registry::\HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Direct3D\Drivers" -force };
if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Microsoft\Direct3D\Drivers") -ne $true) { New-Item "HKCU:\SOFTWARE\Microsoft\Direct3D\Drivers" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\DirectDraw") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\DirectDraw" -force };
if ((Test-Path -LiteralPath "Registry::\HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\DirectDraw") -ne $true) { New-Item "Registry::\HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\DirectDraw" -force };
if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Microsoft\DirectDraw") -ne $true) { New-Item "HKCU:\SOFTWARE\Microsoft\DirectDraw" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Direct3D") -ne $true) { New-Item "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Direct3D" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Direct3D\Drivers") -ne $true) { New-Item "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Direct3D\Drivers" -force };
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\DirectDraw") -ne $true) { New-Item "HKLM:\SOFTWARE\WOW6432Node\Microsoft\DirectDraw" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Direct3D' -Name 'DisableVidMemVBs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Direct3D' -Name 'MMX Fast Path' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Direct3D' -Name 'FlipNoVsync' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'Registry::\HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Direct3D' -Name 'DisableVidMemVBs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'Registry::\HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Direct3D' -Name 'MMX Fast Path' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'Registry::\HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Direct3D' -Name 'FlipNoVsync' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Direct3D' -Name 'DisableVidMemVBs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Direct3D' -Name 'MMX Fast Path' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Direct3D' -Name 'FlipNoVsync' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Direct3D\Drivers' -Name 'SoftwareOnly' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'Registry::\HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Direct3D\Drivers' -Name 'SoftwareOnly' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Direct3D\Drivers' -Name 'SoftwareOnly' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\DirectDraw' -Name 'EmulationOnly' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'Registry::\HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\DirectDraw' -Name 'EmulationOnly' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\DirectDraw' -Name 'EmulationOnly' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Direct3D' -Name 'DisableVidMemVBs' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Direct3D' -Name 'MMX Fast Path' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Direct3D' -Name 'FlipNoVsync' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Direct3D\Drivers' -Name 'SoftwareOnly' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\DirectDraw' -Name 'EmulationOnly' -Value 0 -PropertyType DWord -Force

# ClearType
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY1") -ne $true) { New-Item "HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY1" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY1' -Name 'ClearTypeLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY1' -Name 'TextContrastLevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY1' -Name 'PixelStructure' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY1' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY2") -ne $true) { New-Item "HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY2" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY2' -Name 'ClearTypeLevel' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY2' -Name 'TextContrastLevel' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY2' -Name 'PixelStructure' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Avalon.Graphics\DISPLAY2' -Name 'GammaLevel' -Value 1800 -PropertyType DWord -Force

# Win32PrioritySeparation
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl' -Name 'Win32PrioritySeparation' -Value 40 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager' -Name 'AlpcWakePolicy' -Value 1 -PropertyType DWord -Force

# 额外网络优化
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion' -Name 'MaxConnectionPerServer' -Value 22 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion' -Name 'MaxconnectionPer1_0Server' -Value 22 -PropertyType DWord -Force

# Graphic Driver
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF' -Name 'LogEnable' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF' -Name 'LogLevel' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'HwSchedMode' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'TdrLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'UseGpuTimer' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'RmGpsPsEnablePerCpuCoreDpc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'PowerSavingTweaks' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'DisableWriteCombining' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'EnableRuntimePowerManagement' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'PrimaryPushBufferSize' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'FlTransitionLatency' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'D3PCLatency' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'RMDeepLlEntryLatencyUsec' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'PciLatencyTimerControl' -Value 32 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'Node3DLowLatency' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'LOWLATENCY' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'RmDisableRegistryCaching' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers' -Name 'RMDisablePostL2Compression' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'UseGpuTimer' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'RmGpsPsEnablePerCpuCoreDpc' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'PowerSavingTweaks' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'DisableWriteCombining' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'EnableRuntimePowerManagement' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'PrimaryPushBufferSize' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'FlTransitionLatency' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'D3PCLatency' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'RMDeepLlEntryLatencyUsec' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'PciLatencyTimerControl' -Value 32 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'Node3DLowLatency' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'LOWLATENCY' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'RmDisableRegistryCaching' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power' -Name 'RMDisablePostL2Compression' -Value 1 -PropertyType DWord -Force

# Chrome 策略
if ((Test-Path -LiteralPath "HKLM:\Software\Policies\Google\Chrome") -ne $true) { New-Item "HKLM:\Software\Policies\Google\Chrome" -force };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'ScreenCaptureAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'DefaultGeolocationSetting' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'DefaultNotificationsSetting' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'DefaultSensorsSetting' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'AdditionalDnsQueryTypesEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'AdsSettingForIntrusiveAdsSites' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'AdvancedProtectionAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'AudioProcessHighPriorityEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'AudioSandboxEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'AutofillCreditCardEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'AutoplayAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'BackgroundModeEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'BookmarkBarEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'BrowserNetworkTimeQueriesEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'BuiltInDnsClientEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'ChromeCleanupEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'ChromeCleanupReportingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'CommandLineFlagSecurityWarningsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'DNSInterceptionChecksEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'DefaultDownloadDirectory' -Value 'D:\Downloads' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'DiskCacheDir' -Value '%SystemRoot%\Temp' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'DiskCacheSize' -Value -2147483648 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'DnsOverHttpsMode' -Value 'off' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'DownloadRestrictions' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'FetchKeepaliveDurationSecondsOnShutdown' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'ForceGoogleSafeSearch' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'ForceYouTubeRestrict' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'HardwareAccelerationModeEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'HttpsOnlyMode' -Value 'disallowed' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'IntensiveWakeUpThrottlingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'IntranetRedirectBehavior' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'MaxConnectionsPerProxy' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'MaxInvalidationFetchDelay' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'MediaRecommendationsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'MetricsReportingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'NTPCardsVisible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'NTPMiddleSlotAnnouncementVisible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'NetworkPredictionOptions' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'PolicyRefreshRate' -Value 86400000 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'PromotionalTabsEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'PromptForDownloadLocation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'ProxySettings' -Value '{\"ProxyMode\": \"direct\"}' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'SafeSitesFilterBehavior' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'ShowFullUrlsInAddressBar' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'SpellCheckServiceEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'SpellcheckEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'TotalMemoryLimitMb' -Value 20480 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'UserFeedbackAllowed' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'PasswordLeakDetectionEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'PasswordProtectionWarningTrigger' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'SafeBrowsingExtendedReportingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'SafeBrowsingProtectionLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Google\Chrome' -Name 'ShowHomeButton' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Policies\Google\Chrome") -ne $true) { New-Item "HKCU:\Software\Policies\Google\Chrome" -force };
if ((Test-Path -LiteralPath "HKCU:\Software\Policies\Google\Chrome\Recommended") -ne $true) { New-Item "HKCU:\Software\Policies\Google\Chrome\Recommended" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Google\Chrome' -Name 'DeviceMetricsReportingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Google\Chrome' -Name 'MetricsReportingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Google\Chrome\Recommended' -Name 'DeviceMetricsReportingEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Google\Chrome\Recommended' -Name 'MetricsReportingEnabled' -Value 0 -PropertyType DWord -Force

# 去除无用的字体启动项
Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Font Drivers" -Name "Adobe Type Manager" -Force

# 无后台程序
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications' -Name 'Migrated' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications' -Name 'GlobalUserDisabled' -Value 0 -PropertyType DWord -Force

# 去除不安全文件警告
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Associations' -Name 'LowRiskFileTypes' -Value '.zip;.rar;.nfo;.txt;.exe;.bat;.com;.cmd;.reg;.msi;.htm;.html;.gif;.bmp;.jpg;.avi;.mpg;.mpeg;.mov;.mp3;.m3u;.msu;.wav' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments' -Name 'SaveZoneInformation' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Security") -ne $true) { New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Security" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Security' -Name 'DisableSecuritySettingsCheck' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3' -Name '1806' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -force -ea SilentlyContinue };
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'DisallowRun' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun' -Name '1' -Value 'CompatTelRunner.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun' -Name '2' -Value 'MRT.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun' -Name '3' -Value 'Narrator.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun' -Name '4' -Value 'smartscreen.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun' -Name '5' -Value 'software_reporter_tool.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun' -Name '6' -Value 'SppExtComObj.Exe' -PropertyType String -Force

if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\VideoSettings") -ne $true) { New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\VideoSettings" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\VideoSettings' -Name 'EnableAutoEnhanceDuringPlayback' -Value 1 -PropertyType DWord -Force

# SMB 1.0
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\Browser\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\Browser\Parameters" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Browser\Parameters' -Name 'MaintainServerList' -Value 'Yes' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Browser\Parameters' -Name 'IsDomainMaster' -Value 'True' -PropertyType String -Force

# 设置所有网络类型为专用而非公共
Set-NetConnectionProfile -NetworkCategory Private -Verbose
Set-NetConnectionProfile -InterfaceAlias WLAN -NetworkCategory "Private"
Set-NetConnectionProfile -InterfaceAlias Ethernet -NetworkCategory "Private"

# disable network protocal
# Get-NetAdapterBinding -IncludeHidden -AllBindings | Format-Table -AutoSize
# Get-NetAdapterBinding | Where-Object { $_.Enabled -eq 'True' } | Set-NetAdapterBinding -Enabled 0 -IncludeHidden -AllBindings -Verbose
Disable-NetAdapterBinding -Name "*" -ComponentID ms_pacer
Disable-NetAdapterBinding -Name "*" -ComponentID ms_ndiscap
Enable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip6

# Disable all WAN miniport driver
# Get-pnpdevice -friendlyname '高精度事件计时器' | select-object -expandproperty instanceid
Get-PnpDevice -InstanceId 'ROOT\KDNIC\0000' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -InstanceId 'ROOT\VID\0000' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -InstanceId 'ROOT\NDISVIRTUALBUS\0000' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -friendlyname '高精度事件计时器' | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice -friendlyname 'UMBus Root Bus Enumerator' | Disable-PnpDevice -Confirm:$false -Verbose

# remove Microsoft Wi-Fi Direct Virtual Adapter
Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WlanSvc\Parameters\HostedNetworkSettings" -Name "HostedNetworkSettings" -Force

# Changing IP policies for your NICs
Get-NetAdapter -IncludeHidden | Set-NetIPInterface -WeakHostSend Enabled -WeakHostReceive Enabled -RetransmitTimeMs 0 -Forwarding Disabled -EcnMarking Disabled -AdvertiseDefaultRoute Disabled

# Disabling Net Adapter QoS...
Disable-NetAdapterQos -Name "*"
# Disabling Net Adapter Power Management...
Disable-NetAdapterPowerManagement -Name "*"
# Enabling Net Adapter Checksum Offload...
Disable-NetAdapterChecksumOffload -Name "*"
# Disabling Net Adapter Encapsulated Packet Task Offload...
Disable-NetAdapterEncapsulatedPacketTaskOffload -Name "*"
# Enabling Net Adapter IPsec Offload...
Enable-NetAdapterIPsecOffload -Name "*"
# Disabling Net Adapter Large Send Offload...
Disable-NetAdapterLso -Name "*"
# Enabling Net Adapter Packet Direct...
Enable-NetAdapterPacketDirect -Name "*"
# Disabling Net Adapter Receive Side Coalescing...
Disable-NetAdapterRsc -Name "*"
# Enabling Net Adapter Receive Side Scaling...
Enable-NetAdapterRss -Name "*"

# 修复XBOX网络
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters' -Name 'DisabledComponents' -Value 0 -PropertyType DWord -Force
Set-NetTeredoConfiguration -Type Enterpriseclient
Set-NetTeredoConfiguration -ServerName "teredo.remlab.net"
Set-Net6to4Configuration -State Enabled -AutoSharing Enabled -RelayState Enabled -RelayName "6to4.ipv6.microsoft.com"
if ((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters") -ne $true) { New-Item "HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'DisableParallelAandAAAA' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'EnableAutoDoh' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'negativesoacachetime' -Value 120 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'netfailurecachetime' -Value 30 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name 'AddrConfigControl' -Value 0 -PropertyType DWord -Force

# Disable NetBIOS
$NetBIOS = "HKLM:SYSTEM\CurrentControlSet\services\NetBT\Parameters\Interfaces"
Get-ChildItem $NetBIOS | ForEach-Object { Set-ItemProperty -Path "$NetBIOS\$($_.pschildname)" -Name NetbiosOptions -Value 2 -Verbose }

# Use the total amount of memory installed on the device to modify the svchost.exe split threshold to reduce the amount of svchost.exe processes that run simultaneously.
$Memory = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1KB
If ($Memory -is [Double]) { Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control" -Name SvcHostSplitThresholdInKB -Value $Memory -Force }

# uncheck "Allow the computer to turn off this device to save power" on all USB Controllers
# Dynamic power devices
$powerMgmt = Get-CimInstance -ClassName MSPower_DeviceEnable -Namespace root/WMI

# All USB devices
$UsbDevices = Get-CimInstance -ClassName Win32_PnPEntity -Filter 'PNPClass = "USB"'
$UsbDevices | ForEach-Object {
    # Get the power management instance for this device, if there is one
    $powerMgmt | Where-Object InstanceName -Like "*$($_.InstanceId)*"
} | Set-CimInstance -Property @{Enable = $false }

# Disable Nagle's Algorithm
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\MSMQ\Parameters") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\MSMQ\Parameters" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters' -Name 'TCPNoDelay' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\MSMQ\Parameters' -Name 'TCPNoDelay' -Value 1 -PropertyType DWord -Force
# $strGUIDS = [array] (Get-WmiObject win32_networkadapter -filter "netconnectionstatus = 2" | Select-Object -expand GUID)
$strGUIDS = [array] (Get-WmiObject win32_networkadapter | Select-Object -expand GUID) 
foreach ($strGUID in $strGUIDS)
{ New-ItemProperty -path HKLM:\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\$strGUID -propertytype DWORD -name TcpAckFrequency -value 1 -Force }
{ New-ItemProperty -path HKLM:\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\$strGUID -propertytype DWORD -name TcpDelAckTicks -value 0 -Force }
{ New-ItemProperty -path HKLM:\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\$strGUID -propertytype DWORD -name TCPNoDelay -value 1 -Force }

# 清理文件夹
Get-ChildItem "C:\Windows\Setup\Scripts" | Remove-Item -Recurse -Force -Verbose

# 清理垃圾文件
$SageSet = "StateFlags0099"
$Base = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\"
$Locations = @(
    "Active Setup Temp Folders"
    "BranchCache"
    "Content Indexer Cleaner"
    "D3D Shader Cache"
    "Delivery Optimization Files"
    "Device Driver Packages"
    "Diagnostic Data Viewer database files"
    "Downloaded Program Files"
    "Feedback Hub Archive log files"
    "Internet Cache Files"
    "Language Pack"
    "Offline Pages Files"
    "Old ChkDsk Files"
    "Previous Installations"
    "Recycle Bin"
    "RetailDemo Offline Content"
    "Setup Log Files"
    "System error memory dump files"
    "System error minidump files"
    "Temporary Files"
    "Temporary Setup Files"
    "Temporary Sync Files"
    "Thumbnail Cache"
    "Update Cleanup"
    "Upgrade Discarded Files"
    "User file versions"
    "Windows Error Reporting Files"
    "Windows ESD installation files"
    "Windows Reset Log Files"
    "Windows Upgrade Log Files"
)

# -ea silentlycontinue will supress error messages
ForEach ($Location in $Locations) {
    Set-ItemProperty -Path $($Base + $Location) -Name $SageSet -Type DWORD -Value 2 -ea silentlycontinue
}

# Do the clean-up. Have to convert the SageSet number
$CleanupArgs = "/sagerun:$([string]([int]$SageSet.Substring($SageSet.Length-4)))"
Start-Process -Wait "$env:SystemRoot\System32\cleanmgr.exe" -ArgumentList $CleanupArgs

# Remove the Stateflags
ForEach ($Location in $Locations) {
    Remove-ItemProperty -Path $($Base + $Location) -Name $SageSet -Force -ea silentlycontinue
}

# 重启
Restart-Computer
