@cls
@echo off
title must-have privacy policies for windows
rem  based on MANAGE CONNECTIONS FROM WINDOWS OPERATING SYSTEM COMPONENTS TO MICROSOFT SERVICES as of 2022.02.09

rem Manage connections from Windows 10 and Windows 11 operating system components to Microsoft services
rem https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services

rem  ask for elevation
fltmc>nul || (set _=/d/x/r start "%~n0" "%~f0" %*& powershell -nop -c start -verb runas cmd $env:_ & exit /b)
rem  HKCU entries will also be propagated to new users:
>nul 2>&1 reg load HKU\New "%SystemDrive%\Users\Default\NTUSER.DAT" >nul && set "HKU=1" || set "HKU="

echo:
echo # 0. Telemetry - Security level [0] is only supported on Education and Enterprise [best editions privacy-wise]
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v AllowTelemetry /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v AllowTelemetry

echo:
echo # 1. Automatic Root Certificates Update [delete recommended]
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\SystemCertificates\AuthRoot" /f /v DisableRootAutoUpdate /d 1 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\SystemCertificates\AuthRoot" /f /v DisableRootAutoUpdate

echo:
echo # 2. Cortana and Search
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowCortana /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowCortana

echo - Search and Cortana to use location
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowSearchToUseLocation /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowSearchToUseLocation

echo - Web search
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v DisableWebSearch /d 1 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v DisableWebSearch

echo - Search the web or display web results in Search
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v ConnectedSearchUseWeb /d 0 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v ConnectedSearchUseWeb

echo - Outbound Cortana traffic
@set "rule=v2.25|Action=Block|Active=TRUE|Dir=Out|Protocol=6|App=%systemroot%"
@set "rule=%rule%\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\searchUI.exe|Name=Block outbound Cortana|"
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\FirewallRules" /f /v {0DE40C8E-C126-4A27-9371-A27DAB1039F7} /d "%rule%" 
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\FirewallRules" /f /v {0DE40C8E-C126-4A27-9371-A27DAB1039F7}

rem Addition to :: [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search]
rem Addition to :: "AllowCortana"=dword:00000000
rem Addition to :: "AllowSearchToUseLocation"=dword:00000000

echo - Disable Search permission
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowCloudSearch /d 0 /t reg_dword
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v EnableDynamicContentInWSB /d 0 /t reg_dword

echo - Disable Search permission [new users]
>nul 2>&1 reg add "HKU\New\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /f /v SafeSearchMode /d 0 /t reg_dword
>nul 2>&1 reg add "HKU\New\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /f /v IsAADCloudSearchEnabled /d 0 /t reg_dword
>nul 2>&1 reg add "HKU\New\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /f /v IsMSACloudSearchEnabled /d 0 /t reg_dword
>nul 2>&1 reg add "HKU\New\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /f /v IsDynamicSearchBoxEnabled /d 0 /t reg_dword
>nul 2>&1 reg add "HKU\New\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /f /v IsDeviceSearchHistoryEnabled /d 0 /t reg_dword

echo:
echo # 3. Set the time automatically
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient" /f /v Enabled /d 0 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient" /f /v Enabled

echo:
echo # 4. Device metadata retrieval
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /f /v PreventDeviceMetadataFromNetwork /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /f /v PreventDeviceMetadataFromNetwork

echo:
echo # 5. Find My Device
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\FindMyDevice" /f /v AllowFindMyDevice /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\FindMyDevice" /f /v AllowFindMyDevice

echo:
echo # 6. Font streaming
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableFontProviders /d 0 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableFontProviders

echo:
echo # 7. Insider Preview builds - all such builds force Telemetry to FULL !!!
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /f /v AllowBuildPreview /d 0 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /f /v AllowBuildPreview

echo:
echo # 8. Internet Explorer

echo - First run wizard
>nul 2>&1 reg add "HKCU\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /f /v DisableFirstRunCustomize /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKCU\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /f /v DisableFirstRunCustomize

echo - First run wizard [new users]
>nul 2>&1 reg add "HKU\New\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /f /v DisableFirstRunCustomize /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKU\New\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /f /v DisableFirstRunCustomize

echo - Online Tips
>nul 2>&1 reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v AllowOnlineTips /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v AllowOnlineTips

echo - Browser geolocation
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Geolocation" /f /v PolicyDisableGeolocation /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Geolocation" /f /v PolicyDisableGeolocation

