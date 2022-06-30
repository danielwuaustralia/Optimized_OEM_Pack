@echo off

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
Microsoft.AsyncTextService
Microsoft.BioEnrollment
Microsoft.ECApp
Microsoft.LockApp
Microsoft.Windows.ContentDeliveryManager
Microsoft.Windows.NarratorQuickStart
Microsoft.MicrosoftEdge
Microsoft.MicrosoftEdgeDevToolsClient
Microsoft.Win32WebViewHost
Microsoft.Windows.ParentalControls
Microsoft.Windows.PeopleExperienceHost
Microsoft.Windows.AppRep.ChxApp
Microsoft.Windows.CloudExperienceHost
Microsoft.Windows.OOBENetworkCaptivePortal
Microsoft.Windows.OOBENetworkConnectionFlow
Microsoft.Windows.XGpuEjectDialog
Windows.CBSPreview
MicrosoftWindows.UndockedDevKit
Microsoft.Windows.SecureAssessmentBrowser
Windows.PrintDialog
Microsoft.Windows.PrintQueueActionCenter
) do (
	for /f %%a in ('reg query "%systemappx%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)
