@cls
@echo on
setlocal enabledelayedexpansion
setlocal enableextensions
color 0a

:: scheduled tasks
schtasks /change /tn "Microsoft\Windows\TextServicesFramework\MsCtfMonitor" /enable
del /F /Q "C:\Windows\System32\Tasks\Microsoft\Windows\SettingSync\*"
powershell -nop -ep bypass -c "Get-ScheduledTask | Where {$_.TaskName -match 'GoogleUpdate' } | Unregister-ScheduledTask -Confirm:$false"
powershell -nop -ep bypass -c "Get-ScheduledTask | Where {$_.TaskName -match 'MicrosoftEdge' } | Unregister-ScheduledTask -Confirm:$false"
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\Report policies" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\UUS Failover Task" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\Refresh Settings" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\Schedule work" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\Start Oobe Expedite Work" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScan" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScanAfterUpdate" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScan_LicenseAccepted" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\Schedule Wake To Work" /f
schtasks /delete /tn "Microsoft\Windows\UpdateOrchestrator\Schedule Maintenance Work" /f
schtasks /delete /tn "Microsoft\Windows\WindowsUpdate\Scheduled Start" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\ProgramDataUpdater" /f
schtasks /delete /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /f
schtasks /delete /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /f
schtasks /delete /tn "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyMonitor" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyRefresh" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyUpload" /f
schtasks /delete /tn "Microsoft\Windows\Autochk\Proxy" /f
schtasks /delete /tn "Microsoft\Windows\Maintenance\WinSAT" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\AitAgent" /f
schtasks /delete /tn "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /f
schtasks /delete /tn "Microsoft\Windows\FileHistory\File History (maintenance mode)" /f
schtasks /delete /tn "Microsoft\Windows\PI\Sqm-Tasks" /f
schtasks /delete /tn "Microsoft\Windows\AppID\SmartScreenSpecific" /f
schtasks /delete /tn "Microsoft\Windows\SettingSync\BackgroundUploadTask" /f
schtasks /delete /tn "Microsoft\Windows\AppID\SmartScreenSpecific" /f
schtasks /delete /tn "Microsoft\Windows\ApplicationData\CleanupTemporaryState" /f
schtasks /delete /tn "Microsoft\Windows\ApplicationData\DsSvcCleanup" /f
schtasks /delete /tn "Microsoft\Windows\ApplicationData\appuriverifierinstall" /f
schtasks /delete /tn "Microsoft\Windows\ApplicationData\appuriverifierdaily" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\AitAgent" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\ProgramDataUpdater" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\StartupAppTask" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\PcaPatchDbTask" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\HypervisorFlightingTask" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /f
schtasks /delete /tn "Microsoft\Windows\Diagnosis\Scheduled" /f
schtasks /delete /tn "Microsoft\Windows\DiskFootprint\Diagnostics" /f
schtasks /delete /tn "Microsoft\Windows\DiskFootprint\StorageSense" /f
schtasks /delete /tn "Microsoft\Windows\ErrorDetails\EnableErrorDetailsUpdate" /f
schtasks /delete /tn "Microsoft\Windows\Feedback\Siuf\DmClient" /f
schtasks /delete /tn "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /f
schtasks /delete /tn "Microsoft\Windows\File Classification Infrastructure\Property Definition Sync" /f
schtasks /delete /tn "Microsoft\Windows\Management\Provisioning\Logon" /f
schtasks /delete /tn "Microsoft\Windows\Maps\MapsToastTask" /f
schtasks /delete /tn "Microsoft\Windows\Maps\MapsUpdateTask" /f
schtasks /delete /tn "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /f
schtasks /delete /tn "Microsoft\Windows\Multimedia\SystemSoundsService" /f
schtasks /delete /tn "Microsoft\Windows\NlaSvc\WiFiTask" /f
schtasks /delete /tn "Microsoft\Windows\NetCfg\BindingWorkItemQueueHandler" /f
schtasks /delete /tn "Microsoft\Windows\NetTrace\GatherNetworkInfo" /f
schtasks /delete /tn "Microsoft\Windows\Offline Files\Background Synchronization" /f
schtasks /delete /tn "Microsoft\Windows\Offline Files\Logon Synchronization" /f
schtasks /delete /tn "Microsoft\Windows\PI\Sqm-Tasks" /f
schtasks /delete /tn "Microsoft\Windows\Ras\MobilityManager" /f
schtasks /delete /tn "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /f
schtasks /delete /tn "Microsoft\Windows\Servicing\StartComponentCleanup" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyMonitor" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyRefresh" /f
schtasks /delete /tn "Microsoft\Windows\SpacePort\SpaceAgentTask" /f
schtasks /delete /tn "Microsoft\Windows\SpacePort\SpaceManagerTask" /f
schtasks /delete /tn "Microsoft\Windows\Speech\SpeechModelDownloadTask" /f
schtasks /delete /tn "Microsoft\Windows\User Profile Service\HiveUploadTask" /f
schtasks /delete /tn "Microsoft\Windows\WCM\WiFiTask" /f
schtasks /delete /tn "Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /f
schtasks /delete /tn "Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /f
schtasks /delete /tn "Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /f
schtasks /delete /tn "Microsoft\Windows\Windows Defender\Windows Defender Verification" /f
schtasks /delete /tn "Microsoft\Windows\Windows Error Reporting\QueueReporting" /f
schtasks /delete /tn "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /f
schtasks /delete /tn "Microsoft\Windows\Windows Media Sharing\UpdateLibrary" /f
schtasks /delete /tn "Microsoft\Windows\Wininet\CacheTask" /f
schtasks /delete /tn "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /f
schtasks /delete /tn "Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /f
schtasks /delete /tn "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /f
schtasks /delete /tn "Microsoft\XblGameSave\XblGameSaveTask" /f
schtasks /delete /tn "Microsoft\XblGameSave\XblGameSaveTaskLogon" /f
schtasks /delete /tn "Microsoft\Office\OfficeTelemetryAgentFallBack2016" /f
schtasks /delete /tn "Microsoft\Office\OfficeTelemetryAgentLogOn2016" /f
schtasks /delete /tn "Microsoft\Office\Office ClickToRun Service Monitor" /f
schtasks /delete /tn "Microsoft\Office\OfficeTelemetryAgentLogOn" /f
schtasks /delete /tn "Microsoft\Office\OfficeTelemetryAgentFallBack" /f
schtasks /delete /tn "Microsoft\Office\Office 15 Subscription Heartbeat" /f
schtasks /delete /tn "Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents" /f
schtasks /delete /tn "Microsoft\Windows\MemoryDiagnostic\RunFullMemoryDiagnostic" /f
schtasks /delete /tn "Microsoft\Windows\HelloFace\FODCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /f
schtasks /delete /tn "Microsoft\Windows\Clip\License Validation" /f
schtasks /delete /tn "Microsoft\Windows\Device Information\Device" /f
schtasks /delete /tn "Microsoft\Windows\Device Information\Device User" /f
schtasks /delete /tn "Microsoft\Windows\PerfTrack\BackgroundConfigSurveyor" /f
schtasks /delete /tn "Microsoft\Windows\Location\Notifications" /f
schtasks /delete /tn "Microsoft\Windows\Location\WindowsActionDialog" /f
schtasks /delete /tn "Microsoft\Windows\Retail Demo\CleanupOfflineContent" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyRefreshTask" /f
schtasks /delete /tn "Microsoft\Windows\UPnP\UPnPHostConfig" /f
schtasks /delete /tn "Microsoft\Windows\WaaSMedic\PerformRemediation" /f
schtasks /delete /tn "Microsoft\Windows\Time Zone\SynchronizeTimeZone" /f
schtasks /delete /tn "Microsoft\Windows\Time Synchronization\SynchronizeTime" /f
schtasks /delete /tn "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /f
schtasks /delete /tn "Microsoft\Windows\StateRepository\MaintenanceTasks" /f
schtasks /delete /tn "Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork" /f
schtasks /delete /tn "Microsoft\Windows\Shell\IndexerAutomaticMaintenance" /f
schtasks /delete /tn "Microsoft\Windows\Registry\RegIdleBackup" /f
schtasks /delete /tn "Microsoft\Windows\PushToInstall\LoginCheck" /f
schtasks /delete /tn "Microsoft\Windows\Printing\EduPrintProv" /f
schtasks /delete /tn "Microsoft\Windows\MUI\LPRemove" /f
schtasks /delete /tn "Microsoft\Windows\Management\Provisioning\Cellular" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\SmartRetry" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\ScanForUpdatesAsUser" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\ScanForUpdates" /f
schtasks /delete /tn "Microsoft\Windows\DiskCleanup\SilentCleanup" /f
schtasks /delete /tn "Microsoft\Windows\Device Setup\Metadata Refresh" /f
schtasks /delete /tn "Microsoft\Windows\BrokerInfrastructure\BgTaskRegistrationMaintenanceTask" /f
schtasks /delete /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319" /f
schtasks /delete /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64" /f
schtasks /delete /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64 Critical" /f
schtasks /delete /tn "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 Critical" /f
schtasks /delete /tn "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /f
schtasks /delete /tn "Microsoft\Windows\DUSM\dusmtask" /f
schtasks /delete /tn "Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask" /f
schtasks /delete /tn "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /f
schtasks /delete /tn "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing" /f
schtasks /delete /tn "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting" /f
schtasks /delete /tn "Microsoft\Windows\Flighting\OneSettings\RefreshCache" /f
schtasks /delete /tn "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /f
schtasks /delete /tn "Microsoft\Windows\Input\MouseSyncDataAvailable" /f
schtasks /delete /tn "Microsoft\Windows\Input\PenSyncDataAvailable" /f
schtasks /delete /tn "Microsoft\Windows\Input\TouchpadSyncDataAvailable" /f
schtasks /delete /tn "Microsoft\Windows\International\Synchronize Language Settings" /f
schtasks /delete /tn "Microsoft\Windows\LanguageComponentsInstaller\Installation" /f
schtasks /delete /tn "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /f
schtasks /delete /tn "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation" /f
schtasks /delete /tn "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /f
schtasks /delete /tn "Microsoft\Windows\Printing\PrinterCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\PushToInstall\Registration" /f
schtasks /delete /tn "Microsoft\Windows\RetailDemo\CleanupOfflineContent" /f
schtasks /delete /tn "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /f
schtasks /delete /tn "Microsoft\Windows\Setup\SetupCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\Setup\SnapshotCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization" /f
schtasks /delete /tn "Microsoft\Windows\Sysmain\ResPriStaticDbSync" /f
schtasks /delete /tn "Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /f
schtasks /delete /tn "Microsoft\Windows\Task Manager\Interactive" /f
schtasks /delete /tn "Microsoft\Windows\TPM\Tpm-HASCertRetr" /f
schtasks /delete /tn "Microsoft\Windows\TPM\Tpm-Maintenance" /f
schtasks /delete /tn "Microsoft\Windows\WDI\ResolutionHost" /f
schtasks /delete /tn "Microsoft\Windows\WlanSvc\CDSSync" /f
schtasks /delete /tn "Microsoft\Windows\WOF\WIM-Hash-Management" /f
schtasks /delete /tn "Microsoft\Windows\WOF\WIM-Hash-Validation" /f
schtasks /delete /tn "Microsoft\Windows\WwanSvc\NotificationTask" /f
schtasks /delete /tn "Microsoft\Windows\WwanSvc\OobeDiscovery" /f
schtasks /delete /tn "MicrosoftEdgeUpdateTaskMachineUA" /f
schtasks /delete /tn "MicrosoftEdgeUpdateTaskMachineCore" /f
schtasks /delete /tn "Microsoft\Windows\DirectX\DirectXDatabaseUpdater" /f
schtasks /delete /tn "Microsoft\Windows\BitLocker\BitLocker Encrypt All Drives" /f
schtasks /delete /tn "Microsoft\Windows\BitLocker\BitLocker MDM policy Refresh" /f
schtasks /delete /tn "Microsoft\Windows\DirectX\DXGIAdapterCache" /f
schtasks /delete /tn "Microsoft\Windows\USB\Usb-Notifications" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\IntegrityCheck" /f
schtasks /delete /tn "Microsoft\Windows\ExploitGuard\ExploitGuard MDM policy Refresh" /f
schtasks /delete /tn "Microsoft\Windows\Chkdsk\SyspartRepair" /f
schtasks /delete /tn "Microsoft\Windows\AppID\EDPPolicyManager" /f
schtasks /delete /tn "Microsoft\Windows\AppListBackup\Backup" /f
schtasks /delete /tn "Microsoft\Windows\Bluetooth\UninstallDeviceTask" /f
schtasks /delete /tn "Microsoft\Windows\Chkdsk\ProactiveScan" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\HandleCommand" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\HandleWnsCommand" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\LocateCommandUserSession" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceAccountChange" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\RegisterDevicePolicyChange" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceProtectionStateChanged" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceSettingChange" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\RegisterUserDevice" /f
schtasks /delete /tn "Microsoft\Windows\CertificateServicesClient\SystemTask" /f
schtasks /delete /tn "Microsoft\Windows\CertificateServicesClient\UserTask" /f
schtasks /delete /tn "Microsoft\Windows\CertificateServicesClient\UserTask-Roam" /f
schtasks /delete /tn "Microsoft\Windows\EDP\EDPAppLaunchTask" /f
schtasks /delete /tn "Microsoft\Windows\EDP\EDPAuthTask" /f
schtasks /delete /tn "Microsoft\Windows\EDP\EDPInaccessibleCredentialsTask" /f
schtasks /delete /tn "Microsoft\Windows\EDP\StorageCardEncryptionTask" /f
schtasks /delete /tn "Microsoft\Windows\Shell\CreateObjectTask" /f
schtasks /delete /tn "Microsoft\Windows\Shell\ThemesSyncedImageDownload" /f
schtasks /delete /tn "Microsoft\Windows\Shell\UpdateUserPictureTask" /f
schtasks /delete /tn "Microsoft\Windows\TaskScheduler\Maintenance Configurator" /f
schtasks /delete /tn "Microsoft\Windows\WindowsColorSystem\Calibration Loader" /f
schtasks /delete /tn "Microsoft\Windows\Printing\PrintJobCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\WakeUpAndContinueUpdates" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\WakeUpAndScanForUpdates" /f
schtasks /delete /tn "Microsoft\Windows\Input\InputSettingsRestoreDataAvailable" /f
schtasks /delete /tn "Microsoft\Windows\Input\syncpensettings" /f
schtasks /delete /tn "Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /f
schtasks /delete /tn "Microsoft\Windows\Active Directory Rights Management Services Client\AD RMS Rights Policy Template Management (Manual)" /f
schtasks /delete /tn "Microsoft\Windows\Active Directory Rights Management Services Client\AD RMS Rights Policy Template Management (Automated)" /f
schtasks /delete /tn "Microsoft\Windows\AppxDeploymentClient\Pre-staged app cleanup" /f
schtasks /delete /tn "Microsoft\Windows\CloudRestore\Backup" /f
schtasks /delete /tn "Microsoft\Windows\CloudRestore\Restore" /f
schtasks /delete /tn "Microsoft\Windows\Data Integrity Scan\Data Integrity Check And Scan" /f
schtasks /delete /tn "Microsoft\Windows\Data Integrity Scan\Data Integrity Scan" /f
schtasks /delete /tn "Microsoft\Windows\Data Integrity Scan\Data Integrity Scan for Crash Recovery" /f
schtasks /delete /tn "Microsoft\Windows\SystemRestore\SR" /f
schtasks /delete /tn "Microsoft\Windows\Management\Autopilot\DetectHardwareChange" /f
schtasks /delete /tn "Microsoft\Windows\Management\Autopilot\RemediateHardwareChange" /f
schtasks /delete /tn "Microsoft\Windows\ConsentUX\UnifiedConsent\UnifiedConsentSyncTask" /f
schtasks /delete /tn "Microsoft\Windows\AppxDeploymentClient\UCPD velocity" /f
schtasks /delete /tn "Microsoft\Windows\EDP\StorageCardEncryption Task" /f