echo - SmartScreen filter
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /f /v EnabledV9 /d 0 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /f /v EnabledV9

echo - Flip ahead with page prediction feature
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\FlipAhead" /f /v Enabled /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\FlipAhead" /f /v Enabled

echo - Background synchronization for feeds and Web Slices
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds" /f /v BackgroundSyncStatus /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds" /f /v BackgroundSyncStatus

echo:
echo # 8.1 ActiveX control blocking
>nul 2>&1 reg add "HKCU\Software\Microsoft\Internet Explorer\VersionManager" /f /v DownloadVersionList /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKCU\Software\Microsoft\Internet Explorer\VersionManager" /f /v DownloadVersionList

echo:
echo # 8.1 ActiveX control blocking [new users]
>nul 2>&1 reg add "HKU\New\Software\Microsoft\Internet Explorer\VersionManager" /f /v DownloadVersionList /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKU\New\Software\Microsoft\Internet Explorer\VersionManager" /f /v DownloadVersionList

echo:
echo # 9. License Manager [3 recommended]
rem >nul 2>&1 reg add "HKLM\System\CurrentControlSet\Services\LicenseManager" /f /v Start /d 4 /t reg_dword
>nul 2>&1 reg add "HKLM\System\CurrentControlSet\Services\LicenseManager" /f /v Start /d 3 /t reg_dword

echo:
echo # 10. Live Tiles
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /f /v NoCloudApplicationNotification /d 1 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /f /v NoCloudApplicationNotification

echo:
echo # 11. Mail synchronization [delete recommended]
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Mail" /f /v ManualLaunchAllowed /d 0 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Mail" /f /v ManualLaunchAllowed

echo:
echo # 12. Microsoft Account Sign-In Assistant [3 recommended]
rem >nul 2>&1 reg add "HKLM\System\CurrentControlSet\Services\wlidsvc" /f /v Start /d 4 /t reg_dword
>nul 2>&1 reg add "HKLM\System\CurrentControlSet\Services\wlidsvc" /f /v Start /d 3 /t reg_dword

echo:
echo # 13. Microsoft Edge

echo - First run ad
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /f /v PreventFirstRunPage /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /f /v PreventFirstRunPage

echo - First run ad [new]
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f /v HideFirstRunExperience /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f /v HideFirstRunExperience

echo - Live Tile telemetry
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /f /v PreventLiveTileDataCollection /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /f /v PreventLiveTileDataCollection

echo - Adobe Flash
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Addons" /f /v FlashPlayerEnabled /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Addons" /f /v FlashPlayerEnabled

echo - Windows Defender SmartScreen Filter
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /f /v EnabledV9 /d 0 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /f /v EnabledV9

echo - Windows Defender SmartScreen Filter [new]
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f /v SmartScreenEnabled /d 0 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f /v SmartScreenEnabled

echo - Pre-launch at Windows startup, when the system is idle, and each time Microsoft Edge is closed
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /f /v AllowPrelaunch /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /f /v AllowPrelaunch

echo - Load the Start and New Tab page at Windows startup and each time Microsoft Edge is closed
>nul 2>&1 reg add "HKCU\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" /f /v AllowTabPreloading /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKCU\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" /f /v AllowTabPreloading

echo - Load the Start and New Tab page at Windows startup and each time Microsoft Edge is closed [new users]
>nul 2>&1 reg add "HKU\New\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" /f /v AllowTabPreloading /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKU\New\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" /f /v AllowTabPreloading

echo - Update Default
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge\EdgeUpdate" /f /v UpdateDefault /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge\EdgeUpdate" /f /v UpdateDefault 

echo - Auto Update Check Period Minutes
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge\EdgeUpdate" /f /v AutoUpdateCheckPeriodMinutes /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge\EdgeUpdate" /f /v AutoUpdateCheckPeriodMinutes 

echo - Experimentation and Configuration Service
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge\EdgeUpdate" /f /v ExperimentationAndConfigurationServiceControl /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge\EdgeUpdate" /f /v ExperimentationAndConfigurationServiceControl

echo:
echo # 14. Network Connection Status Indicator
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /f /v NoActiveProbe /d 1 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /f /v NoActiveProbe

echo:
echo # 15. Offline maps
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /f /v AutoDownloadAndUpdateMapData /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /f /v AutoDownloadAndUpdateMapData

