@echo off &title must-have privacy policies for windows
:: based on MANAGE CONNECTIONS FROM WINDOWS OPERATING SYSTEM COMPONENTS TO MICROSOFT SERVICES as of 2022.02.09

:: ask for elevation
fltmc>nul || (set _=/d/x/r start "%~n0" "%~f0" %*& powershell -nop -c start -verb runas cmd $env:_ & exit /b)

:: HKCU entries will also be propagated to new users:
reg load HKU\New "%SystemDrive%\Users\Default\NTUSER.DAT" >nul && set "HKU=1" || set "HKU="

:: show commands on screen
set ----------=@echo/^&^<nul set /p @=& prompt $H & color 1f & echo on

:: to remove a policy, uncomment the reg delete entry below it
@echo ignore any ERROR: text, it is shown for output consistency

%----------% 0. Telemetry - Security level [0] is only supported on Education and Enterprise [best editions privacy-wise]
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v AllowTelemetry /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v AllowTelemetry

%----------% 1. Automatic Root Certificates Update [delete recommended]
::reg add "HKLM\SOFTWARE\Policies\Microsoft\SystemCertificates\AuthRoot" /f /v DisableRootAutoUpdate /d 1 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\SystemCertificates\AuthRoot" /f /v DisableRootAutoUpdate

%----------% 2. Cortana and Search
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowCortana /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowCortana

%----------% Search and Cortana to use location
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowSearchToUseLocation /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowSearchToUseLocation

%----------% Web search
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v DisableWebSearch /d 1 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v DisableWebSearch

%----------% Search the web or display web results in Search
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v ConnectedSearchUseWeb /d 0 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v ConnectedSearchUseWeb

%----------% Outbound Cortana traffic
@set "rule=v2.25|Action=Block|Active=TRUE|Dir=Out|Protocol=6|App=%systemroot%"
@set "rule=%rule%\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\searchUI.exe|Name=Block outbound Cortana|"
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\FirewallRules" /f /v {0DE40C8E-C126-4A27-9371-A27DAB1039F7} /d "%rule%" 
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\FirewallRules" /f /v {0DE40C8E-C126-4A27-9371-A27DAB1039F7}

%----------% 3. Set the time automatically
::reg add "HKLM\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient" /f /v Enabled /d 0 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient" /f /v Enabled

%----------% 4. Device metadata retrieval
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /f /v PreventDeviceMetadataFromNetwork /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /f /v PreventDeviceMetadataFromNetwork

%----------% 5. Find My Device
reg add "HKLM\SOFTWARE\Policies\Microsoft\FindMyDevice" /f /v AllowFindMyDevice /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\FindMyDevice" /f /v AllowFindMyDevice

%----------% 6. Font streaming
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableFontProviders /d 0 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableFontProviders

%----------% 7. Insider Preview builds - all such builds force Telemetry to FULL !!!
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /f /v AllowBuildPreview /d 0 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /f /v AllowBuildPreview

%----------% 8. Internet Explorer

%----------% First run wizard
reg add "HKCU\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /f /v DisableFirstRunCustomize /d 1 /t reg_dword
::reg delete "HKCU\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /f /v DisableFirstRunCustomize

%----------% First run wizard [new users]
reg add "HKU\New\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /f /v DisableFirstRunCustomize /d 1 /t reg_dword
::reg delete "HKU\New\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /f /v DisableFirstRunCustomize

%----------% Online Tips
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v AllowOnlineTips /d 0 /t reg_dword
::reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v AllowOnlineTips

%----------% Browser geolocation
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Geolocation" /f /v PolicyDisableGeolocation /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Geolocation" /f /v PolicyDisableGeolocation

%----------% SmartScreen filter
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /f /v EnabledV9 /d 0 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /f /v EnabledV9

%----------% Flip ahead with page prediction feature
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\FlipAhead" /f /v Enabled /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\FlipAhead" /f /v Enabled

%----------% Background synchronization for feeds and Web Slices
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds" /f /v BackgroundSyncStatus /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds" /f /v BackgroundSyncStatus

