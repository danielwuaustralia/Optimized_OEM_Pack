@echo off
sc triggerinfo wuauserv delete
bcdedit /timeout 5
DISM.exe /Online /Set-ReservedStorageState /State:Disabled
powercfg -h off
powercfg -Change -monitor-timeout-ac 0
powercfg -Change -monitor-timeout-dc 0
powercfg -Change -standby-timeout-ac 0
powercfg -Change -standby-timeout-dc 0
powercfg /attributes sub_processor 0cc5b647-c1df-4637-891a-dec35c318583 -ATTRIB_HIDE
powercfg /attributes sub_processor ea062031-0e34-4ff1-9b6d-eb1059334028 -ATTRIB_HIDE
powercfg /setacvalueindex scheme_current sub_disk diskidle 0
powercfg /setdcvalueindex scheme_current sub_disk diskidle 0
powercfg /setacvalueindex scheme_current sub_none consolelock 0
powercfg /setdcvalueindex scheme_current sub_none consolelock 0
powercfg /setacvalueindex scheme_current sub_sleep hybridsleep 0
powercfg /setdcvalueindex scheme_current sub_sleep hybridsleep 0
powercfg /setacvalueindex scheme_current sub_sleep hibernateidle 0
powercfg /setdcvalueindex scheme_current sub_sleep hibernateidle 0
powercfg /setacvalueindex scheme_current sub_sleep standbyidle 0
powercfg /setdcvalueindex scheme_current sub_sleep standbyidle 0
powercfg /setacvalueindex scheme_current sub_buttons pbuttonaction 3
powercfg /setdcvalueindex scheme_current sub_buttons pbuttonaction 3
powercfg /setactive scheme_current
rem net accounts /maxpwage:unlimited
FOR /F "TOKENS=2 DELIMS==" %%A IN ('"WMIC /NAMESPACE:\\ROOT\CIMV2 PATH Win32_UserAccount GET Name /VALUE"') DO (
CALL WMIC /NAMESPACE:\\ROOT\CIMV2 PATH Win32_UserAccount WHERE Name='%%A' SET PasswordExpires=FALSE
)
for %%G in (UBPM,9C22BEA1-7763-41D1-B8F3-62A6ECC9D7E4,AutoLogger-Diagtrack-Listener,Diagtrack-Listener,Audio,LwtNetLog,NetCfgTrace,ReadyBoot,SCM,SQMLogger,WiFiSession,UserNotPresentTraceSession,WindowsUpdate_trace_log,Cellcore,RadioMgr,WinPhoneCritical) do (
reg delete "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\%%G" /f
)
reg delete "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\Circular Kernel Context Logger" /f
rem https://docs.microsoft.com/en-us/windows/application-management/per-user-services-in-windows
for %%G in (BcastDVRUserService,BluetoothUserService,CaptureService,cbdhsvc,CDPUserSvc,ConsentUxUserSvc,DevicePickerUserSvc,DevicesFlowUserSvc,MessagingService,OneSyncSvc,PhoneSvc,PimIndexMaintenanceSvc,PrintWorkflowUserSvc,UnistoreSvc,UserDataSvc,UdkUserSvc,WpnUserService) do (
sc config %%G start= disabled
sc stop %%G
)
auditpol /set /subcategory:"Special Logon" /success:disable
auditpol /set /subcategory:"Audit Policy Change" /success:disable
auditpol /set /subcategory:"User Account Management" /success:disable
cd %~dp0
attrib -S -H -R -A *.*
reg import Tweaks.reg
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband\AuxilliaryPins /v MailPin /t REG_DWORD /d 2 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate /v AutoDownload /t REG_DWORD /d 5 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\WindowsStore /v AutoDownload /t REG_DWORD /d 2 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection /v AllowTelemetry /t REG_DWORD /d 1 /f
rem reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f
reg add HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent /v DisableWindowsSpotlightFeatures /t REG_DWORD /d 1 /f
reg add HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent /v DisableThirdPartySuggestions /t REG_DWORD /d 1 /f
reg add HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer /v EnableLegacyBalloonNotifications /t REG_DWORD /d 1 /f
reg add HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer /v DisableNotificationCenter /t REG_DWORD /d 1 /f
reg add HKCU\SOFTWARE\Policies\Microsoft\Windows\DriverSearching /v DontSearchWindowsUpdate /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching /v SearchOrderConfig /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration" /v Notification_Suppress /t REG_DWORD /d 1 /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v WindowsDefender /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SecurityHealth /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v OneDriveSetup /f
set "_schtasks=SCHTASKS /Change /DISABLE /TN"
set "_schedule=Microsoft\Windows"
%_schtasks% "MicrosoftEdgeUpdateTaskMachineCore"
%_schtasks% "MicrosoftEdgeUpdateTaskMachineUA"
%_schtasks% "%_schedule%\.NET Framework\.NET Framework NGEN v4.0.30319 64 Critical"
%_schtasks% "%_schedule%\.NET Framework\.NET Framework NGEN v4.0.30319 64"
%_schtasks% "%_schedule%\.NET Framework\.NET Framework NGEN v4.0.30319 Critical"
%_schtasks% "%_schedule%\.NET Framework\.NET Framework NGEN v4.0.30319"
%_schtasks% "%_schedule%\SetupSQMTask"
%_schtasks% "%_schedule%\AppID\EDP Policy Manager"
%_schtasks% "%_schedule%\AppID\SmartScreenSpecific"
%_schtasks% "%_schedule%\Application Experience\Microsoft Compatibility Appraiser"
%_schtasks% "%_schedule%\Application Experience\ProgramDataUpdater"
%_schtasks% "%_schedule%\Application Experience\StartupAppTask"
%_schtasks% "%_schedule%\Application Experience\PcaPatchDbTask"
%_schtasks% "%_schedule%\ApplicationData\appuriverifierdaily"
%_schtasks% "%_schedule%\ApplicationData\appuriverifierinstall"
%_schtasks% "%_schedule%\ApplicationData\DsSvcCleanup"
%_schtasks% "%_schedule%\AppListBackup\Backup"
%_schtasks% "%_schedule%\AppxDeploymentClient\Pre-staged app cleanup"
%_schtasks% "%_schedule%\Autochk\Proxy"
%_schtasks% "%_schedule%\Bluetooth\UninstallDeviceTask"
%_schtasks% "%_schedule%\BrokerInfrastructure\BgTaskRegistrationMaintenanceTask"
%_schtasks% "%_schedule%\Chkdsk\ProactiveScan"
%_schtasks% "%_schedule%\Chkdsk\SyspartRepair"
%_schtasks% "%_schedule%\Clip\License Validation"
%_schtasks% "%_schedule%\CloudExperienceHost\CreateObjectTask"
%_schtasks% "%_schedule%\Customer Experience Improvement Program\BthSQM"
%_schtasks% "%_schedule%\Customer Experience Improvement Program\Consolidator"
%_schtasks% "%_schedule%\Customer Experience Improvement Program\KernelCeipTask"
%_schtasks% "%_schedule%\Customer Experience Improvement Program\TelTask"
%_schtasks% "%_schedule%\Customer Experience Improvement Program\UsbCeip"
%_schtasks% "%_schedule%\Data Integrity Scan\Data Integrity Check And Scan"
%_schtasks% "%_schedule%\Data Integrity Scan\Data Integrity Scan"
%_schtasks% "%_schedule%\Data Integrity Scan\Data Integrity Scan for Crash Recovery"
%_schtasks% "%_schedule%\Deduplication\BackgroundOptimization"
%_schtasks% "%_schedule%\Deduplication\WeeklyGarbageCollection"
%_schtasks% "%_schedule%\Deduplication\WeeklyScrubbing"
%_schtasks% "%_schedule%\Defrag\ScheduledDefrag"
%_schtasks% "%_schedule%\Device Information\Device"
%_schtasks% "%_schedule%\Device Information\Device User"
%_schtasks% "%_schedule%\Diagnosis\RecommendedTroubleshootingScanner"
%_schtasks% "%_schedule%\Diagnosis\Scheduled"
%_schtasks% "%_schedule%\DirectX\DirectXDatabaseUpdater"
%_schtasks% "%_schedule%\DirectX\DXGIAdapterCache"
%_schtasks% "%_schedule%\DiskCleanup\SilentCleanup"
%_schtasks% "%_schedule%\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
%_schtasks% "%_schedule%\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
%_schtasks% "%_schedule%\DiskFootprint\Diagnostics"
%_schtasks% "%_schedule%\DiskFootprint\StorageSense"
%_schtasks% "%_schedule%\DUSM\dusmtask"
%_schtasks% "%_schedule%\ErrorDetails\EnableErrorDetailsUpdate"
%_schtasks% "%_schedule%\ErrorDetails\ErrorDetailsUpdate"
%_schtasks% "%_schedule%\ExploitGuard\ExploitGuard MDM policy Refresh"
%_schtasks% "%_schedule%\Feedback\Siuf\DmClient"
%_schtasks% "%_schedule%\Feedback\Siuf\DmClientOnScenarioDownload"
%_schtasks% "%_schedule%\FileHistory\File History (maintenance mode)"
%_schtasks% "%_schedule%\Flighting\FeatureConfig\ReconcileFeatures"
%_schtasks% "%_schedule%\Flighting\FeatureConfig\UsageDataFlushing"
%_schtasks% "%_schedule%\Flighting\FeatureConfig\UsageDataReporting"
%_schtasks% "%_schedule%\Flighting\OneSettings\RefreshCache"
%_schtasks% "%_schedule%\HelloFace\FODCleanupTask"
%_schtasks% "%_schedule%\Input\LocalUserSyncDataAvailable"
%_schtasks% "%_schedule%\Input\MouseSyncDataAvailable"
%_schtasks% "%_schedule%\Input\PenSyncDataAvailable"
%_schtasks% "%_schedule%\Input\TouchpadSyncDataAvailable"
%_schtasks% "%_schedule%\International\Synchronize Language Settings"
%_schtasks% "%_schedule%\InstallService\ScanForUpdates"
%_schtasks% "%_schedule%\InstallService\ScanForUpdatesAsUser"
%_schtasks% "%_schedule%\InstallService\SmartRetry"
%_schtasks% "%_schedule%\Kernel\La57Cleanup"
%_schtasks% "%_schedule%\LanguageComponentsInstaller\Installation"
%_schtasks% "%_schedule%\LanguageComponentsInstaller\Uninstallation"
%_schtasks% "%_schedule%\LanguageComponentsInstaller\ReconcileLanguageResources"
%_schtasks% "%_schedule%\Location\Notifications"
%_schtasks% "%_schedule%\Location\WindowsActionDialog"
%_schtasks% "%_schedule%\Maintenance\WinSAT"
%_schtasks% "%_schedule%\Management\Provisioning\Cellular"
%_schtasks% "%_schedule%\Management\Provisioning\Logon"
%_schtasks% "%_schedule%\Maps\MapsToastTask"
%_schtasks% "%_schedule%\Maps\MapsUpdateTask"
%_schtasks% "%_schedule%\MemoryDiagnostic\ProcessMemoryDiagnosticEvents"
%_schtasks% "%_schedule%\MemoryDiagnostic\RunFullMemoryDiagnostic"
%_schtasks% "%_schedule%\Mobile Broadband Accounts\MNO Metadata Parser"
%_schtasks% "%_schedule%\MUI\LPRemove"
%_schtasks% "%_schedule%\NetTrace\GatherNetworkInfo"
%_schtasks% "%_schedule%\NlaSvc\WiFiTask"
%_schtasks% "%_schedule%\Offline Files\Synchronization"
%_schtasks% "%_schedule%\PI\Secure-Boot-Update"
%_schtasks% "%_schedule%\PI\Sqm-Tasks"
%_schtasks% "%_schedule%\Power Efficiency Diagnostics\AnalyzeSystem"
%_schtasks% "%_schedule%\Printing\EduPrintProv"
%_schtasks% "%_schedule%\Printing\PrinterCleanupTask"
%_schtasks% "%_schedule%\PushToInstall\Registration"
%_schtasks% "%_schedule%\Ras\MobilityManager"
%_schtasks% "%_schedule%\RecoveryEnvironment\VerifyWinRE"
%_schtasks% "%_schedule%\RemoteAssistance\RemoteAssistanceTask"
%_schtasks% "%_schedule%\RetailDemo\CleanupOfflineContent"
%_schtasks% "%_schedule%\Servicing\StartComponentCleanup"
%_schtasks% "%_schedule%\SettingSync\BackupTask"
%_schtasks% "%_schedule%\SettingSync\NetworkStateChangeTask"
%_schtasks% "%_schedule%\Setup\SetupCleanupTask"
%_schtasks% "%_schedule%\Shell\FamilySafetyMonitor"
%_schtasks% "%_schedule%\Shell\FamilySafetyRefresh"
%_schtasks% "%_schedule%\Shell\FamilySafetyRefreshTask"
%_schtasks% "%_schedule%\Shell\IndexerAutomaticMaintenance"
%_schtasks% "%_schedule%\Shell\UpdateUserPictureTask"
%_schtasks% "%_schedule%\Shell\ThemesSyncedImageDownload"
%_schtasks% "%_schedule%\SMB\UninstallSMB1ClientTask"
%_schtasks% "%_schedule%\SMB\UninstallSMB1ServerTask"
%_schtasks% "%_schedule%\SpacePort\SpaceAgentTask"
%_schtasks% "%_schedule%\SpacePort\SpaceManagerTask"
%_schtasks% "%_schedule%\Speech\HeadsetButtonPress"
%_schtasks% "%_schedule%\Speech\SpeechModelDownloadTask"
%_schtasks% "%_schedule%\Storage Tiers Management\Storage Tiers Management Initialization"
%_schtasks% "%_schedule%\Storage Tiers Management\Storage Tiers Optimization"
%_schtasks% "%_schedule%\Subscription\EnableLicenseAcquisition"
%_schtasks% "%_schedule%\Subscription\LicenseAcquisition"
%_schtasks% "%_schedule%\Sysmain\ResPriStaticDbSync"
%_schtasks% "%_schedule%\Sysmain\WsSwapAssessmentTask"
%_schtasks% "%_schedule%\SystemRestore\SR"
%_schtasks% "%_schedule%\UNP\RunUpdateNotificationMgr"
%_schtasks% "%_schedule%\USB\Usb-Notifications"
%_schtasks% "%_schedule%\WCM\WiFiTask"
%_schtasks% "%_schedule%\WDI\ResolutionHost"
%_schtasks% "%_schedule%\Windows Defender\Windows Defender Cache Maintenance"
%_schtasks% "%_schedule%\Windows Defender\Windows Defender Cleanup"
%_schtasks% "%_schedule%\Windows Defender\Windows Defender Scheduled Scan"
%_schtasks% "%_schedule%\Windows Defender\Windows Defender Verification"
%_schtasks% "%_schedule%\Windows Error Reporting\QueueReporting"
%_schtasks% "%_schedule%\Windows Filtering Platform\BfeOnServiceStartTypeChange"
%_schtasks% "%_schedule%\Windows Media Sharing\UpdateLibrary"
%_schtasks% "%_schedule%\WindowsColorSystem\Calibration Loader"
%_schtasks% "%_schedule%\WindowsUpdate\Automatic App Update"
%_schtasks% "%_schedule%\WindowsUpdate\Scheduled Start"
%_schtasks% "%_schedule%\WindowsUpdate\sih"
%_schtasks% "%_schedule%\WindowsUpdate\sihboot"
%_schtasks% "%_schedule%\WlanSvc\CDSSync"
%_schtasks% "%_schedule%\WOF\WIM-Hash-Management"
%_schtasks% "%_schedule%\WOF\WIM-Hash-Validation"
%_schtasks% "%_schedule%\Work Folders\Work Folders Logon Synchronization"
%_schtasks% "%_schedule%\Work Folders\Work Folders Maintenance Work"
%_schtasks% "%_schedule%\WS\WSTask"
%_schtasks% "%_schedule%\WwanSvc\NotificationTask"
%_schtasks% "%_schedule%\WwanSvc\OobeDiscovery"
%_schtasks% "%_schedule%\WwanSvc\WiFiTask"
%_schtasks% "Microsoft\XblGameSave\XblGameSaveTask"
%_schtasks% "Microsoft\XblGameSave\XblGameSaveTaskLogon"
%_schtasks% "Microsoft\OneCore\DirectX\DirectXDatabaseUpdater"
(
echo %_schtasks% "%_schedule%\BitLocker\BitLocker Encrypt All Drives"
echo %_schtasks% "%_schedule%\BitLocker\BitLocker MDM policy Refresh"
echo %_schtasks% "%_schedule%\Chkdsk\SyspartRepair"
echo %_schtasks% "%_schedule%\Device Setup\Metadata Refresh"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\HandleCommand"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\HandleWnsCommand"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\IntegrityCheck"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\LocateCommandUserSession"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\RegisterDeviceAccountChange"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\RegisterDeviceConnectedToNetwork"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\RegisterDeviceLocationRightsChange"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\RegisterDevicePeriodic1"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\RegisterDevicePeriodic24"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\RegisterDevicePeriodic6"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\RegisterDevicePolicyChange"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\RegisterDeviceProtectionStateChanged"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\RegisterDeviceScreenOnOff"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\RegisterDeviceSettingChange"
echo %_schtasks% "%_schedule%\DeviceDirectoryClient\RegisterUserDevice"
echo %_schtasks% "%_schedule%\EDP\EDP App Launch Task"
echo %_schtasks% "%_schedule%\EDP\EDP Auth Task"
echo %_schtasks% "%_schedule%\EDP\EDP Inaccessible Credentials Task"
echo %_schtasks% "%_schedule%\EDP\StorageCardEncryption Task"
echo %_schtasks% "%_schedule%\termsrv\RemoteFX\RemoteFXvGPUDisableTask"
echo %_schtasks% "%_schedule%\termsrv\RemoteFX\RemoteFXWarningTask"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\AC Power Download"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\AC Power Install"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Backup Scan"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Battery Saver Deferred Install"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Maintenance Install"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\MusUx_UpdateInterval"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Policy Install"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Reboot"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Reboot_AC"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Reboot_Battery"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Report policies"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Refresh Settings"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Resume On Boot"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Schedule Retry Scan"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Schedule Scan Static Task"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Schedule Scan"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Schedule Work"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\UpdateModelTask"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\USO_Broker_Display"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\USO_UxBroker_Display"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\USO_UxBroker_ReadyToReboot"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\USO_UxBroker"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Schedule Wake To Work"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Schedule Maintenance Work"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Start Oobe Expedite Work"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\StartOobeAppsScan"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\StartOobeAppsScanAfterUpdate"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Universal Orchestrator Idle Start"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\Universal Orchestrator Start"
echo %_schtasks% "%_schedule%\UpdateOrchestrator\UUS Failover Task"
echo %_schtasks% "%_schedule%\WaaSMedic\PerformRemediation"
echo %_schtasks% "%_schedule%\WindowsUpdate\sihpostreboot"
echo %_schtasks% "%_schedule%\SettingSync\BackgroundUploadTask"
)>%windir%\SystemTasks.cmd
SCHTASKS /Create /F /RU "SYSTEM" /RL HIGHEST /SC HOURLY /TN SystemTasks /TR "cmd /c %windir%\SystemTasks.cmd"
SCHTASKS /Run /I /TN SystemTasks
TIMEOUT /T 10
SCHTASKS /Delete /F /TN SystemTasks
del /f /q %windir%\SystemTasks.cmd
del /f /q %SystemDrive%\unattend.xml
del /f /q %ProgramData%\Microsoft\Diagnosis\*.rbs
del /f /q /s %ProgramData%\Microsoft\Diagnosis\ETLLogs\*
del /f /q /s "%ProgramData%\Microsoft\Windows Defender\Scans\*"

%windir%\System32\UsoClient.exe RefreshSettings
