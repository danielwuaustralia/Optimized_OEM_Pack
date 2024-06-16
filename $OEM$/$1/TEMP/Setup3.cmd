@echo on
setlocal enabledelayedexpansion
color 0a
>nul chcp 65001

:: powershell -noprofile -executionpolicy bypass -command "Get-ScheduledTask | Where {$_.State -match 'Ready'}"
powershell -noprofile -executionpolicy bypass -command "Get-ScheduledTask | Where {$_.TaskName -match 'MicrosoftEdge' } | Unregister-ScheduledTask -Confirm:$false"
powershell -noprofile -executionpolicy bypass -command "Get-ScheduledTask | Where {$_.TaskName -match 'GoogleUpdater' } | Unregister-ScheduledTask -Confirm:$false"
schtasks /delete /tn "StartAllBack Update" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\AppID" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Application Experience" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\AppxDeploymentClient" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Autochk" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\CloudExperienceHost" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Customer Experience Improvement Program" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Device Information" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DeviceDirectoryClient" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Diagnosis" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DiskDiagnostic" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DiskFootprint" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Feedback" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Flighting" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Location" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Maintenance" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Maps" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\MemoryDiagnostic" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\NetTrace" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Offline Files" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Power Efficiency Diagnostics" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\PushToInstall" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Ras" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Registry" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Time Synchronization" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Time Zone" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\User Profile Service" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Defender" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Error Reporting" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Filtering Platform" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WindowsUpdate" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UpdateOrchestrator" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WaaSMedic" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\XblGameSave" /f
schtasks /delete /tn "Microsoft\Windows\Diagnosis\Scheduled" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\PcaPatchDbTask" /f
schtasks /delete /tn "Microsoft\Windows\AppxDeploymentClient\UCPD velocity" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\ScanForUpdates" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\ScanForUpdatesAsUser" /f
schtasks /delete /tn "Microsoft\Windows\WindowsUpdate\Scheduled Start" /f
schtasks /delete /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /f
schtasks /delete /tn "Microsoft\Windows\DiskFootprint\Diagnostics" /f
schtasks /delete /tn "Microsoft\Windows\Maintenance\WinSAT" /f
schtasks /delete /tn "Microsoft\Windows\MemoryDiagnostic\RunFullMemoryDiagnostic" /f
schtasks /delete /tn "Microsoft\Windows\Shell\IndexerAutomaticMaintenance" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyMonitor" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyRefresh" /f
schtasks /delete /tn "Microsoft\Windows\PI\Sqm-Tasks" /f
schtasks /delete /tn "Microsoft\Windows\Registry\RegIdleBackup" /f
schtasks /delete /tn "Microsoft\Windows\StateRepository\MaintenanceTasks" /f
schtasks /delete /tn "Microsoft\Windows\ApplicationData\appuriverifierdaily" /f
schtasks /delete /tn "Microsoft\Windows\AppID\EDP Policy Manager" /f
schtasks /delete /tn "Microsoft\Windows\ApplicationData\appuriverifierinstall" /f
schtasks /delete /tn "Microsoft\Windows\BrokerInfrastructure\BgTaskRegistrationMaintenanceTask" /f
schtasks /delete /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /f
schtasks /delete /tn "Microsoft\Windows\Device Setup\Metadata Refresh" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\SmartRetry" /f
schtasks /delete /tn "Microsoft\Windows\Management\Provisioning\Cellular" /f
schtasks /delete /tn "Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents" /f
schtasks /delete /tn "Microsoft\Windows\Printing\EduPrintProv" /f
schtasks /delete /tn "Microsoft\Windows\PushToInstall\LoginCheck" /f
schtasks /delete /tn "Microsoft\Windows\Ras\MobilityManager" /f
schtasks /delete /tn "Microsoft\Windows\UPnP\UPnPHostConfig" /f
schtasks /delete /tn "Microsoft\Windows\WaaSMedic\PerformRemediation" /f
schtasks /delete /tn "Microsoft\Windows\Windows Media Sharing\UpdateLibrary" /f
schtasks /delete /tn "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /f
schtasks /delete /tn "Microsoft\Windows\ApplicationData\DsSvcCleanup" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\StartupAppTask" /f
schtasks /delete /tn "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /f
schtasks /delete /tn "Microsoft\Windows\International\Synchronize Language Settings" /f
schtasks /delete /tn "Microsoft\Windows\Wininet\CacheTask" /f
schtasks /delete /tn "Microsoft\Windows\WindowsColorSystem\Calibration Loader" /f
schtasks /delete /tn "Microsoft\Windows\TextServicesFramework\MsCtfMonitor" /f
schtasks /delete /tn "Microsoft\Windows\ExploitGuard\ExploitGuard MDM policy Refresh" /f
schtasks /delete /tn "Microsoft\Windows\WwanSvc\OobeDiscovery" /f
schtasks /delete /tn "Microsoft\Windows\PI\Secure-Boot-Update" /f
schtasks /delete /tn "Microsoft\Windows\LanguageComponentsInstaller\Installation" /f
schtasks /delete /tn "Microsoft\Windows\PI\SecureBootEncodeUEFI" /f
schtasks /delete /tn "Microsoft\Windows\WlanSvc\CDSSync" /f
schtasks /delete /tn "Microsoft\Windows\TPM\Tpm-Maintenance" /f
schtasks /delete /tn "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /f
schtasks /delete /tn "Microsoft\Windows\Input\PenSyncDataAvailable" /f
schtasks /delete /tn "Microsoft\Windows\Management\Provisioning\MdmDiagnosticsCleanup" /f
schtasks /delete /tn "Microsoft\Windows\Printing\PrinterCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\AppListBackup\BackupNonMaintenance" /f
schtasks /delete /tn "Microsoft\Windows\CloudRestore\Backup" /f
schtasks /delete /tn "Microsoft\Windows\Printing\PrintJobCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\Setup\SetupCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\ConsentUX\UnifiedConsent\UnifiedConsentSyncTask" /f
schtasks /delete /tn "Microsoft\Windows\Security\Pwdless\IntelligentPwdlessTask" /f
schtasks /delete /tn "Microsoft\Windows\Speech\SpeechModelDownloadTask" /f
schtasks /delete /tn "Microsoft\Windows\Data Integrity Scan\Data Integrity Check And Scan" /f

