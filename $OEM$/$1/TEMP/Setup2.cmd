@echo on
color 0a

:: https://forums.mydigitallife.net/threads/repo-windows-10-telemetry-repository.63874/page-112#post-1838765
reg add "HKLM\SOFTWARE\Microsoft\Windows\Shell\Copilot" /v "IsCopilotAvailable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Shell\Copilot" /v "CopilotDisabledReason" /t REG_SZ /d "FeatureIsDisabled" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Shell\Copilot\BingChat" /v "IsUserEligible" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v "DisableAIDataAnalysis" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot" /v "TurnOffWindowsCopilot" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Browser\AllowSmartScreen" /v "value" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /t REG_SZ /d "Anywhere" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV8" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3" /v "2301" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoWindowsUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "AllowTemporaryEnterpriseFeatureControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUServer" /t REG_SZ /d "\" \"" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUStatusServer" /t REG_SZ /d "\" \"" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "UpdateServiceUrlAlternate" /t REG_SZ /d "\" \"" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "UseWUServer" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d "99" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d "99" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "ShippedWithReserves" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /v "AutoDownload" /t REG_DWORD /d "5" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{F9C77450-3A41-477E-9310-9ACD617BD9E3}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{F9C77450-3A41-477E-9310-9ACD617BD9E3}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{728EE579-943C-4519-9EF7-AB56765798ED}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{728EE579-943C-4519-9EF7-AB56765798ED}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{1A6364EB-776B-4120-ADE1-B63A406A76B5}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{1A6364EB-776B-4120-ADE1-B63A406A76B5}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{5794DAFD-BE60-433f-88A2-1A31939AC01F}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{5794DAFD-BE60-433f-88A2-1A31939AC01F}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{0E28E245-9368-4853-AD84-6DA3BA35BB75}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{0E28E245-9368-4853-AD84-6DA3BA35BB75}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{7150F9BF-48AD-4da4-A49C-29EF4A8369BA}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{7150F9BF-48AD-4da4-A49C-29EF4A8369BA}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{A3F3E39B-5D83-4940-B954-28315B82F0A8}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{A3F3E39B-5D83-4940-B954-28315B82F0A8}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{6232C319-91AC-4931-9385-E70C2B099F0E}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{6232C319-91AC-4931-9385-E70C2B099F0E}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{74EE6C03-5363-4554-B161-627540339CAB}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{74EE6C03-5363-4554-B161-627540339CAB}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E47248BA-94CC-49c4-BBB5-9EB7F05183D0}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E47248BA-94CC-49c4-BBB5-9EB7F05183D0}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{17D89FEC-5C44-4972-B12D-241CAEF74509}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{17D89FEC-5C44-4972-B12D-241CAEF74509}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{3A0DBA37-F8B2-4356-83DE-3E90BD5C261F}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{3A0DBA37-F8B2-4356-83DE-3E90BD5C261F}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{6A4C88C6-C502-4f74-8F60-2CB23EDC24E2}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{6A4C88C6-C502-4f74-8F60-2CB23EDC24E2}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E62688F0-25FD-4c90-BFF5-F508B9D2E31F}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E62688F0-25FD-4c90-BFF5-F508B9D2E31F}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E5094040-C46C-4115-B030-04FB2E545B00}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E5094040-C46C-4115-B030-04FB2E545B00}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{B087BE9D-ED37-454f-AF9C-04291E351182}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{B087BE9D-ED37-454f-AF9C-04291E351182}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{AADCED64-746C-4633-A97C-D61349046527}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{AADCED64-746C-4633-A97C-D61349046527}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{91FBB303-0CD5-4055-BF42-E512A681B325}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{91FBB303-0CD5-4055-BF42-E512A681B325}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{C418DD9D-0D14-4efb-8FBF-CFE535C8FAC7}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{C418DD9D-0D14-4efb-8FBF-CFE535C8FAC7}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E4F48E54-F38D-4884-BFB9-D4D2E5729C18}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{E4F48E54-F38D-4884-BFB9-D4D2E5729C18}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{BC75B1ED-5833-4858-9BB8-CBF0B166DF9D}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{BC75B1ED-5833-4858-9BB8-CBF0B166DF9D}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InternetManagement" /v "RestrictCommunication" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoPublishingWizard" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "NoGenTicket" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Internet Connection Wizard" /v "ExitOnMSICW" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\EventViewer" /v "MicrosoftEventVwrDisableLinks" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Registration Wizard Control" /v "NoRegistration" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v "DontSearchWindowsUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WMDRM" /v "DisableOnline" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Classes\AppID\slui.exe" /v "NoGenTicket" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "IncludeKernelFaults" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "AllOrNone" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "IncludeMicrosoftApps" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "IncludeWindowsApps" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "IncludeShutdownErrs" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /v "EnableConfigFlighting" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /v "EnableExperimentation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /v "AllowBuildPreview" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\Device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DeviceHistoryEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\DisallowNetworkConnectivityActiveTests" /v "value" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableCdp" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput" /v "AllowLinguisticDataCollection" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DisableEnterpriseAuthProxy" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DisableOneSettingsDownloads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowCommercialDataPipeline" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDesktopAnalyticsProcessing" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowTelemetry" /v "value" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "MaxTelemetryAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "MicrosoftEdgeDataOptIn" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableCloudOptimizedContent" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableConsumerAccountStateContent" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowClipboardHistory" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowCrossDeviceClipboard" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoCloudApplicationNotification" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /v "AllowMessageSync" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\FindMyDevice" /v "AllowFindMyDevice" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Settings\FindMyDevice" /v "LocationSyncEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\StorageHealth" /v "AllowDiskHealthModelUpdates" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TCPIP\v6Transition" /v "Teredo_State" /t REG_SZ /d "Disabled" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableAppUriHandlers" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\W32Time\Parameters" /v "Type" /t REG_SZ /d "NoSync" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreenCamera" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth" /v "AllowAdvertising" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /v "ModelDownloadAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "LimitDiagnosticLogCollection" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Speech" /v "AllowSpeechModelUpdate" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowToGetHelp" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /v "AutoDownloadAndUpdateMapData" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /v "AllowUntriggeredNetworkTrafficOnSettingsPage" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\OneDrive" /v "PreventNetworkTrafficPreUserSignIn" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f

