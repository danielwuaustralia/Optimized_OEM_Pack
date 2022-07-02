@echo off

rem autologger
for %%G in (UBPM,9C22BEA1-7763-41D1-B8F3-62A6ECC9D7E4,AITEventLog,AppModel,AppPlat,Audio,BioEnrollment,BluetoothSession,CloudExperienceHostOobe,DataMarket,DefenderApiLogger,DefenderAuditLogger,DiagLog,FaceCredProvReFSLog,FaceTel,FaceRecoTel,FaceUnlock,HolographicDevice,IntelRST,LwtNetLog,Mellanox-Kernel,Microsoft-Windows-AssignedAccess-Trace,Microsoft-Windows-CloudFiles-Filter-Log,Microsoft-Windows-CloudFiles-Filter-Trace,Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace,Microsoft-Windows-Setup,NBSMBLOGGER,NetCore,NetCfgTrace,NtfsLog,PEAuthLog,ReadyBoot,RdrLog,SCM,SetupPlatform,SetupPlatformTel,SHS-12112016-172924-3-1,SpoolerLogger,SQMLogger,TCPIPLOGGER,TileStore,Tpm,WdiContextLog,WiFiDriverIHVSession,WiFiDriverIHVSessionRepro,WiFiSession,UserNotPresentTraceSession,WindowsUpdate_trace_log,Cellcore,RadioMgr,WinPhoneCritical) do (
reg delete "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\%%G" /f
)
for %%G in ("AutoLogger-Diagtrack-Listener","Diagtrack-Listener","Circular Kernel Context Logger","WFP-IPsec Trace","WPR_initiated_DiagTrackMiniLogger_WPR System Collector") do (
reg delete "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\%%~G" /f
)

rem scheduled task
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

rem appx
set "windowsappx=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications"
for %%i in (
Microsoft.SecHealthUI
Microsoft.MicrosoftEdge.Stable
) do (
	for /f %%a in ('reg query "%windowsappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)

rem AADBrokerPlugin                       -  Credential Handler for Microsoft Azure Logon | Needed for: WindowsStoreApp
rem AccountsControl                       -  App to add Microsft Account for Microsoft Apps | Needed for: WindowsStoreApp
rem AddSuggestedFoldersToLibraryDialog    -  Add Suggested Folders to Library Dialog
rem AppResolverUX                         -  Modern Open With Dialog
rem AsyncTextService                      -  Messaging extensions for People and Maps Apps
rem BioEnrollment                         -  Windows Hello Setup
rem CapturePicker                         -  A system picker UI control to select an item on the screen to capture | Needed for: Screen snip
rem CBSPreview                            -  App for Camera Barcode Scanner
rem ContentDeliveryManager                -  Automatic installation of sponsored or promoted apps, suggesstions and Ads | Needed for: OOBE and Microsoft Account
rem CredDialogHost                        -  Authentication (Sign-in) shell support for Windows Hello
rem ECApp                                 -  Modern UI Dialog App for Eye Movement Control | Depends on: WindowsMixedReality
rem EdgeDevToolsClient                    -  An extension to edge containing tools for web developers | Depends on: Edge
rem FileExplorer                          -  Modern File Explorer App
rem FilePicker                            -  Modern File Picker Dialog
rem LockApp                               -  Container App for Apps and Messages on the Lockscreen
rem MapControl                            -  Map Control
rem NarratorQuickStart                    -  QuickStart Guide for Narrator
rem NcsiUwpApp                            -  Network Connectivity Status Indicator (NCSI)
rem OOBENetworkCaptivePortal              -  Captive Network Portals support during OOBE-Phase of Windows
rem OOBENetworkConnectionFlow             -  Connection Flow Network Portals support during OOBE-Phase of Windows
rem ParentalControls                      -  App for Parental Controls
rem PeopleExperienceHost                  -  People Bar (People Hub)
rem PinningConfirmationDialog             -  Pinning Confirmation Dialog
rem PrintDialog                           -  Modern Print Dialog | Needed for: Printing
rem RetailDemoContent                     -  Retail Demo Content
rem SettingSync                           -  Setting Sync
rem SkypeORTC                             -  Skype ORTC
rem SmartScreen                           -  Windows Defender SmartScreen Functionality for Modern Apps
rem WebcamExperience                      -  Webcam Experience
rem Win32WebViewHost                      -  Desktop App Web Viewer
rem WindowsDefender                       -  Windows Defender
rem WindowsMixedReality                   -  Windows Mixed Reality
rem WindowsReaderPDF                      -  Windows Reader (PDF) | Depends on: Edge
rem WindowsStoreClient                    -  Windows Store Back-end Client | Depends on: SmartScreen
rem XboxClient                            -  Xbox Back-end Client | Depends on: XboxGameCallableUI
rem XboxGameCallableUI                    -  Xbox Live
rem XGpuEjectDialog                       -  Modern Dialog App for safe removal of external GPUs
set "systemappx=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications"
for %%i in (
AsyncTextService
BioEnrollment
Microsoft.ECApp
LockApp
ContentDeliveryManager
NarratorQuickStart
MicrosoftEdge
MicrosoftEdgeDevToolsClient
Win32WebViewHost
ParentalControls
PeopleExperienceHost
AppRep.ChxApp
CloudExperienceHost
OOBENetworkCaptivePortal
OOBENetworkConnectionFlow
XGpuEjectDialog
Windows.CBSPreview
MicrosoftWindows.UndockedDevKit
SecureAssessmentBrowser
PrintDialog
) do (
	for /f %%a in ('reg query "%systemappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)