%----------% 8.1 ActiveX control blocking
reg add "HKCU\Software\Microsoft\Internet Explorer\VersionManager" /f /v DownloadVersionList /d 0 /t reg_dword
::reg delete "HKCU\Software\Microsoft\Internet Explorer\VersionManager" /f /v DownloadVersionList

%----------% 8.1 ActiveX control blocking [new users]
reg add "HKU\New\Software\Microsoft\Internet Explorer\VersionManager" /f /v DownloadVersionList /d 0 /t reg_dword
::reg delete "HKU\New\Software\Microsoft\Internet Explorer\VersionManager" /f /v DownloadVersionList

%----------% 9. License Manager [3 recommended]
::reg add "HKLM\System\CurrentControlSet\Services\LicenseManager" /f /v Start /d 4 /t reg_dword
reg add "HKLM\System\CurrentControlSet\Services\LicenseManager" /f /v Start /d 3 /t reg_dword

%----------% 10. Live Tiles
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /f /v NoCloudApplicationNotification /d 1 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /f /v NoCloudApplicationNotification

%----------% 11. Mail synchronization [delete recommended]
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Mail" /f /v ManualLaunchAllowed /d 0 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Mail" /f /v ManualLaunchAllowed

%----------% 12. Microsoft Account Sign-In Assistant [3 recommended]
::reg add "HKLM\System\CurrentControlSet\Services\wlidsvc" /f /v Start /d 4 /t reg_dword
reg add "HKLM\System\CurrentControlSet\Services\wlidsvc" /f /v Start /d 3 /t reg_dword

%----------% 13. Microsoft Edge

%----------% First run ad
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /f /v PreventFirstRunPage /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /f /v PreventFirstRunPage

%----------% First run ad [new]
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f /v HideFirstRunExperience /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f /v HideFirstRunExperience

%----------% Live Tile telemetry
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /f /v PreventLiveTileDataCollection /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /f /v PreventLiveTileDataCollection

%----------% Adobe Flash
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Addons" /f /v FlashPlayerEnabled /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Addons" /f /v FlashPlayerEnabled

%----------% Windows Defender SmartScreen Filter
::reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /f /v EnabledV9 /d 0 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /f /v EnabledV9

%----------% Windows Defender SmartScreen Filter [new]
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f /v SmartScreenEnabled /d 0 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f /v SmartScreenEnabled

%----------% Pre-launch at Windows startup, when the system is idle, and each time Microsoft Edge is closed
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /f /v AllowPrelaunch /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /f /v AllowPrelaunch

%----------% Load the Start and New Tab page at Windows startup and each time Microsoft Edge is closed
reg add "HKCU\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" /f /v AllowTabPreloading /d 0 /t reg_dword
::reg delete "HKCU\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" /f /v AllowTabPreloading

%----------% Load the Start and New Tab page at Windows startup and each time Microsoft Edge is closed [new users]
reg add "HKU\New\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" /f /v AllowTabPreloading /d 0 /t reg_dword
::reg delete "HKU\New\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" /f /v AllowTabPreloading

%----------% Update Default
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge\EdgeUpdate" /f /v UpdateDefault /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge\EdgeUpdate" /f /v UpdateDefault 

%----------% Auto Update Check Period Minutes
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge\EdgeUpdate" /f /v AutoUpdateCheckPeriodMinutes /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge\EdgeUpdate" /f /v AutoUpdateCheckPeriodMinutes 

%----------% Experimentation and Configuration Service
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge\EdgeUpdate" /f /v ExperimentationAndConfigurationServiceControl /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge\EdgeUpdate" /f /v ExperimentationAndConfigurationServiceControl

%----------% 14. Network Connection Status Indicator
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /f /v NoActiveProbe /d 1 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /f /v NoActiveProbe

%----------% 15. Offline maps
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /f /v AutoDownloadAndUpdateMapData /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /f /v AutoDownloadAndUpdateMapData

%----------% Untriggered traffic
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /f /v AllowUntriggeredNetworkTrafficOnSettingsPage /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /f /v AllowUntriggeredNetworkTrafficOnSettingsPage

%----------% 16. OneDrive
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v DisableFileSyncNGSC /d 1 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v DisableFileSyncNGSC