echo - Untriggered traffic
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /f /v AllowUntriggeredNetworkTrafficOnSettingsPage /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /f /v AllowUntriggeredNetworkTrafficOnSettingsPage

echo:
echo # 16. OneDrive
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v DisableFileSyncNGSC /d 1 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v DisableFileSyncNGSC

echo - Pre sign-in traffic
>nul 2>&1 reg add "HKLM\SOFTWARE\Microsoft\OneDrive" /f /v PreventNetworkTrafficPreUserSignIn /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Microsoft\OneDrive" /f /v PreventNetworkTrafficPreUserSignIn

echo:
echo # 17. Preinstalled apps - try Education Edition

echo:
echo # 18.1 Settings - Privacy - General

echo - Let apps use advertising ID to make ads more interesting to you based on your app usage
>nul 2>&1 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f /v Enabled /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f /v Enabled

echo - AdvertisingInfo Disabled By Group Policy
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v DisabledByGroupPolicy /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v DisabledByGroupPolicy

echo - Let websites provide locally relevant content by accessing my language list
>nul 2>&1 reg add "HKCU\Control Panel\International\User Profile" /f /v HttpAcceptLanguageOptOut /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKCU\Control Panel\International\User Profile" /f /v HttpAcceptLanguageOptOut

echo - Let websites provide locally relevant content by accessing my language list [new users]
>nul 2>&1 reg add "HKU\New\Control Panel\International\User Profile" /f /v HttpAcceptLanguageOptOut /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKU\New\Control Panel\International\User Profile" /f /v HttpAcceptLanguageOptOut

echo - Let Windows track app launches to improve Start and search results
>nul 2>&1 reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v Start_TrackProgs /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v Start_TrackProgs

echo - Let Windows track app launches to improve Start and search results [new users]
>nul 2>&1 reg add "HKU\New\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v Start_TrackProgs /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKU\New\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v Start_TrackProgs

echo - SmartScreen Filter to check web content (URLs) that Microsoft Store apps use
rem >nul 2>&1 reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v EnableWebContentEvaluation /d 0 /t reg_dword
>nul 2>&1 reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v EnableWebContentEvaluation

echo - SmartScreen Filter to check web content (URLs) that Microsoft Store apps use [new users]
rem >nul 2>&1 reg add "HKU\New\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v EnableWebContentEvaluation /d 0 /t reg_dword
>nul 2>&1 reg delete "HKU\New\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v EnableWebContentEvaluation

echo - Let apps on my other devices open apps and continue experiences on this device
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableCdp /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableCdp

echo:
echo # 18.2 Settings - Privacy - Location

echo - Location for this device
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessLocation /d 2 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessLocation

echo - Location
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /f /v DisableLocation /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /f /v DisableLocation

echo:
echo # 18.3 Settings - Privacy - Camera
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessCamera /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessCamera

echo:
echo # 18.4 Settings - Privacy - Microphone
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessMicrophone /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessMicrophone

echo:
echo # 18.5 Settings - Privacy - Notifications

echo - Let apps access my notifications
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessNotifications /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessNotifications

echo:
echo # 18.6 Settings - Privacy - Speech
>nul 2>&1 reg add "HKCU\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /f /v HasAccepted /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKCU\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /f /v HasAccepted

echo - Online Speech Privacy Accepted [new users]
>nul 2>&1 reg add "HKU\New\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /f /v HasAccepted /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKU\New\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /f /v HasAccepted

echo - Allow Speech Model Update
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Speech" /f /v AllowSpeechModelUpdate /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Speech" /f /v AllowSpeechModelUpdate

echo:
echo # 18.7 Settings - Privacy - Account info
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessAccountInfo /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessAccountInfo

echo:
echo # 18.8 Settings - Privacy - Contacts
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessContacts /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessContacts

echo:
echo # 18.9 Settings - Privacy - Calendar
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessCalendar /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessCalendar

echo:
echo # 18.10 Settings - Privacy - Call history
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessCallHistory /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessCallHistory

echo:
echo # 18.11 Settings - Privacy - Email
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessEmail /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessEmail

echo:
echo # 18.12 Settings - Privacy - Messaging
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessMessaging /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessMessaging

echo:
echo # Message sync
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /f /v AllowMessageSync /d 0 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /f /v AllowMessageSync

echo:
echo # 18.13 Settings - Privacy - Phone calls
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessPhone /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessPhone

echo:
echo # 18.14 Settings - Privacy - Radios
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessRadios /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessRadios

echo:
echo # 18.15 Settings - Privacy - Other devices
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsSyncWithDevices /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsSyncWithDevices

echo - Let Apps Access Trusted Devices
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessTrustedDevices /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessTrustedDevices

echo:
echo # 18.16 Settings - Privacy - Feedback and diagnostics

echo - Ask for feedback
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v DoNotShowFeedbackNotifications /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v DoNotShowFeedbackNotifications

echo - Period In NanoSeconds
>nul 2>&1 reg add "HKCU\Software\Microsoft\Siuf\Rules" /f /v PeriodInNanoSeconds /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKCU\Software\Microsoft\Siuf\Rules" /f /v PeriodInNanoSeconds

echo - Period In NanoSeconds [new users]
>nul 2>&1 reg add "HKU\New\Software\Microsoft\Siuf\Rules" /f /v PeriodInNanoSeconds /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKU\New\Software\Microsoft\Siuf\Rules" /f /v PeriodInNanoSeconds

echo - Number Of SIUF In Period
>nul 2>&1 reg add "HKCU\Software\Microsoft\Siuf\Rules" /f /v NumberOfSIUFInPeriod /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKCU\Software\Microsoft\Siuf\Rules" /f /v NumberOfSIUFInPeriod

echo - Number Of SIUF In Period [new users]
>nul 2>&1 reg add "HKU\New\Software\Microsoft\Siuf\Rules" /f /v NumberOfSIUFInPeriod /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKU\New\Software\Microsoft\Siuf\Rules" /f /v NumberOfSIUFInPeriod

echo - Tailored experiences with relevant tips and recommendations by using your diagnostics data
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsConsumerFeatures /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsConsumerFeatures

echo - Disable Tailored Experiences With Diagnostic Data
>nul 2>&1 reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableTailoredExperiencesWithDiagnosticData /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableTailoredExperiencesWithDiagnosticData

echo - Disable Tailored Experiences With Diagnostic Data [new users]
>nul 2>&1 reg add "HKU\New\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableTailoredExperiencesWithDiagnosticData /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKU\New\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableTailoredExperiencesWithDiagnosticData

echo:
echo # 18.17 Background apps
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsRunInBackground /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsRunInBackground

echo:
echo # 18.18 Motion
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessMotion /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessMotion

echo:
echo # 18.19 Tasks
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessTasks /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessTasks

echo:
echo # 18.20 App Diagnostics
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsGetDiagnosticInfo /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsGetDiagnosticInfo

echo:
echo # 18.21 Inking and Typing
>nul 2>&1 reg add "HKCU\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitInkCollection /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKCU\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitInkCollection

echo - Restrict Implicit Ink Collection [new users]
>nul 2>&1 reg add "HKU\New\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitInkCollection /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKU\New\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitInkCollection

echo - Restrict Implicit Text Collection
>nul 2>&1 reg add "HKCU\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitTextCollection /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKCU\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitTextCollection 

echo - Restrict Implicit Text Collection [new users]
>nul 2>&1 reg add "HKU\New\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitTextCollection /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKU\New\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitTextCollection 

echo:
echo # 18.22 Activity History
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableActivityFeed /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableActivityFeed

echo - Publish User Activities
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v PublishUserActivities /d 2 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v PublishUserActivities

echo - Upload User Activities
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v UploadUserActivities /d 2 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v UploadUserActivities

echo - 18.23 Voice Activation
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsActivateWithVoice /d 2 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsActivateWithVoice

echo -  Let Apps Activate With Voice AboveLock
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsActivateWithVoiceAboveLock /d 2 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsActivateWithVoiceAboveLock

echo:
echo # 19. Software Protection Platform
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v NoGenTicket /d 1 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v NoGenTicket

echo:
echo # 20. Storage health
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\StorageHealth" /f /v AllowDiskHealthModelUpdates /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\StorageHealth" /f /v AllowDiskHealthModelUpdates

echo:
echo # 21. Sync your settings
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /f /v DisableSettingSync /d 2 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /f /v DisableSettingSync

echo - Disable Setting Sync User Override
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /f /v DisableSettingSyncUserOverride /d 1 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /f /v DisableSettingSyncUserOverride

echo - Cloud Service Sync Enabled
>nul 2>&1 reg add "HKCU\SOFTWARE\Microsoft\Messaging" /f /v CloudServiceSyncEnabled /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKCU\SOFTWARE\Microsoft\Messaging" /f /v CloudServiceSyncEnabled

