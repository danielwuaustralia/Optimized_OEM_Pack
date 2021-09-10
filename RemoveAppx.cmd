@echo off

set "windowsappx=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications"
for %%i in (
Microsoft.549981C3F5F10
Microsoft.BingNews
Microsoft.BingWeather
Microsoft.DesktopAppInstaller
Microsoft.GamingApp
Microsoft.GetHelp
Microsoft.Getstarted
Microsoft.HEIFImageExtension
Microsoft.MicrosoftOfficeHub
Microsoft.MicrosoftSolitaireCollection
Microsoft.MicrosoftStickyNotes
Microsoft.Paint
Microsoft.People
Microsoft.ScreenSketch
Microsoft.SecHealthUI
Microsoft.StorePurchaseApp
Microsoft.Todos
Microsoft.VP9VideoExtensions
Microsoft.WebMediaExtensions
Microsoft.WebpImageExtension
Microsoft.Windows.Photos
Microsoft.WindowsAlarms
Microsoft.WindowsCalculator
Microsoft.WindowsCamera
microsoft.windowscommunicationsapps
Microsoft.WindowsFeedbackHub
Microsoft.WindowsMaps
Microsoft.WindowsNotepad
Microsoft.WindowsSoundRecorder
Microsoft.WindowsTerminal
Microsoft.Xbox.TCUI
Microsoft.XboxGamingOverlay
Microsoft.XboxIdentityProvider
Microsoft.YourPhone
Microsoft.ZuneMusic
Microsoft.ZuneVideo
) do (
	for /f %%a in ('reg query "%windowsappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)


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
Microsoft.Windows.ParentalControls
Microsoft.Windows.PeopleExperienceHost
NcsiUwpApp
Windows.CBSPreview
) do (
	for /f %%a in ('reg query "%systemappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)
