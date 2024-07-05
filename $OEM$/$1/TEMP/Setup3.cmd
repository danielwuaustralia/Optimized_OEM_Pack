@echo on
color 0a
>nul chcp 65001

:: tasks removal
powershell -noprofile -executionpolicy bypass -command "Get-ScheduledTask | Where {$_.TaskName -match 'MicrosoftEdge' } | Unregister-ScheduledTask -Confirm:$false"
powershell -noprofile -executionpolicy bypass -command "Get-ScheduledTask | Where {$_.TaskName -match 'GoogleUpdater' } | Unregister-ScheduledTask -Confirm:$false"
powershell -noprofile -executionpolicy bypass -command "Get-ScheduledTask | Where {$_.TaskName -match 'StartAllBack Update' } | Unregister-ScheduledTask -Confirm:$false"
schtasks /change /tn "Microsoft\Windows\Diagnosis\Scheduled" /disable
schtasks /change /tn "Microsoft\Windows\Application Experience\PcaPatchDbTask" /disable
schtasks /change /tn "Microsoft\Windows\AppxDeploymentClient\UCPD velocity" /disable
schtasks /change /tn "Microsoft\Windows\InstallService\ScanForUpdates" /disable
schtasks /change /tn "Microsoft\Windows\InstallService\ScanForUpdatesAsUser" /disable
schtasks /change /tn "Microsoft\Windows\WindowsUpdate\Scheduled Start" /disable
schtasks /change /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks /change /tn "Microsoft\Windows\DiskFootprint\Diagnostics" /disable
schtasks /change /tn "Microsoft\Windows\Maintenance\WinSAT" /disable
schtasks /change /tn "Microsoft\Windows\MemoryDiagnostic\RunFullMemoryDiagnostic" /disable
schtasks /change /tn "Microsoft\Windows\Shell\IndexerAutomaticMaintenance" /disable
schtasks /change /tn "Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
schtasks /change /tn "Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
schtasks /change /tn "Microsoft\Windows\PI\Sqm-Tasks" /disable
schtasks /change /tn "Microsoft\Windows\Registry\RegIdleBackup" /disable
schtasks /change /tn "Microsoft\Windows\StateRepository\MaintenanceTasks" /disable
schtasks /change /tn "Microsoft\Windows\ApplicationData\appuriverifierdaily" /disable
schtasks /change /tn "Microsoft\Windows\AppID\EDP Policy Manager" /disable
schtasks /change /tn "Microsoft\Windows\ApplicationData\appuriverifierinstall" /disable
schtasks /change /tn "Microsoft\Windows\BrokerInfrastructure\BgTaskRegistrationMaintenanceTask" /disable
schtasks /change /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /disable
schtasks /change /tn "Microsoft\Windows\Device Setup\Metadata Refresh" /disable
schtasks /change /tn "Microsoft\Windows\InstallService\SmartRetry" /disable
schtasks /change /tn "Microsoft\Windows\Management\Provisioning\Cellular" /disable
schtasks /change /tn "Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents" /disable
schtasks /change /tn "Microsoft\Windows\Printing\EduPrintProv" /disable
schtasks /change /tn "Microsoft\Windows\PushToInstall\LoginCheck" /disable
schtasks /change /tn "Microsoft\Windows\Ras\MobilityManager" /disable
schtasks /change /tn "Microsoft\Windows\UPnP\UPnPHostConfig" /disable
schtasks /change /tn "Microsoft\Windows\WaaSMedic\PerformRemediation" /disable
schtasks /change /tn "Microsoft\Windows\Windows Media Sharing\UpdateLibrary" /disable
schtasks /change /tn "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable
schtasks /change /tn "Microsoft\Windows\ApplicationData\DsSvcCleanup" /disable
schtasks /change /tn "Microsoft\Windows\Application Experience\StartupAppTask" /disable
schtasks /change /tn "Microsoft\Windows\LanguageComponentsInstaller\Installation" /disable
schtasks /change /tn "Microsoft\Windows\WlanSvc\CDSSync" /disable
schtasks /change /tn "Microsoft\Windows\PI\SecureBootEncodeUEFI" /disable
schtasks /change /tn "Microsoft\Windows\International\Synchronize Language Settings" /disable
schtasks /change /tn "Microsoft\Windows\Wininet\CacheTask" /disable
schtasks /change /tn "Microsoft\Windows\TextServicesFramework\MsCtfMonitor" /disable
schtasks /change /tn "Microsoft\Windows\WindowsColorSystem\Calibration Loader" /disable
schtasks /change /tn "Microsoft\Windows\ExploitGuard\ExploitGuard MDM policy Refresh" /disable
schtasks /change /tn "Microsoft\Windows\PI\Secure-Boot-Update" /disable
schtasks /change /tn "Microsoft\Windows\WwanSvc\OobeDiscovery" /disable
schtasks /change /tn "Microsoft\Windows\TPM\Tpm-Maintenance" /disable
schtasks /change /tn "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /disable
schtasks /change /tn "Microsoft\Windows\Input\PenSyncDataAvailable" /disable
schtasks /change /tn "Microsoft\Windows\Printing\PrinterCleanupTask" /disable
schtasks /change /tn "Microsoft\Windows\Setup\SetupCleanupTask" /disable
schtasks /change /tn "Microsoft\Windows\CloudRestore\Backup" /disable
schtasks /change /tn "Microsoft\Windows\AppListBackup\BackupNonMaintenance" /disable
schtasks /change /tn "Microsoft\Windows\AppListBackup\Backup" /disable
schtasks /change /tn "Microsoft\Windows\capabilityaccessmanager\maintenancetasks" /disable
schtasks /change /tn "Microsoft\Windows\Chkdsk\ProactiveScan" /disable
schtasks /change /tn "Microsoft\Windows\Shell\ThemesSyncedImageDownload" /disable
schtasks /change /tn "Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable
schtasks /change /tn "Microsoft\Windows\MUI\LPRemove" /disable
schtasks /change /tn "Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /disable
schtasks /change /tn "Microsoft\Windows\Printing\PrintJobCleanupTask" /disable
schtasks /change /tn "Microsoft\Windows\Security\Pwdless\IntelligentPwdlessTask" /disable
schtasks /change /tn "Microsoft\Windows\Speech\SpeechModelDownloadTask" /disable
schtasks /change /tn "Microsoft\Windows\Data Integrity Scan\Data Integrity Check And Scan" /disable
schtasks /change /tn "Microsoft\Windows\ConsentUX\UnifiedConsent\UnifiedConsentSyncTask" /disable
schtasks /change /tn "Microsoft\Windows\DiskCleanup\SilentCleanup" /disable
schtasks /change /tn "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /disable
schtasks /change /tn "Microsoft\Windows\InstallService\RestoreDevice" /disable
schtasks /change /tn "Microsoft\Windows\Management\Provisioning\Logon" /disable
schtasks /end /tn "Microsoft\Windows\Multimedia\SystemSoundsService"
schtasks /change /tn "Microsoft\Windows\Multimedia\SystemSoundsService" /disable
schtasks /change /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64 Critical" /disable
schtasks /change /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 Critical" /disable
schtasks /change /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64" /disable
schtasks /change /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319" /disable
schtasks /change /tn "Microsoft\Windows\Network Connectivity Status Indicator\NcsiIdentifyUserProxies" /disable
schtasks /change /tn "Microsoft\Windows\Sustainability\PowerGridForecastTask" /disable

