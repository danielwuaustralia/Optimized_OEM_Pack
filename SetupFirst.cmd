@echo on

DISM /Online /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:C:\Windows\Setup\Scripts\SOFTWARE

Dism /online /Enable-Feature /FeatureName:WirelessNetworking /NoRestart

Dism /online /Enable-Feature /FeatureName:SMB1Protocol /NoRestart

Dism /online /Enable-Feature /FeatureName:SMB1Protocol-Client /NoRestart

Dism /online /Enable-Feature /FeatureName:ServerMediaFoundation /NoRestart

Dism /online /Enable-Feature /FeatureName:LegacyComponents /NoRestart

Dism /online /Enable-Feature /FeatureName:DirectPlay /NoRestart

Dism /online /Disable-Feature /FeatureName:WCF-TCP-PortSharing45 /NoRestart

Dism /online /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellV2 /NoRestart

Dism /online /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellRoot /NoRestart

Dism /online /Disable-Feature /FeatureName:Printing-Client /NoRestart

Dism /online /Disable-Feature /FeatureName:Printing-Client-Gui /NoRestart

Dism /online /Disable-Feature /FeatureName:Windows-Defender /NoRestart

Dism /online /Disable-Feature /FeatureName:Printing-PrintToPDFServices-Features /NoRestart

Dism /online /Disable-Feature /FeatureName:Printing-XPSServices-Features /NoRestart

Dism /online /Disable-Feature /FeatureName:Xps-Foundation-Xps-Viewer /NoRestart

Dism /online /Disable-Feature /FeatureName:Server-Drivers-General /NoRestart

Dism /online /Disable-Feature /FeatureName:Server-Drivers-Printers /NoRestart

Dism /online /Disable-Feature /FeatureName:WindowsServerBackupSnapin /NoRestart

Dism /online /Disable-Feature /FeatureName:Printing-LPRPortMonitor /NoRestart

Dism /online /Disable-Feature /FeatureName:Printing-InternetPrinting-Client /NoRestart

Dism /online /Disable-Feature /FeatureName:Printing-AdminTools-Collection /NoRestart

Dism /online /Disable-Feature /FeatureName:SystemDataArchiver /NoRestart

Dism /online /Disable-Feature /FeatureName:ServerCoreFonts-NonCritical-Fonts-MinConsoleFonts /NoRestart

Dism /online /Disable-Feature /FeatureName:ServerCoreFonts-NonCritical-Fonts-BitmapFonts /NoRestart

Dism /online /Disable-Feature /FeatureName:ServerCoreFonts-NonCritical-Fonts-TrueType /NoRestart

Dism /online /Disable-Feature /FeatureName:ServerCoreFonts-NonCritical-Fonts-UAPFonts /NoRestart

Dism /online /Disable-Feature /FeatureName:ServerCoreFonts-NonCritical-Fonts-Support /NoRestart

Dism /online /Disable-Feature /FeatureName:FileAndStorage-Services /NoRestart

Dism /online /Disable-Feature /FeatureName:Storage-Services /NoRestart

Dism /online /Disable-Feature /FeatureName:ServerCore-Drivers-General /NoRestart

Dism /online /Disable-Feature /FeatureName:ServerCore-Drivers-General-WOW64 /NoRestart

Dism /online /Disable-Feature /FeatureName:SearchEngine-Client-Package /NoRestart

Dism /Online /Remove-Capability /CapabilityName:App.StepsRecorder~~~~0.0.1.0 /NoRestart

Dism /Online /Remove-Capability /CapabilityName:DirectX.Configuration.Database~~~~0.0.1.0 /NoRestart

Dism /Online /Remove-Capability /CapabilityName:Downlevel.NLS.Sorting.Versions.Server~~~~0.0.1.0 /NoRestart

Dism /Online /Remove-Capability /CapabilityName:Language.Fonts.Hans~~~und-HANS~0.0.1.0 /NoRestart

Dism /Online /Remove-Capability /CapabilityName:Language.Handwriting~~~zh-CN~0.0.1.0 /NoRestart

Dism /Online /Remove-Capability /CapabilityName:Language.OCR~~~zh-CN~0.0.1.0 /NoRestart

Dism /Online /Remove-Capability /CapabilityName:Language.Speech~~~zh-CN~0.0.1.0 /NoRestart

Dism /Online /Remove-Capability /CapabilityName:Language.TextToSpeech~~~zh-CN~0.0.1.0 /NoRestart