:: 3rd party Driver
reg add "HKLM\SYSTEM\CurrentControlSet\Services\3ware" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ADP80XX" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AmdK8" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppleSSD" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\arcsas" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\b06bdrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bcmfn2" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cht4iscsi" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cht4vbd" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ebdrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ebdrv0" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HpSAMD" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ibbus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ItSas35i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IntelPMT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LSI_SAS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LSI_SAS2i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LSI_SAS3i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\megasas2i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\megasas35i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\megasr" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mlx4_bus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mpi3drvi" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mvumis" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ndfltr" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\percsas2i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\percsas3i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pvscsi" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SiSRaid2" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SiSRaid4" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SmartSAMD" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stexstor" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VSTXRAID" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinMad" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WacomPen" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinVerbs" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UnionFS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvraid" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvstor" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Acx01000" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\atapi" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NVHDA" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\i8042prt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelpsp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdgpio2" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NVDisplay.ContainerLocalSystem" /v "Start" /t REG_DWORD /d "4" /f
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
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelpmax" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelpep" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaStorAVC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaStorV" /v "Start" /t REG_DWORD /d "4" /f

:: disable normal services
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fvevol" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iorate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rdyboost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\volsnap" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EhStorClass" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e96c-e325-11ce-bfc1-08002be10318}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{6bdd1fc6-810f-11d0-bec7-08002be2092f}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{ca3e7ab9-b4c3-4ae6-8251-579ef933890f}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ksthunk" /v "Start" /t REG_DWORD /d "4" /f
powershell -noprofile -executionpolicy bypass -command "Get-Service -Name 'GoogleUpdater*' | Set-Service -StartupType Disabled -Confirm:$false"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\RTUsbSwSrvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdate" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdatem" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\UCPD" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\wercplsupport" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WerSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\pla" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdBoot" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdFilter" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdNisDrv" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\wscsvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\wisvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WpnService" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\XblGameSave" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\xboxgip" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Telemetry" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthA2dp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthHFEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthLEEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthMini" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTHMODEM" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTHPORT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTHUSB" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HidBth" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Microsoft_Bluetooth_AvrcpTransport" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RFCOMM" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\KSecPkg" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb20" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rdbss" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\srv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\srv2" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\srvnet" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fdPHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FDResPub" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lmhosts" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SSDPSRV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpnService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PrintWorkFlowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Eaphost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IKEEXT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NdisVirtualBus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasMan" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SstpSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\acpipagr" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\afunix" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AsyncMac" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Beep" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bfs" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bindflt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bindflt" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bowser" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cdrom" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CimFS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cldflt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CompositeBus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dfsc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GPIOClx0101" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kdnic" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lltdio" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\luafv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MsLldp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSTEE" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NdisCap" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\npsvctrig" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\npsvctrig" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Ndu" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBIOS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PRM" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasAgileVpn" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Rasl2tp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasPppoe" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasSstp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rdbss" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rdpbus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rspndr" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SgrmAgent" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\tcpipreg" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\umbus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Vid" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wanarp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wanarpv6" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wcifs" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WindowsTrustedRT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WindowsTrustedRTProxy" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wof" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wof" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vdrvroot" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UEFI" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\tunnel" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\storflt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\storqosflt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\spaceport" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PEAUTH" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CLFS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\msisadrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MsSecCore" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\swenum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSKSSRV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\webthreatdefusersvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NPSMSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdgpio3" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\webthreatdefsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ShellHWDetection" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\hidserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PlugPlay" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UdkUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\camsvc" /v "Start" /t REG_DWORD /d "4" /f

