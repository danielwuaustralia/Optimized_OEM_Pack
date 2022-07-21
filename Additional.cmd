@echo on

rem install OEM drivers
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\PnPUnattend\DriverPaths\1" /f /v Path /t REG_SZ /d "C:\Windows\Setup\Scripts\Drivers"
"C:\Windows\System32\pnpunattend.exe" AuditSystem /L

rem windows update
set "key=HKLM\SYSTEM\ControlSet001\Control\Ubpm"
for /f "tokens=1" %%a in ('reg query "%key%" 2^>nul ^| find /i "REG_SZ"') do reg delete %key% /v "%%a" /f 2

set "key=HKLM\Software\Microsoft\WindowsUpdate\Orchestrator\UScheduler_Oobe"
for /f %%a in ('reg query "%key%" /f * /k 2^>nul ^| find /i "Orchestrator"') do reg delete %%a /f 2

rem autologger
for %%G in (UBPM,9C22BEA1-7763-41D1-B8F3-62A6ECC9D7E4,AITEventLog,AppModel,AppPlat,Audio,BioEnrollment,BluetoothSession,CloudExperienceHostOobe,DataMarket,DefenderApiLogger,DefenderAuditLogger,DiagLog,FaceCredProvReFSLog,FaceTel,FaceRecoTel,FaceUnlock,HolographicDevice,IntelRST,LwtNetLog,Mellanox-Kernel,Microsoft-Windows-AssignedAccess-Trace,Microsoft-Windows-CloudFiles-Filter-Log,Microsoft-Windows-CloudFiles-Filter-Trace,Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace,Microsoft-Windows-Setup,NBSMBLOGGER,NetCore,NetCfgTrace,NtfsLog,PEAuthLog,ReadyBoot,RdrLog,SCM,SetupPlatform,SetupPlatformTel,SHS-12112016-172924-3-1,SpoolerLogger,SQMLogger,TCPIPLOGGER,TileStore,Tpm,WdiContextLog,WiFiDriverIHVSession,WiFiDriverIHVSessionRepro,WiFiSession,UserNotPresentTraceSession,WindowsUpdate_trace_log,Cellcore,RadioMgr,WinPhoneCritical) do (
reg delete "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\%%G" /f
)
for %%G in ("AutoLogger-Diagtrack-Listener","Diagtrack-Listener","Circular Kernel Context Logger","WFP-IPsec Trace","WPR_initiated_DiagTrackMiniLogger_WPR System Collector") do (
reg delete "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\%%~G" /f
)

rem appx
set "windowsappx=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications"
for %%i in (
Microsoft.SecHealthUI
Microsoft.MicrosoftEdge.Stable
) do (
	for /f %%a in ('reg query "%windowsappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)

rem The following System Applications are safe to remove:
rem BioEnrollment (provided no biometrics will be used)
rem CallingShellApp (provided no mobile phone will be linked to the device)
rem MicrosoftEdge (has been replaced by Microsoft Edge Chromium, which is detailed more below)
rem MicrosoftEdgeDevToolsClient
rem SecHealthUI
rem ContentDeliveryManager
rem FileExplorer
rem NarratorQuickStart
rem ParentalControls
rem SecureAssessmentBrowser
rem XGpuEjectDialog
rem XboxGameCallableUI (provided no integrated Xbox gaming features will be used)
rem UndockedDevKit
rem NcsiUwpApp
set "systemappx=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications"
for %%i in (
c5e2524a-ea46-4f67-841f-6a9465d9d515
MicrosoftEdge
MicrosoftEdgeDevToolsClient
AppRep.ChxApp
BioEnrollment
ContentDeliveryManager
Microsoft.ECApp
narratorquickstart
OOBENetworkCaptivePortal
OOBENetworkConnectionFlow
ParentalControls
PeopleExperienceHost
PrintDialog
SecureAssessmentBrowser
XboxGameCallableUI
Microsoft.Windows.XGpuEjectDialog
Microsoft.Win32WebViewHost
MicrosoftWindows.UndockedDevKit
NcsiUwpApp
) do (
	for /f %%a in ('reg query "%systemappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)