:: https://github.com/MysticFoxDE/WINDOWS-OPTIMIZATIONS/blob/main/W10ANDW11-NETWORK-TCP-DESUBOPTIMIZATION.ps1
netsh int tcp set supplemental template=Internet congestionprovider=CTCP
netsh int tcp set global ECN=Enabled
netsh int tcp set global ecncapability=Enabled
powershell -noprofile -executionpolicy bypass -command "Set-NetOffloadGlobalSetting -PacketCoalescingFilter Disabled -Verbose"
powershell -noprofile -executionpolicy bypass -command "Set-NetOffloadGlobalSetting -ReceiveSideScaling Disabled -Verbose"
powershell -noprofile -executionpolicy bypass -command "Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing Disabled -Verbose"
powershell -noprofile -executionpolicy bypass -command "Get-Netadapter -Physical | Set-NetAdapterAdvancedProperty -RegistryKeyword '*RSS' -RegistryValue 0 -ErrorAction silentlycontinue"
powershell -noprofile -executionpolicy bypass -command "Get-Netadapter -Physical | Set-NetAdapterAdvancedProperty -RegistryKeyword '*RscIPv4' -RegistryValue 0 -ErrorAction silentlycontinue"
powershell -noprofile -executionpolicy bypass -command "Get-Netadapter -Physical | Set-NetAdapterAdvancedProperty -RegistryKeyword '*RscIPv6' -RegistryValue 0 -ErrorAction silentlycontinue"
powershell -noprofile -executionpolicy bypass -command "Get-Netadapter -Physical | Set-NetAdapterAdvancedProperty -RegistryKeyword '*PacketCoalescing' -RegistryValue 0 -ErrorAction silentlycontinue"
powershell -noprofile -executionpolicy bypass -command "Get-Netadapter -Physical | Set-NetAdapterAdvancedProperty -RegistryKeyword '*FlowControl' -RegistryValue 0 -ErrorAction silentlycontinue"
powershell -noprofile -executionpolicy bypass -command "Get-Netadapter -Physical | Set-NetAdapterAdvancedProperty -RegistryKeyword '*InterruptModeration' -RegistryValue 0 -ErrorAction silentlycontinue"
powershell -noprofile -executionpolicy bypass -command "Get-Netadapter -Physical | Set-NetAdapterAdvancedProperty -RegistryKeyword '*EEE' -RegistryValue 0 -ErrorAction silentlycontinue"
powershell -noprofile -executionpolicy bypass -command "Get-Netadapter -Physical | Set-NetAdapterAdvancedProperty -RegistryKeyword '*ReceiveBuffers' -RegistryValue 2048 -ErrorAction silentlycontinue"
powershell -noprofile -executionpolicy bypass -command "Get-Netadapter -Physical | Set-NetAdapterAdvancedProperty -RegistryKeyword '*TransmitBuffers' -RegistryValue 2048 -ErrorAction silentlycontinue"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "0" /f
:: https://www.speedguide.net/articles/windows-10-tcpip-tweaks-5077
powershell -noprofile -executionpolicy bypass -command "Set-NetTCPSetting -SettingName Internet -MaxSynRetransmissions 2 -Verbose"
powershell -noprofile -executionpolicy bypass -command "Set-NetTCPSetting -SettingName Internet -MemoryPressureProtection Disabled -Verbose"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostPriority" /t REG_DWORD /d "5" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "30" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /t REG_SZ /d "1" /f
:: https://sites.google.com/view/melodystweaks/basictweaks
netsh int tcp set global autotuning=experimental
netsh int udp set global uro=enabled
netsh winsock set autotuning on
powershell -noprofile -executionpolicy bypass -command "Get-NetIPInterface | Set-NetIPInterface -WeakHostSend Enabled -WeakHostReceive Enabled -Verbose"