%----------% Pre sign-in traffic
reg add "HKLM\SOFTWARE\Microsoft\OneDrive" /f /v PreventNetworkTrafficPreUserSignIn /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Microsoft\OneDrive" /f /v PreventNetworkTrafficPreUserSignIn

%----------% 17. Preinstalled apps - try Education Edition

%----------% 18.1 Settings - Privacy - General

%----------% Let apps use advertising ID to make ads more interesting to you based on your app usage
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f /v Enabled /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f /v Enabled

%----------% AdvertisingInfo Disabled By Group Policy
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v DisabledByGroupPolicy /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v DisabledByGroupPolicy

%----------% Let websites provide locally relevant content by accessing my language list
reg add "HKCU\Control Panel\International\User Profile" /f /v HttpAcceptLanguageOptOut /d 1 /t reg_dword
::reg delete "HKCU\Control Panel\International\User Profile" /f /v HttpAcceptLanguageOptOut

%----------% Let websites provide locally relevant content by accessing my language list [new users]
reg add "HKU\New\Control Panel\International\User Profile" /f /v HttpAcceptLanguageOptOut /d 1 /t reg_dword
::reg delete "HKU\New\Control Panel\International\User Profile" /f /v HttpAcceptLanguageOptOut

%----------% Let Windows track app launches to improve Start and search results
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v Start_TrackProgs /d 0 /t reg_dword
::reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v Start_TrackProgs

%----------% Let Windows track app launches to improve Start and search results [new users]
reg add "HKU\New\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v Start_TrackProgs /d 0 /t reg_dword
::reg delete "HKU\New\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v Start_TrackProgs

%----------% SmartScreen Filter to check web content (URLs) that Microsoft Store apps use
::reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v EnableWebContentEvaluation /d 0 /t reg_dword
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v EnableWebContentEvaluation

%----------% SmartScreen Filter to check web content (URLs) that Microsoft Store apps use [new users]
::reg add "HKU\New\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v EnableWebContentEvaluation /d 0 /t reg_dword
reg delete "HKU\New\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v EnableWebContentEvaluation

%----------% Let apps on my other devices open apps and continue experiences on this device
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableCdp /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableCdp

%----------% 18.2 Settings - Privacy - Location

%----------% Location for this device
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessLocation /d 2 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessLocation

%----------% Location
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /f /v DisableLocation /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /f /v DisableLocation

%----------% 18.3 Settings - Privacy - Camera
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessCamera /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessCamera

%----------% 18.4 Settings - Privacy - Microphone
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessMicrophone /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessMicrophone

%----------% 18.5 Settings - Privacy - Notifications

%----------% Let apps access my notifications
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessNotifications /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessNotifications

%----------% 18.6 Settings - Privacy - Speech
reg add "HKCU\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /f /v HasAccepted /d 0 /t reg_dword
::reg delete "HKCU\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /f /v HasAccepted

%----------% Online Speech Privacy Accepted [new users]
reg add "HKU\New\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /f /v HasAccepted /d 0 /t reg_dword
::reg delete "HKU\New\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /f /v HasAccepted

%----------% Allow Speech Model Update
reg add "HKLM\SOFTWARE\Policies\Microsoft\Speech" /f /v AllowSpeechModelUpdate /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Speech" /f /v AllowSpeechModelUpdate

%----------% 18.7 Settings - Privacy - Account info
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessAccountInfo /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessAccountInfo

%----------% 18.8 Settings - Privacy - Contacts
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessContacts /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessContacts

%----------% 18.9 Settings - Privacy - Calendar
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessCalendar /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessCalendar

%----------% 18.10 Settings - Privacy - Call history
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessCallHistory /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessCallHistory

%----------% 18.11 Settings - Privacy - Email
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessEmail /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessEmail

%----------% 18.12 Settings - Privacy - Messaging
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessMessaging /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessMessaging

%----------% Message sync
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /f /v AllowMessageSync /d 0 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /f /v AllowMessageSync

%----------% 18.13 Settings - Privacy - Phone calls
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessPhone /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessPhone

%----------% 18.14 Settings - Privacy - Radios
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessRadios /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessRadios

%----------% 18.15 Settings - Privacy - Other devices
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsSyncWithDevices /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsSyncWithDevices

%----------% Let Apps Access Trusted Devices
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessTrustedDevices /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessTrustedDevices

%----------% 18.16 Settings - Privacy - Feedback and diagnostics

%----------% Ask for feedback
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v DoNotShowFeedbackNotifications /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v DoNotShowFeedbackNotifications

%----------% Period In NanoSeconds
reg add "HKCU\Software\Microsoft\Siuf\Rules" /f /v PeriodInNanoSeconds /d 0 /t reg_dword
::reg delete "HKCU\Software\Microsoft\Siuf\Rules" /f /v PeriodInNanoSeconds

%----------% Period In NanoSeconds [new users]
reg add "HKU\New\Software\Microsoft\Siuf\Rules" /f /v PeriodInNanoSeconds /d 0 /t reg_dword
::reg delete "HKU\New\Software\Microsoft\Siuf\Rules" /f /v PeriodInNanoSeconds

%----------% Number Of SIUF In Period
reg add "HKCU\Software\Microsoft\Siuf\Rules" /f /v NumberOfSIUFInPeriod /d 0 /t reg_dword
::reg delete "HKCU\Software\Microsoft\Siuf\Rules" /f /v NumberOfSIUFInPeriod

%----------% Number Of SIUF In Period [new users]
reg add "HKU\New\Software\Microsoft\Siuf\Rules" /f /v NumberOfSIUFInPeriod /d 0 /t reg_dword
::reg delete "HKU\New\Software\Microsoft\Siuf\Rules" /f /v NumberOfSIUFInPeriod

%----------% Tailored experiences with relevant tips and recommendations by using your diagnostics data
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsConsumerFeatures /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsConsumerFeatures

%----------% Disable Tailored Experiences With Diagnostic Data
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableTailoredExperiencesWithDiagnosticData /d 1 /t reg_dword
::reg delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableTailoredExperiencesWithDiagnosticData

%----------% Disable Tailored Experiences With Diagnostic Data [new users]
reg add "HKU\New\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableTailoredExperiencesWithDiagnosticData /d 1 /t reg_dword
::reg delete "HKU\New\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableTailoredExperiencesWithDiagnosticData

%----------% 18.17 Background apps
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsRunInBackground /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsRunInBackground

%----------% 18.18 Motion
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessMotion /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessMotion

%----------% 18.19 Tasks
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessTasks /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsAccessTasks

%----------% 18.20 App Diagnostics
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsGetDiagnosticInfo /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsGetDiagnosticInfo

%----------% 18.21 Inking and Typing
reg add "HKCU\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitInkCollection /d 1 /t reg_dword
::reg delete "HKCU\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitInkCollection

%----------% Restrict Implicit Ink Collection [new users]
reg add "HKU\New\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitInkCollection /d 1 /t reg_dword
::reg delete "HKU\New\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitInkCollection

%----------% Restrict Implicit Text Collection
reg add "HKCU\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitTextCollection /d 1 /t reg_dword
::reg delete "HKCU\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitTextCollection 

%----------% Restrict Implicit Text Collection [new users]
reg add "HKU\New\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitTextCollection /d 1 /t reg_dword
::reg delete "HKU\New\Software\Microsoft\InputPersonalization" /f /v RestrictImplicitTextCollection 

%----------% 18.22 Activity History
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableActivityFeed /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableActivityFeed

%----------% Publish User Activities
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v PublishUserActivities /d 2 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v PublishUserActivities

%----------% Upload User Activities
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v UploadUserActivities /d 2 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v UploadUserActivities

%----------% 18.23 Voice Activation
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsActivateWithVoice /d 2 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsActivateWithVoice

%----------%  Let Apps Activate With Voice AboveLock
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsActivateWithVoiceAboveLock /d 2 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /f /v LetAppsActivateWithVoiceAboveLock

%----------% 19. Software Protection Platform
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v NoGenTicket /d 1 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /f /v NoGenTicket

%----------% 20. Storage health
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\StorageHealth" /f /v AllowDiskHealthModelUpdates /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\StorageHealth" /f /v AllowDiskHealthModelUpdates

