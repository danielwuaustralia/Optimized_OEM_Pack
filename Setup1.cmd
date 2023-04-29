@echo on
color 6

:: install drivers
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\PnPUnattend\DriverPaths\1" /f /v Path /t REG_SZ /d "C:\TEMP\Drivers"
"C:\Windows\System32\pnpunattend.exe" AuditSystem /L

:: System Compoments Update
Dism /online /Enable-Feature /FeatureName:LegacyComponents /NoRestart
Dism /online /Enable-Feature /FeatureName:DirectPlay /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-PrintToPDFServices-Features /NoRestart
Dism /online /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellV2Root /NoRestart
Dism /online /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellV2 /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-Foundation-Features /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-Foundation-InternetPrinting-Client /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-Foundation-LPDPrintService /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-Foundation-LPRPortMonitor /NoRestart
Dism /online /Disable-Feature /FeatureName:WorkFolders-Client /NoRestart
Dism /online /Disable-Feature /FeatureName:SearchEngine-Client-Package /NoRestart
Dism /online /Disable-Feature /FeatureName:Windows-Defender-ApplicationGuard /NoRestart
Dism /online /Disable-Feature /FeatureName:Windows-Defender-Default-Definitions /NoRestart
Dism /online /Disable-Feature /FeatureName:SmbDirect /NoRestart
Dism /Online /Remove-Capability /CapabilityName:App.StepsRecorder~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:DirectX.Configuration.Database~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Hello.Face.20134~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Language.Fonts.Hans~~~und-HANS~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Language.Handwriting~~~zh-CN~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Language.OCR~~~zh-CN~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Language.Speech~~~zh-CN~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Language.TextToSpeech~~~zh-CN~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:MathRecognizer~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.WordPad~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.PowerShell.ISE~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:OpenSSH.Client~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Wallpapers.Extended~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Ethernet.Client.Intel.E1i68x64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Ethernet.Client.Intel.E2f68~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Ethernet.Client.Realtek.Rtcx21x64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Ethernet.Client.Vmware.Vmxnet3~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Notepad.System~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Broadcom.Bcmpciedhd63~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Broadcom.Bcmwl63al~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Broadcom.Bcmwl63a~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwbw02~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwew00~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwew01~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwlv64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwns64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwsw00~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwtw02~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwtw04~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwtw06~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwtw08~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwtw10~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Marvel.Mrvlpcie8897~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Qualcomm.Athw8x~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Qualcomm.Athwnx~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Qualcomm.Qcamain10x64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Ralink.Netr28x~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtl8192se~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtwlane01~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtwlane13~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtl85n64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtl819xp~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtl8187se~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtwlane~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:OneCoreUAP.OneSync~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Print.Management.Console~~~~0.0.1.0 /NoRestart

:: https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/export-or-import-default-application-associations?view=windows-11
DISM.exe /Online /Remove-DefaultAppAssociations

:: https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism-storage-reserve?view=windows-11
DISM.exe /Online /Set-ReservedStorageState /State:Disabled

:: https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/compact
COMPACT.EXE /u /i /f /s "C:\*.*"
COMPACT.EXE /CompactOS:Never

:: First Login Animation
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableFirstLogonAnimation" /t REG_DWORD /d "0" /f

