@echo off

set "windowsappx=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications"
for %%i in (
Microsoft.SecHealthUI
Microsoft.MicrosoftEdge.Stable
) do (
	for /f %%a in ('reg query "%windowsappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)

rem AADBrokerPlugin - modern authentication
rem ContentDeliveryManager - this component is responsible for the automatic installation of unwanted advertised applications
rem Microsoft Accounts Control - Microsoft Accounts Control app (This could prevent sign to microsoft account in UWP apps)
rem CloudExperienceHost - https://docs.microsoft.com/en-us/office365/troubleshoot/authentication/automatic-authentication-fails
rem Xbox Game Callable UI - Xbox Game Callable UI App (Breaks Xbox Live Games)
rem MicrosoftWindows.Client.CBS - This prevent Snip & Sketch work and maybe Mail and Calendar
rem Microsoft.549981C3F5F10 required for store
rem Windows.CBSPreview - https://docs.microsoft.com/en-us/windows/uwp/devices-sensors/pos-camerabarcode
set "systemappx=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications"
for %%i in (
Microsoft.BioEnrollment
Microsoft.MicrosoftEdge
Microsoft.MicrosoftEdgeDevToolsClient
Microsoft.Win32WebViewHost
Microsoft.Windows.ParentalControls
Microsoft.Windows.PeopleExperienceHost
) do (
	for /f %%a in ('reg query "%systemappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)
