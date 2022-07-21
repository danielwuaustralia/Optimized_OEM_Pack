@echo off
rem Win11 Chat
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications /v ConfigureChatAutoInstall /t REG_DWORD /d 0 /f
rem DumpStack.log.tmp
reg add HKLM\SYSTEM\ControlSet001\Control\CrashControl /v EnableLogFile /t REG_DWORD /d 0 /f
set _r=^%%SystemRoot^%%
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\PnpLockdownFiles\%_r%/System32/drivers/UMDF/Microsoft.Bluetooth.Profiles.HidOverGatt.dll /f
DISM.exe /Online /Set-ReservedStorageState /State:Disabled
rem reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WaaSAssessment /v DisableAssessment /t REG_SZ /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v AllowCrossDeviceClipboard /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v EnableActivityFeed /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v PublishUserActivities /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v UploadUserActivities /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock /v AllowAllTrustedApps /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v DisableEdgeDesktopShortcutCreation /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer /v HideSCAMeetNow /t REG_DWORD /d 1 /f
:: reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v EnableFeeds /t REG_DWORD /d 0 /f
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Feeds /v ShellFeedsTaskbarViewMode /t REG_DWORD /d 2 /f
reg add HKLM\SOFTWARE\Microsoft\Edge /v HideFirstRunExperience /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Hvsi /v DisableHvsi /t REG_DWORD /d 1 /f
:: Defaultuser0
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Broker\ElevatedClsids\{2b2cad40-19c1-4794-b32d-397e41d5e8a7} /v AutoElevationAllowed /t REG_DWORD /d 1 /f
:: KB4483874
reg add HKLM\SOFTWARE\Microsoft\WBEM\PROVIDERS\WmiPerf /v "Enable Costly Providers" /t REG_DWORD /d 0 /f
:: KB4093492
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters /v AllowEncryptionOracle /t REG_DWORD /d 2 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat /v cadca5fe-87d3-4b96-b7fb-a231484277cc /t REG_DWORD /d 0 /f
:: KB4531006
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Kernel" /v DisableTsx /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v FeatureSettings /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 3 /f
reg add HKLM\SOFTWARE\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}\ShellFolder /v Attributes /t REG_DWORD /d 0xb090010d /f
reg add HKLM\SOFTWARE\Classes\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\ShellFolder /v Attributes /t REG_DWORD /d 0xb0940064 /f
reg add HKLM\SOFTWARE\Classes\CLSID\{B4FB3F98-C1EA-428d-A78A-D1F5659CBA93}\ShellFolder /v Attributes /t REG_DWORD /d 0xb094010c /f
reg add HKLM\SOFTWARE\Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\ShellFolder /v Attributes /t REG_DWORD /d 0xf090004d /f
reg add HKLM\SOFTWARE\Classes\CLSID\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}\ShellFolder /v Attributes /t REG_DWORD /d 0xf090004d /f
rem reg add HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility /v HideInsiderPage /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ConnectedSearch /v ConnectedSearchUseWeb /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v DisableVoice /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableFirstLogonAnimation /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v PromptOnSecureDesktop /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack /v DiagTrackAuthorization /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate /v AutoDownload /t REG_DWORD /d 5 /f
rem reg add HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Update /v AllowAutoUpdate /t REG_DWORD /d 5 /f
reg add HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Browser /v AllowSmartScreen /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\SmartScreen /v EnableSmartScreenInShell /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v SmartScreenEnabled /t REG_SZ /d Off /f
reg add HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter /v EnabledV9 /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v EnableSmartScreen /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WinRE /v DisableSetup /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v AUOptions /t REG_DWORD /d 2 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v NoAutoUpdate /t REG_DWORD /d 0 /f
rem reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v SetDisableUXWUAccess /t REG_DWORD /d 1 /f
rem reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive /v DisableFileSyncNGSC /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization /v DODownloadMode /t REG_DWORD /d 100 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent /v DisableSoftLanding /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\MRT /v DontOfferThroughWUAU /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\MRT /v DontReportInfectionInformation /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v DoNotShowFeedbackNotifications /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v EnableCdp /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching /v DriverUpdateWizardWuSearchEnabled /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching /v SearchOrderConfig /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 1 /f
rem reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
rem reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowSearchToUseLocation /t REG_DWORD /d 0 /f
rem reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v ConnectedSearchUseWeb /t REG_DWORD /d 0 /f
net stop WinDefend /y || sc stop WinDefend
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v TamperProtection /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v SpyNetReporting /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /v DisableEnhancedNotifications /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiVirus /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Features" /v TamperProtection /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v ConfigureAppInstallControlEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v ConfigureAppInstallControl /t REG_SZ /d Anywhere /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration" /v Notification_Suppress /t REG_DWORD /d 1 /f
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -DisableService
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v MaintenanceDisabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\TelemetryController" /v Oobe /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v DisableRemovePayload /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v DisableWerReporting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v EnableDpxLog /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v ResetManifestCache /t REG_DWORD /d 1 /f
rem reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v CreateNewWindowsVersion /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v CBSLogCompress /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v DisableComponentBackups /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v DisableWerReporting /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v SupersededActions /t REG_DWORD /d 3 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v PreserveFileCompressionState /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v NumCBSPersistLogs /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v NTFSCompressPayload /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v DisableManifestCache /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v TransientManifestCache /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v DisableResetbase /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v CompressBackups /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration /v CompressMutables /t REG_DWORD /d 0 /f
rem reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Servicing /v TransientManifestCache /t REG_DWORD /d 1 /f
reg add HKLM\SYSTEM\ControlSet001\Control\Diagnostics\Performance /v DisableDiagnosticTracing /t REG_DWORD /d 1 /f
reg add HKLM\SYSTEM\ControlSet001\Control\Diagnostics\Performance\BootCKCLSettings /v Start /t REG_DWORD /d 0 /f
reg add HKLM\SYSTEM\ControlSet001\Control\Diagnostics\Performance\SecondaryLogonCKCLSettings /v Start /t REG_DWORD /d 0 /f
reg add HKLM\SYSTEM\ControlSet001\Control\Diagnostics\Performance\ShutdownCKCLSettings /v Start /t REG_DWORD /d 0 /f
reg add HKLM\SYSTEM\ControlSet001\Control\Network\NewNetworkWindowOff /f
reg add HKLM\SYSTEM\ControlSet001\Services\FontCache\Parameters /v DisableFontProviders /t REG_DWORD /d 1 /f
reg add HKLM\SYSTEM\ControlSet001\Services\ADOVMPPackage\Final /v ActivationEnabled /t REG_DWORD /d 1 /f
regsvr32 /u /s "%ProgramFiles%\Windows Defender\shellext.dll"
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v WindowsDefender /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SecurityHealth /f
reg add HKLM\SYSTEM\ControlSet001\Services\LanmanServer\Parameters /v SMB1 /t REG_DWORD /d 0 /f
reg add HKLM\SYSTEM\ControlSet001\Services\LanmanServer\Parameters /v AuditSmb1Access /t REG_DWORD /d 0 /f
reg add HKLM\SYSTEM\ControlSet001\Services\LanmanWorkstation\Parameters /v AuditSmb1Access /t REG_DWORD /d 0 /f
if exist "%windir%\System32\Drivers\mrxsmb10.sys" (
sc config lanmanworkstation depend= bowser/mrxsmb20/nsi 
sc config mrxsmb10 start= disabled
)
for %%G in (BthAvctpSvc,CertPropSvc,CDPSvc,CscService,DiagTrack,DisplayEnhancementService,DoSvc,DevicesFlow,DevQueryBroker,DsmSvc,DusmSvc,DPS,diagnosticshub.standardcollector.service,dmwappushservice,GraphicsPerfSvc,LxpSvc,MapsBroker,NaturalAuthentication,PcaSvc,RemoteRegistry,RmSvc,SEMgrSvc,SharedRealitySvc,SmsRouter,Spooler,TrkWks,StiSvc,SecurityHealthService,Sense,WaaSMedicSvc,WarpJITSvc,WerSvc,wercplsupport,WpcMonSvc,WMPNetworkSvc,WSearch,WdNisDrv,WdNisSvc,WinDefend,XboxNetApiSvc) do (
sc config %%G start= disabled
)
sc config SysMain start= disabled
for /f "tokens=6 delims=[]. " %%# in ('ver') do set winbuild=%%#
if %winbuild% lss 22000 for %%G in (AarSvc,BcastDVRUserService,BluetoothUserService,CaptureService,cbdhsvc,CDPUserSvc,ConsentUxUserSvc,DevicePickerUserSvc,DevicesFlowUserSvc,MessagingService,OneSyncSvc,PhoneSvc,PimIndexMaintenanceSvc,PrintWorkflowUserSvc,UnistoreSvc,UserDataSvc,UdkUserSvc,WpnUserService) do reg query HKLM\SYSTEM\ControlSet001\Services\%%G /v Start 1>nul 2>nul && (
reg add HKLM\SYSTEM\ControlSet001\Services\%%G /v Start /t REG_DWORD /d 4 /f
reg add HKLM\SYSTEM\ControlSet001\Services\%%G /v UserServiceFlags /t REG_DWORD /d 0 /f
)
sc config SgrmBroker start= disabled
if %winbuild% lss 16299 (
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v ExcludeWUDriversInQualityUpdate /t REG_DWORD /d 1 /f
) else (
reg add HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings /v ExcludeWUDriversInQualityUpdate /t REG_DWORD /d 1 /f
)
if %winbuild% geq 17763 if %winbuild% lss 22000 for %%G in (cbdhsvc,DevicesFlowUserSvc,WpnUserService) do reg query HKLM\SYSTEM\ControlSet001\Services\%%G /v Start 1>nul 2>nul && (
reg add HKLM\SYSTEM\ControlSet001\Services\%%G /v Start /t REG_DWORD /d 3 /f
reg add HKLM\SYSTEM\ControlSet001\Services\%%G /v UserServiceFlags /t REG_DWORD /d 3 /f
)
for %%G in (UBPM,9C22BEA1-7763-41D1-B8F3-62A6ECC9D7E4,AITEventLog,AppModel,AppPlat,Audio,BioEnrollment,BluetoothSession,CloudExperienceHostOobe,DataMarket,DefenderApiLogger,DefenderAuditLogger,DiagLog,FaceCredProvReFSLog,FaceTel,FaceRecoTel,FaceUnlock,HolographicDevice,IntelRST,LwtNetLog,Mellanox-Kernel,Microsoft-Windows-AssignedAccess-Trace,Microsoft-Windows-CloudFiles-Filter-Log,Microsoft-Windows-CloudFiles-Filter-Trace,Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace,Microsoft-Windows-Setup,NBSMBLOGGER,NetCore,NetCfgTrace,NtfsLog,PEAuthLog,ReadyBoot,RdrLog,SCM,SetupPlatform,SetupPlatformTel,SHS-12112016-172924-3-1,SpoolerLogger,SQMLogger,TCPIPLOGGER,TileStore,Tpm,WdiContextLog,WiFiDriverIHVSession,WiFiDriverIHVSessionRepro,WiFiSession,UserNotPresentTraceSession,WindowsUpdate_trace_log,Cellcore,RadioMgr,WinPhoneCritical) do (
reg delete "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\%%G" /f
)
for %%G in (AutoLogger-Diagtrack-Listener,Diagtrack-Listener,"Circular Kernel Context Logger","WFP-IPsec Trace","WPR_initiated_DiagTrackMiniLogger_WPR System Collector") do (
reg delete "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\%%~G" /f
)
set "key=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications"
for %%i in (
MicrosoftEdge
MicrosoftEdgeDevToolsClient
AppRep.ChxApp
BioEnrollment
ContentDeliveryManager
HolographicFirstRun
Microsoft.ECApp
narratorquickstart
OOBENetworkCaptivePortal
OOBENetworkConnectionFlow
ParentalControls
PeopleExperienceHost
PPIProjection
PrintDialog
SecHealthUI
SecondaryTileExperience
SecureAssessmentBrowser
XboxGameCallableUI
Windows.CBS
holocamera
holoitemplayerapp
HoloShell
Holograms
) do (
for /f %%a in ('reg query "%key%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)

set "key=HKLM\SYSTEM\ControlSet001\Control\Ubpm"
for /f "tokens=1" %%a in ('reg query "%key%" 2^>nul ^| find /i "REG_SZ"') do reg delete %key% /v "%%a" /f 2>nul

set "key=HKLM\Software\Microsoft\WindowsUpdate\Orchestrator\UScheduler_Oobe"
for /f %%a in ('reg query "%key%" /f * /k 2^>nul ^| find /i "Orchestrator"') do reg delete %%a /f 2>nul

cd %~dp0
reg import PhotoViewer.reg

set arch=x86
if exist "%systemroot%\SysWOW64\cmd.exe" set arch=x64
setACL%arch%.exe -on "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:np"
setACL%arch%.exe -on "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:sc,io;m:grant"
setACL%arch%.exe -on "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:np"
setACL%arch%.exe -on "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:sc,io;m:grant"
reg query "HKLM\SOFTWARE\Microsoft\Windows\Windows NT\CurrentVersion\EditionVersion" && (
setACL%arch%.exe -on "HKLM\SOFTWARE\Microsoft\Windows\Windows NT\CurrentVersion\EditionVersion" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:np"
setACL%arch%.exe -on "HKLM\SOFTWARE\Microsoft\Windows\Windows NT\CurrentVersion\EditionVersion" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:sc,io;m:grant"
)
setACL%arch%.exe -on "HKLM\SOFTWARE\Classes\xmlfile\CLSID" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:np"
setACL%arch%.exe -on "HKLM\SOFTWARE\Classes\xmlfile\CLSID" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:sc,io;m:grant"
setACL%arch%.exe -on "%windir%\Logs\CBS" -ot file -actn ace -ace "n:S-1-5-32-544;p:full"
md "%windir%\Logs\WaaSMedic"
setACL%arch%.exe -on "%windir%\Logs\WaaSMedic" -ot file -actn ace -ace "n:S-1-5-32-544;p:full"
setACL%arch%.exe -on "%windir%\WinSxS\Backup" -ot file -actn ace -ace "n:S-1-5-32-544;p:full"
setACL%arch%.exe -on "%ProgramData%\Microsoft\Diagnosis" -ot file -actn ace -ace "n:S-1-5-32-544;p:full;i:so,sc,io"
del /f /q /s "%ProgramData%\Microsoft\Diagnosis\ETLLogs\*"
del /f /q "%ProgramData%\Microsoft\Diagnosis\*.rbs"
sc triggerinfo wuauserv delete
sc triggerinfo WaaSMedicSvc delete