:: remove Defender & Security Centre
taskkill /f /im explorer.exe
taskkill /f /im smartscreen.exe
taskkill /f /im SecurityHealthSystray.exe
taskkill /f /im SecurityHealthHost.exe
taskkill /f /im SecurityHealthService.exe
taskkill /f /im SecurityHealthHost.exe
taskkill /f /im DWWIN.EXE
taskkill /f /im CompatTelRunner.exe
taskkill /f /im GameBarPresenceWriter.exe
taskkill /f /im DeviceCensus.exe
::
for %%d in ("C:\Windows\WinSxS\FileMaps\wow64_windows-defender*.manifest" "C:\Windows\WinSxS\FileMaps\x86_windows-defender*.manifest" "C:\Windows\WinSxS\FileMaps\amd64_windows-defender*.manifest" "C:\Windows\System32\SecurityAndMaintenance_Error.png" "C:\Windows\System32\SecurityAndMaintenance.png" "C:\Windows\System32\SecurityHealthSystray.exe" "C:\Windows\System32\SecurityHealthService.exe" "C:\Windows\System32\SecurityHealthHost.exe" "C:\Windows\System32\drivers\SgrmAgent.sys" "C:\Windows\System32\drivers\WdDevFlt.sys" "C:\Windows\System32\drivers\WdBoot.sys" "C:\Windows\System32\drivers\WdFilter.sys" "C:\Windows\System32\wscsvc.dll" "C:\Windows\System32\drivers\WdNisDrv.sys" "C:\Windows\System32\wscsvc.dll" "C:\Windows\System32\wscproxystub.dll" "C:\Windows\System32\wscisvif.dll" "C:\Windows\System32\SecurityHealthProxyStub.dll" "C:\Windows\System32\smartscreen.dll" "C:\Windows\SysWOW64\smartscreen.dll" "C:\Windows\System32\smartscreen.exe" "C:\Windows\SysWOW64\smartscreen.exe" "C:\Windows\System32\DWWIN.EXE" "C:\Windows\SysWOW64\smartscreenps.dll" "C:\Windows\System32\smartscreenps.dll" "C:\Windows\System32\SecurityHealthCore.dll" "C:\Windows\System32\SecurityHealthSsoUdk.dll" "C:\Windows\System32\SecurityHealthUdk.dll" "C:\Windows\System32\SecurityHealthAgent.dll" "C:\Windows\System32\wscapi.dll" "C:\Windows\System32\wscadminui.exe" "C:\Windows\SysWOW64\GameBarPresenceWriter.exe" "C:\Windows\System32\GameBarPresenceWriter.exe" "C:\Windows\SysWOW64\DeviceCensus.exe" "C:\Windows\SysWOW64\CompatTelRunner.exe" "C:\Windows\system32\drivers\msseccore.sys") DO cmd.exe /c del /f "%%d"
::
for %%d in ("C:\Windows\WinSxS\amd64_security-octagon*" "C:\Windows\WinSxS\x86_windows-defender*" "C:\Windows\WinSxS\wow64_windows-defender*" "C:\Windows\WinSxS\amd64_windows-defender*" "C:\Windows\SystemApps\Microsoft.Windows.AppRep.ChxApp_cw5n1h2txyewy" "C:\ProgramData\Microsoft\Windows Defender" "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" "C:\Program Files (x86)\Windows Defender Advanced Threat Protection" "C:\Program Files\Windows Defender Advanced Threat Protection" "C:\ProgramData\Microsoft\Windows Security Health" "C:\ProgramData\Microsoft\Storage Health" "C:\WINDOWS\System32\drivers\wd" "C:\Program Files (x86)\Windows Defender" "C:\Program Files\Windows Defender" "C:\Windows\System32\SecurityHealth" "C:\Windows\System32\WebThreatDefSvc" "C:\Windows\System32\Sgrm" "C:\Windows\Containers" "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\DefenderPerformance" "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\DefenderPerformance" "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\Defender" "C:\Windows\System32\Tasks_Migrated\Microsoft\Windows\Windows Defender" "C:\Windows\System32\Tasks\Microsoft\Windows\Windows Defender" "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\Defender" "C:\Windows\System32\HealthAttestationClient" "C:\Windows\GameBarPresenceWriter" "C:\Windows\bcastdvr") do cmd.exe /c rmdir "%%~d" /s /q
::
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\webthreatdefsvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\webthreatdefusersvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MsSecCore" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\wscsvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdNisDrv" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdFiltrer" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdBoot" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SgrmAgent" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SgrmBroker" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\App and Browser protection" /v "DisallowExploitProtectionOverride" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\Server\WebThreatDefSvc" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost\WebThreatDefense" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "WebThreatDefense" /f
reg delete "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WebThreatDefense" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WebThreatDefense\AuditMode" /v "value" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WebThreatDefense\NotifyUnsafeOrReusedPassword" /v "value" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WebThreatDefense\ServiceEnabled" /v "value" /t REG_DWORD /d "0" /f
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WTDS" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WTDS\Components" /v "NotifyPasswordReuse" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WTDS\Components" /v "NotifyMalicious" /t REG_DWORD /d "0" /f
reg delete "HKCR\AppX1sy7rwrc20ggq97a6x1mgmjat0rthy51" /f
reg delete "HKCR\AppXb5yxv86nkhp530y0y50yxe69c1qwad1x" /f
Reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.sechealthui_8wekyb3d8bbwe" /f
Reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\ProgIDs\AppX1sy7rwrc20ggq97a6x1mgmjat0rthy51" /f
Reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\ProgIDs\AppXb5yxv86nkhp530y0y50yxe69c1qwad1x" /f
Reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.fileTypeAssociation\.all\AppXb5yxv86nkhp530y0y50yxe69c1qwad1x" /f
Reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\windowsdefender\AppX1sy7rwrc20ggq97a6x1mgmjat0rthy51d" /f
Reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PolicyCache\Microsoft.SecHealthUI_8wekyb3d8bbwe" /f
Reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.SecHealthUI_8wekyb3d8bbwe" /f
Reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\windowsdefender" /f
Reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\windowsdefender" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{2781761E-28E0-4109-99FE-B9D127C57AFE}" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{2781761E-28E2-4109-99FE-B9D127C57AFE}" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{195B4D07-3DE2-4744-BBF2-D90121AE785B}" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{361290c0-cb1b-49ae-9f3e-ba1cbe5dab35}" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{45F2C32F-ED16-4C94-8493-D72EF93A051B}" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{6CED0DAA-4CDE-49C9-BA3A-AE163DC3D7AF}" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{8a696d12-576b-422e-9712-01b9dd84b446}" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{8C9C0DB7-2CBA-40F1-AFE0-C55740DD91A0}" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{A2D75874-6750-4931-94C1-C99D3BC9D0C7}" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{A7C452EF-8E9F-42EB-9F2B-245613CA0DC9}" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{DACA056E-216A-4FD1-84A6-C306A017ECEC}" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{E3C9166D-1D39-4D4E-A45D-BC7BE9B00578}" /f
reg delete "HKLM\Software\Classes\WOW6432Node\CLSID\{F6976CF5-68A8-436C-975A-40BE53616D59}" /f
reg delete "HKLM\Software\Classes\CLSID\{2781761E-28E0-4109-99FE-B9D127C57AFE}" /f
reg delete "HKLM\Software\Classes\CLSID\{2781761E-28E2-4109-99FE-B9D127C57AFE}" /f
reg delete "HKLM\Software\Classes\CLSID\{195B4D07-3DE2-4744-BBF2-D90121AE785B}" /f
reg delete "HKLM\Software\Classes\CLSID\{361290c0-cb1b-49ae-9f3e-ba1cbe5dab35}" /f
reg delete "HKLM\Software\Classes\CLSID\{45F2C32F-ED16-4C94-8493-D72EF93A051B}" /f
reg delete "HKLM\Software\Classes\CLSID\{6CED0DAA-4CDE-49C9-BA3A-AE163DC3D7AF}" /f
reg delete "HKLM\Software\Classes\CLSID\{8a696d12-576b-422e-9712-01b9dd84b446}" /f
reg delete "HKLM\Software\Classes\CLSID\{8C9C0DB7-2CBA-40F1-AFE0-C55740DD91A0}" /f
reg delete "HKLM\Software\Classes\CLSID\{A2D75874-6750-4931-94C1-C99D3BC9D0C7}" /f
reg delete "HKLM\Software\Classes\CLSID\{A7C452EF-8E9F-42EB-9F2B-245613CA0DC9}" /f
reg delete "HKLM\Software\Classes\CLSID\{DACA056E-216A-4FD1-84A6-C306A017ECEC}" /f
reg delete "HKLM\Software\Classes\CLSID\{E3C9166D-1D39-4D4E-A45D-BC7BE9B00578}" /f
reg delete "HKLM\Software\Classes\CLSID\{F6976CF5-68A8-436C-975A-40BE53616D59}" /f
reg delete "HKCR\WOW6432Node\CLSID\{2781761E-28E0-4109-99FE-B9D127C57AFE}" /f
reg delete "HKCR\WOW6432Node\CLSID\{2781761E-28E2-4109-99FE-B9D127C57AFE}" /f
reg delete "HKCR\WOW6432Node\CLSID\{195B4D07-3DE2-4744-BBF2-D90121AE785B}" /f
reg delete "HKCR\WOW6432Node\CLSID\{361290c0-cb1b-49ae-9f3e-ba1cbe5dab35}" /f
reg delete "HKCR\WOW6432Node\CLSID\{45F2C32F-ED16-4C94-8493-D72EF93A051B}" /f
reg delete "HKCR\WOW6432Node\CLSID\{6CED0DAA-4CDE-49C9-BA3A-AE163DC3D7AF}" /f
reg delete "HKCR\WOW6432Node\CLSID\{8a696d12-576b-422e-9712-01b9dd84b446}" /f
reg delete "HKCR\WOW6432Node\CLSID\{8C9C0DB7-2CBA-40F1-AFE0-C55740DD91A0}" /f
reg delete "HKCR\WOW6432Node\CLSID\{A2D75874-6750-4931-94C1-C99D3BC9D0C7}" /f
reg delete "HKCR\WOW6432Node\CLSID\{A7C452EF-8E9F-42EB-9F2B-245613CA0DC9}" /f
reg delete "HKCR\WOW6432Node\CLSID\{DACA056E-216A-4FD1-84A6-C306A017ECEC}" /f
reg delete "HKCR\WOW6432Node\CLSID\{E3C9166D-1D39-4D4E-A45D-BC7BE9B00578}" /f
reg delete "HKCR\WOW6432Node\CLSID\{F6976CF5-68A8-436C-975A-40BE53616D59}" /f
reg delete "HKCR\CLSID\{2781761E-28E0-4109-99FE-B9D127C57AFE}" /f
reg delete "HKCR\CLSID\{2781761E-28E2-4109-99FE-B9D127C57AFE}" /f
reg delete "HKCR\CLSID\{195B4D07-3DE2-4744-BBF2-D90121AE785B}" /f
reg delete "HKCR\CLSID\{361290c0-cb1b-49ae-9f3e-ba1cbe5dab35}" /f
reg delete "HKCR\CLSID\{45F2C32F-ED16-4C94-8493-D72EF93A051B}" /f
reg delete "HKCR\CLSID\{6CED0DAA-4CDE-49C9-BA3A-AE163DC3D7AF}" /f
reg delete "HKCR\CLSID\{8a696d12-576b-422e-9712-01b9dd84b446}" /f
reg delete "HKCR\CLSID\{8C9C0DB7-2CBA-40F1-AFE0-C55740DD91A0}" /f
reg delete "HKCR\CLSID\{A2D75874-6750-4931-94C1-C99D3BC9D0C7}" /f
reg delete "HKCR\CLSID\{A7C452EF-8E9F-42EB-9F2B-245613CA0DC9}" /f
reg delete "HKCR\CLSID\{DACA056E-216A-4FD1-84A6-C306A017ECEC}" /f
reg delete "HKCR\CLSID\{E3C9166D-1D39-4D4E-A45D-BC7BE9B00578}" /f
reg delete "HKCR\CLSID\{F6976CF5-68A8-436C-975A-40BE53616D59}" /f
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\MitigationOptions" /v "MitigationOptions_FontBocking" /f
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableScanningMappedNetworkDrivesForFullScan" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Defender\AllowIOAVProtection" /v "value" /t REG_DWORD /d "0" /f
reg delete "HKCR\CLSID\{05F3561D-0358-4687-8ACD-A34D24C488DF}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{05F3561D-0358-4687-8ACD-A34D24C488DF}" /f
reg delete "HKCR\WOW6432Node\CLSID\{05F3561D-0358-4687-8ACD-A34D24C488DF}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{05F3561D-0358-4687-8ACD-A34D24C488DF}" /f
reg delete "HKLM\SOFTWARE\Classes\AppUserModelId\Windows.Defender.SecurityCenter" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications\Backup\Windows.Defender.SecurityCenter" /f
reg delete "HKCR\AppUserModelId\Windows.SystemToast.SecurityAndMaintenance" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.SecurityCenter.SecurityAppBroker" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.SecurityCenter.WscBrokerManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.SecurityCenter.WscCloudBackupProvider" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.SecurityCenter.WscDataProtection" /f
reg delete "HKLM\SOFTWARE\Microsoft\Security Center\Provider\Av" /f
reg delete "HKLM\SOFTWARE\Microsoft\Security Center\Provider\SecurityApp" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\QuietHours\AlwaysAllowedApps" /v "WindowsSecurity" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\QuietHours\AlwaysAllowedApps" /v "WindowsSystemToastSecurity" /f
reg delete "HKCU\Software\Classes\Local Settings\ImmutableMuiCache\Strings\52C64B7E" /v "@C:\WINDOWS\System32\ActionCenterCPL.dll,-1#immutable1" /f
reg delete "HKCU\Software\Classes\Local Settings\ImmutableMuiCache\Strings\52C64B7E" /v "@C:\WINDOWS\System32\ActionCenterCPL.dll,-2#immutable1" /f
reg delete "HKCU\Software\Classes\Local Settings\MuiCache\6\52C64B7E" /v "@ActionCenterCPL.dll,-1" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{01afc156-f2eb-4c1c-a722-8550417d396f}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{a3b3c46c-05d8-429b-bf66-87068b4ce563}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{F56F6FDD-AA9D-4618-A949-C1B91AF43B1A}" /f
reg delete "HKCR\CLSID\{a3b3c46c-05d8-429b-bf66-87068b4ce563}" /f
reg delete "HKCR\CLSID\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /f
reg delete "HKCR\CLSID\{F56F6FDD-AA9D-4618-A949-C1B91AF43B1A}" /f
reg delete "HKCR\CLSID\{01afc156-f2eb-4c1c-a722-8550417d396f}" /f
reg delete "HKCR\WOW6432Node\CLSID\{01afc156-f2eb-4c1c-a722-8550417d396f}" /f
reg delete "HKCR\WOW6432Node\CLSID\{a3b3c46c-05d8-429b-bf66-87068b4ce563}" /f
reg delete "HKCR\WOW6432Node\CLSID\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /f
reg delete "HKCR\WOW6432Node\CLSID\{F56F6FDD-AA9D-4618-A949-C1B91AF43B1A}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{01afc156-f2eb-4c1c-a722-8550417d396f}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{a3b3c46c-05d8-429b-bf66-87068b4ce563}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{F56F6FDD-AA9D-4618-A949-C1B91AF43B1A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /f
reg delete "HKCR\Local Settings\ImmutableMuiCache\Strings\52C64B7E" /v "@C:\WINDOWS\System32\ActionCenterCPL.dll,-1#immutable1" /f
reg delete "HKCR\Local Settings\ImmutableMuiCache\Strings\52C64B7E" /v "@C:\WINDOWS\System32\ActionCenterCPL.dll,-2#immutable1" /f
reg delete "HKCR\Local Settings\MuiCache\6\52C64B7E" /v "@ActionCenterCPL.dll,-1" /f
reg delete "HKCR\WOW6432Node\AppID\{7eaae8b9-e33f-4b4f-bb40-9ada6beec764}" /f
reg delete "HKCR\WOW6432Node\AppID\{97a3a7e6-bb30-46b4-ae18-76729fa5ab56}" /f
reg delete "HKCR\AppID\{7eaae8b9-e33f-4b4f-bb40-9ada6beec764}" /f
reg delete "HKCR\AppID\{97a3a7e6-bb30-46b4-ae18-76729fa5ab56}" /f
reg delete "HKCR\WOW6432Node\AppID\{2781761E-28E2-4109-99FE-B9D127C57AFE}" /f
reg delete "HKCR\AppID\{2781761E-28E2-4109-99FE-B9D127C57AFE}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{2781761E-28E2-4109-99FE-B9D127C57AFE}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{2781761E-28E2-4109-99FE-B9D127C57AFE}" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.fileTypeAssociation\.all\AppXb5yxv86nkhp530y0y50yxe69c1qwad1x" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Security.SmartScreen.AppReputationService" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Security.SmartScreen.EventLogger" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Security.SmartScreen.UriReputationService" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Security.SmartScreen.AppReputationService" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Security.SmartScreen.EventLogger" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Security.SmartScreen.UriReputationService" /f
reg delete "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\AppVMachineRegistryStore\Integration\Ownership\Software\Classes\outlspam.SmartScreenFactoryOutlook" /f
reg delete "HKCR\WOW6432Node\CLSID\{088E8DFB-2464-4C21-BAD2-F0AA6DB5D4BC}" /f
reg delete "HKCR\CLSID\{088E8DFB-2464-4C21-BAD2-F0AA6DB5D4BC}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{088E8DFB-2464-4C21-BAD2-F0AA6DB5D4BC}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{088E8DFB-2464-4C21-BAD2-F0AA6DB5D4BC}" /f
reg delete "HKCU\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\windowsdefender" /f
reg delete "HKLM\SOFTWARE\Classes\AppUserModelId\Windows.Defender" /f
reg delete "HKLM\SOFTWARE\Classes\AppUserModelId\Microsoft.Windows.Defender" /f
reg delete "HKCR\AppX9kvz3rdv8t7twanaezbwfcdgrbg3bck0" /f
reg delete "HKCU\Software\Classes\ms-cxh" /f
reg delete "HKCR\WindowsDefender" /f
reg delete "HKCU\Software\Classes\AppX9kvz3rdv8t7twanaezbwfcdgrbg3bck0" /f
reg delete "HKLM\SOFTWARE\Classes\WindowsDefender" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\Ubpm" /v "CriticalMaintenance_DefenderCleanup" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\Ubpm" /v "CriticalMaintenance_DefenderVerification" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Ubpm" /v "CriticalMaintenance_DefenderCleanup" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Ubpm" /v "CriticalMaintenance_DefenderVerification" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\Static\System" /v "WindowsDefender-1" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\Static\System" /v "WindowsDefender-2" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\Static\System" /v "WindowsDefender-3" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\Static\System" /v "WindowsDefender-1" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\Static\System" /v "WindowsDefender-2" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\Static\System" /v "WindowsDefender-3" /f
reg delete "HKCR\CLSID\{E48B2549-D510-4A76-8A5F-FC126A6215F0}" /f
reg delete "HKCR\WOW6432Node\CLSID\{E48B2549-D510-4A76-8A5F-FC126A6215F0}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{E48B2549-D510-4A76-8A5F-FC126A6215F0}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{E48B2549-D510-4A76-8A5F-FC126A6215F0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Microsoft.OneCore.WebThreatDefense.Service.UserSessionServiceManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Microsoft.OneCore.WebThreatDefense.ThreatExperienceManager.ThreatExperienceManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Microsoft.OneCore.WebThreatDefense.ThreatResponseEngine.ThreatDecisionEngine" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Microsoft.OneCore.WebThreatDefense.Configuration.WTDUserSettings" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{900c0763-5cad-4a34-bc1f-40cd513679d5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{900c0763-5cad-4a34-bc1f-40cd513679d5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows Defender" /f
reg delete "HKCR\Folder\shell\WindowsDefender" /f
reg delete "HKCR\DesktopBackground\Shell\WindowsSecurity" /f
reg delete "HKCR\Folder\shell\WindowsDefender\Command" /f
reg delete "HKCR\DesktopBackground\Shell\Firewall" /f

