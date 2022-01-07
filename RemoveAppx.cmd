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
Microsoft.People
Microsoft.ScreenSketch
Microsoft.SecHealthUI
Microsoft.Todos
Microsoft.VP9VideoExtensions
Microsoft.WebMediaExtensions
Microsoft.WebpImageExtension
Microsoft.WindowsAlarms
Microsoft.WindowsCalculator
Microsoft.WindowsCamera
microsoft.windowscommunicationsapps
Microsoft.WindowsFeedbackHub
Microsoft.WindowsMaps
Microsoft.WindowsTerminal
Microsoft.WindowsNotepad
Microsoft.Windows.Photos
Microsoft.WindowsSoundRecorder
Microsoft.YourPhone
Microsoft.ZuneMusic
Microsoft.ZuneVideo
MicrosoftWindows.Client.WebExperience
Microsoft.MicrosoftEdge.Stable
) do (
	for /f %%a in ('reg query "%windowsappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)

rem AADBrokerPlugin - needed for Microsoft Account, Windows Store Client - needed for Microsoft DCH drivers
set "systemappx=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications"
for %%i in (
1527c705-839a-4832-9118-54d4Bd6a0c89
c5e2524a-ea46-4f67-841f-6a9465d9d515
F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE
Microsoft.AAD.BrokerPlugin
Microsoft.AsyncTextService
Microsoft.BioEnrollment
Microsoft.ECApp
Microsoft.LockApp
Microsoft.MicrosoftEdge
Microsoft.MicrosoftEdgeDevToolsClient
Microsoft.Win32WebViewHost
Microsoft.Windows.Apprep.ChxApp
Microsoft.Windows.AssignedAccessLockApp
Microsoft.Windows.CallingShellApp
Microsoft.Windows.CapturePicker
Microsoft.Windows.ContentDeliveryManager
Microsoft.Windows.NarratorQuickStart
Microsoft.Windows.ParentalControls
Microsoft.Windows.PeopleExperienceHost
Microsoft.Windows.PinningConfirmationDialog
Microsoft.Windows.SecureAssessmentBrowser
Microsoft.Windows.XGpuEjectDialog
Microsoft.XboxGameCallableUI
) do (
	for /f %%a in ('reg query "%systemappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)