:: Intel Drivers
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
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaStorAVC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaStorV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelide" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelpep" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelpmax" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelppm" /v "Start" /t REG_DWORD /d "4" /f

:: 3rd party driver
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
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NVDisplay.ContainerLocalSystem" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AmdPPM" /v "Start" /t REG_DWORD /d "4" /f

:: other services
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CryptSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rdbss" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sppsvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\InstallService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\System\CurrentControlSet\Services\Dhcp" /v "DependOnService" /t REG_MULTI_SZ /d "NSI\0Afd" /f
reg add "HKLM\System\CurrentControlSet\Services\hidserv" /v "DependOnService" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\System\CurrentControlSet\Control\Class\{4d36e96c-e325-11ce-bfc1-08002be10318}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\System\CurrentControlSet\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\System\CurrentControlSet\Control\Class\{6bdd1fc6-810f-11d0-bec7-08002be2092f}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\System\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fvevol" /v "ErrorControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fvevol" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rdyboost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\AssignedAccessManagerSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\RetailDemo" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\msisadrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblGameSave" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wscsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpnService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wisvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wercplsupport" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PNRPAutoReg" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppIDSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DispBrokerDesktopSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DisplayEnhancementService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DsSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fdPHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FDResPub" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\icssvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IKEEXT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IpxlatCfgSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\KtmRm" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lmhosts" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\luafv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasMan" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ShellHWDetection" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SmsRouter" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SSDPSRV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SstpSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WarpJITSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wecsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WPDBusEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SEMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wbengine" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AJRouter" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MessagingService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GraphicsPerfSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Smartcard" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AarSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PeerDistSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\embeddedmode" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fhsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wlpasvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppVClient" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AsyncMac" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Beep" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bindflt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthA2dp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthHFEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthLEEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthMini" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTHMODEM" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthPan" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTHPORT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTHUSB" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\buttonconverter" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CAD" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cdfs" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CimFS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\circlass" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cnghwassist" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CompositeBus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dfsc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ErrDev" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fdc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\flpydisk" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FileInfo" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FileCrypt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HidBth" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\KSecPkg" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Microsoft_Bluetooth_AvrcpTransport" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PenService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\P9RdrService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb20" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NdisVirtualBus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RFCOMM" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sfloppy" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\srv2" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\tcpipreg" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Telemetry" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\udfs" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\umbus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VerifierExt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rdpbus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vsmraid" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wcifs" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wcnfs" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WindowsTrustedRTProxy" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AxInstSV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinRM" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pcmcia" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lltdio" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UdkUserSv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CSC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\srvnet" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rspndr" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Psched" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\tdx" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cdrom" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Ndu" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mslldp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cldflt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\storqosflt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBIOS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ndiscap" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VSS" /v "Start" /t REG_DWORD /d "4" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\RTUsbSwSrvc" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NVDisplay.ContainerLocalSystem" /v "Start" /t REG_DWORD /d "4" /f