:: Remove Edge
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\EdgeUpdate" /v "DoNotUpdateToEdgeWithChromium" /t REG_DWORD /d 1
cd /d "%ProgramFiles(x86)%\Microsoft"
for /f "tokens=1 delims=\" %%i in ('dir /B /A:D "%ProgramFiles(x86)%\Microsoft\Edge\Application" ^| find "."') do (set "edge_chromium_package_version=%%i")
if defined edge_chromium_package_version (
		echo Removing %edge_chromium_package_version%...
		Edge\Application\%edge_chromium_package_version%\Installer\setup.exe --uninstall --force-uninstall --msedge --system-level --verbose-logging
		EdgeCore\%edge_chromium_package_version%\Installer\setup.exe --uninstall --force-uninstall --msedge --system-level --verbose-logging
		powershell.exe -Command "Get-AppxPackage *MicrosoftEdge* | Remove-AppxPackage"
	) else (
		echo Microsoft Edge [Chromium] not found, skipping.
	)
cd /d
for /f "tokens=8 delims=\" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" ^| findstr "Microsoft-Windows-MicrosoftEdgeDevToolsClient-Package" ^| findstr "~~"') do (set "edge_package=%%i")
if defined edge_package (
		echo Removing %edge_package%...
		reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\%edge_package%" /v Visibility /t REG_DWORD /d 1 /f
		reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\%edge_package%\Owners" /va /f
		dism /online /Remove-Package /PackageName:%edge_package% /NoRestart
	) else (
		echo Package not found.
	)

