@echo off
title Win11 22H2 BareBoneOS Ver 3.0
color 02
MODE CON: COLS=160 LINES=32765
SETLOCAL EnableDelayedExpansion
set "nul=>nul 2>&1"
%nul% "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (    echo Requesting administrative privileges...    goto UACPrompt) else ( goto gotAdmin )  
:UACPrompt  
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
"%temp%\getadmin.vbs"  
exit /B
:gotAdmin
cd /d %~dp0
IF NOT EXIST "DVD" md "DVD"
IF NOT EXIST "mount" md "mount"
echo.
echo *****************************************************************
echo:                        Hello %username%.
echo *****************************************************************
echo:  _________________________________________________________________________________________________________________________________________________________
echo: ^| $$$$$$$                              $$$$$$$                               $$$$$$   $$$$$$    $$$$$$$                                           $$     ^|
echo: ^| $$    $$                             $$    $$                              $$   $$ $$    $$   $$    $$                                          $$     ^|
echo: ^| $$    $$  $$$$$$   $$$$$$   $$$$$$   $$    $$  $$$$$$  $$$$$$$  $$$$$$     $$   $$ $$         $$    $$ $$$$$$   $$$$$$  $$  $$$$$$   $$$$$$$  $$$$$$   ^|
echo: ^| $$$$$$$        $$ $$    $$ $$    $$  $$$$$$$  $$    $$ $$   $$ $$    $$    $$   $$  $$$$$$    $$$$$$$ $$    $$ $$    $$ $$ $$    $$  $$         $$     ^|
echo: ^| $$    $$  $$$$$$$ $$       $$$$$$$$  $$    $$ $$    $$ $$   $$ $$$$$$$$    $$   $$      $$    $$      $$       $$    $$ $$ $$$$$$$$  $$         $$     ^|
echo: ^| $$    $$ $$    $$ $$       $$        $$    $$ $$    $$ $$   $$ $$          $$   $$ $$   $$    $$      $$       $$    $$ $$ $$        $$         $$  $$ ^|
echo: ^| $$$$$$$   $$$$$$$ $$        $$$$$$$  $$$$$$$   $$$$$$  $$   $$  $$$$$$$     $$$$$$  $$$$$$    $$      $$        $$$$$$  $$  $$$$$$$  $$$$$$$     $$$$  ^|
echo: ^|                                                                                                                         $$                             ^|
echo: ^|                                                                                                                   $$    $$                             ^|
echo: ^|                                                                                                                    $$$$$$                              ^|
echo: ^|________________________________________________________________________________________________________________________________________________________^|
echo.
echo.
echo: Started at %Date% %Time%
echo *****************************************************************
echo: Mount Boot WIM image to Mount Directory
echo *****************************************************************
dism /Delete-Image /ImageFile:DVD\sources\boot.wim /index:1
dism /Mount-Wim /WimFile:DVD\sources\boot.wim /index:1 /MountDir:mount
echo *****************************************************************
echo.
echo *****************************************************************
echo: Bypass Win11 Hardware Requirements from Boot Wim
echo *****************************************************************
Reg load "HKLM\OfflineSYSTEM" "mount\Windows\System32\config\SYSTEM"
Reg add HKLM\OfflineSYSTEM\Setup\LabConfig /v BypassTPMCheck /t reg_dword /d 1 /f
Reg add HKLM\OfflineSYSTEM\Setup\LabConfig /v BypassSecureBootCheck /t reg_dword /d 1 /f
Reg add HKLM\OfflineSYSTEM\Setup\LabConfig /v BypassRAMCheck /t reg_dword /d 1 /f
Reg add HKLM\OfflineSYSTEM\Setup\LabConfig /v BypassStorageCheck /t reg_dword /d 1 /f
Reg add HKLM\OfflineSYSTEM\Setup\LabConfig /v BypassCPUCheck /t reg_dword /d 1 /f
Reg unload "HKLM\OfflineSYSTEM"
echo *****************************************************************
echo.
echo *****************************************************************
echo: Save ^& UnMount Boot wim
echo *****************************************************************
dism /unmount-wim /mountdir:mount /commit
echo *****************************************************************
echo.
echo *****************************************************************
echo: Optimize Boot wim
echo *****************************************************************
bin\wimlib-imagex.exe optimize "DVD\sources\boot.wim"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Export Single Index from Install Wim Image
echo *****************************************************************
SET /A count=0
FOR /F "tokens=2 delims=: " %%i IN ('DISM /Get-WimInfo /WimFile:"DVD\sources\install.wim" ^| findstr "Index"') DO SET images=%%i
FOR /L %%i in (1, 1, %images%) DO CALL :CountIndex %%i
echo. Wim Image contain following %images% indexes :
echo.
FOR /L %%i in (1, 1, %images%) DO (
echo.  [%%i] !name%%i!
)
GOTO ExportIndex