:: extra
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem 'HKLM:\SYSTEM\CurrentControlSet\Services' | ? { $_.Name -notmatch 'Xbl|Xbox' } | % { $a = Get-ItemProperty -Path 'REGISTRY::$_' -EA SilentlyContinue; if ($null -ne $a.Start) { Set-ItemProperty -Path 'Registry::$_' -Name 'SvcHostSplitDisable' -Type DWORD -Value 1 -Force -EA SilentlyContinue } }"
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" /f
powershell -noprofile -executionpolicy bypass -command "$devices = @('ACPI Processor Aggregator','Microsoft Windows Management Interface for ACPI','NDIS 虚拟网络适配器枚举器','Microsoft RRAS Root Enumerator','WAN Miniport*','AMD PSP','Base System Device','复合总线枚举器','直接内存访问控制器','高精度事件计时器','Intel Management Engine','Intel SMBus','Legacy device','Microsoft Kernel Debug Network Adapter','母板资源','Numeric Data Processor','PCI数据捕获和信号处理控制器','PCI 加密/解密控制器','PCI内存控制器','PCI 简单通信控制器','PCI standard RAM Controller','SM 总线控制器','系统 CMOS/实时时钟','系统扬声器','系统计时器','Microsoft 存储空间控制器','UMBus Root Bus Enumerator','远程桌面设备重定向程序总线','PCI 标准 ISA 桥','Microsoft 虚拟驱动器枚举器','Microsoft UEFI 兼容系统','Microsoft Hyper-V 虚拟化基础结构驱动程序','AMD GPIO Controller'); Get-PnpDevice -FriendlyName $devices -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore;"
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v "ActivationType" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\ValueBanner.IdealStateFeatureControlProvider" /v "ActivationType" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Security.SmartScreen.AppReputationService" /v "ActivationType" /t REG_DWORD /d "0" /f
for /f "delims=" %%d in ('powershell -noprofile -c "Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\State\DisplayDatabase' | Select-Object -ExpandProperty Name | %% { $pathSplit = $_.Split('\'); $displayName = $pathSplit[$pathSplit.Length - 1]; $displayNameSplit = $displayName.Split('_'); if ($displayNameSplit.Length -eq 4) { return $displayName } }"') do (
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\State\DisplayDatabase\%%d" /v "DitherRegistryKey" /t REG_BINARY /d "db0100001000000002010104f4000000" /f )
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem 'Registry::\HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}' | ForEach-Object { Set-ItemProperty -Path $_.PSPath -Name 'EnableAdaptivity' -Type 'String' -Value '0' -Force}"
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem 'Registry::\HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}' | ForEach-Object { Set-ItemProperty -Path $_.PSPath -Name 'WirelessMode' -Type 'String' -Value '256' -Force}"
reg delete "HKLM\SYSHIVE\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /f
reg delete "HKLM\SYSHIVE\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /f
reg delete "HKLM\SYSHIVE\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /f
reg delete "HKLM\SYSHIVE\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /f
wevtutil set-log "Microsoft-Windows-SleepStudy/Diagnostic" /q:false
wevtutil set-log "Microsoft-Windows-Kernel-Processor-Power/Diagnostic" /q:false
wevtutil set-log "Microsoft-Windows-UserModePowerService/Diagnostic" /q:false
taskkill /f /im backgroundTaskHost.exe
ren "C:\Windows\System32\backgroundTaskHost.exe" backgroundTaskHost_old.exe
taskkill /f /im ctfmon.exe
ren "C:\Windows\System32\ctfmon.exe" ctfmon_old.exe
taskkill /f /im TextInputHost.exe
ren "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\TextInputHost.exe" TextInputHost_old.exe
taskkill /f /im RuntimeBroker.exe
ren "C:\Windows\System32\RuntimeBroker.exe" RuntimeBroker_old.exe
taskkill /f /im ShellExperienceHost.exe
ren "C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy\ShellExperienceHost.exe" ShellExperienceHost_old.exe
taskkill /f /im StartMenuExperienceHost.exe
ren "C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.exe" StartMenuExperienceHost_old.exe
taskkill /f /im ChsIME.exe
ren "C:\Windows\System32\InputMethod\CHS\ChsIME.exe" ChsIME_old.exe
taskkill /f /im mobsync.exe
ren "C:\Windows\System32\mobsync.exe" mobsync_old.exe
ren "C:\Windows\SysWOW64\mobsync.exe" mobsync_old.exe
rmdir /s /q "C:\Program Files (x86)\Microsoft\Edge"
rmdir /s /q "C:\Program Files (x86)\Microsoft\EdgeCore"
rmdir /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate"
rmdir /s /q "C:\Program Files (x86)\Microsoft\EdgeWebView"
rmdir /s /q "C:\Users\Administrator\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch"

:: for %%z in (
:: Windows-Defender
:: Microsoft-Windows-SenseClient
:: ) do (
:: powershell -noprofile -executionpolicy bypass -command "Set-ItemProperty -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*%%z*' -Name Visibility -Value 1 -Force -EA SilentlyContinue -Verbose"
:: powershell -noprofile -executionpolicy bypass -command "Remove-Item -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*%%z*' -Include *Owner* -Recurse -Force -EA SilentlyContinue -Verbose"
:: powershell -noprofile -executionpolicy bypass -command "Get-WindowsPackage -Online | Where {$_.PackageName -match '%%z' } | Remove-WindowsPackage -Online -NoRestart -EA SilentlyContinue"
:: )