echo - Cloud Service Sync Enabled [new users]
>nul 2>&1 reg add "HKU\New\SOFTWARE\Microsoft\Messaging" /f /v CloudServiceSyncEnabled /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKU\New\SOFTWARE\Microsoft\Messaging" /f /v CloudServiceSyncEnabled

echo:
echo # 22. Teredo [XBox]
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TCPIP\v6Transition" /f /v Teredo_State /d "Disabled"
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\TCPIP\v6Transition" /f /v Teredo_State

echo:
echo # 23. Wi-Fi Sense
>nul 2>&1 reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" /f /v AutoConnectAllowedOEM /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" /f /v AutoConnectAllowedOEM

echo:
echo # 24. Windows Defender
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /f /v DontReportInfectionInformation /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\MRT" /f /v DontReportInfectionInformation

echo - Submit Samples Consent
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /f /v SubmitSamplesConsent /d 2 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /f /v SubmitSamplesConsent

echo - Disable Enhanced Notifications
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /f /v DisableEnhancedNotifications /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /f /v DisableEnhancedNotifications

echo - Could trade a bit of privacy for more security against unclassified software
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /f /v SpyNetReporting /d 2 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /f /v SpyNetReporting

echo:
echo # 24.1 Windows Defender SmartScreen
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableSmartScreen /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableSmartScreen

echo - App Install Enabled
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /f /v ConfigureAppInstallControlEnabled /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /f /v ConfigureAppInstallControlEnabled

echo - App Install Anywhere
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /f /v ConfigureAppInstallControl /d "Anywhere"
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /f /v ConfigureAppInstallControl

echo:
echo # 25. Personalized Experiences
rem >nul 2>&1 reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsSpotlightFeatures /d 1 /t reg_dword
>nul 2>&1 reg delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsSpotlightFeatures

echo - Disable Windows Spotlight Features [new users]
rem >nul 2>&1 reg add "HKU\New\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsSpotlightFeatures /d 1 /t reg_dword
>nul 2>&1 reg delete "HKU\New\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsSpotlightFeatures

echo - No Lock Screen
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v NoLockScreen /d 1 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v NoLockScreen

echo - Static Lock Screen image
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v LockScreenImage /d "%SystemRoot%\web\screen\img100.jpg"
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v LockScreenImage

echo - Lock Screen Overlays Disabled
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v LockScreenOverlaysDisabled /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v LockScreenOverlaysDisabled

echo - Windows tips
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableSoftLanding /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableSoftLanding

echo - Install bloat from Store
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsConsumerFeatures /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsConsumerFeatures

echo:
echo # 26. Microsoft Store AutoDownload
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /f /v AutoDownload /d 2 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /f /v AutoDownload

echo:
echo # 27. Apps for websites
rem >nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableAppUriHandlers /d 0 /t reg_dword
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableAppUriHandlers

echo:
echo # 28. Windows Update Delivery Optimization
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /f /v DODownloadMode /d 99 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /f /v DODownloadMode

echo:
echo # 29. Windows Update AutoDownload
>nul 2>&1 reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /f /v AutoDownload /d 5 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /f /v AutoDownload

echo:
echo # 30. Cloud Clipboard
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v AllowCrossDeviceClipboard /d 0 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v AllowCrossDeviceClipboard

echo:
echo # 31. Services Configuration
>nul 2>&1 reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /f /v DisableOneSettingsDownloads /d 1 /t reg_dword
rem >nul 2>&1 reg delete "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /f /v DisableOneSettingsDownloads

echo:
echo # 32. Personal inking and typing dictionary [new users]
>nul 2>&1 reg add "HKU\New\Software\Microsoft\Windows\CurrentVersion\CPSS\Store\InkingAndTypingPersonalization" /f /v Value /d 0 /t reg_dword
>nul 2>&1 reg add "HKU\New\Software\Microsoft\Personalization\Settings" /f /v AcceptedPrivacyPolicy /d 0 /t reg_dword
>nul 2>&1 reg add "HKU\New\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitInkCollection /d 1 /t reg_dword
>nul 2>&1 reg add "HKU\New\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitTextCollection /d 1 /t reg_dword
>nul 2>&1 reg add "HKU\New\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v HarvestContacts /d 0 /t reg_dword

rem  HKCU entries will also be propagated to new users
@>nul 2>&1 reg unload HKU\New >nul