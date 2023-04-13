@echo on
color 6

:: install drivers
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\PnPUnattend\DriverPaths\1" /f /v Path /t REG_SZ /d "C:\TEMP\Drivers"
"C:\Windows\System32\pnpunattend.exe" AuditSystem /L

:: System Compoments Update
Dism /online /Enable-Feature /FeatureName:LegacyComponents /NoRestart
Dism /online /Enable-Feature /FeatureName:DirectPlay /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-PrintToPDFServices-Features /NoRestart
Dism /online /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellV2Root /NoRestart
Dism /online /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellV2 /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-Foundation-Features /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-Foundation-InternetPrinting-Client /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-Foundation-LPDPrintService /NoRestart
Dism /online /Disable-Feature /FeatureName:Printing-Foundation-LPRPortMonitor /NoRestart
Dism /online /Disable-Feature /FeatureName:WorkFolders-Client /NoRestart
Dism /online /Disable-Feature /FeatureName:SearchEngine-Client-Package /NoRestart
Dism /online /Disable-Feature /FeatureName:Windows-Defender-ApplicationGuard /NoRestart
Dism /online /Disable-Feature /FeatureName:Windows-Defender-Default-Definitions /NoRestart
Dism /online /Disable-Feature /FeatureName:SmbDirect /NoRestart
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
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtl8192se~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtwlane01~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtwlane13~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtl85n64~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtl819xp~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtl8187se~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Wifi.Client.Realtek.Rtwlane~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:OneCoreUAP.OneSync~~~~0.0.1.0 /NoRestart
Dism /Online /Remove-Capability /CapabilityName:Print.Management.Console~~~~0.0.1.0 /NoRestart

:: https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/export-or-import-default-application-associations?view=windows-11
DISM.exe /Online /Remove-DefaultAppAssociations

:: https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism-storage-reserve?view=windows-11
DISM.exe /Online /Set-ReservedStorageState /State:Disabled

:: First Login Animation
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableFirstLogonAnimation" /t REG_DWORD /d "0" /f