:: intel only
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

:: Disable Services
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
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvstor" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Acx01000" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\atapi" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\atapi" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NVHDA" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\i8042prt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelpsp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdpsp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdgpio2" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdgpio3" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NVDisplay.ContainerLocalSystem" /v "Start" /t REG_DWORD /d "4" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\RTUsbSwSrvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\UCPD" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\wercplsupport" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WerSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdate" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdatem" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\pla" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdBoot" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdFilter" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdNisDrv" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\wscsvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /f
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
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\GameInputSvc" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fvevol" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fvevol" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iorate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iorate" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rdyboost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rdyboost" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\volsnap" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\volsnap" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EhStorClass" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e96c-e325-11ce-bfc1-08002be10318}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{6bdd1fc6-810f-11d0-bec7-08002be2092f}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{ca3e7ab9-b4c3-4ae6-8251-579ef933890f}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ksthunk" /v "Start" /t REG_DWORD /d "4" /f
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem 'HKLM:\SYSTEM\CurrentControlSet\Services' | % { $a = Get-ItemProperty -Path 'REGISTRY::$_' -EA SilentlyContinue; if ($null -ne $a.Start) { Set-ItemProperty -Path 'Registry::$_' -Name 'SvcHostSplitDisable' -Type DWORD -Value 1 -Force -EA SilentlyContinue } }"
powershell -noprofile -executionpolicy bypass -command "Get-Service -Name 'GoogleUpdater*' | Set-Service -StartupType Disabled -Confirm:$false"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PrintWorkFlowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\webthreatdefusersvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Telemetry" /v "Start" /t REG_DWORD /d "4" /f
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
reg add "HKLM\SYSTEM\CurrentControlSet\Services\KSecPkg" /v "ErrorControl" /t REG_DWORD /d "0" /f
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
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Eaphost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IKEEXT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NdisVirtualBus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasMan" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SstpSvc" /v "Start" /t REG_DWORD /d "4" /f
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
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GPIOClx0101" /v "ErrorControl" /t REG_DWORD /d "0" /f
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
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WindowsTrustedRT" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WindowsTrustedRTProxy" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wof" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wof" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vdrvroot" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vdrvroot" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UEFI" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\tunnel" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\storflt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\storqosflt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\spaceport" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\spaceport" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PEAUTH" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\msisadrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\msisadrv" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MsSecCore" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\swenum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSKSSRV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NPSMSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\webthreatdefsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ShellHWDetection" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\hidserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PlugPlay" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CloudBackupRestoreSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DisplayEnhancementService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dcsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NaturalAuthentication" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DusmSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NcbService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DispBrokerDesktopSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WmiAcpi" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WmiAcpi" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\volmgrx" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\volmgrx" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mpsdrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mpsdrv" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mpssvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mpssvc" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SessionEnv" /v "Start" /t REG_DWORD /d "4" /f
:: 
powershell -noprofile -executionpolicy bypass -command "Get-PnpDevice -FriendlyName 'Microsoft Kernel Debug Network Adapter' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore;"
powershell -noprofile -executionpolicy bypass -command "Get-PnpDevice -FriendlyName 'Microsoft Device Association Root Enumerator' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore;"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'System' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'Application' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'Security' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'Windows PowerShell' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'HardwareEvents' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'Key Management Service' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'Internet Explorer' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications" /v "ConfigureChatAutoInstall" /t REG_DWORD /d "0" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v "ActivationType" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\ValueBanner.IdealStateFeatureControlProvider" /v "ActivationType" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Security.SmartScreen.AppReputationService" /v "ActivationType" /t REG_DWORD /d "0" /f
for /f "delims=" %%d in ('powershell -noprofile -c "Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\State\DisplayDatabase' | Select-Object -ExpandProperty Name | %% { $pathSplit = $_.Split('\'); $displayName = $pathSplit[$pathSplit.Length - 1]; $displayNameSplit = $displayName.Split('_'); if ($displayNameSplit.Length -eq 4) { return $displayName } }"') do (
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\State\DisplayDatabase\%%d" /v "DitherRegistryKey" /t REG_BINARY /d "db0100001000000002010104f4000000" /f )
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem 'Registry::\HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}' | ForEach-Object { Set-ItemProperty -Path $_.PSPath -Name 'EnableAdaptivity' -Type 'String' -Value '0' -Force}"
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem 'Registry::\HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}' | ForEach-Object { Set-ItemProperty -Path $_.PSPath -Name 'WirelessMode' -Type 'String' -Value '256' -Force}"
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
ren "C:\Windows\System32\gameux.dll" gameux_old.dll
ren "C:\Windows\SysWOW64\gameux.dll" gameux_old.dll
ren "C:\Windows\System32\GameBarPresenceWriter.exe" GameBarPresenceWriter_old.exe
ren "C:\Windows\SysWOW64\GameBarPresenceWriter.exe" GameBarPresenceWriter_old.exe
taskkill /f /im GameInputSvc.exe
ren "C:\Windows\System32\GameInputSvc.exe" GameInputSvc_old.exe
rmdir /s /q "C:\Program Files (x86)\Microsoft\Edge"
rmdir /s /q "C:\Program Files (x86)\Microsoft\EdgeCore"
rmdir /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate"
rmdir /s /q "C:\Program Files (x86)\Microsoft\EdgeWebView"
wevtutil set-log "Microsoft-Windows-SleepStudy/Diagnostic" /q:false
wevtutil set-log "Microsoft-Windows-Kernel-Processor-Power/Diagnostic" /q:false
wevtutil set-log "Microsoft-Windows-UserModePowerService/Diagnostic" /q:false
for /f "skip=2 tokens=2,*" %%A in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Flighting\Build" /v OSVersion') do (set OSVersion=%%B)
taskkill /f /im TiWorker.exe
ren "C:\Windows\WinSxS\amd64_microsoft-windows-servicingstack_31bf3856ad364e35_%OSVersion%_none_8d2116508a8742da\TiWorker.exe" TiWorker_old.exe
for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "DmaRemappingCompatible" ^| find /i "Services\" ') do (
    reg add "%%a" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
)
for %%a in (
    Win32_USBController,
    Win32_VideoController,
    Win32_NetworkAdapter,
    Win32_IDEController
) do (
    for /f %%i in ('wmic path %%a get PNPDeviceID ^| findstr /l "PCI\VEN_"') do (
        reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
        reg delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f
    )
)
:: for %%z in (
:: Windows-Defender
:: Microsoft-Windows-SenseClient
:: ) do (
:: C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe -command "Set-ItemProperty -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*%%z*' -Name Visibility -Value 1 -Force -Verbose"
:: C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe -command "Remove-Item -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*%%z*' -Include *Owner* -Recurse -Force -Verbose"
:: C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe -command "Get-WindowsPackage -Online | Where {$_.PackageName -match '%%z' } | Remove-WindowsPackage -Online -NoRestart -Verbose"
:: )