:MOVE
move /y "install.wim" "DVD\sources\install.wim"
echo *****************************************************************
echo.
echo *****************************************************************
echo: Mount Install WIM to Mount Directory
echo *****************************************************************
dism /mount-wim /wimfile:DVD\sources\install.wim /index:1 /mountdir:mount
echo *****************************************************************
echo.
echo *****************************************************************
echo: Remove Windows (Metro) Apps
echo *****************************************************************
for /f "tokens=2 delims=: " %%z in (
'dism /image:mount /Get-ProvisionedAppxPackages ^| find /I "PackageName" ^| findstr /I /V "Microsoft.Paint Microsoft.UI.Xaml Microsoft.VCLibs Microsoft.WindowsNotepad"'
) do (
echo.
echo *****************************************************************
echo: Removing Windows App: %%z
echo *****************************************************************
dism /image:mount /Remove-ProvisionedAppxPackage /Packagename:%%z
)
echo *****************************************************************
echo.
echo *****************************************************************
echo: Remove System (Inbox) Apps Using MSMG ToolkitHelper
echo *****************************************************************
"bin\ToolKitHelper.exe" "mount" "EdgeChromium;EdgeWebView;GameExplorer;LockScreenBackground;ScreenSavers;SnippingTool;SoundThemes;SpeechRecognition;WindowsMediaPlayer;WindowsThemes;WinSAT;OfflineFiles;RemoteDesktopClient;WindowsMail;CEIP;FaceRecognition;KernelDebugging;LocationService;PicturePassword;PinEnrollment;UnifiedTelemetryClient;WiFiNetworkManager;WindowsErrorReporting;WindowsInsiderHub;HomeGroup;RemoteDesktopServer;RemoteRegistry;AccessibilityTools;EaseOfAccessCursors;EaseOfAccessThemes;EasyTransfer;FileHistory;Magnifier;ManualSetup;Narrator;OnScreenKeyboard;SecurityCenter;StorageSpaces;SystemRestore;WindowsBackup;WindowsSubsystemForLinux;WindowsToGo;AADBrokerPlugin;AccountsControl;AddSuggestedFoldersToLibraryDialog;AppResolverUX;AsyncTextService;BioEnrollment;CallingShellApp;CapturePicker;CBSPreview;ContentDeliveryManager;CredDialogHost;ECApp;Edge;EdgeDevToolsClient;FileExplorer;FilePicker;LockApp;MapControl;NarratorQuickStart;NcsiUwpApp;OOBENetworkCaptivePortal;OOBENetworkConnectionFlow;ParentalControls;PeopleExperienceHost;PinningConfirmationDialog;PrintDialog;PrintQueueActionCenter;RetailDemoContent;SecureAssessmentBrowser;SettingSync;SkypeORTC;SmartScreen;WebcamExperience;Win32WebViewHost;WindowsDefender;WindowsMixedReality;WindowsReaderPDF;WindowsStoreClient;XboxClient;XboxGameCallableUI;XGpuEjectDialog"
echo *****************************************************************
echo.
echo *****************************************************************
echo: Disable Optional Features
echo *****************************************************************
for %%z in (
MicrosoftWindowsPowerShellV2Root
MicrosoftWindowsPowerShellV2
MSRDC-Infrastructure
Printing-Foundation
Printing-PrintToPDFServices-Features
SearchEngine-Client-Package
SmbDirect
WCF-Services45
WCF-TCP-PortSharing45
WorkFolders-Client
) do (
echo *****************************************************************
echo: Disabling Windows Optional Feature: %%z
echo *****************************************************************
   Powershell -C "Get-WindowsOptionalFeature -Path 'mount' | Where {$_.FeatureName -match '%%z' } | Disable-WindowsOptionalFeature -Path 'mount' -EA ignore"
)
echo *****************************************************************
echo.
echo *****************************************************************
echo: Remove Capabilities
echo *****************************************************************
for %%z in (
App.StepsRecorder
Browser.InternetExplorer
DirectX.Configuration.Database
Hello.Face
Language.Handwriting
Language.OCR
Language.Speech
Language.TextToSpeech
MathRecognizer
Media.WindowsMediaPlayer
Microsoft.Wallpapers.Extended
Microsoft.Windows.Ethernet.Client.Intel
Microsoft.Windows.Ethernet.Client.Realtek
Microsoft.Windows.Ethernet.Client.Vmware
Microsoft.Windows.Wifi.Client.Broadcom
Microsoft.Windows.Wifi.Client.Intel
Microsoft.Windows.Wifi.Client.Marvel
Microsoft.Windows.Wifi.Client.Qualcomm
Microsoft.Windows.Wifi.Client.Ralink
Microsoft.Windows.Wifi.Client.Realtek
Microsoft.Windows.WordPad
OneCoreUAP.OneSync
OpenSSH
Print.Fax.Scan
Print.Management.Console
Windows.Kernel
WMIC
) do (
echo *****************************************************************
echo: Removing Windows Capability: %%z
echo *****************************************************************
   Powershell -Command "Get-WindowsCapability -Path 'mount' | Where {$_.Name -match '%%z' } | Remove-WindowsCapability -Path 'mount' -EA ignore"
)
echo *****************************************************************
echo.
echo *****************************************************************
echo: Remove Component Packages
echo *****************************************************************
for %%z in (
Containers-ApplicationGuard-Package
Containers-ApplicationGuard-Shared-merged-Package
Containers-ApplicationGuard-Shared-Package
Containers-ApplicationGuard-Shared-WOW64-Package
Containers-ApplicationGuard-WOW64-Package
Containers-Client-Guest-Package
Containers-Client-Manager-Package
Containers-Client-SDN-Package
Containers-DisposableClientVM-merged-Package
Containers-DisposableClientVM-Package
Containers-Guest-Gated-Package
Containers-OptionalFeature-DisposableClientVM-Package
Containers-Server-HNS-Package
Containers-Server-merged-Package
HyperV-Compute-Host-merged-Package
HyperV-Compute-Host-Package
HyperV-Compute-Host-VirtualMachines-merged-Package
HyperV-Compute-Host-VirtualMachines-Package
HyperV-Compute-System-VirtualMachine-merged-Package
HyperV-Compute-System-VirtualMachine-Package
HyperV-Compute-System-VmDirect-merged-Package
HyperV-Compute-System-VmDirect-Package
HyperV-Feature-VirtualMachinePlatform-Client-Package
HyperV-HvSocket-Package
HyperV-Hypervisor-Package
HyperV-HypervisorPlatform-merged-Package
HyperV-HypervisorPlatform-Package
HyperV-KMCL-Host-Package
HyperV-Networking-Containers-Package
HyperV-Networking-merged-Package
HyperV-Networking-Package
HyperV-RDP4VS-merged-Package
HyperV-RDP4VS-Package
HyperV-Storage-QoS-Package
HyperV-Storage-VSP-merged-Package
HyperV-Storage-VSP-Package
HyperV-UX-Common-Package
HyperV-UX-PowerShell-Module-HyperV-merged-Package
HyperV-UX-PowerShell-Module-HyperV-Package
HyperV-UX-PowerShell-Module-HyperV-WOW64-Package
HyperV-UX-UI-62-merged-Package
HyperV-UX-UI-62-Package
HyperV-UX-UI-63-merged-Package
HyperV-UX-UI-63-Package
HyperV-UX-UI-Client-merged-Package
HyperV-UX-UI-Client-Package
HyperV-VID-Package
HyperV-VMMS-Package
LanguageFeatures-WordBreaking-en-legacy-Package
LanguageFeatures-WordBreaking-en-legacy-WOW64-Package
LanguageFeatures-WordBreaking-en-Package
LanguageFeatures-WordBreaking-en-WOW64-Package
LanguageFeatures-WordBreaking-Common-legacy-Package
Microsoft-Client-License-Flexible-Platform-Package
Microsoft-Client-License-Platform-Device-Licensing-Service-Package
Microsoft-Client-License-Platform-Upgrade-Subscription-Package
Microsoft-Hyper-V-ClientEdition-Package
Microsoft-Hyper-V-Hypervisor-merged-Package
Microsoft-Hyper-V-Hypervisor-Package
Microsoft-Media-Foundation-Package
Microsoft-Media-Foundation-WOW64-Package
Microsoft-OneCore-DeviceUpdateCenter-Package
Microsoft-Onecore-Identity-TenantRestrictions-Package
Microsoft-Onecore-Identity-TenantRestrictions-WOW64-Package
Microsoft-OneCore-IsolatedUserMode-Package
Microsoft-OneCore-Multimedia-CastingCommon-Package
Microsoft-OneCore-Multimedia-CastingCommon-WOW64-Package
Microsoft-OneCore-Multimedia-CastingReceiver-Media-Package
Microsoft-OneCore-Multimedia-CastingReceiver-Media-WOW64-Package
Microsoft-OneCore-Multimedia-CastingTransmitter-Media-Package
Microsoft-OneCore-VirtualizationBasedSecurity-Package
Microsoft-OneCore-WindowsIoT-Package
Microsoft-OSClient-Layer-Data-Package
Microsoft-Windows-Accessories-Migration-Package
Microsoft-Windows-AppManagement-AppV-Package
Microsoft-Windows-AppManagement-AppV-WOW64-Package
Microsoft-Windows-AppManagement-Common-Package
Microsoft-Windows-AppManagement-Common-WOW64-Package
Microsoft-Windows-AppManagement-UEV-Package
Microsoft-Windows-AppManagement-UEV-WOW64-Package
Microsoft-Windows-BootEnvironment-Dvd-Package
Microsoft-Windows-Browser-Package
Microsoft-Windows-CEIPEnable-Adm-Package
Microsoft-Windows-Client-AssignedAccess-Package
Microsoft-Windows-Client-AssignedAccess-WOW64-Package
Microsoft-Windows-Client-EmbeddedExp-Package
Microsoft-Windows-Client-Features-Removable-Package
Microsoft-Windows-Client-ShellLauncher-Package
Microsoft-Windows-ClientForNFS-Infrastructure-OptGroup-Package
Microsoft-Windows-COM-MSMQ-Package
Microsoft-Windows-Composition-Test-Package
Microsoft-Windows-Composition-Test-WOW64-Package
Microsoft-Windows-ConfigCI-Onecore-Package
Microsoft-Windows-ConfigCI-Onecore-WOW64-Package
Microsoft-Windows-DataCenterBridging-Opt-Package
Microsoft-Windows-DataCenterBridging-Opt-WOW64-Package
Microsoft-Windows-DataCenterBridging-Package
Microsoft-Windows-Dedup-ChunkLibrary-Package
Microsoft-Windows-Desktop-Required-ClientOnly-removable-Package
Microsoft-Windows-Desktop-Required-SharedWithServer-Removable-Package
Microsoft-Windows-Desktop-Shared-Removable-Package
Microsoft-Windows-DeviceGuard-GPEXT-Package
Microsoft-Windows-DiagnosticInfrastructure-Adm-Package
Microsoft-Windows-DirectoryServices-ADAM-Client-Admin-Package
Microsoft-Windows-DirectoryServices-ADAM-Client-OptGroup-Package
Microsoft-Windows-DirectoryServices-ADAM-Client-Package
Microsoft-Windows-DirectPlay-OC-Opt-Package
Microsoft-Windows-DirectPlay-OC-Opt-WOW64-Package
Microsoft-Windows-DirectPlay-OC-Package
Microsoft-Windows-EditionPack-Professional-Removable-Package
Microsoft-Windows-Embedded-UnifiedWriteFilterCSP-Package
Microsoft-Windows-EnterpriseClientSync-Host-Opt-Package
Microsoft-Windows-EnterpriseClientSync-Host-Package
Microsoft-Windows-Enterprise-Desktop-Shared-Removable-Package
Microsoft-Windows-EventLog-Adm-Package
Microsoft-Windows-FCI-Client-Package
Microsoft-Windows-FCI-Client-WOW64-Package
Microsoft-Windows-Help-ClientOOBE-Feature-Package
Microsoft-Windows-Help-ClientUA-Client-merged-Package
Microsoft-Windows-Help-ClientUA-Client-Package
Microsoft-Windows-HyperV-OptionalFeature-VirtualMachinePlatform-Client-Package
Microsoft-Windows-HyperV-OptionalFeature-VirtualMachinePlatform-Client-Disabled-Package
Microsoft-Windows-HyperV-OptionalFeature-HypervisorPlatform-Disabled-Package
Microsoft-Windows-Hyphenation-Dictionaries
Microsoft-Windows-Identity-Foundation-Opt-Package
Microsoft-Windows-Identity-Foundation-Package
Microsoft-Windows-IIS-WebServer-AddOn-2-Package
Microsoft-Windows-IIS-WebServer-AddOn-Package
Microsoft-Windows-IIS-WebServer-Package
Microsoft-Windows-Legacy-Components-OC-Package
Microsoft-Windows-Legacy-Components-OC-WOW64-Package
Microsoft-Windows-Media-Format-merged-Package
Microsoft-Windows-Media-Format-Package
Microsoft-Windows-Media-Format-WOW64-merged-Package
Microsoft-Windows-Media-Format-WOW64-Package
Microsoft-Windows-Media-Streaming-merged-Package
Microsoft-Windows-Media-Streaming-Package
Microsoft-Windows-Media-Streaming-WOW64-merged-Package
Microsoft-Windows-Media-Streaming-WOW64-Package
Microsoft-Windows-MobilePC-Client-Premium-Package
Microsoft-Windows-msmq-adintegration-Opt-Package
Microsoft-Windows-MSMQ-Client-Package
Microsoft-Windows-MultiPoint-Connector-Package
Microsoft-Windows-NetFx-AutoNgenEnable.3.5
Microsoft-Windows-NetFx-NgenAssemblyExclusionClient
Microsoft-Windows-NetFx-Shared-Misc
Microsoft-Windows-NetFx-Shared-MOF-Client
Microsoft-Windows-NetFx-Shared-MOF-Extended
Microsoft-Windows-NetFx-Shared-Perfcounters-Client
Microsoft-Windows-NetFx-Shared-Perfcounters-Extended
Microsoft-Windows-NetFx-Shared-Typelibs
Microsoft-Windows-NetFx-Shared-WCF
Microsoft-Windows-NetFx3-WCF-OC-Package
Microsoft-Windows-NetFx4-WCF-US-OC-Package
Microsoft-Windows-Network-Connectivity-Assistant-Service-Package
Microsoft-Windows-NetworkDiagnostics-DirectAccessEntry-Package
Microsoft-Windows-NFS-Administration-D-Opt-Package
Microsoft-Windows-NFS-ClientSKU-Package
Microsoft-Windows-Not-Supported-On-LTSB-Package
Microsoft-Windows-Not-Supported-On-LTSB-WOW64-Package
Microsoft-Windows-OneCore-Containers-Client-Opt-Package
Microsoft-Windows-OneDrive
Microsoft-Windows-PAW-Feature-Package
Microsoft-Windows-PeerDist-Client-Group-Package
Microsoft-Windows-PeerDist-Client-Group-WOW64-Package
Microsoft-Windows-PeerDist-Client-Package
Microsoft-Windows-PhotoBasic-Feature-Package
Microsoft-Windows-PhotoBasic-Feature-WOW64-Package
Microsoft-Windows-PhotoBasic-merged-Package
Microsoft-Windows-PhotoBasic-Package
Microsoft-Windows-PhotoBasic-PictureTools-WOW64-Package
Microsoft-Windows-PhotoBasic-WOW64-merged-Package
Microsoft-Windows-PhotoBasic-WOW64-Package
Microsoft-Windows-Portable-Devices-merged-Package
Microsoft-Windows-Portable-Devices-Package
Microsoft-Windows-Portable-Devices-WOW64-Package
Microsoft-Windows-PowerShell-V2-Client-Package
Microsoft-Windows-Printing-Foundation-Package
Microsoft-Windows-Printing-LocalPrinting-Enterprise-Package
Microsoft-Windows-Printing-PrintToPDF-Opt-Package
Microsoft-Windows-Printing-PrintToPDFServices-Package
Microsoft-Windows-Printing-XpsDocumentWriter-Opt-Package
Microsoft-Windows-Printing-XPSServices-Package
Microsoft-Windows-ProjFS-OptionalFeature-Package
Microsoft-Windows-RDC-Opt-Package
Microsoft-Windows-RDC-Package
Microsoft-Windows-RecDisc-SDP-Removable-Package
Microsoft-Windows-RemoteAssistance-Package-Client
Microsoft-Windows-RemoteFX-VM-Setup-Package
Microsoft-Windows-SearchEngine-Client-Package-base-Package
Microsoft-Windows-SearchEngine-Client-Package-onecoreuap-Package
Microsoft-Windows-SearchEngine-Client-Package-shell-Package
Microsoft-Windows-SearchEngine-Client-Package
Microsoft-Windows-SecureStartup-Package
Microsoft-Windows-Security-SPP-Component-SKU-CloudEdition-License-Package
Microsoft-Windows-Security-SPP-Component-SKU-Education-License-Package
Microsoft-Windows-Security-SPP-Component-SKU-IoTEnterprise-License-Package
Microsoft-Windows-Security-SPP-Component-SKU-ProfessionalCountrySpecific-License-Package
Microsoft-Windows-Security-SPP-Component-SKU-ProfessionalEducation-License-Package
Microsoft-Windows-Security-SPP-Component-SKU-ProfessionalSingleLanguage-License-Package
Microsoft-Windows-Security-SPP-Component-SKU-ProfessionalWorkstation-License-Package
Microsoft-Windows-Security-SPP-Component-SKU-ServerRdsh-License-Package
Microsoft-Windows-SimpleTCP-Opt-Package
Microsoft-Windows-SimpleTCP-Package
Microsoft-Windows-SMB1-Package
Microsoft-Windows-SMB1Deprecation-Package
Microsoft-Windows-SmbDirect-Opt-Package
Microsoft-Windows-SmbDirect-Package
Microsoft-Windows-Spelling-Dictionaries
Microsoft-Windows-StorageService-Package
Microsoft-Windows-Telnet-Client-Opt-Package
Microsoft-Windows-Telnet-Client-Package
Microsoft-Windows-TerminalServices-WMIProvider-Package
Microsoft-Windows-TextPrediction-Dictionaries
Microsoft-Windows-TFTP-Client-Opt-Package
Microsoft-Windows-TFTP-Client-Package
Microsoft-Windows-WinOcr-Opt-Package
Microsoft-Windows-WinOcr-Package
Multimedia-RestrictedCodecsDolby-Package
Multimedia-RestrictedCodecsDolby-WOW64-Package
RemoteDesktopServices-Base-Package
Server-Help-Package.ClientEnterprise
Microsoft-Windows-All-Client-SV2Moments
) do (
echo.
echo *****************************************************************
echo:Removing: %%z
echo *****************************************************************
%nul% Reg load "HKLM\OfflineSOFTWARE" "mount\Windows\System32\config\SOFTWARE"
Powershell -C "Set-ItemProperty -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*%%z*' -Name Visibility -Value 1 -Force -EA SilentlyContinue -Verbose"
Powershell -C "Remove-Item -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*%%z*' -Include *Owner* -Recurse -Force -EA SilentlyContinue -Verbose"
%nul% Reg unload "HKLM\OfflineSOFTWARE"
Powershell -C "Get-WindowsPackage -Path 'mount' | Where {$_.PackageName -match '%%z' } | Remove-WindowsPackage -Path 'mount' -NoRestart -EA SilentlyContinue"
)
echo *****************************************************************
echo.
echo *****************************************************************
echo: Apply Registry Tweaks
echo *****************************************************************
Reg load "HKLM\OfflineSOFTWARE" "mount\Windows\System32\config\SOFTWARE"
Reg load "HKLM\OfflineSYSTEM" "mount\Windows\System32\config\SYSTEM"
Reg load "HKLM\TEMP_NTUSER" "mount\Users\Default\NTUSER.DAT"

Reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "AppsUseLightTheme" /t REG_SZ /d "REG ADD \"HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize\" /v \"AppsUseLightTheme\" /t REG_DWORD /d 0 /f" /f
Reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "SystemUsesLightTheme" /t REG_SZ /d "REG ADD \"HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize\" /v \"SystemUsesLightTheme\" /t REG_DWORD /d 0 /f" /f
Reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "GlobalUserDisabled" /t REG_SZ /d "REG ADD \"HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\" /v \"GlobalUserDisabled\" /t REG_DWORD /d 1 /f" /f
Reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "HttpAcceptLanguageOptOut" /t REG_SZ /d "REG ADD \"HKCU\Control Panel\International\User Profile\" /v \"HttpAcceptLanguageOptOut\" /t REG_DWORD /d 1 /f" /f
Reg add "HKLM\TEMP_NTUSER\Control Panel\UnsupportedHardwareNotificationCache" /v SV1 /d 0 /t reg_dword /f
Reg add "HKLM\TEMP_NTUSER\Control Panel\UnsupportedHardwareNotificationCache" /v SV2 /d 0 /t reg_dword /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t Reg_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t Reg_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t Reg_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t Reg_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AltTabSettings" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "EnableAutoTray" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowRecent" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /t REG_SZ /d "" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\Control Panel\Desktop" /v "ScreenSaverIsSecure" /t REG_SZ /d "0" /f
Reg add "HKLM\TEMP_NTUSER\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "20" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSd" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAl" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSi" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSmallIcons" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "UseCompactMode" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "FolderContentsInfoTip" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideMergeConflicts" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SeparateProcess" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "NavPaneExpandToCurrentFolder" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "NavPaneShowAllFolders" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowInfoTip" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AutoCheckSelect" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SharingWizardOn" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\DWM" /v "ColorPrevalence" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "EnthusiastMode" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /v "DisableAutoplay" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoCDBurning" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ClearRecentDocsOnExit" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisableThumbnailsOnNetworkFolders" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoReadingPane" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ConfirmFileDelete" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoNetConnectDisconnect" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "StartupPage" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "AllItemsIconView" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\Context\CloudExperienceHostIntent\Wireless" /v "ScoobeCheckCompleted" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightFeatures" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "ConfigureWindowsSpotlight" /t REG_DWORD /d "2" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "IncludeEnterpriseSpotlight" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightWindowsWelcomeExperience" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightOnActionCenter" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightOnSettings" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-202914Enabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338387Enabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353698Enabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "RestartApps" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" /v "01" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" /v "512" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" /v "32" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" /v "256" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" /v "08" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" /v "04" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" /v "2048" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisallowCpl" /t Reg_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowCpl" /v "1" /t Reg_SZ /d "Microsoft.IndexingOptions" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\Control Panel\Desktop" /v "WindowArrangementActive" /t REG_SZ /d "0" /f
Reg add "HKLM\TEMP_NTUSER\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f
Reg add "HKLM\TEMP_NTUSER\Control Panel\Quick Actions\Control Center" /v "AppliedDefaultPins" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\input\Settings" /v "IsVoiceTypingKeyEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Print\MPS\Settings" /v "CloudPrintStatus" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Shell\USB" /v "NotifyOnUsbErrors" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableSpellchecking" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableKeyAudioFeedback" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableAutoShiftEngage" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableDoubleTapSpace" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableAutocorrection" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\TabletTip\1.7" /v "IsKeyBackgroundEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\TabletTip\EmbeddedInkControl" /v "EnableInkingWithTouch" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\TileDataModel\Migration\LockScreenPinnedTiles" /v "Completed" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "LegacyDefaultPrinterMode" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\downloadsFolder" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureProgrammatic" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureProgrammatic\NonPackaged" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureWithoutBorder" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureWithoutBorder\NonPackaged" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location\NonPackaged" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location\windows.immersivecontrolpanel_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\windows.immersivecontrolpanel_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\musicLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam\NonPackaged" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\business" /v "Priority" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\business" /v "Intent" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\creative" /v "Priority" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\creative" /v "Intent" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\entertainment" /v "Intent" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\entertainment" /v "Priority" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\family" /v "Intent" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\family" /v "Priority" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\gaming" /v "Priority" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\gaming" /v "Intent" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\schoolwork" /v "Priority" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Intent\schoolwork" /v "Intent" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$$windows.data.notifications.quiethourssettings\Current" /v "Data" /t REG_BINARY /d "020000005431923B7CD8D8010000000043420100C20A01D214284D006900630072006F0073006F00660074002E005100750069006500740048006F00750072007300500072006F00660069006C0065002E0055006E007200650073007400720069006300740065006400CA280000" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$microsoft.quiethoursprofile.priorityonly$windows.data.notifications.quiethoursprofile\Current" /v "Data" /t REG_BINARY /d "02000000A9CE164B7CD8D8010000000043420100C20A01CD1406020500000101020003010400CC321205284D006900630072006F0073006F00660074002E00530063007200650065006E0053006B0065007400630068005F003800770065006B007900620033006400380062006200770065002100410070007000294D006900630072006F0073006F00660074002E00570069006E0064006F007700730041006C00610072006D0073005F003800770065006B007900620033006400380062006200770065002100410070007000314D006900630072006F0073006F00660074002E00580062006F0078004100700070005F003800770065006B0079006200330064003800620062007700650021004D006900630072006F0073006F00660074002E00580062006F0078004100700070002D4D006900630072006F0073006F00660074002E00580062006F007800470061006D0069006E0067004F007600650072006C00610079005F003800770065006B00790062003300640038006200620077006500210041007000700029570069006E0064006F00770073002E00530079007300740065006D002E004E006500610072005300680061007200650045007800700065007200690065006E0063006500520065006300650069007600650000" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$microsoft.quiethoursprofile.unrestricted$windows.data.notifications.quiethoursprofile\Current" /v "Data" /t REG_BINARY /d "02000000D55B923B7CD8D8010000000043420100C20A01CD140602050001010102010301040100" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$quietmomentfullscreen$windows.data.notifications.quietmoment\Current" /v "Data" /t REG_BINARY /d "020000005743393E7CD8D8010000000043420100C20A01D21E264D006900630072006F0073006F00660074002E005100750069006500740048006F00750072007300500072006F00660069006C0065002E0041006C00610072006D0073004F006E006C007900CA500000" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$quietmomentgame$windows.data.notifications.quietmoment\Current" /v "Data" /t REG_BINARY /d "02000000F5968F3E7CD8D8010000000043420100C20A01D21E284D006900630072006F0073006F00660074002E005100750069006500740048006F00750072007300500072006F00660069006C0065002E005000720069006F0072006900740079004F006E006C007900CA500000" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$quietmomentpostoobe$windows.data.notifications.quietmoment\Current" /v "Data" /t REG_BINARY /d "02000000E41BCA3D7CD8D8010000000043420100C20A01D21E284D006900630072006F0073006F00660074002E005100750069006500740048006F00750072007300500072006F00660069006C0065002E005000720069006F0072006900740079004F006E006C007900CA500000" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$quietmomentpresentation$windows.data.notifications.quietmoment\Current" /v "Data" /t REG_BINARY /d "02000000510BD33E7CD8D8010000000043420100C20A01D21E264D006900630072006F0073006F00660074002E005100750069006500740048006F00750072007300500072006F00660069006C0065002E0041006C00610072006D0073004F006E006C007900CA500000" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\DefaultAccount\Current\default$windows.data.controlcenter.quickactionusagecountmap\windows.data.controlcenter.quickactionusagecountmap" /v "Data" /t REG_BINARY /d "434201000A002A06E8B0F499062A2B0E4E43420100CD0A120A011C4D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E0056006F006C0075006D006500C50A01D114CAE1E8B30C0000000000" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\DefaultAccount\Current\default$windows.data.controlcenter.uistate\windows.data.controlcenter.uistate" /v "Data" /t REG_BINARY /d "434201000A002A06E9B0F499062A2B0ED82943420100D232B7075B007B0022004E0061006D00650022003A00220054006F00670067006C006500730022002C00220051007500690063006B0041006300740069006F006E00730022003A005B007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E00570069004600690022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E0042006C007500650074006F006F007400680022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E00430065006C006C0075006C006100720022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E00560070006E0022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E0041006900720070006C0061006E0065004D006F006400650022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E0052006F0074006100740069006F006E004C006F0063006B0022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E0042006100740074006500720079005300610076006500720022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E0042006C00750065004C00690067006800740052006500640075006300740069006F006E0022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E004D006F00620069006C00650048006F007400730070006F00740022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E005100750069006500740048006F0075007200730022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E004100630063006500730073006900620069006C0069007400790022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E004E006500610072005300680061007200650022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E0043006F006C006F007200500072006F00660069006C00650022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E00430061007300740022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E00500072006F006A006500630074004C00320022007D005D007D002C007B0022004E0061006D00650022003A00220053006C006900640065007200730022002C00220051007500690063006B0041006300740069006F006E00730022003A005B007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E004200720069006700680074006E0065007300730022007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E0056006F006C0075006D00650022007D005D007D005D00D23CAD0D7B00220052006500730069007A006500540079007000650022003A002200300022002C002200470072006F0075007000730022003A005B007B0022004E0061006D00650022003A00220054006F00670067006C006500730022002C00220043007500730074006F006D00540065006D0070006C006100740065004B006500790022003A00220047007200690064005600690065007700470072006F00750070004400650073006B0074006F007000570069006E007500690046006C00750065006E007400540065006D0070006C0061007400650022002C0022004D0069006E0052006F007700730022003A0031002C00220052006F0077005700690064007400680022003A0030002C00220051007500690063006B0041006300740069006F006E00730022003A005B007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E0042006C00750065004C00690067006800740052006500640075006300740069006F006E0022002C0022005400690074006C00650022003A0022004E00690067006800740020006C00690067006800740022002C002200490063006F006E0022003A0022008CF022002C00220043007500730074006F006D00540065006D0070006C006100740065004B006500790022003A00220054006F00670067006C00650042007500740074006F006E00570069006E007500690046006C00750065006E007400540065006D0070006C0061007400650022002C002200540079007000650022003A0030007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E004100630063006500730073006900620069006C0069007400790022002C0022005400690074006C00650022003A0022004100630063006500730073006900620069006C0069007400790022002C002200490063006F006E0022003A00220076E722002C00220043007500730074006F006D00540065006D0070006C006100740065004B006500790022003A0022004C003200500061006700650042007500740074006F006E00570069006E007500690046006C00750065006E007400540065006D0070006C0061007400650022002C002200540079007000650022003A0030007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E004E006500610072005300680061007200650022002C0022005400690074006C00650022003A0022004E00650061007200620079002000730068006100720069006E00670022002C002200490063006F006E0022003A002200E2F322002C00220043007500730074006F006D00540065006D0070006C006100740065004B006500790022003A00220054006F00670067006C00650042007500740074006F006E00570069006E007500690046006C00750065006E007400540065006D0070006C0061007400650022002C002200540079007000650022003A0030007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E00430061007300740022002C0022005400690074006C00650022003A002200430061007300740022002C002200490063006F006E0022003A00220017F122002C00220043007500730074006F006D00540065006D0070006C006100740065004B006500790022003A0022004C003200500061006700650042007500740074006F006E00570069006E007500690046006C00750065006E007400540065006D0070006C0061007400650022002C002200540079007000650022003A0030007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E00500072006F006A006500630074004C00320022002C0022005400690074006C00650022003A002200500072006F006A0065006300740022002C002200490063006F006E0022003A002200C6EB22002C00220043007500730074006F006D00540065006D0070006C006100740065004B006500790022003A0022004C003200500061006700650042007500740074006F006E00570069006E007500690046006C00750065006E007400540065006D0070006C0061007400650022002C002200540079007000650022003A0031007D005D007D002C007B0022004E0061006D00650022003A00220053006C006900640065007200730022002C00220043007500730074006F006D00540065006D0070006C006100740065004B006500790022003A00220053006C006900640065007200470072006F00750070004400650073006B0074006F007000570069006E007500690046006C00750065006E007400540065006D0070006C0061007400650022002C0022004D0069006E0052006F007700730022003A0030002C00220052006F0077005700690064007400680022003A0031002C00220051007500690063006B0041006300740069006F006E00730022003A005B007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E0056006F006C0075006D00650022002C0022005400690074006C00650022003A00220056006F006C0075006D00650022002C002200490063006F006E0022003A00220067E722002C00220043007500730074006F006D00540065006D0070006C006100740065004B006500790022003A00220056006F006C0075006D00650053006C006900640065007200570069006E007500690046006C00750065006E007400540065006D0070006C0061007400650022002C002200540079007000650022003A0030007D005D007D005D002C00220046006F006F0074006500720022003A005B007B0022004E0061006D00650022003A0022004C0065006600740046006F006F0074006500720022002C00220043007500730074006F006D00540065006D0070006C006100740065004B006500790022003A0022004C0065006600740046006F006F007400650072004400650073006B0074006F007000570069006E007500690046006C00750065006E007400540065006D0070006C0061007400650022002C0022004D0069006E0052006F007700730022003A0030002C00220052006F0077005700690064007400680022003A0030002C00220051007500690063006B0041006300740069006F006E00730022003A005B005D007D002C007B0022004E0061006D00650022003A0022005200690067006800740046006F006F0074006500720022002C00220043007500730074006F006D00540065006D0070006C006100740065004B006500790022003A0022005200690067006800740046006F006F007400650072004400650073006B0074006F007000570069006E007500690046006C00750065006E007400540065006D0070006C0061007400650022002C0022004D0069006E0052006F007700730022003A0030002C00220052006F0077005700690064007400680022003A0030002C00220051007500690063006B0041006300740069006F006E00730022003A005B007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E00450064006900740022002C0022005400690074006C00650022003A0022004500640069007400200071007500690063006B002000730065007400740069006E006700730022002C002200490063006F006E0022003A0022000FE722002C00220043007500730074006F006D00540065006D0070006C006100740065004B006500790022003A00220046006F006F0074006500720042007500740074006F006E00570069006E007500690046006C00750065006E007400540065006D0070006C0061007400650022002C002200540079007000650022003A0031007D002C007B00220046007200690065006E0064006C0079004E0061006D00650022003A0022004D006900630072006F0073006F00660074002E0051007500690063006B0041006300740069006F006E002E0041006C006C00530065007400740069006E006700730022002C0022005400690074006C00650022003A00220041006C006C002000730065007400740069006E006700730022002C002200490063006F006E0022003A00220013E722002C00220043007500730074006F006D00540065006D0070006C006100740065004B006500790022003A00220046006F006F0074006500720042007500740074006F006E00570069006E007500690046006C00750065006E007400540065006D0070006C0061007400650022002C002200540079007000650022003A0031007D005D007D005D007D00C2460100000000" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\DefaultAccount\Current\default$windows.data.shell.focussessionactivetheme\windows.data.shell.focussessionactivetheme${1b019365-25a5-4ff1-b50a-c155229afc8f}" /v "Data" /t REG_BINARY /d "434201000A002A06C4DFF899062A2B0E0843420100C20A0100000000" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-88000326Enabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CPSS\Store\InkingAndTypingPersonalization" /v "Value" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t REG_DWORD /d 0 /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowCloudFilesInQuickAccess" /t REG_DWORD /d "0" /f
reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers" /v "BackgroundType" /t REG_DWORD /d 0 /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V TaskbarGlomLevel /T REG_DWORD /D 2 /F
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V ShowSecondsInSystemClock /T REG_DWORD /D 1 /F
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V ShowTaskViewButton /T REG_DWORD /D 0 /F
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCortanaButton" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowPreviewHandlers" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DITest" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableTaskGroups" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableSnapBar" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableSnapAssistFlyout" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SnapAssist" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "MultiTaskingAltTabFilter" /t REG_DWORD /d "3" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarBadges" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarFlashing" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarDa" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSh" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSn" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideDrivesWithNoMedia" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DontUsePowerShellOnWinX" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" /v "FullPath" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" /v "Settings" /t REG_BINARY /d "0C0002000B01000060000000" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Modules\GlobalSettings\Sizer" /v "PageSpaceControlSizer" /t REG_BINARY /d "A000000000000000000000007E070000" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3" /v "Settings" /t REG_BINARY /d "30000000FEFFFFFF7AF4000003000000300000003000000000000000AE0300007E070000DE0300006000000001000000" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "LockScreenToastEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "SafeSearchMode" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsMSACloudSearchEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsAADCloudSearchEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDeviceSearchHistoryEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDynamicSearchBoxEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" /v "StoragePoliciesNotified" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" /v "StoragePoliciesChanged" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "ColorPrevalence" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\DWM" /v "EnableWindowColorization" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d "2" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "DisablePrediction" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\InfoBarsDisabled" /v "ServerMSSNotInstalled" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\Windows\Network Connections" /v "NC_ShowSharedAccessUI" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\Environment" /v "TEMP" /t REG_EXPAND_SZ /d "%%Windir%%\Temp" /f
Reg add "HKLM\TEMP_NTUSER\Environment" /v "TMP" /t REG_EXPAND_SZ /d "%%Windir%%\Temp" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\Control Panel\International" /v "TurnOffHighlightMisspelledWords" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Policies\Microsoft\Control Panel\International" /v "TurnOffAutocorrectMisspelledWords" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "RomeSdkChannelUserAuthzPolicy" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{645FF040-5081-101B-9F08-00AA002F954E}" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "NoStartMenuHelp" /t REG_DWORD /d "1" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_ShowHelp" /t REG_DWORD /d "0" /f
Reg add "HKLM\TEMP_NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "MMTaskbarEnabled" /t REG_DWORD /d "1" /f

Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "UserAuthPolicy" /t REG_SZ /d "REG ADD \"HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass\" /v \"UserAuthPolicy\" /t REG_DWORD /d 0 /f" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "BluetoothPolicy" /t REG_SZ /d "REG ADD \"HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass\" /v \"BluetoothPolicy\" /t REG_DWORD /d 0 /f" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "OnlyUseLatestCLR" /t REG_SZ /d "REG ADD \"HKLM\SOFTWARE\Microsoft\.NETFramework\" /v \"OnlyUseLatestCLR\" /t REG_DWORD /d 1 /f" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "OnlyUseLatestCLR_wow64" /t REG_SZ /d "REG ADD \"HKLM\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\" /v \"OnlyUseLatestCLR\" /t REG_DWORD /d 1 /f" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Clipboard" /v "IsCloudAndHistoryFeatureAvailable" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\default\Settings\AllowDataSense" /v "value" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Settings" /v "AllowDataSense" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\CurrentVersion\MDM" /v "DisableRegistration" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Spectrum" /v "SharedExperiencesEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\System" /v "EnableCdp" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\System" /v "AllowClipboardHistory" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Audio" /v "DisableSpatialAudioGlobal" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Audio" /v "DisableSpatialOnComboEndpoints" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Input\Settings" /v "PredictionDisabled" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Input\Settings" /v "UserStatsEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Input\Settings" /v "EnableDoubleTapSpace" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Input\Settings" /v "EnableTextPrediction" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Input\Settings" /v "EnablePredictionSpaceInsertion" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput" /v "AllowLinguisticDataCollection" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput" /v "AllowLanguageFeaturesUninstall" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CreatorsUpdatePrivacySettings" /v "ShowUI" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CreatorsUpdatePrivacySettings" /v "AutoSet" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\WinRM\Service\WinRS" /v "AllowRemoteShellAccess" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\WOW6432Node\Microsoft\WindowsRuntime\Server\Windows.Internal.WebView.OopWebViewServer" /v "ActivatableClasses" /t REG_MULTI_SZ /d "" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.zip" /v "ImpliedSelectionModel" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.zip" /v "AttributeMask" /t REG_DWORD /d "1048576" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.zip" /v "AttributeValue" /t REG_DWORD /d "1048576" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows Media Foundation\Platform" /v "EnableFrameServerMode" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\Network Connections" /v "NC_ShowSharedAccessUI" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Device Association Framework\InboxProviders\Print" /v "FederatedAepStoreLocations" /t REG_MULTI_SZ /d "" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\WindowsInkWorkspace" /v "AllowSuggestedAppsInWindowsInkWorkspace" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\default\WindowsInkWorkspace\AllowWindowsInkWorkspace" /v "value" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Reliability\WinRE" /v "UninstallWindowsRE" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\WindowsUpdate\UUS\Installed" /v "UUS.Desktop" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\WindowsUpdate\ExpressionEvaluators\Driver" /v "Prefixes" /t REG_MULTI_SZ /d "" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\WindowsUpdate\ExpressionEvaluators\MSI" /v "Prefixes" /t REG_MULTI_SZ /d "" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoCloudApplicationNotification" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "HideRecentJumplists" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "HideFrequentlyUsedApps" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "HideRecentlyAddedApps" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderDocuments" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderDocuments_ProviderSet" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderDownloads" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderDownloads_ProviderSet" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderFileExplorer" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderFileExplorer_ProviderSet" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderHomeGroup" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderHomeGroup_ProviderSet" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderMusic" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderMusic_ProviderSet" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderNetwork" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderNetwork_ProviderSet" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderPersonalFolder" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderPersonalFolder_ProviderSet" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderPictures" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderPictures_ProviderSet" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderSettings" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderSettings_ProviderSet" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderVideos" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderVideos_ProviderSet" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "HideHibernate" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "HideSleep" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "HideLock" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "HideSignOut" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Communications" /v "ConfigureChatAutoInstall" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Classes\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\ShellFolder" /v "Attributes" /t REG_DWORD /d "2962489444" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "HubMode" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartNameResolution" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "EnableMulticast" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableCloudOptimizedContent" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableTailoredExperiencesWithDiagnosticData" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /v "PaidWifi" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /v "WiFiSenseOpen" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Ole\AppCompat" /v "RequireIntegrityActivationAuthenticationLevel" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" /v "Skype-UserConsentAccepted" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\WlanSvc\AnqpCache" /v "OsuRegistrationStatus" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\Explorer" /v "ShowOrHideMostUsedApps" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "DisableATMFD" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation" /v "Manual" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\Appx" /v "AllowAutomaticAppArchiving" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreen" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device" /v "DevicePasswordLessBuildVersion" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v "DontSearchWindowsUpdate" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Speech_OneCore\Preferences" /v "ModelDownloadAllowed" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWUfBSafeguards" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "HideMCTLink" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "IsExpedited" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "RestartNotificationsAllowed2" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" /v "BypassNRO" /t Reg_DWORD /d 1 /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "MiscPolicyInfo" /t Reg_DWORD /d 2 /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "PassedPolicy" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "ShippedWithReserves" /t Reg_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration" /v "DisableResetbase" /t Reg_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration" /v "CBSLogCompress" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration" /v "NumCBSPersistLogs" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration" /v "DisableComponentBackups" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowHibernateOption" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowLockOption" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowSleepOption" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "DisableWerReporting" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\BitLocker" /v "IsBdeDriverPresent" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows NT\DiskQuota" /v "Enable" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows NT\DiskQuota" /v "Enforce" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TraceManager" /v "MiniTraceSlotEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\EventTranscriptKey" /v "EnableEventTranscript" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" /v "ThisPCPolicy" /t Reg_SZ /d "Hide" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\downloadsFolder" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureProgrammatic" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureWithoutBorder" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\musicLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v "Value" /t REG_SZ /d "Deny" /f
Reg add "HKLM\OfflineSOFTWARE\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\Windows Chat" /v "ChatIcon" /t REG_DWORD /d "3" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\WindowsMitigation" /v "UserPreference" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DSCAutomationHostEnabled" /t REG_DWORD /d "2" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableCursorSuppression" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableFullTrustStartupTasks" /t REG_DWORD /d "2" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableInstallerDetection" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableSecureUIAPaths" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUIADesktopToggle" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUwpStartupTasks" /t REG_DWORD /d "2" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "SupportFullTrustStartupTasks" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "SupportUwpStartupTasks" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "LocalAccountTokenFilterPolicy" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DontDisplayLastUserName" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DontDisplayLockedUserId" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "HideFastUserSwitching" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableFirstLogonAnimation" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLinkedConnections" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "NoConnectedUser" /t REG_DWORD /d "3" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAutomaticRestartSignOn" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "legalnoticecaption" /t REG_SZ /d "" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "legalnoticetext" /t REG_SZ /d "" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "scforceoption" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "shutdownwithoutlogon" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "undockwithoutlogon" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableCAD" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerboseStatus" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "NoDispCPL" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorUser" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoCustomizeThisFolder" /t REG_DWORD /d "1" /f
reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoChangingLockScreen" /t REG_DWORD /d 1 /f
reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\System" /v "DisableLogonBackgroundImage" /t REG_DWORD /d 1 /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisablePropPage" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}" /t REG_SZ /d "" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v "29" /t REG_SZ /d "C:\Windows\System32\blank.ico" /f
Reg add "HKLM\OfflineSOFTWARE\Classes\*\shell\RunAsTI" /ve /t REG_SZ /d "" /f
Reg add "HKLM\OfflineSOFTWARE\Classes\*\shell\RunAsTI" /v "Icon" /t REG_SZ /d "imageres.dll,73" /f
Reg add "HKLM\OfflineSOFTWARE\Classes\*\shell\RunAsTI\command" /ve /t REG_SZ /d "%Windir%\System32\PowerRun.exe \"%%1\"" /f
Reg add "HKLM\OfflineSOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\UnlockerShellExtension" /ve /t reg_SZ /d "{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}" /f
Reg add "HKLM\OfflineSOFTWARE\Classes\CLSID\UnlockerShellExtension" /ve /t reg_SZ /d "{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}" /f
Reg add "HKLM\OfflineSOFTWARE\Classes\CLSID\{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}" /ve /t reg_SZ /d "UnlockerShellExtension" /f
Reg add "HKLM\OfflineSOFTWARE\Classes\CLSID\{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}\InProcServer32" /ve /t reg_SZ /d "%SystemRoot%\System32\Unlocker\UnlockerCOM.dll" /f
Reg add "HKLM\OfflineSOFTWARE\Classes\CLSID\{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}\InProcServer32" /v "ThreadingModel" /t reg_SZ /d "Apartment" /f
Reg add "HKLM\OfflineSOFTWARE\Classes\Folder\shellex\ContextMenuHandlers\UnlockerShellExtension" /ve /t reg_SZ /d "{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Unlocker.exe" /ve /t reg_SZ /d "%SystemRoot%\System32\Unlocker\Unlocker.exe" /f
Reg add "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}" /t reg_SZ /d "UnlockerShellExtension" /f
Reg add "HKLM\OfflineSOFTWARE\Policies\Microsoft\Dsh" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSOFTWARE\Classes\.cmd\ShellNew" /v "NullFile" /t REG_SZ /d "" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\*\shellex\PropertySheetHandlers\{1f2e5c40-9550-11ce-99d2-00aa006e086c}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{1f2e5c40-9550-11ce-99d2-00aa006e086c}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\Drive\shellex\PropertySheetHandlers\{1f2e5c40-9550-11ce-99d2-00aa006e086c}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\Sharing" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\Drive\shellex\PropertySheetHandlers\Sharing" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{4a7ded0a-ad25-11d0-98a8-0800361b1103}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\*\shellex\PropertySheetHandlers\{883373C3-BF89-11D1-BE35-080036B11A03}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\Drive\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\AllFilesystemObjects\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\Drive\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{ef43ecfe-2ab9-4632-bf21-58909dd177f0}" /f
Reg delete "HKLM\OfflineSOFTWARE\Classes\Drive\shellex\PropertySheetHandlers\{ef43ecfe-2ab9-4632-bf21-58909dd177f0}]" /f

Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\Dnscache\Parameters" /v "DisableParallelAandAAAA" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\LanmanWorkstation\Parameters" /v "DisableBandwidthThrottling" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\LanmanServer\Parameters" /v "DisableCompression" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "DeadGWDetectDefault" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "DisableReverseAddressRegistrations" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "DisableDynamicUpdate" /t REG_DWORD /d "1" /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "IGMPLevel" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "PerformRouterDiscovery" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSYSTEM\Setup\LabConfig" /v BypassTPMCheck /t reg_dword /d 1 /f
Reg add "HKLM\OfflineSYSTEM\Setup\LabConfig" /v BypassSecureBootCheck /t reg_dword /d 1 /f
Reg add "HKLM\OfflineSYSTEM\Setup\LabConfig" /v BypassRAMCheck /t reg_dword /d 1 /f
Reg add "HKLM\OfflineSYSTEM\Setup\LabConfig" /v BypassStorageCheck /t reg_dword /d 1 /f
Reg add "HKLM\OfflineSYSTEM\Setup\LabConfig" /v BypassCPUCheck /t reg_dword /d 1 /f
Reg add "HKLM\OfflineSYSTEM\Setup\MoSetup" /v AllowUpgradesWithUnsupportedTPMorCPU /t reg_dword /d 1 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\LanmanServer\Parameters" /v "AutoShareWks" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\LanmanServer\Parameters" /v "AutoShareServer" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\CrashControl" /v "AutoReboot" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\CrashControl" /v "CrashDumpEnabled" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\CrashControl" /v "DumpLogLevel" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\CrashControl" /v "EnableLogFile" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\CrashControl" /v "LogEvent" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\CrashControl" /v "MinidumpsCount" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\CrashControl" /v "Overwrite" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\CrashControl" /v "AlwaysKeepMemoryDump" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\CrashControl" /v "DisplayParameters" /t Reg_DWORD /d 1 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\Session Manager\Power" /v "HiberbootEnabled" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\Session Manager\Power" /v "HibernateEnabled" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\Power" /v "HibernteEnabled" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\Power" /v "CsEnabled" /t Reg_DWORD /d 0 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\TimeZoneInformation" /v "DaylightBias" /t REG_DWORD /d "0" /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\TimeZoneInformation" /v "TimeZoneKeyName" /t REG_SZ /d "India Standard Time" /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "1" /f
Reg delete "HKLM\OfflineSYSTEM\ControlSet001\Control\Power" /v "EnergyEstimationDisabled" /f

Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\OneCore" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\.NET Framework" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Active Directory Rights Management Services Client" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\AppID" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Application Experience" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\ApplicationData" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\AppListBackup" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\AppxDeploymentClient" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Autochk" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\BitLocker" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Bluetooth" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\BrokerInfrastructure" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\capabilityaccessmanager" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\CertificateServicesClient" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Chkdsk" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Clip" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\CloudRestore" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Customer Experience Improvement Program" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Data Integrity Scan" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Defrag" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Device Information" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Device Setup" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DeviceDirectoryClient" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Diagnosis" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DirectX" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DiskCleanup" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DiskDiagnostic" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DiskFootprint" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DUSM" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\EDP" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\EnterpriseMgmt" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\ExploitGuard" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Feedback" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\File Classification Infrastructure" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\FileHistory" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Flighting" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\HelloFace" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Input\LocalUserSyncDataAvailable" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Input\MouseSyncDataAvailable" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Input\PenSyncDataAvailable" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Input\TouchpadSyncDataAvailable" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\InstallService" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\International" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Kernel" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\LanguageComponentsInstaller\Installation" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\License Manager" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Live" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Location" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Maintenance" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Management" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Maps" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\MemoryDiagnostic" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Mobile Broadband Accounts" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Multimedia" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\NetTrace" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\NlaSvc" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Offline Files" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\PI" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\PLA" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Plug and Play" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Power Efficiency Diagnostics" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Printing" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\PushToInstall" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Ras" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\RecoveryEnvironment" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Registry" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\RemoteApp and Desktop Connections Update" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\RemoteAssistance" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Security" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SettingSync" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Setup\EM" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SharedPC" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Shell\CrawlStartPages" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Shell\FamilySafetyMonitor" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Shell\FamilySafetyRefresh" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Shell\FamilySafetyRefreshTask" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Shell\IndexerAutomaticMaintenance" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Shell\ThemesSyncedImageDownload" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Shell\ThemeAssetTask_SyncFODState" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Shell\UpdateUserPictureTask" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SpacePort" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Speech" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\StateRepository\MaintenanceTasks" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Storage Tiers Management" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Subscription" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Sysmain" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SystemRestore" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Task Manager\Interactive" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\TaskScheduler\Idle Maintenance" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\TaskScheduler\Maintenance Configurator" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\TaskScheduler\Manual Maintenance" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\TaskScheduler\Regular Maintenance" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Time Synchronization" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Time Zone" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\TPM" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UNP" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UpdateOrchestrator" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UPnP" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\USB" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\User Profile Service" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WaaSMedic" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WCM" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WDI" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Activation Technologies" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Defender" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Error Reporting" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Filtering Platform" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Media Sharing" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Subsystem For Linux" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WindowsBackup" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WindowsColorSystem" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WindowsUpdate" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Wininet" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WlanSvc" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WOF" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Work Folders" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Workplace Join" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WS" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WwanSvc\NotificationTask" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\XblGameSave" /f
Reg delete "HKLM\OfflineSYSTEM\ControlSet001\Control\WMI\Autologger" /f
Reg delete "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels" /f
Reg delete "HKLM\OfflineSYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
echo *****************************************************************
echo.
echo *****************************************************************
echo.--- Remove SystemApps New ^& Dirty Way
echo *****************************************************************
for %%z in (
InputApp
Microsoft.549981C3F5F10
Microsoft.Getstarted
Microsoft.OneConnect
Microsoft.ScreenSketch
Microsoft.Windows.Cortana
Microsoft.Windows.Photos
Microsoft.Windows.Search
Microsoft.WindowsCamera
microsoft.windowscommunicationsapps
Microsoft.WindowsStore
Microsoft.XboxIdentityProvider
Microsoft.ZuneMusic
MicrosoftWindows.Client.WebExperience
Microsoft.Windows.PrintQueueActionCenter
) do (
echo.
echo *****************************************************************
echo:Removing SystemApp: %%z
echo *****************************************************************
Powershell -C "GCI -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Config' | Where { $_.Name -match '%%z' } | RI -Recurse -Force -EA 0 -Verbose"
Powershell -C "GCI -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | Where { $_.Name -match '%%z' } | RI -Recurse -Force -EA 0 -Verbose"
Powershell -C "GCI -Path 'mount\Windows\SystemApps' | Where { $_.Name -match '%%z' } | RI -Force -Recurse -EA 0 -Verbose"
)
Powershell -C "NI -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned' -Name 'Microsoft.Windows.PrintQueueActionCenter_cw5n1h2txyewy' -Force -EA 0 -Verbose"
echo *****************************************************************
echo.
echo *****************************************************************
echo: Disable Services
echo *****************************************************************
FOR %%z IN (
AarSvc
Acx01000
AJRouter
AppMgmt
autotimesvc
BITS
BTAGService
BthAvctpSvc
CaptureService
CDPSvc
CDPUserSvc
CertPropSvc
DeviceAssociationBrokerSvc
DevicePickerUserSvc
diagnosticshub.standardcollector.service
DiagTrack
DispBrokerDesktopSvc
DisplayEnhancementService
dmwappushservice
DoSvc
DsSvc
DusmSvc
EntAppSvc
FrameServer
GraphicsPerfSvc
icssvc
iphlpsvc
IpxlatCfgSvc
lfsvc
MessagingService
MSiSCSI
NaturalAuthentication
NdisTapi
ndiswanlegacy
Netlogon
NcdAutoSetup
PcaSvc
PhoneSvc
PimIndexMaintenanceSvc
PNRPAutoReg
RasAuto
RasMan
RemoteAccess
RpcLocator
SCardSvr
ScDeviceEnum
scfilter
SCPolicySvc
SEMgrSvc
SensorService
SensrSvc
shpamsvc
SmsRouter
SNMPTRAP
SSDPSRV
stisvc
TapiSrv
TermService
TrkWks
tzautoupdate
UnistoreSvc
upnphost
UserDataSvc
UsoSvc
vmicguestinterface
vmicheartbeat
vmickvpexchange
vmicrdv
vmicshutdown
vmictimesync
vmicvmsession
vmicvss
WaaSMedicSvc
WalletService
wanarp
WbioSrvc
wcncsvc
WebClient
webthreatdefsvc
webthreatdefusersvc
WFDSConMgrSvc
WiaRpc
WinHttpAutoProxySvc
WinRM
WpnService
WSearch
WwanSvc
XboxGipSvc
) do (
echo.
echo *****************************************************************
echo: Disabling Windows Service: %%z
echo *****************************************************************
Powershell -C "Get-ChildItem -Path 'HKLM:OfflineSYSTEM\ControlSet001\Services' | Where {$_.Name -match '%%z' } | SP -Name Start -Value 4 -Force -EA 0 -Verbose"
)
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\ALG" /v Start /t REG_DWORD /d 4 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\DPS" /v Start /t REG_DWORD /d 4 /f
Reg add "HKLM\OfflineSYSTEM\ControlSet001\Services\pla" /v Start /t REG_DWORD /d 4 /f
Reg unload "HKLM\OfflineSOFTWARE"
Reg unload "HKLM\OfflineSYSTEM"
Reg unload "HKLM\TEMP_NTUSER"
echo *****************************************************************
echo.
echo *****************************************************************
echo: Remove Extra Langauges Except (EN-US)
echo *****************************************************************
for %%z in (
ar-SA,bg-BG,ca-ES,cs-CZ,da-DK,de-DE,el-GR,en-GB,es-ES,es-MX,et-EE,eu-ES,fi-FI,fr-CA,fr-FR,gl-ES,he-IL,hr-HR,hu-HU,id-ID,it-IT,ja-JP,ko-KR,lt-LT,lv-LV,nb-NO,nl-NL,pl-PL,pt-BR,pt-PT,ro-RO,ru-RU,sk-SK,sl-SI,sr-Latn-RS,sv-SE,th-TH,tr-TR,uk-UA,vi-VN,zh-CN,zh-TW
) do (
echo.
echo *****************************************************************
echo: Removing Language: %%z
echo *****************************************************************
Powershell -C "RI -Path 'mount\Windows\WinSxS\*%%z*' -Recurse -Force -EA 0 -Verbose"
Powershell -C "RI -Path 'mount\Windows\WinSxS\*\*%%z*' -Recurse -Force -EA 0 -Verbose"
Powershell -C "RI -Path 'mount\Windows\System32\%%z' -Recurse -Force -EA 0 -Verbose"
Powershell -C "RI -Path 'mount\Windows\SysWOW64\%%z' -Recurse -Force -EA 0 -Verbose"
Powershell -C "RI -Path 'mount\Windows\Boot\EFI\%%z' -Recurse -Force -EA 0 -Verbose"
Powershell -C "RI -Path 'mount\Windows\Boot\PCAT\%%z' -Recurse -Force -EA 0 -Verbose"
Powershell -C "RI -Path 'mount\Program Files\Common Files\microsoft shared\ink\%%z' -Recurse -Force -EA 0 -Verbose"
)
echo *****************************************************************
echo.
echo *****************************************************************
echo: Remove Extra Boot Fonts
echo *****************************************************************
for %%z in (
chs_boot.ttf
cht_boot.ttf
jpn_boot.ttf
kor_boot.ttf
malgunn_boot.ttf
malgun_boot.ttf
malgun_console.ttf
meiryon_boot.ttf
meiryo_boot.ttf
meiryo_console.ttf
msjhn_boot.ttf
msjh_boot.ttf
msjh_console.ttf
msyhn_boot.ttf
msyh_boot.ttf
msyh_console.ttf
) do (
echo.
echo *****************************************************************
echo: Removing UnNeeded Boot Font: %%z
echo *****************************************************************
Powershell -C "RI -Path 'DVD\boot\fonts\%%z' -Force -EA 0 -Verbose"
Powershell -C "RI -Path 'DVD\efi\microsoft\boot\fonts\%%z' -Force -EA 0 -Verbose"
Powershell -C "RI -Path 'mount\Windows\Boot\Fonts\%%z' -Force -EA 0 -Verbose"
)
echo *****************************************************************
echo.
echo *****************************************************************
echo: Check Offline OS Image Health OR Components Corruption
echo *****************************************************************
dism /Image:mount /Cleanup-Image /CheckHealth
echo *****************************************************************
echo.
echo *****************************************************************
echo: Reset Base of Offline Image
echo *****************************************************************
dism /image:mount /Cleanup-Image /StartComponentCleanup /ResetBase
echo *****************************************************************
echo.
echo *****************************************************************
echo: Enable Optional Feature NetFx3
echo *****************************************************************
dism /Image:mount /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:DVD\sources\sxs
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Remove Log Files ^& Log Directories
echo *****************************************************************
Powershell -C "RI -Path mount\Windows\Containers -Recurse -Verbose"
Powershell -C "RI -Path mount\Windows\assembly\NativeImages_v4.0.30319_32 -Recurse -EA 0 -Verbose"
Powershell -C "RI -Path mount\Windows\assembly\NativeImages_v4.0.30319_64 -Recurse -EA 0 -Verbose"
Powershell -C "RI -Path mount\Windows\WinSxS\Backup -Recurse -EA 0 -Verbose"
Powershell -C "RI -Path mount\Windows\WinSxS\Temp -Recurse -EA 0 -Verbose"
Powershell -C "RI -Path mount\Windows\WinSxS\*defender* -Recurse -EA 0 -Verbose"
Powershell -C "RI -Path mount\Windows\WinSxS\*onedrive* -Recurse -EA 0 -Verbose"
del /f /q /s "mount\Windows\*.log"
del /f /q /s "mount\Windows\CbsTemp\*"
rd /s /q "mount\Windows\Logs\*"
.\bin\rebase\rebase.exe -image:mount\Windows
echo *****************************************************************
echo.
echo *****************************************************************
echo: Cross Check Left WindowsApps ^| OptionalFeatures ^| Capabilities then Save ^& UnMount install wim
echo *****************************************************************
echo.
echo *****************************************************************
echo: Left Windows Apps on BareBone OS Image
echo *****************************************************************
Powershell -C "Get-AppxProvisionedPackage -Path 'mount' | Format-Table"
echo.
echo *****************************************************************
echo: Left Windows Optional Features on BareBone OS Image
echo *****************************************************************
Powershell -C "Get-WindowsOptionalFeature -Path 'mount' | Where {$_.State -eq 'Enabled' } | Format-Table"
echo.
echo *****************************************************************
echo: Left Windows Capabilities on BareBone OS Image
echo *****************************************************************
Powershell -C "Get-WindowsCapability -Path 'mount' | Where {$_.State -eq 'Installed' } | Format-Table"
echo.
echo *****************************************************************
echo: Left Windows Component Packages on BareBone OS Image
echo *****************************************************************
Powershell -C "Get-WindowsPackage -Path 'mount' | Format-Table"
echo.
echo *****************************************************************
echo: Saving ^& Unmounting Image
echo *****************************************************************
dism /unmount-wim /mountdir:mount /commit
echo *****************************************************************
echo.
echo *****************************************************************
echo: Remove UnNeeded Directories ^& Add Needed Files
echo *****************************************************************
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \PerfLogs"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \$Recycle.Bin"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Recovery"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\DigitalLocker"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\InboxApps"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\InputMethod\CHS"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\InputMethod\CHT"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\InputMethod\SHARED"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\LanguageOverlayCache"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\Microsoft.NET\authman"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\ModemLogs"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\OCR"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\rescache"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\SchCache"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\servicing\SQM"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\SKB"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\tracing"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\Web\Screen"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\System32\WebThreatDefSvc"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive \Windows\System32\Recovery\Winre.wim"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Program Files\WindowsApps\Deleted'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Program Files\WindowsApps\Merged'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Program Files\WindowsApps\Mutable'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Program Files\WindowsApps\MutableBackup'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Program Files\WindowsApps\Projected'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Program Files\Windows NT\Accessories'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Program Files\Windows Sidebar'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Program Files\ModifiableWindowsApps'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Program Files (x86)\Microsoft'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Program Files (x86)\Windows Sidebar'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Program Files (x86)\Windows NT\Accessories'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\DeviceSync'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\DRM'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\NetFramework'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\Network'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\Provisioning'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\SmsRouter'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\Speech_OneCore'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\Vault'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\WDF'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\WinMSIPC'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\Windows\Start Menu\Programs\Maintenance'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\Windows\Models'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\Windows\PackagedEventProviders'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\Windows\Power Efficiency Diagnostics'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\Windows\Templates'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\Microsoft\Windows\WSXPacks'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\SoftwareDistribution'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\USOPrivate'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\ProgramData\USOShared'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Public\Documents'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Public\Downloads'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Public\Libraries'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Public\Music'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Public\Pictures'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Public\Videos'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Local\Microsoft\WindowsApps'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Local\Microsoft\Windows\CloudStore'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Local\Microsoft\Windows\History'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Local\Microsoft\Windows\INetCache'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Local\Microsoft\Windows\INetCookies'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Local\Microsoft\Windows Sidebar'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Roaming\Microsoft\Spelling'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Roaming\Microsoft\Windows\CloudStore'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Roaming\Microsoft\Windows\Network Shortcuts'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Roaming\Microsoft\Windows\Printer Shortcuts'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Roaming\Microsoft\Windows\Recent'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Roaming\Microsoft\Windows\Templates'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessibility'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessories'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Maintenance'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\Favorites'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\Links'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\Documents'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\Downloads'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\Music'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\Pictures'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="delete --recursive '\Users\Default\Videos'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="add 'Add\Users' '\Users'"
bin\wimlib-imagex.exe update DVD\sources\install.wim 1 --command="add 'Add\Windows' '\Windows'"
echo *****************************************************************
echo.
echo *****************************************************************
echo: Optimize install wim to Reduce install wim Size
echo *****************************************************************
bin\wimlib-imagex.exe optimize "DVD\sources\install.wim"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Reduce ISO Layout to Maximum Extent
echo *****************************************************************
setlocal EnableExtensions DisableDelayedExpansion
set "TargetFolder=.\DVD\sources"
set "ExcludeFiles="
for %%I in ("%TargetFolder%\") do if "%%~dpI" == "%~dp0" set "ExcludeFiles=/C:"%~nx0""
for /F "eol=| delims=" %%I in ('dir "%TargetFolder%\" /AD /B 2^>nul ^| %SystemRoot%\System32\findstr.exe /I /L /V /X /C:"sxs"') do rd /S /Q "%TargetFolder%\%%I"
for /F "eol=| delims=" %%I in ('dir "%TargetFolder%\" /A-D /B 2^>nul ^| %SystemRoot%\System32\findstr.exe /I /L /V /X /C:"boot.wim" /C:"install.wim" /C:"lang.ini" /C:"setup.exe" %ExcludeFiles%') do del /A /F "%TargetFolder%\%%I"
endlocal
setlocal EnableExtensions DisableDelayedExpansion
set "TargetFolder=.\DVD"
set "ExcludeFiles="
for %%I in ("%TargetFolder%\") do if "%%~dpI" == "%~dp0" set "ExcludeFiles=/C:"%~nx0""
for /F "eol=| delims=" %%I in ('dir "%TargetFolder%\" /AD /B 2^>nul ^| %SystemRoot%\System32\findstr.exe /I /L /V /X /C:"boot" /C:"efi" /C:"sources"') do rd /S /Q "%TargetFolder%\%%I"
for /F "eol=| delims=" %%I in ('dir "%TargetFolder%\" /A-D /B 2^>nul ^| %SystemRoot%\System32\findstr.exe /I /L /V /X /C:"bootmgr" /C:"bootmgr.efi" %ExcludeFiles%') do del /A /F "%TargetFolder%\%%I"
endlocal
echo --- Reduced ISO Layout to Maximum Extent
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Create Final Win11 22H2 BareBone ISO
echo *****************************************************************
"bin\oscdimg.exe" -bootdata:2#p0,e,b".\DVD\boot\etfsboot.com"#pEF,e,b".\DVD\efi\microsoft\boot\efisys.bin" -o -h -m -u2 -udfver102 -lCPRA_X64FRE_EN-US_DV9 ".\DVD" "%~dp0W11(22H2)BareBoneOS.iso"
echo *****************************************************************
IF EXIST "Add" rd /s /q "Add"
IF EXIST "bin" rd /s /q "bin"
IF EXIST "DVD" rd /s /q "DVD"
IF EXIST "mount" rd /s /q "mount"
IF EXIST "Microsoft" rd /s /q "Microsoft"
IF EXIST "Updates" rd /s /q "Updates"
IF EXIST "%SystemDrive%\Microsoft" rd /s /q "%SystemDrive%\Microsoft"
IF EXIST "Start-W11BBOS.cmd" del /f /q "Start-W11BBOS.cmd"
IF EXIST "Start-W10BBOS.cmd" del /f /q "Start-W10BBOS.cmd"
IF EXIST "W10BareBoneOS.cmd" del /f /q "W10BareBoneOS.cmd"
IF EXIST "1-Update.cmd" del /f /q "1-Update.cmd"
echo: BareBoneOS Project Ver 3.0 Finished at %Date% %Time%
ENDLOCAL
echo *****************************************************************
echo:                      Goodbye %username%.
echo *****************************************************************
%nul% pause
exit

:ExportIndex
echo.
SET /P INDEXCHOICE=Select Single Image Index Number :
DISM /Export-Image /SourceImageFile:"DVD\sources\install.wim" /Sourceindex:%INDEXCHOICE% /DestinationImageFile:"%~dp0\install.wim" /CheckIntegrity
echo *****************************************************************
echo.
GOTO MOVE

:CountIndex
SET /A count+=1
FOR /f "tokens=1* delims=: " %%i IN ('DISM /Get-WimInfo /wimfile:"DVD\sources\install.wim" /index:%1 ^| find /i "Name"') DO SET name%count%=%%j