:: remove Uncessary Files
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "Windows Defender" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "SecurityHealth" /
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "WindowsDefender" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
del /f /q /s "C:\Windows\System32\smartscreen.exe"
del /f /q /s "C:\Windows\System32\smartscreen.dll"
del /f /q /s "C:\Windows\System32\smartscreenps.dll"
del /f /q /s "C:\Windows\SysWOW64\smartscreen.dll"
del /f /q /s "C:\Windows\SysWOW64\smartscreenps.dll"
del /f /q /s "C:\Windows\System32\SecurityHealthSystray.exe"
del /f /q /s "C:\Windows\System32\SecurityHealthService.exe"
del /f /q /s "C:\Windows\System32\SecurityHealthAgent.dll"
del /f /q /s "C:\Windows\System32\SecurityHealthHost.exe"
del /f /q /s "C:\Windows\System32\SecurityHealthSSO.dll"
del /f /q /s "C:\Windows\System32\SecurityHealthCore.dll"
del /f /q /s "C:\Windows\System32\SecurityHealthProxyStub.dll"
del /f /q /s "C:\Windows\System32\SecurityHealthUdk.dll"
del /f /q /s "C:\Windows\System32\drivers\WdNisDrv.sys"
del /f /q /s "C:\Windows\System32\webthreatdefusersvc.dll"
del /f /q /s "C:\Windows\System32\webthreatdefsvc.dll"
rmdir /s /q "C:\Program Files\Windows Defender"
rmdir /s /q "C:\Program Files (x86)\Windows Defender"
rmdir /s /q "C:\Program Files\Windows Defender Advanced Threat Protection"
rmdir /s /q "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection"
rmdir /s /q "C:\Windows\System32\DWWIN.EXE"
rmdir /s /q "C:\Windows\SysWOW64\DWWIN.EXE"
rmdir /s /q "C:\Windows\System32\CompatTelRunner.exe"
rmdir /s /q "C:\Windows\System32\GameBarPresenceWriter.exe"
rmdir /s /q "C:\Windows\SysWOW64\GameBarPresenceWriter.exe"
rmdir /s /q "C:\Windows\System32\DeviceCensus.exe"
rmdir /s /q "C:\ProgramData\Microsoft\Windows Defender"
sc stop edgeupdate
sc delete edgeupdate
sc stop edgeupdatem
sc delete edgeupdatem
sc stop MicrosoftEdgeElevationService
sc delete MicrosoftEdgeElevationService
rmdir /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate"
rmdir /s /q "C:\Program Files (x86)\Microsoft\EdgeCore"
rmdir /s /q "C:\Program Files (x86)\Microsoft\EdgeWebview"
rmdir /s /q "C:\Program Files (x86)\Microsoft\Edge"
icacls "C:\Program Files (x86)\Microsoft\EdgeUpdate" /inheritance:r
icacls "C:\Program Files (x86)\Microsoft\EdgeCore" /inheritance:r
icacls "C:\Program Files (x86)\Microsoft\EdgeWebview" /inheritance:r
icacls "C:\Program Files (x86)\Microsoft\Edge" /inheritance:r
reg add "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /f /v DoNotUpdateToEdgeWithChromium /t REG_DWORD /d 1
del /f /q /s "C:\Users\Public\Desktop\Microsoft Edge.lnk"
del /f /q /s "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"
:: takeown /f "C:\Windows\System32\OneDriveSetup.exe"
:: icacls "C:\Windows\System32\OneDriveSetup.exe" /grant Administrators:F /T /C
del /f /q /s "C:\Windows\System32\OneDriveSetup.exe"
del /f /q /s "C:\Windows\SysWOW64\OneDriveSettingSyncProvider.dll"
reg load HKLM\NTUSER C:\Users\Default\NTUSER.DAT
reg delete "HKLM\NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg delete "HKU\S-1-5-19\Software\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg delete "HKU\S-1-5-20\Software\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg delete "HKLM\NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
reg delete "HKU\S-1-5-19\Software\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
reg delete "HKU\S-1-5-20\Software\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
reg unload HKLM\NTUSER
del /f /q /s C:\Windows\System32\mcupdate_GenuineIntel.dll
del /f /q /s C:\Windows\System32\mobsync.exe

:: Disable DMA remapping
for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "DmaRemappingCompatible" ^| find /i "Services\" ') do (
    reg add "%%a" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
)

:: Removing CloudExperienceHost breaks the OOBE last stage, and it is required for Windows Store.
:: Removing UndocDevKit breaks the About page in Settings System section.
:: Removing Client.CBS also removes Input App, Screen Clipping and can cause issues with Windows 11 Start Menu.
set "UWPs=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications"
for %%i in (
Microsoft.SecHealthUI
Microsoft.MicrosoftEdge.Stable
NVIDIACorp.NVIDIAControlPanel
) do (
	for /f %%a in ('reg query "%UWPs%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)

set "InboxApplications=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications"
for %%i in (
MicrosoftEdge
MicrosoftEdgeDevToolsClient
Microsoft.Win32WebViewHost
Microsoft.XboxGameCallableUI
Microsoft.Windows.ContentDeliveryManager
Microsoft.BioEnrollment
Microsoft.ECApp
Microsoft.LockApp
F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE
Microsoft.Windows.AppRep.ChxApp
E2A4F912-2574-4A75-9BB0-0D023378592B
c5e2524a-ea46-4f67-841f-6a9465d9d515
1527c705-839a-4832-9118-54d4Bd6a0c89
Microsoft.Windows.ParentalControls
Microsoft.Windows.PeopleExperienceHost
Microsoft.Windows.PinningConfirmationDialog
Microsoft.Windows.PrintQueueActionCenter
) do (
for /f %%a in ('reg query "%InboxApplications%" /f %%i /k 2^>nul ^| find /i "AppxAllUserStore"') do if not errorlevel 1 (reg delete %%a /f 2>nul)
)