::Image File Execution Options
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe" /v "MitigationAuditOptions" /t REG_BINARY /d "222222222222222222222222222222222222222222222222" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe" /v "MitigationOptions" /t REG_BINARY /d "222222222222222222222222222222222222222222222222" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wininit.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "5" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe" /v "MitigationAuditOptions" /t REG_BINARY /d "222222222222222222222222222222222222222222222222" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe" /v "MitigationOptions" /t REG_BINARY /d "222222222222222222222222222222222222222222222222" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dllhost.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sppsvc.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sppsvc.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csgo.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "5" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cs2.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "5" /f

:: https://forums.mydigitallife.net/threads/windows-10-event-logs.86754/page-6#post-1790851
powershell -nop -ep bypass -c "Set-AutologgerConfig -Name 'Diagtrack-Listener' -Start 0"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "BufferSize" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "FileCounter" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "FileMax" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "MaxFileSize" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "MinimumBuffers" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Perflib\_V2Providers" /f
Auditpol /set /category:* /Success:disable /failure:disable
for /f "usebackq tokens=1*" %%a in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger" /s /f "Enabled"^| findstr "HKEY"`) do reg add "%%a %%b" /v "Enabled" /t REG_DWORD /d "0" /f
for /f "usebackq tokens=1*" %%a in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger" /s /f "Start"^| findstr "HKEY"`) do reg add "%%a %%b" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System" /v "Start" /t REG_DWORD /d "1" /f
for /f "usebackq tokens=1*" %%a in (`reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT" /s /f "Enabled"^| findstr "HKEY"`) do reg add "%%a %%b" /v "Enabled" /t REG_DWORD /d "0" /f