:: Remove Onedrive
reg load HKLM\NTUSER C:\Users\Default\NTUSER.DAT
reg delete "HKLM\NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg unload HKLM\NTUSER
del /f /q /s "C:\Windows\System32\OneDriveSetup.exe"
del /f /q /s "C:\Windows\SysWOW64\OneDriveSettingSyncProvider.dll"
reg delete "HKCU\Environment" /v "OneDrive" /f
for /f "tokens=1 delims=," %%x in ('schtasks /query /fo csv ^| find "OneDrive"') do schtasks /Delete /TN %%x /F
reg delete "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg delete "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /d "0" /t REG_DWORD /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v DisableMeteredNetworkFileSync /d "1" /t REG_DWORD /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v DisableLibrariesDefaultSaveToOneDrive /d "1" /t REG_DWORD /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\OneDrive" /f
for /f "tokens=8 delims=\" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" ^| findstr "Microsoft-Windows-OneDrive-Setup-Package" ^| findstr "~~"') do (set "onedrive_package=%%i")
if defined onedrive_package (
		reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\%onedrive_package%" /v Visibility /t REG_DWORD /d 1 /f
		reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\%onedrive_package%\Owners" /va /f
		dism /online /Remove-Package /PackageName:%onedrive_package% /NoRestart
	) else (
		echo The package cannot be found.
	)