:: optimize
bcdedit /timeout 0
bcdedit /set disabledynamictick yes
bcdedit /set bootlog Yes
bcdedit /set hypervisorlaunchtype off
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set isolatedcontext no
bcdedit /set loadoptions DISABLE-LSA-ISO,DISABLE-VBS
bcdedit /set vsmlaunchtype off
bcdedit /set vm No
bcdedit /set x2apicpolicy Enable
bcdedit /set configaccesspolicy Default
bcdedit /set MSI Default
bcdedit /set usephysicaldestination No
bcdedit /set usefirmwarepcisettings No
bcdedit /set disableelamdrivers yes
fsutil behavior set disablelastaccess 1
fsutil behavior set disable8dot3 1
fsutil behavior set encryptpagingfile 0
powercfg /duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 11111111-1111-1111-1111-111111111111
powercfg /setactive 11111111-1111-1111-1111-111111111111
powercfg /setacvalueindex scheme_current 0012ee47-9041-4b5d-9b77-535fba8b1442 d3d55efd-c1ff-424e-9dc3-441be7833010 0
powercfg /setacvalueindex scheme_current 0012ee47-9041-4b5d-9b77-535fba8b1442 d639518a-e56d-4345-8af2-b9f32fb26109 0
powercfg /setacvalueindex scheme_current 0012ee47-9041-4b5d-9b77-535fba8b1442 fc7372b6-ab2d-43ee-8797-15e9841f2cca 0
powercfg /setacvalueindex scheme_current 2a737441-1930-4402-8d77-b2bebba308a3 0853a681-27c8-4100-a2fd-82013e970683 0
powercfg /setacvalueindex scheme_current 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg /setacvalueindex scheme_current 2a737441-1930-4402-8d77-b2bebba308a3 d4e98f31-5ffe-4ce1-be31-1b38b384c009 0
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb 0
powercfg /setacvalueindex scheme_current 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg /setacvalueindex scheme_current 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 4d2b0152-7d5c-498b-88e2-34345392a2c5 200
powercfg /setacvalueindex scheme_current 238c9fa8-0aad-41ed-83f4-97be242c8f20 25dfa149-5dd1-4736-b5ab-e8a37b5b8187 0
powercfg /setacvalueindex scheme_current 238c9fa8-0aad-41ed-83f4-97be242c8f20 abfc2519-3608-4c2a-94ea-171b0ed546ab 0
powercfg /setacvalueindex scheme_current 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0
powercfg /setacvalueindex scheme_current 238c9fa8-0aad-41ed-83f4-97be242c8f20 7bc4a2f9-d8fc-4469-b07b-33eb785aaca0 0
powercfg /setacvalueindex scheme_current 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d 0
powercfg /setacvalueindex scheme_current 2e601130-5351-4d9d-8e04-252966bad054 d502f7ee-1dc7-4efd-a55d-f04b6f5c0545 0
powercfg /setacvalueindex scheme_current 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0
powercfg /setactive scheme_current
powercfg /x monitor-timeout-ac 0
powercfg /x monitor-timeout-dc 0
powercfg /x disk-timeout-ac 0
powercfg /x disk-timeout-dc 0
powercfg /x standby-timeout-ac 0
powercfg /x standby-timeout-dc 0
powercfg /x hibernate-timeout-ac 0
powercfg /x hibernate-timeout-dc 0
powercfg -h off
powercfg /delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg /delete a1841308-3541-4fab-bc81-f71556f20b4a
powercfg /delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powershell -noprofile -executionpolicy bypass -command "Get-WmiObject MSPower_DeviceEnable -Namespace root\wmi | ForEach-Object { $_.enable = $false; $_.psbase.put(); }"
powershell -noprofile -executionpolicy bypass -command "Set-LocalUser -Name Administrator -PasswordNeverExpires 1"
powershell -noprofile -executionpolicy bypass -command "Set-ProcessMitigation -System -Disable CFG"
powershell -noprofile -executionpolicy bypass -command "Disable-MMAgent -MemoryCompression"
powershell -noprofile -executionpolicy bypass -command "Disable-MMAgent -PageCombining"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy" /v "VerifiedAndReputablePolicyState" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "FeatureManagementEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338387Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SystemSettings\AccountNotifications" /v "EnableAccountNotifications" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\StorageSense" /v "AllowStorageSenseGlobal" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "DisableBandwidthThrottling" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters" /v "RestrictNullSessAccess" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "RestrictAnonymous" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "EnableMulticast" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "22" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Task Scheduler\Maintenance" /v "WakeUp" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "10" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /v "FolderType" /t REG_SZ /d "NotSpecified" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\FTH" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "GamePanelStartupTipIndex" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Colors" /v "InfoWindow" /t REG_SZ /d "246 253 255" /f
reg add "HKCU\Software\Microsoft\Ease of Access" /v "selfscan" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Ease of Access" /v "selfvoice" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\HighContrast" /v "Flags" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_DWORD /d "0" /f
reg delete "HKCU\Control Panel\Input Method\Hot Keys\00000104" /f
reg add "HKCU\Keyboard Layout\Toggle" /v "Layout Hotkey" /t REG_DWORD /d "3" /f
reg add "HKCU\Keyboard Layout\Toggle" /v "Language Hotkey" /t REG_DWORD /d "3" /f
reg add "HKCU\Keyboard Layout\Toggle" /v "Hotkey" /t REG_DWORD /d "3" /f
reg add "HKCU\Control Panel\Accessibility\SlateLaunch" /v "LaunchAT" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility" /v "Warning Sounds" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility" /v "Sound on Activation" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\SoundSentry" /v "WindowsEffect" /t REG_SZ /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{7AD84985-87B4-4a16-BE58-8B72A5B390F7}" /t REG_SZ /d "" /f
reg delete "HKCR\CompressedFolder\ShellEx\ContextMenuHandlers\{b8cdcb65-b1bf-4b42-9428-1dfdb7ee92af}" /f
reg delete "HKCR\SystemFileAssociations\.zip\ShellEx\ContextMenuHandlers\{b8cdcb65-b1bf-4b42-9428-1dfdb7ee92af}" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\Background\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\LibraryFolder\background\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\UserLibraryFolder\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Folder\ShellEx\ContextMenuHandlers\Library Location" /f
reg delete "HKCR\.bmp\ShellNew" /f
reg delete "HKCR\.rtf\ShellNew" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\ModernSharing" /f
reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{1d27f844-3a1f-4410-85ac-14651078412d}" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{1d27f844-3a1f-4410-85ac-14651078412d}" /t REG_SZ /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "EnthusiastMode" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AutoCheckSelect" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKCU\Software\Classes\CLSID\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Classes\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SharingWizardOn" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowCloudFilesInQuickAccess" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "4096" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowRecent" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ClearRecentDocsOnExit" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoRemoteDestinations" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "MouseHoverTime" /t REG_SZ /d "20" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_SZ /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_SZ /d "1" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}" /f
reg delete "HKCR\AllFilesystemObjects\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\Directory\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\Drive\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /f
reg delete "HKCU\Software\Policies\Microsoft\PreviousVersions" /v "DisableLocalPage" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "UseCompactMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableInstallerDetection" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableSecureUIAPaths" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "MultiTaskingAltTabFilter" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /v "DisableAutoplay" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\CameraAlternate" /v "MSTakeNoAction" /t REG_NONE /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\StorageOnArrival" /v "MSTakeNoAction" /t REG_NONE /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\CameraAlternate\ShowPicturesOnArrival" /v "MSTakeNoAction" /t REG_NONE /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\StorageOnArrival" /v "MSTakeNoAction" /t REG_NONE /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisallowShaking" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP\SettingsPage" /v "BluetoothLastDisabledNearShare" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "2000" /f
reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeOut" /t REG_SZ /d "2000" /f
reg add "HKCU\Control Panel\Desktop" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "verbosestatus" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "AutoReboot" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "CrashDumpEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "LogEvent" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "DisplayParameters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl\StorageTelemetry" /v "DeviceDumpEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "DisableWpbtExecution" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisablePreviewDesktop" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "SignInMode" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Chat" /v "ChatIcon" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings" /v "TaskbarEndTask" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d "0" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\MultiTaskingView\AllUpView" /v "Enabled" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAl" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PenWorkspace" /v "PenWorkspaceAppSuggestionsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAutomaticRestartSignOn" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Settings\AllowOnlineTips" /v "value" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableAutocorrection" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableDoubleTapSpace" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnablePredictionSpaceInsertion" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableSpellchecking" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableTextPrediction" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableAutoShiftEngage" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableKeyAudioFeedback" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Cursors" /v "GestureVisualization" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Cursors" /v "ContactVisualization" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Shell\USB" /v "NotifyOnUsbErrors" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Shell\USB" /v "NotifyOnWeakCharger" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
reg delete "HKCU\Software\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightFeatures" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightWindowsWelcomeExperience" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightOnActionCenter" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightOnSettings" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Multimedia\Audio" /v "UserDuckingPreference" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "SettingsPageVisibility" /t REG_SZ /d "hide:recovery;maps;maps-downloadmaps;findmydevice;sync;cortana-windowssearch;mobile-devices;mobile-devices-addphone;workplace;family-group;deviceusage;home" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_SZ /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "RestrictAnonymousSAM" /t REG_SZ /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowFullControl" /t REG_SZ /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowToGetHelp" /t REG_SZ /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "2" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f
reg add "HKCU\System\GameBar" /v "GamePanelStartupTipIndex" /t REG_DWORD /d "3" /f
reg add "HKCU\System\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "NoConnectedUser" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsAADCloudSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDeviceSearchHistoryEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsMSACloudSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "SafeSearchMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "EnableDynamicContentInWSB" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDynamicSearchBoxEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Connectivity\AllowBluetooth" /v "value" /t REG_DWORD /d "0" /f
reg delete "HKCR\DesktopBackground\Shell\NVIDIAContainer" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Storage" /v "StorageD3InModernStandby" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters\Device" /v "IdlePowerMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxNegativeCacheTtl" /t REG_DWORD /d "0" /f
reg delete "HKCR\Drive\shellex\PropertySheetHandlers\{55B3A0BD-4D28-42fe-8CFB-FA3EDFF969B8}" /f
start /b /w C:\TEMP\idman.exe
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "HardwareAccelerationModeEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "HttpsOnlyMode" /t REG_SZ /d "disallowed" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "BlockThirdPartyCookies" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DefaultGeolocationSetting" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DefaultNotificationsSetting" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DefaultSensorsSetting" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DefaultThirdPartyStoragePartitioningSetting" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DefaultWebBluetoothGuardSetting" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "AccessibilityImageLabelsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "AdsSettingForIntrusiveAdsSites" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "AdvancedProtectionAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "AutofillCreditCardEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "AutoplayAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "BackgroundModeEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "BatterySaverModeAvailability" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "BuiltInDnsClientEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "BookmarkBarEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "BrowserNetworkTimeQueriesEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DNSInterceptionChecksEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DiskCacheSize" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DiskCacheDir" /t REG_SZ /d "C:\TEMP" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DnsOverHttpsMode" /t REG_SZ /d "off" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DownloadRestrictions" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "EncryptedClientHelloEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "FetchKeepaliveDurationSecondsOnShutdown" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ForceGoogleSafeSearch" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ForceYouTubeRestrict" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "HighEfficiencyModeEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "IntensiveWakeUpThrottlingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "IntranetRedirectBehavior" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "MediaRecommendationsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "NTPCardsVisible" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "NTPMiddleSlotAnnouncementVisible" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "NetworkPredictionOptions" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PromotionalTabsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PromptForDownloadLocation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "SafeSitesFilterBehavior" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ShoppingListEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ShowFullUrlsInAddressBar" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "UserFeedbackAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PasswordLeakDetectionEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PasswordProtectionWarningTrigger" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "SafeBrowsingExtendedReportingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "SafeBrowsingProtectionLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ShowHomeButton" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "EnableMediaRouter" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ShowCastIconInToolbar" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "AccessCodeCastEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "SideSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "AbusiveExperienceInterventionEnforce" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "AlwaysOpenPdfExternally" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "AutofillAddressEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DownloadDirectory" /t REG_SZ /d "C:\TEMP" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PaymentMethodQueryEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ShowAppsShortcutInBookmarkBar" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "WPADQuickCheckEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DomainReliabilityAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PrivacySandboxPromptEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PrivacySandboxAdMeasurementEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PrivacySandboxAdTopicsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PrivacySandboxSiteEnabledAdsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ExtensionManifestV2Availability" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "WebRtcTextLogCollectionAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "WebRtcEventLogCollectionAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "GoogleSearchSidePanelEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PdfUseSkiaRendererEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "AudioSandboxEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "NetworkServiceSandboxEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "SafeBrowsingSurveysEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "SafeBrowsingProxiedRealTimeChecksAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "SafeBrowsingDeepScanningEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "QuicAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "RelatedWebsiteSetsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PasswordDismissCompromisedAlertEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "FeedbackSurveysEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "TabOrganizerSettings" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "CreateThemesSettings" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "HelpMeWriteSettings" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DefaultJavaScriptJitSetting" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ZstdContentEncodingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PasswordSharingEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DevToolsGenAiSettings" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "GenAILocalFoundationalModelSettings" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "BoundSessionCredentialsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PostQuantumKeyAgreementEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "UiAutomationProviderEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "UrlKeyedAnonymizedDataCollectionEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome\ExtensionInstallBlocklist" /v "1" /t REG_SZ /d "ghbmnnjooekpmoecnnnilnnbdlolhkhi" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome\TabDiscardingExceptions" /v "1" /t REG_SZ /d "*" /f
reg add "HKCU\Software\DownloadManager" /v "bHideTabsBtn" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "bHideSLTabOnDwnlDlg" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager" /v "bHideCTabOnDwnlDlg" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager" /v "PrgrDlgVisiblity" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "ExceptionProxyServers" /t REG_SZ /d "" /f
reg add "HKCU\Software\DownloadManager" /v "bUseSocks" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "SocksType" /t REG_DWORD /d "5" /f
reg add "HKCU\Software\DownloadManager" /v "Socks5ProxyDNS" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "nHttpPrChbSt" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "nFtpPrChbSt" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "nHttpsPrChbSt" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "UseHttpsProxy" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "nProxyMode" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager" /v "kbUPFBoErfCD" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "MaxConnectionsNumber" /t REG_DWORD /d "24" /f
reg add "HKCU\Software\DownloadManager" /v "RunIEMonitor2" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "bQueueSelPnlOnGAL" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager" /v "bQueueSelPnlOnDlLt" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager" /v "ComplDlgShowing" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager" /v "RememberDuplLinksA" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "StartDlgShowing" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager" /v "LocalPathW" /t REG_NONE /d "C:\TEMP" /f
reg add "HKCU\Software\DownloadManager" /v "TempPath" /t REG_SZ /d "C:\TEMP" /f
reg add "HKCU\Software\DownloadManager" /v "LaunchOnStart" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "bSetServerTimeToFile" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager" /v "startImmediately" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "bIgnMTCh" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "LanguageID" /t REG_DWORD /d "2052" /f
reg add "HKCU\Software\DownloadManager" /v "TipStartUp" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Compressed" /v "pathW" /t REG_NONE /d "C:\TEMP" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Compressed" /v "rememberLastPath" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Documents" /v "pathW" /t REG_NONE /d "C:\TEMP" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Documents" /v "rememberLastPath" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Music" /v "pathW" /t REG_NONE /d "C:\TEMP" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Music" /v "rememberLastPath" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Video" /v "rememberLastPath" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Video" /v "pathW" /t REG_NONE /d "C:\TEMP" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Programs" /v "pathW" /t REG_NONE /d "C:\TEMP" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Programs" /v "rememberLastPath" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "AutoUpdates" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "SettingsVersion" /t REG_DWORD /d "5" /f
reg add "HKCU\Software\StartIsBack" /v "WelcomeShown" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\StartIsBack" /v "FrameStyle" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\StartIsBack" /v "OrbBitmap" /t REG_SZ /d "C:\Program Files\StartAllBack\Orbs\Windows 7.orb" /f
reg add "HKCU\Software\StartIsBack" /v "AlterStyle" /t REG_SZ /d "Windows 7.msstyles" /f
reg add "HKCU\Software\StartIsBack" /v "TaskbarStyle" /t REG_SZ /d "Windows 7.msstyles" /f
reg add "HKCU\Software\StartIsBack" /v "SysTrayStyle" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\StartIsBack" /v "BottomDetails" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_LargeAllAppsIcons" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "AllProgramsFlyout" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "StartMetroAppsFolder" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\StartIsBack" /v "Start_SortOverride" /t REG_DWORD /d "10" /f
reg add "HKCU\Software\StartIsBack" /v "Start_NotifyNewApps" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_AutoCascade" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_AskCortana" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "HideUserFrame" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_RightPaneIcons" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowUser" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowMyDocs" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowMyPics" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowMyMusic" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowVideos" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowDownloads" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowSkyDrive" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "StartMenuFavorites" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowRecentDocs" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowNetPlaces" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowNetConn" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowMyComputer" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowControlPanel" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowPCSettings" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_AdminToolsRoot" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowPrinters" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowSetProgramAccessAndDefaults" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowTerminal" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowCommandPrompt" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowRun" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "NavBarGlass" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "LegacyTaskbar" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "RestyleIcons" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "TaskbarColor" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "CustomColors" /t REG_SZ /d "ColorA=FFFFFFFFColorB=FFFFFFFFColorC=FFFFFFFFColorD=FFFFFFFFColorE=FFFFFFFFColorF=FFFFFFFFColorG=FFFFFFFFColorH=FFFFFFFFColorI=FFFFFFFFColorJ=FFFFFFFFColorK=FFFFFFFFColorL=FFFFFFFFColorM=FFFFFFFFColorN=FFFFFFFFColorO=FFFFFFFFColorP=FFFFFFFF" /f
reg add "HKCU\Software\7-Zip\Options" /v "CascadedMenu" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Cursors" /v "Hand" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Wait" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "UpArrow" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeWE" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeNWSE" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeNS" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeNESW" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeAll" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Scheme Source" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Cursors" /v "NWPen" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "AppStarting" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Arrow" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /ve /t REG_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Help" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "No" /t REG_EXPAND_SZ /d "" /f
start /b /w C:\TEMP\NotSetup.exe
reg add "HKCU\Environment" /v "TEMP" /t REG_EXPAND_SZ /d "C:\TEMP" /f
reg add "HKCU\Environment" /v "TMP" /t REG_EXPAND_SZ /d "C:\TEMP" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Perflib\_V2Providers" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NET CLR Data\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NET CLR Networking 4.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NET CLR Networking\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NET Data Provider for Oracle\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NET Data Provider for SqlServer\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NET Memory Cache 4.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NETFramework\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ESENT\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LSM\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC Bridge 3.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC Bridge 4.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PerfDisk\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PerfNet\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PerfOS\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PerfProc\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rdyboost\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RemoteAccess\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ServiceModelEndpoint 3.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ServiceModelOperation 3.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ServiceModelService 3.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SMSvcHost 3.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SMSvcHost 4.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TapiSrv\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TermService\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UGatherer\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UGTHRSVC\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\usbhub\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Windows Workflow Foundation 3.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Windows Workflow Foundation 4.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WmiApRpl\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearchIdxPi\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
powershell -noprofile -executionpolicy bypass -command "set-ItemProperty HKLM:\System\CurrentControlSet\services\NetBT\Parameters\Interfaces\tcpip* -Name NetbiosOptions -Value 2"
powershell -noprofile -executionpolicy bypass -command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_implat"
powershell -noprofile -executionpolicy bypass -command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_msclient"
powershell -noprofile -executionpolicy bypass -command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_server"
powershell -noprofile -executionpolicy bypass -command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_lltdio"
powershell -noprofile -executionpolicy bypass -command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_rspndr"
powershell -noprofile -executionpolicy bypass -command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_tcpip6"
powershell -noprofile -executionpolicy bypass -command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_pacer"
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem 'Registry::HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration' -Depth 3 -Recurse | ForEach-Object { Set-ItemProperty -Path $_.PSPath -Name 'Scaling' -Type 'DWord' -Value '1' -Force}"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'System' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'Application' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'Security' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'Windows PowerShell' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'HardwareEvents' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'Key Management Service' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
powershell -noprofile -executionpolicy bypass -command "Limit-Eventlog -Logname 'Internet Explorer' -MaximumSize 64KB -OverflowAction OverwriteAsNeeded"
auditpol /set /category:* /Success:disable /failure:disable
auditpol /set /subcategory:"Filtering Platform Policy Change" /success:disable /failure:disable
auditpol /set /subcategory:"Filtering Platform Packet Drop" /success:disable /failure:disable
auditpol /set /subcategory:"Filtering Platform Connection" /success:disable /failure:disable
auditpol /set /subcategory:"Other Object Access Events" /success:disable /failure:disable
auditpol /set /subcategory:"IPsec Main Mode" /success:disable /failure:disable
auditpol /set /subcategory:"IPsec Quick Mode" /success:disable /failure:disable
auditpol /set /subcategory:"IPsec Extended Mode" /success:disable /failure:disable
auditpol /set /subcategory:"IPsec Driver" /success:disable /failure:disable
auditpol /set /subcategory:"DPAPI Activity" /success:disable /failure:disable
auditpol /set /subcategory:"Detailed Directory Service Replication" /success:disable /failure:disable
auditpol /set /subcategory:"Directory Service Replication" /success:disable /failure:disable
auditpol /set /subcategory:"Handle Manipulation" /success:disable /failure:disable
auditpol /set /subcategory:"MPSSVC Rule-Level Policy Change" /success:disable /failure:disable
auditpol /set /subcategory:"Non Sensitive Privilege Use" /success:disable /failure:disable
auditpol /set /subcategory:"Other Policy Change Events" /success:disable /failure:enable
auditpol /set /subcategory:"Other Privilege Use Events" /success:disable /failure:disable
auditpol /set /subcategory:"SAM" /success:disable /failure:disable
auditpol /set /subcategory:"Sensitive Privilege Use" /success:disable /failure:disable
auditpol /set /subcategory:"Other System Events" /success:disable /failure:disable
auditpol /set /subcategory:"Account Lockout" /success:disable /failure:disable
auditpol /set /subcategory:"Application Generated" /success:disable /failure:disable
auditpol /set /subcategory:"Application Group Management" /success:disable /failure:disable
auditpol /set /subcategory:"Audit Policy Change" /success:disable /failure:disable
auditpol /set /subcategory:"Authentication Policy Change" /success:disable /failure:disable
auditpol /set /subcategory:"Authorization Policy Change" /success:disable /failure:disable
auditpol /set /subcategory:"Certification Services" /success:disable /failure:disable
auditpol /set /subcategory:"Computer Account Management" /success:disable /failure:disable
auditpol /set /subcategory:"Credential Validation" /success:disable /failure:disable
auditpol /set /subcategory:"Directory Service Access" /success:disable /failure:disable
auditpol /set /subcategory:"Directory Service Changes" /success:disable /failure:disable
auditpol /set /subcategory:"Distribution Group Management" /success:disable /failure:disable
auditpol /set /subcategory:"File Share" /success:disable /failure:disable
auditpol /set /subcategory:"File System" /success:disable /failure:disable
auditpol /set /subcategory:"Kerberos Authentication Service" /success:disable /failure:disable
auditpol /set /subcategory:"Kerberos Service Ticket Operations" /success:disable /failure:disable
auditpol /set /subcategory:"Kernel Object" /success:disable /failure:disable
auditpol /set /subcategory:"Logoff" /success:disable /failure:disable
auditpol /set /subcategory:"Logon" /success:disable /failure:disable
auditpol /set /subcategory:"Network Policy Server" /success:disable /failure:disable
auditpol /set /subcategory:"Other Account Logon Events" /success:disable /failure:disable
auditpol /set /subcategory:"Other Account Management Events" /success:disable /failure:disable
auditpol /set /subcategory:"Other Logon/Logoff Events" /success:disable /failure:disable
auditpol /set /subcategory:"Process Creation" /success:disable /failure:disable
auditpol /set /subcategory:"Process Termination" /success:disable /failure:disable
auditpol /set /subcategory:"RPC Events" /success:disable /failure:disable
auditpol /set /subcategory:"Registry" /success:disable /failure:disable
auditpol /set /subcategory:"Security Group Management" /success:disable /failure:disable
auditpol /set /subcategory:"Security State Change" /success:disable /failure:disable
auditpol /set /subcategory:"Security System Extension" /success:disable /failure:disable
auditpol /set /subcategory:"Special Logon" /success:disable /failure:disable
auditpol /set /subcategory:"System Integrity" /success:disable /failure:disable
auditpol /set /subcategory:"User Account Management" /success:disable /failure:disable
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d "255" /f
reg delete "HKCU\Keyboard Layout\Preload" /f
reg delete "HKCU\Control Panel\International\User Profile\zh-Hans-CN" /f
reg delete "HKCU\Control Panel\International\User Profile System Backup\zh-Hans-CN" /f
reg add "HKCU\Control Panel\International\Geo" /v "Nation" /t REG_SZ /d "244" /f
reg add "HKCU\Control Panel\International\Geo" /v "Name" /t REG_SZ /d "US" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "DirectXUserGlobalSettings" /t REG_SZ /d "SwapEffectUpgradeEnable=1;" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableAcmSupportDeveloperPreview" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "MMTaskbarGlomLevel" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarGlomLevel" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabledDefault" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "F1TransitionLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LOWLATENCY" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PciLatencyTimerControl" /t REG_DWORD /d "32" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMaxFtuS" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMinFtuS" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcPerioduS" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrEiIdleThresholdUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrIdleThresholdUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrRgIdleThresholdUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrMsIdleThresholdUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipDPCDelayUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipTimingMarginUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectJITFlipMsHybridFlipDelayUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrCursorMarginUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMarginUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMaxUs" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DpMstDscDisable" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d "2" /f
reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012038010000000" /f
reg add "HKCU\Control Panel\Desktop" /v "Win8DpiScaling" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "LogPixels" /t REG_DWORD /d "96" /f
reg add "HKCU\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "UseDpiScaling" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorPrevalence" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableWindowColorization" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "AutoColorization" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "ColorPrevalence" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_SZ /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "ShowGlobalPrompts" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Classes\ms-gamebar" /v "URL Protocol" /t REG_SZ /d "" /f
reg add "HKCU\Software\Classes\ms-gamebar" /ve /t REG_SZ /d "URL:ms-gamebar" /f
reg add "HKCU\Software\Classes\ms-gamebar\shell\open\command" /ve /t REG_SZ /d "" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\Subscriptions" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS" /v "Tcp Autotuning Level" /t REG_SZ /d "Experimental" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS" /v "Application DSCP Marking Request" /t REG_SZ /d "Allowed" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "30" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "30" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Perflib" /v "ExtCounterTestLevel" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Perflib" /v "DebugTraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Perflib" /v "Disable" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Perflib" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Perflib" /v "EventLogLevel" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /v "DefaultConnectionSettings" /t REG_BINARY /d "4600000003000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /v "SavedLegacySettings" /t REG_BINARY /d "4600000003000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global" /v "{41FCC608-8496-4DEF-B43E-7D9BD675A6FF}" /t REG_BINARY /d "01" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "{41FCC608-8496-4DEF-B43E-7D9BD675A6FF}" /t REG_BINARY /d "01" /f
for /f "usebackq tokens=1*" %%a in (`reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume" /s /f "NukeOnDelete"^| findstr "HKEY"`) do reg add "%%a %%b" /v "NukeOnDelete" /t REG_DWORD /d "1" /f
for %%a in (
    "batfile"
    "cmdfile"
    "docxfile"
    "fonfile"
    "htmlfile"
    "inffile"
    "inifile"
    "JSEFile"
    "otffile"
    "pfmfile"
    "regfile"
    "rtffile"
    "ttcfile"
    "ttffile"
    "txtfile"
    "VBEFile"
    "VBSFile"
    "WSFFile"
) do (
    reg add "HKCR\%%~a\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
)
for %%a in (
    "AllowIdleIrpInD3",
    "D3ColdSupported",
    "DeviceSelectiveSuspended",
    "EnableIdlePowerManagement",
    "EnableSelectiveSuspend",
    "EnhancedPowerManagementEnabled",
    "IdleInWorkingState",
    "SelectiveSuspendEnabled",
    "SelectiveSuspendOn",
    "WaitWakeEnabled",
    "WakeEnabled",
    "WdfDirectedPowerTransitionEnable"
) do (
    for /f "delims=" %%b in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Enum" /s /f "%%~a" ^| findstr "HKEY"') do (
        reg add "%%b" /v "%%~a" /t REG_DWORD /d "0" /f 1>nul 2>&1
    )
)
for /f %%r in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /f 1 /d /s^|Findstr HKEY_') do (
	reg add %%r /v "TCPNoDelay" /t REG_DWORD /d "1" /f
	reg add %%r /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
	reg add %%r /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f
)
move "C:\TEMP\SetTimerResolution.lnk" "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
move "C:\TEMP\LowAudioLatency.lnk" "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
move "C:\TEMP\StartUp.lnk" "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
start /b /w C:\Windows\SysWOW64\PowerRun.exe cmd /c "C:\TEMP\Setup3.cmd"
powershell -noprofile -executionpolicy bypass -command "Get-EventLog -LogName * | ForEach { Clear-EventLog $_.Log }"
start /b /w C:\TEMP\NotSetupPatch.exe
start /b /w C:\TEMP\IDMcrack.exe