Dism /Online /Remove-Capability /CapabilityName:MathRecognizer~~~~0.0.1.0 /NoRestart

Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.WordPad~~~~0.0.1.0 /NoRestart

Dism /Online /Remove-Capability /CapabilityName:OpenSSH.Client~~~~0.0.1.0 /NoRestart

rem install OEM drivers
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\PnPUnattend\DriverPaths\1" /f /v Path /t REG_SZ /d "C:\Windows\Setup\Scripts\Drivers"
"C:\Windows\System32\pnpunattend.exe" AuditSystem /L

rem windows update
set "key=HKLM\SYSTEM\ControlSet001\Control\Ubpm"
for /f "tokens=1" %%a in ('reg query "%key%" 2^>nul ^| find /i "REG_SZ"') do reg delete %key% /v "%%a" /f 2>nul

set "key=HKLM\Software\Microsoft\WindowsUpdate\Orchestrator\UScheduler_Oobe"
for /f %%a in ('reg query "%key%" /f * /k 2^>nul ^| find /i "Orchestrator"') do reg delete %%a /f 2>nul

C:\Windows\SysWOW64\SetACL.exe -on "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:np"
C:\Windows\SysWOW64\SetACL.exe -on "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:sc,io;m:grant"
C:\Windows\SysWOW64\SetACL.exe -on "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:np"
C:\Windows\SysWOW64\SetACL.exe -on "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:sc,io;m:grant"
reg query "HKLM\SOFTWARE\Microsoft\Windows\Windows NT\CurrentVersion\EditionVersion" && (
C:\Windows\SysWOW64\SetACL.exe -on "HKLM\SOFTWARE\Microsoft\Windows\Windows NT\CurrentVersion\EditionVersion" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:np"
C:\Windows\SysWOW64\SetACL.exe -on "HKLM\SOFTWARE\Microsoft\Windows\Windows NT\CurrentVersion\EditionVersion" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:sc,io;m:grant"
)
C:\Windows\SysWOW64\SetACL.exe -on "HKLM\SOFTWARE\Classes\xmlfile\CLSID" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:np"
C:\Windows\SysWOW64\SetACL.exe -on "HKLM\SOFTWARE\Classes\xmlfile\CLSID" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full;i:sc,io;m:grant"
C:\Windows\SysWOW64\SetACL.exe -on "%windir%\Logs\CBS" -ot file -actn ace -ace "n:S-1-5-32-544;p:full"
md "%windir%\Logs\WaaSMedic"
C:\Windows\SysWOW64\SetACL.exe -on "%windir%\Logs\WaaSMedic" -ot file -actn ace -ace "n:S-1-5-32-544;p:full"
C:\Windows\SysWOW64\SetACL.exe -on "%windir%\WinSxS\Backup" -ot file -actn ace -ace "n:S-1-5-32-544;p:full"
C:\Windows\SysWOW64\SetACL.exe -on "%ProgramData%\Microsoft\Diagnosis" -ot file -actn ace -ace "n:S-1-5-32-544;p:full;i:so,sc,io"
del /f /q /s "%ProgramData%\Microsoft\Diagnosis\ETLLogs\*"
del /f /q "%ProgramData%\Microsoft\Diagnosis\*.rbs"
sc triggerinfo wuauserv delete
sc triggerinfo WaaSMedicSvc delete

rem Needed for: Windows Store
rem DesktopAppInstaller - is interesting to keep for working winget commands.
rem WindowsStoreClient - Microsoft Store Client, required to Microsoft Store work
rem WindowsStoreApp - Microsoft Store App
rem StorePurchaseApp - Microsoft Store Purchase App, not sure if removed you're able to buy games, apps in the Microsoft Store without issues.
rem ServicesStoreEngagement
rem AdvertisingXaml
rem AccountsControl - Required to sign in to apps.
rem AADBrokerPlugin
rem XboxIdentityProvider Xbox Identity Provider - Require for sign in to Xbox Console Companion
rem XboxClient - required to xbox app work
rem XboxApp "w10" equal GamingApp "w11" - Xbox Console Companion
rem XboxSpeechToTextOverlay

set "Applications=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications"
for %%i in (
Microsoft.SecHealthUI
Microsoft.MicrosoftEdge.Stable
) do (
	for /f %%a in ('reg query "%Applications%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)

set "InboxApplications=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications"
for %%i in (
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
SecondaryTileExperience
SecureAssessmentBrowser
XboxGameCallableUI
Microsoft.Win32WebViewHost
) do (
for /f %%a in ('reg query "%InboxApplications%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)