for /f "tokens=8 delims=\" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" ^| findstr "Microsoft-Windows-OneDrive-Setup-WOW64-Package" ^| findstr "~~"') do (set "onedrive_package=%%i")
if defined onedrive_package (
		reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\%onedrive_package%" /v Visibility /t REG_DWORD /d 1 /f
		reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\%onedrive_package%\Owners" /va /f
		dism /online /Remove-Package /PackageName:%onedrive_package% /NoRestart
	) else (
		echo The package cannot be found.
	)

:: remove other stuff
del /f /q /s "C:\Windows\System32\mcupdate_GenuineIntel.dll"
del /f /q /s "C:\Windows\System32\mobsync.exe"

:: Disable DMA remapping
for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "DmaRemappingCompatible" ^| find /i "Services\" ') do (
    reg add "%%a" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
)

:: Logger
for /f "usebackq tokens=1*" %%a in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger" /s /f "Enabled"^| findstr "HKEY"`) do reg add "%%a %%b" /v "Enabled" /t REG_DWORD /d 0 /f
for /f "usebackq tokens=1*" %%a in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger" /s /f "Start"^| findstr "HKEY"`) do reg add "%%a %%b" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System" /v "Start" /t REG_DWORD /d "1" /f
for /f "usebackq tokens=1*" %%a in (`reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT" /s /f "Enabled"^| findstr "HKEY"`) do reg add "%%a %%b" /v "Enabled" /t REG_DWORD /d 0 /f