%----------% 21. Sync your settings
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /f /v DisableSettingSync /d 2 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /f /v DisableSettingSync

%----------% Disable Setting Sync User Override
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /f /v DisableSettingSyncUserOverride /d 1 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /f /v DisableSettingSyncUserOverride

%----------% Cloud Service Sync Enabled
reg add "HKCU\SOFTWARE\Microsoft\Messaging" /f /v CloudServiceSyncEnabled /d 0 /t reg_dword
::reg delete "HKCU\SOFTWARE\Microsoft\Messaging" /f /v CloudServiceSyncEnabled

%----------% Cloud Service Sync Enabled [new users]
reg add "HKU\New\SOFTWARE\Microsoft\Messaging" /f /v CloudServiceSyncEnabled /d 0 /t reg_dword
::reg delete "HKU\New\SOFTWARE\Microsoft\Messaging" /f /v CloudServiceSyncEnabled

%----------% 22. Teredo [XBox]
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TCPIP\v6Transition" /f /v Teredo_State /d "Disabled"
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\TCPIP\v6Transition" /f /v Teredo_State

%----------% 23. Wi-Fi Sense
reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" /f /v AutoConnectAllowedOEM /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" /f /v AutoConnectAllowedOEM

%----------% 24. Windows Defender
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /f /v DontReportInfectionInformation /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\MRT" /f /v DontReportInfectionInformation

%----------% Submit Samples Consent
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /f /v SubmitSamplesConsent /d 2 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /f /v SubmitSamplesConsent

%----------% Disable Enhanced Notifications
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /f /v DisableEnhancedNotifications /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /f /v DisableEnhancedNotifications

%----------% Could trade a bit of privacy for more security against unclassified software
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /f /v SpyNetReporting /d 2 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /f /v SpyNetReporting

%----------% 24.1 Windows Defender SmartScreen
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableSmartScreen /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableSmartScreen

%----------% App Install Enabled
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /f /v ConfigureAppInstallControlEnabled /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /f /v ConfigureAppInstallControlEnabled

%----------% App Install Anywhere
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /f /v ConfigureAppInstallControl /d "Anywhere"
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /f /v ConfigureAppInstallControl

%----------% 25. Personalized Experiences
::reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsSpotlightFeatures /d 1 /t reg_dword
reg delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsSpotlightFeatures

%----------% Disable Windows Spotlight Features [new users]
::reg add "HKU\New\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsSpotlightFeatures /d 1 /t reg_dword
reg delete "HKU\New\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsSpotlightFeatures

%----------% No Lock Screen
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v NoLockScreen /d 1 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v NoLockScreen

%----------% Static Lock Screen image
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v LockScreenImage /d "%SystemRoot%\web\screen\img100.jpg"
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v LockScreenImage

%----------% Lock Screen Overlays Disabled
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v LockScreenOverlaysDisabled /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v LockScreenOverlaysDisabled

%----------% Windows tips
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableSoftLanding /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableSoftLanding

%----------% Install bloat from Store
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsConsumerFeatures /d 1 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v DisableWindowsConsumerFeatures

%----------% 26. Microsoft Store AutoDownload
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /f /v AutoDownload /d 2 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /f /v AutoDownload

%----------% 27. Apps for websites
::reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableAppUriHandlers /d 0 /t reg_dword
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v EnableAppUriHandlers

%----------% 28. Windows Update Delivery Optimization
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /f /v DODownloadMode /d 99 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /f /v DODownloadMode

%----------% 29. Windows Update AutoDownload
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /f /v AutoDownload /d 5 /t reg_dword
::reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /f /v AutoDownload

%----------% 30. Cloud Clipboard
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v AllowCrossDeviceClipboard /d 0 /t reg_dword
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v AllowCrossDeviceClipboard

%----------% 31. Services Configuration
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /f /v DisableOneSettingsDownloads /d 1 /t reg_dword
::reg delete "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /f /v DisableOneSettingsDownloads

:: HKCU entries will also be propagated to new users
@reg unload HKU\New >nul

rem done!
@pause & rem AveYo: more effectively could run this script via setupcomplete.cmd during windows setup