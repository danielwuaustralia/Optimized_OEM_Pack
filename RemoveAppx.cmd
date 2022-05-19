@echo off

set "windowsappx=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications"
for %%i in (
Microsoft.BingNews
Microsoft.BingWeather
Microsoft.GetHelp
Microsoft.Getstarted
Microsoft.GamingApp
Microsoft.HEIFImageExtension
Microsoft.MicrosoftOfficeHub
Microsoft.MicrosoftSolitaireCollection
Microsoft.MicrosoftStickyNotes
Microsoft.PowerAutomateDesktop
Microsoft.Paint
Microsoft.Windows.Photos
Microsoft.People
Microsoft.RawImageExtension
Microsoft.ScreenSketch
Microsoft.SecHealthUI
Microsoft.Todos
Microsoft.VP9VideoExtensions
Microsoft.WindowsAlarms
Microsoft.WindowsCalculator
Microsoft.WebMediaExtensions
Microsoft.WebpImageExtension
Microsoft.WindowsCamera
microsoft.windowscommunicationsapps
Microsoft.WindowsFeedbackHub
Microsoft.WindowsMaps
Microsoft.WindowsTerminal
Microsoft.WindowsNotepad
Microsoft.WindowsSoundRecorder
Microsoft.YourPhone
Microsoft.ZuneMusic
Microsoft.ZuneVideo
MicrosoftWindows.Client.WebExperience
Microsoft.MicrosoftEdge.Stable
) do (
	for /f %%a in ('reg query "%windowsappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)

rem AADBrokerPlugin - needed for Microsoft Account, Windows Store Client - needed for Microsoft DCH drivers, Microsoft AAD Broker Plugin app (Breaks Office app Authentication)
rem ContentDeliveryManager - this component is responsible for the automatic installation of unwanted advertised applications
rem Microsoft Accounts Control - Microsoft Accounts Control app (This could prevent sign to microsoft account in UWP apps)
rem CloudExperienceHost - https://docs.microsoft.com/en-us/office365/troubleshoot/authentication/automatic-authentication-fails
rem Xbox Game Callable UI - Xbox Game Callable UI App (Breaks Xbox Live Games)
rem MicrosoftWindows.Client.CBS - This prevent Snip & Sketch work and maybe Mail and Calendar
rem Microsoft.549981C3F5F10 required for store
rem Windows.CBSPreview - https://docs.microsoft.com/en-us/windows/uwp/devices-sensors/pos-camerabarcode
set "systemappx=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications"
for %%i in (
1527c705-839a-4832-9118-54d4Bd6a0c89
c5e2524a-ea46-4f67-841f-6a9465d9d515
E2A4F912-2574-4A75-9BB0-0D023378592B
F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE
Microsoft.AsyncTextService
Microsoft.BioEnrollment
Microsoft.ECApp
Microsoft.LockApp
Microsoft.MicrosoftEdge
Microsoft.MicrosoftEdgeDevToolsClient
Microsoft.Windows.OOBENetworkCaptivePortal
Microsoft.Windows.OOBENetworkConnectionFlow
Microsoft.Windows.AppRep.ChxApp
Microsoft.Windows.AssignedAccessLockApp
Microsoft.Windows.CallingShellApp
Microsoft.Windows.CapturePicker
Windows.CBSPreview
Microsoft.Windows.ContentDeliveryManager
Microsoft.Windows.CloudExperienceHost
Microsoft.Windows.NarratorQuickStart
Microsoft.Windows.ParentalControls
Microsoft.Windows.PrintQueueActionCenter
Microsoft.Windows.PeopleExperienceHost
Microsoft.Windows.PinningConfirmationDialog
Microsoft.Windows.SecureAssessmentBrowser
Microsoft.Win32WebViewHost
Microsoft.Windows.XGpuEjectDialog
Microsoft.XboxGameCallableUI
NcsiUwpApp
Windows.PrintDialog
) do (
	for /f %%a in ('reg query "%systemappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)