:: power saving
PowerShell -NoP -C "$usb_devices = @('Win32_USBController', 'Win32_USBControllerDevice', 'Win32_USBHub'); $power_device_enable = Get-WmiObject MSPower_DeviceEnable -Namespace root\wmi; foreach ($power_device in $power_device_enable){$instance_name = $power_device.InstanceName.ToUpper(); foreach ($device in $usb_devices){foreach ($hub in Get-WmiObject $device){$pnp_id = $hub.PNPDeviceID; if ($instance_name -like \"*$pnp_id*\"){$power_device.enable = $False; $power_device.psbase.put()}}}}"

:: Removing CloudExperienceHost breaks the OOBE last stage, and it is required for Windows Store.
:: Removing UndocDevKit breaks the About page in Settings System section.
:: Removing Client.CBS also removes Input App, Screen Clipping and can cause issues with Windows 11 Start Menu.
set "UWPs=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications"
for %%i in (
Microsoft.SecHealthUI
Microsoft.MicrosoftEdge.Stable
NVIDIACorp.NVIDIAControlPanel
) do (
	for /f %%a in ('reg query "%UWPs%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)

set "InboxApplications=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications"
for %%i in (
MicrosoftEdge
MicrosoftEdgeDevToolsClient
Microsoft.Win32WebViewHost
Microsoft.XboxGameCallableUI
Microsoft.Windows.ContentDeliveryManager
) do (
for /f %%a in ('reg query "%InboxApplications%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)
