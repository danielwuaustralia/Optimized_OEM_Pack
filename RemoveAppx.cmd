@echo off

set "windowsappx=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications"
for %%i in (
Microsoft.549981C3F5F10
Microsoft.BingNews
Microsoft.BingWeather
Microsoft.DesktopAppInstaller
Microsoft.GetHelp
Microsoft.Getstarted
Microsoft.MicrosoftOfficeHub
Microsoft.MicrosoftSolitaireCollection
Microsoft.MicrosoftStickyNotes
Microsoft.PowerAutomateDesktop
Microsoft.Paint
Microsoft.People
Microsoft.ScreenSketch
Microsoft.SecHealthUI
Microsoft.StorePurchaseApp
Microsoft.Todos
Microsoft.Windows.Photos
Microsoft.WindowsAlarms
Microsoft.WindowsCalculator
Microsoft.WindowsCamera
microsoft.windowscommunicationsapps
Microsoft.WindowsFeedbackHub
Microsoft.WindowsMaps
Microsoft.WindowsNotepad
Microsoft.WindowsStore
Microsoft.WindowsTerminal
Microsoft.WindowsSoundRecorder
Microsoft.YourPhone
Microsoft.ZuneMusic
Microsoft.ZuneVideo
MicrosoftWindows.Client.WebExperience
) do (
	for /f %%a in ('reg query "%windowsappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)


set "systemappx=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications"
for %%i in (
E2A4F912-2574-4A75-9BB0-0D023378592B
1527c705-839a-4832-9118-54d4Bd6a0c89
c5e2524a-ea46-4f67-841f-6a9465d9d515
F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE
Microsoft.AAD.BrokerPlugin
Microsoft.BioEnrollment
Microsoft.Windows.CallingShellApp
Microsoft.Windows.CapturePicker
Microsoft.Windows.ContentDeliveryManager
Microsoft.ECApp
Microsoft.LockApp
Microsoft.Windows.PinningConfirmationDialog
Microsoft.Windows.AppRep.ChxApp
Microsoft.Windows.ParentalControls
Microsoft.Windows.PeopleExperienceHost
Microsoft.Windows.SecureAssessmentBrowser
Microsoft.Windows.XGpuEjectDialog
Windows.CBSPreview
) do (
	for /f %%a in ('reg query "%systemappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)
