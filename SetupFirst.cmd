@cls
@echo on
>nul chcp 437
setlocal enabledelayedexpansion

rem System Compoments Update
Dism /online /Enable-Feature /FeatureName:LegacyComponents /NoRestart
Dism /online /Enable-Feature /FeatureName:DirectPlay /NoRestart
Dism /online /Disable-Feature /FeatureName:SMB1Protocol /NoRestart
Dism /online /Disable-Feature /FeatureName:SMB1Protocol-Client /NoRestart
Dism /online /Disable-Feature /FeatureName:SMB1Protocol-Deprecation /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-PrintToPDFServices-Features /NoRestart
Dism /online /Disable-Feature /FeatureName:WCF-TCP-PortSharing45 /NoRestart
Dism /online /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellV2Root /NoRestart
Dism /online /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellV2 /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-Foundation-InternetPrinting-Client /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-Foundation-LPDPrintService /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-Foundation-LPRPortMonitor /NoRestart
Dism /online /Disable-Feature /FeatureName:MSRDC-Infrastructure /NoRestart
Dism /online /Disable-Feature /FeatureName:WorkFolders-Client /NoRestart
Dism /online /Disable-Feature /FeatureName:SearchEngine-Client-Package /NoRestart
Dism /online /Disable-Feature /FeatureName:Windows-Defender-ApplicationGuard /NoRestart
Dism /online /Disable-Feature /FeatureName:Windows-Defender-Default-Definitions /NoRestart
Dism /Online /Remove-Capability /CapabilityName:App.StepsRecorder~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:DirectX.Configuration.Database~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Hello.Face.20134~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Language.Fonts.Hans~~~und-HANS~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Language.Handwriting~~~zh-CN~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Language.OCR~~~zh-CN~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Language.Speech~~~zh-CN~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Language.TextToSpeech~~~zh-CN~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:MathRecognizer~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.WordPad~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.PowerShell.ISE~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:OpenSSH.Client~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Wallpapers.Extended~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Ethernet.Client.Intel.E1i68x64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Ethernet.Client.Intel.E2f68~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Ethernet.Client.Realtek.Rtcx21x64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Ethernet.Client.Vmware.Vmxnet3~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Notepad.System~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Broadcom.Bcmpciedhd63~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Broadcom.Bcmwl63al~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Broadcom.Bcmwl63a~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwbw02~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwew00~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwew01~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwlv64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwns64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwsw00~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwtw02~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwtw04~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwtw06~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwtw08~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Intel.Netwtw10~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Marvel.Mrvlpcie8897~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Qualcomm.Athw8x~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Qualcomm.Athwnx~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Qualcomm.Qcamain10x64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Ralink.Netr28x~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtl8187se~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtl8192se~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtl819xp~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtl85n64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtwlane01~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtwlane13~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtwlane~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:OneCoreUAP.OneSync~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Print.Management.Console~~~~0.0.1.0 /NoRestart

rem install drivers
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\PnPUnattend\DriverPaths\1" /f /v Path /t REG_SZ /d "C:\Windows\Setup\Scripts\Drivers"
"C:\Windows\System32\pnpunattend.exe" AuditSystem /L

rem Disable OneDrive
reg load HKLM\NTUSER C:\Users\Default\NTUSER.DAT
reg delete "HKLM\NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg unload HKLM\NTUSER
reg delete "HKU\S-1-5-19\Software\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg delete "HKU\S-1-5-20\Software\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f

rem APPX
set "Applications=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications"
for %%i in (
Microsoft.SecHealthUI
Microsoft.MicrosoftEdge.Stable
NVIDIACorp.NVIDIAControlPanel
) do (
	for /f %%a in ('reg query "%Applications%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)

set "InboxApplications=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications"
for %%i in (
MicrosoftEdge
MicrosoftEdgeDevToolsClient
Microsoft.Win32WebViewHost
Microsoft.AAD.BrokerPlugin
Microsoft.AsyncTextService
Microsoft.BioEnrollment
Microsoft.ECApp
Microsoft.LockApp
AppRep.ChxApp
NcsiUwpApp
Microsoft.Windows.PeopleExperienceHost
Microsoft.Windows.AssignedAccessLockApp
Microsoft.Windows.CapturePicker
Microsoft.Windows.ContentDeliveryManager
Microsoft.Windows.NarratorQuickStart
Microsoft.Windows.OOBENetworkCaptivePortal
Microsoft.Windows.OOBENetworkConnectionFlow
Microsoft.Windows.ParentalControls
Microsoft.Windows.PinningConfirmationDialog
Microsoft.Windows.PrintQueueActionCenter
Microsoft.Windows.XGpuEjectDialog
Microsoft.XboxGameCallableUI
Windows.CBSPreview
1527c705-839a-4832-9118-54d4Bd6a0c89
c5e2524a-ea46-4f67-841f-6a9465d9d515
E2A4F912-2574-4A75-9BB0-0D023378592B
F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE
) do (
for /f %%a in ('reg query "%InboxApplications%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)