:: Removal
rmdir /s /q "C:\Program Files (x86)\Microsoft"
del /f /q /s "C:\Windows\System32\microsoft-windows-sleepstudy-events.dll"
del /f /q /s "C:\Windows\System32\wuaueng.dll"
del /f /q /s "C:\Windows\System32\usosvc.dll"
del /f /q /s "C:\Windows\System32\SIHClient.exe"
del /f /q /s "C:\Windows\System32\wuapihost.exe"
del /f /q /s "C:\Users\Administrator\AppData\Local\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\LocalState\*.*"
taskkill /f /im SearchApp.exe
del /f /q /s "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe"
del /f /q /s "C:\Windows\System32\mobsync.exe"
del /f /q /s "C:\Windows\System32\PlayToDevice.dll"
rmdir /s /q "C:\Windows\Logs"
rmdir /s /q "C:\ProgramData\USOShared\Logs"
rmdir /s /q "C:\ProgramData\Microsoft\Diagnosis"
rmdir /s /q "C:\Windows\System32\LogFiles"
rmdir /s /q "C:\Users\Administrator\AppData\Local\Temp"
rmdir /s /q "C:\Windows\Temp"
rmdir /s /q "C:\Windows\Prefetch"
rmdir /s /q "C:\Windows\System32\sru"
rmdir /s /q "C:\Windows\System32\WDI"
rmdir /s /q "C:\Windows\System32\winevt\Logs"
rmdir /s /q "C:\Windows\System32\config\systemprofile\AppData\Local"
rmdir /s /q "C:\ProgramData\NVIDIA Corporation\GameSessionTelemetry"
rmdir /s /q "C:\Windows\System32\IME\IMEJP"
rmdir /s /q "C:\Windows\System32\IME\IMEKR"
rmdir /s /q "C:\Windows\System32\IME\IMETC"
rmdir /s /q "C:\Windows\InboxApps"
