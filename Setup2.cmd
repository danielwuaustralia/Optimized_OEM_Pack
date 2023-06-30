@echo on
color 0a
chcp 65001>nul
setlocal enabledelayedexpansion
setlocal enableextensions

:: Environment
netsh wlan add profile filename="C:\TEMP\WLAN-NASA.xml" user=all
netsh wlan connect name=NASA
timeout /t 2 /nobreak
net start w32time
w32tm /config /manualpeerlist:pool.ntp.org /syncfromflags:manual /reliable:yes /update
w32tm /config /update
w32tm /resync
:: certutil.exe -generateSSTFromWU C:\TEMP\roots.sst
powershell -nop -ep bypass -c "Get-ChildItem -Path C:\TEMP\roots.sst | Import-Certificate -CertStoreLocation Cert:\LocalMachine\Root"
reg add "HKCU\Environment" /v "TEMP" /t REG_EXPAND_SZ /d "C:\TEMP" /f
reg add "HKCU\Environment" /v "TMP" /t REG_EXPAND_SZ /d "C:\TEMP" /f

:: 3rd party software
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ApplicationLocaleValue" /t REG_SZ /d "en-US" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "HardwareAccelerationModeEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DownloadBubbleEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DefaultGeolocationSetting" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DefaultNotificationsSetting" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "HttpsOnlyMode" /t REG_SZ /d "disallowed" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DefaultSensorsSetting" /t REG_DWORD /d "2" /f
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
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DnsOverHttpsMode" /t REG_SZ /d "off" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DownloadRestrictions" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "EncryptedClientHelloEnabled" /t REG_DWORD /d "1" /f
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
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "AudioSandboxEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "NetworkServiceSandboxEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome\ExtensionInstallBlocklist" /v "1" /t REG_SZ /d "ghbmnnjooekpmoecnnnilnnbdlolhkhi" /f
reg add "HKCU\Software\StartIsBack" /v "ModernIconsColorized" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "WelcomeShown" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\StartIsBack" /v "FrameStyle" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "TaskbarStyle" /t REG_SZ /d "Windows 7.msstyles" /f
reg add "HKCU\Software\StartIsBack" /v "SysTrayStyle" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "TaskbarOneSegment" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "TaskbarCenterIcons" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "TaskbarTranslucentEffect" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "AlterStyle" /t REG_SZ /d "Windows 7.msstyles" /f
reg add "HKCU\Software\StartIsBack" /v "BottomDetails" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "NoXAMLMenus" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "UndeadControlPanel" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "TaskbarAlpha" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "TaskbarColor" /t REG_DWORD /d "16777215" /f
reg add "HKCU\Software\StartIsBack" /v "CustomColors" /t REG_SZ /d "ColorA=FFFFFFFF" /f
reg add "HKCU\Software\StartIsBack" /v "TaskbarBlur" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "OldSearch" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "TaskbarLargerIcons" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "TaskbarSpacierIcons" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\StartIsBack" /v "Start_LargeAllAppsIcons" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "AllProgramsFlyout" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "StartMetroAppsFolder" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\StartIsBack" /v "Start_SortOverride" /t REG_DWORD /d "10" /f
reg add "HKCU\Software\StartIsBack" /v "Start_NotifyNewApps" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_AutoCascade" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_AskCortana" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "HideUserFrame" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_RightPaneIcons" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowUser" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowMyDocs" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowMyPics" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowMyMusic" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowVideos" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowDownloads" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowSkyDrive" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "StartMenuFavorites" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowRecentDocs" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowNetPlaces" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowNetConn" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowMyComputer" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowControlPanel" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowPCSettings" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_AdminToolsRoot" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowPrinters" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowSetProgramAccessAndDefaults" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowTerminal" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowCommandPrompt" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "Start_ShowRun" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\StartIsBack" /v "RestyleControls" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "RestyleIcons" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "TaskbarJumpList" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "NavBarGlass" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "AutoUpdates" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\StartIsBack" /v "OrbBitmap" /t REG_SZ /d "C:\Program Files\StartAllBack\Orbs\Windows 7.orb" /f
reg add "HKCU\Software\StartIsBack" /v "Start_LargeMFUIcons" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager" /v "RunIEMonitor2" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "ComplDlgShowing" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\DownloadManager" /v "DuplLinksA" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\DownloadManager" /v "RememberLastSave" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager" /v "MaxConnectionsNumber" /t REG_DWORD /d "32" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Compressed" /v "pathW" /t REG_NONE /d "C:\TEMP" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Compressed" /v "rememberLastPath" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Documents" /v "pathW" /t REG_NONE /d "C:\TEMP" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Documents" /v "rememberLastPath" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Music" /v "pathW" /t REG_NONE /d "C:\TEMP" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Music" /v "rememberLastPath" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Programs" /v "pathW" /t REG_NONE /d "C:\TEMP" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Programs" /v "rememberLastPath" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Video" /v "pathW" /t REG_NONE /d "C:\TEMP" /f
reg add "HKCU\Software\DownloadManager\FoldersTree\Video" /v "rememberLastPath" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "CaptivePortal" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DefaultDownloadDirectory" /t REG_SZ /d "C:\TEMP" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableDefaultBrowserAgent" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableFirefoxStudies" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableForgetButton" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisablePocket" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableTelemetry" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DontCheckDefaultBrowser" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableAppUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableFeedbackCommands" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableProfileRefresh" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableSafeMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableSetDesktopBackground" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisplayBookmarksToolbar" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "LegacyProfiles" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "NetworkPrediction" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "NewTabPage" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "NoDefaultBookmarks" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "OverrideFirstRunPage" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "OverridePostUpdatePage" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "PromptForDownloadLocation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "SearchSuggestEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "ShowHomeButton" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "WindowsSSO" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "RequestedLocales" /t REG_SZ /d "zh-CN, en-US" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "BackgroundAppUpdate" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "HardwareAcceleration" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Cookies" /v "AcceptThirdParty" /t REG_SZ /d "from-visited" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Cookies" /v "RejectTracker" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Cookies" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\DNSOverHTTPS" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection" /v "Value" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection" /v "Cryptomining" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection" /v "Fingerprinting" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Extensions\Locked" /v "1" /t REG_SZ /d "firefox@tampermonkey.net" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Extensions\Locked" /v "2" /t REG_SZ /d "uBlock0@raymondhill.net" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v "Search" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v "TopSites" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v "SponsoredTopSites" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v "Highlights" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v "Pocket" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v "SponsoredPocket" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v "Snippets" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Homepage" /v "URL" /t REG_SZ /d "about:blank" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Homepage" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Autoplay" /v "BlockNewRequests" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Autoplay" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Camera" /v "BlockNewRequests" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Camera" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Location" /v "BlockNewRequests" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Location" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Microphone" /v "BlockNewRequests" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Microphone" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Notifications" /v "BlockNewRequests" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Notifications" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\VirtualReality" /v "BlockNewRequests" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\VirtualReality" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\PictureInPicture" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\PictureInPicture" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\PopupBlocking" /v "Default" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\PopupBlocking" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Proxy" /v "Mode" /t REG_SZ /d "none" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Proxy" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Proxy" /v "UseHTTPProxyForAllProtocols" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Proxy" /v "UseProxyForDNS" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown" /v "Cache" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown" /v "Locked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v "WhatsNew" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v "ExtensionRecommendations" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v "FeatureRecommendations" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v "UrlbarInterventions" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v "SkipOnboarding" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v "MoreFromMozilla" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\7-Zip\Options" /v "CascadedMenu" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Steam\steamapps\common\Counter-Strike Global Offensive\csgo.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE DISABLEDWM" /f

:: performance
netsh winsock set autotuning on
netsh interface teredo set state disabled
netsh interface 6to4 set state disabled
netsh interface isatap set state disable
netsh int tcp set heuristics wsh=disabled forcews=enabled
netsh int ip set global taskoffload=disabled
netsh int ip set global neighborcachelimit=4096
netsh int tcp set heuristics disabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global ecncapability=disabled
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global fastopen=enabled
netsh int tcp set global fastopenfallback=disabled
netsh int tcp set global initialRto=2000
netsh int tcp set global maxsynretransmissions=2
netsh int tcp set global pacingprofile=off
netsh int tcp set global hystart=disabled
netsh int tcp set security profiles=disabled
netsh int tcp set security mpp=disable
netsh int udp set global uro=enabled
netsh interface ip set interface WLAN currenthoplimit=64
netsh interface ip set interface WLAN weakhostsend=enabled
netsh interface ip set interface WLAN weakhostreceive=enabled
netsh interface tcp set supplemental Internet congestionprovider=bbr2
netsh interface tcp set supplemental InternetCustom congestionprovider=bbr2
netsh interface ipv4 set subinterface "WLAN" mtu=1470 store=persistent
netsh interface ip delete arpcache
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WlanSvc\Parameters\HostedNetworkSettings" /v "HostedNetworkSettings" /f
netsh wlan stop hostednetwork
netsh wlan set hostednetwork mode=disallow
powershell -nop -ep bypass -c "Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing Disabled -PacketCoalescingFilter Disabled -Chimney Disabled -ReceiveSideScaling Enabled -TaskOffload Enabled"
powershell -nop -ep bypass -c "Set-NetIPv4Protocol -MulticastForwarding Disabled -MediaSenseEventLog Disabled"
powershell -nop -ep bypass -c "Disable-NetAdapterChecksumOffload -Name '*' -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterLso -Name '*' -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterRsc -Name '*' -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterIPsecOffload -Name '*' -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterPowerManagement -Name '*' -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterQos -Name '*' -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterEncapsulatedPacketTaskOffload -Name '*' -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterUso -Name '*' -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_lldp -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_lltdio -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_msclient -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_rspndr -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_server -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_implat -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_pacer -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_pppoe -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_rdma_ndk -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_ndisuio -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_wfplwf_upper -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_wfplwf_lower -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_netbt -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_netbios -ErrorAction SilentlyContinue"
powershell -nop -ep bypass -c "Disable-NetAdapterBinding -Name '*' -ComponentID ms_tcpip6 -ErrorAction SilentlyContinue"
for /f %%r in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /f "1" /d /s^|Findstr HKEY_') do (
	reg add %%r /v "NonBestEffortLimit" /t Reg_DWORD /d "0" /f
	reg add %%r /v "DeadGWDetectDefault" /t Reg_DWORD /d "1" /f
	reg add %%r /v "PerformRouterDiscovery" /t Reg_DWORD /d "1"/f
	reg add %%r /v "TCPNoDelay" /t Reg_DWORD /d "1" /f
	reg add %%r /v "TcpAckFrequency" /t Reg_DWORD /d "1" /f
	reg add %%r /v "TcpInitialRTT" /t Reg_DWORD /d "2" /f
	reg add %%r /v "TcpDelAckTicks" /t Reg_DWORD /d "0" /f
	reg add %%r /v "UseZeroBroadcast" /t Reg_DWORD /d "0" /f
	reg add %%r /v "InterfaceMetric" /t Reg_DWORD /d "55" /f
)
reg add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
for /f %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Profiles" /s /f "Category" ^| find /i "Profiles\" ') do (
    reg add "%%a" /v "Category" /t REG_DWORD /d "1" /f
)
for /f %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Profiles" /s /f "CategoryType" ^| find /i "Profiles\" ') do (
    reg add "%%a" /v "CategoryType" /t REG_DWORD /d "0" /f
)
reg add "HKLM\System\CurrentControlSet\services\Tcpip6\Parameters" /v "EnableICSIPv6" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d "255" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "TimerResolution" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "30" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveTime" /t REG_DWORD /d "1090547165" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "QualifyingDestinationThreshold" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpCreateAndConnectTcbRateLimitDepth" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DelayedAckFrequency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DelayedAckTicks" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "CongestionAlgorithm" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MultihopSets" /t REG_DWORD /d "1090519040" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableDCA" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DeadGWDetectDefault" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "65535" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "65535" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxFreeTcbs" /t REG_DWORD /d "65536" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" /v "NameSrvQueryTimeout" /t REG_DWORD /d "3000" /f
reg add "HKLM\System\CurrentControlSet\Services\NetBT\Parameters" /v "EnableLMHOSTS" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Services\NetBT\Parameters" /v "NodeType" /t REG_DWORD /d "2" /f
reg add "HKLM\System\CurrentControlSet\Services\NetBT\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Services\NetBT\Parameters" /v "SackOpts" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Services\NetBT\Parameters" /v "TCPCongestionControl" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "UseDelayedAcceptance" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MaxSockAddrLength" /t REG_DWORD /d "16" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MinSockAddrLength" /t REG_DWORD /d "16" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /t REG_SZ /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\QoS" /v "EnableRSVP" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\QoS" /v "EnablePriorityBoost" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "ServiceDllUnloadOnStop" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheTtl" /t REG_DWORD /d "13824" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxNegativeCacheTtl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NetFailureCacheTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeSOACacheTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeCacheTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableBucketSize" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheEntryTtlLimit" /t REG_DWORD /d "86400" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxSOACacheEntryTtlLimit" /t REG_DWORD /d "300" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableSize" /t REG_DWORD /d "384" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaximumUdpPacketSize" /t REG_DWORD /d "1300" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "RegistrationRefreshInterval" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "EnableAutoDoh" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DnsClient" /v "EnableMulticast" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ProcessorAffinityMask" /t REG_DWORD /d "55" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "RssBaseCpu" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "smpAffinitized" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "smpProcessorAffinityMask" /t REG_DWORD /d "55" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "smpProcessorAffinityMask2" /t REG_DWORD /d "55" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPoolUseIdealCpu" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DynamicSendBufferDisable" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "IgnorePushBitOnReceives" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "NonBlockingSendSpecialBuffering" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DisableRawSecurity" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d "4000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d "4000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "EnableDynamicBacklog" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "MinimumDynamicBacklog" /t REG_DWORD /d "20" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "MaximumDynamicBacklog" /t REG_DWORD /d "20000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DynamicBacklogGrowthDelta" /t REG_DWORD /d "10" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "PriorityBoost" /t REG_DWORD /d "8" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "IRPStackSize" /t REG_DWORD /d "50" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "LargeBufferSize" /t REG_DWORD /d "32768" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "MediumBufferSize" /t REG_DWORD /d "12032" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "SmallBufferSize" /t REG_DWORD /d "1024" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "TransmitWorker" /t REG_DWORD /d "32" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "MaxFastTransmit" /t REG_DWORD /d "64" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "MaxFastCopyTransmit" /t REG_DWORD /d "128" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DisableAddressSharing" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "StandardAddressLength" /t REG_DWORD /d "1024" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "transmitIoLength" /t REG_DWORD /d "4294967295" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DoNotHoldNicBuffers" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d "1470" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastCopyReceiveThreshold" /t REG_DWORD /d "1470" /f
for /f %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\services\NetBT\Parameters\Interfaces" /s /f "NetbiosOptions"^| findstr "HKEY"') do reg add "%%i" /v NetbiosOptions /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Wpad" /v "WpadOverride" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "DisableParallelAandAAAA" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartNameResolution" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\wcmsvc\wifinetworkmanager\config" /v "AutoConnectAllowedOEM" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\wcmsvc\wifinetworkmanager" /v "WifiSenseCredShared" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\wcmsvc\wifinetworkmanager" /v "WifiSenseOpen" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\WlanSvc\AnqpCache" /v "OsuRegistrationStatus" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\BitLocker" /v "PreventDeviceEncryption" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Internet Explorer\Download" /v "CheckExeSignatures" /t REG_SZ /d "no" /f
reg add "HKCU\Software\Policies\Microsoft\Internet Explorer\Download" /v "RunInvalidSignatures" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Download" /v "CheckExeSignatures" /t REG_SZ /d "no" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Download" /v "RunInvalidSignatures" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "LowRiskFileTypes" /t REG_SZ /d ".zip;.rar;.nfo;.txt;.exe;.bat;.com;.cmd;.reg;.msi;.htm;.html;.gif;.bmp;.jpg;.avi;.mpg;.mpeg;.mov;.mp3;.m3u;.wav;" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "ModRiskFileTypes" /t REG_SZ /d ".bat;.exe;.reg;.vbs;.chm;.msi;.js;.cmd" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "LowRiskFileTypes" /t REG_SZ /d ".zip;.rar;.nfo;.txt;.exe;.bat;.com;.cmd;.reg;.msi;.htm;.html;.gif;.bmp;.jpg;.avi;.mpg;.mpeg;.mov;.mp3;.m3u;.wav;" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "ModRiskFileTypes" /t REG_SZ /d ".bat;.exe;.reg;.vbs;.chm;.msi;.js;.cmd" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyEnable" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /v "SavedLegacySettings" /t REG_BINARY /d "3c000000040000000100000000000000090000003132372e302e302e3100000000010000000000000010d75bde6f11c50101000000c23f806f0000000000000000" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /v "DefaultConnectionSettings" /t REG_BINARY /d "3c0000000f0000000100000000000000090000003132372e302e302e3100000000010000000000000010d75bde6f11c50101000000c23f806f0000000000000000" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "ScanWithAntiVirus" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "HideZoneInfoOnProperties" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "DefaultFileTypeRisk" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "ScanWithAntiVirus" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "HideZoneInfoOnProperties" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "DefaultFileTypeRisk" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "LowRiskFileTypes" /t REG_SZ /d ".zip;.rar;.nfo;.txt;.exe;.bat;.com;.cmd;.reg;.msi;.htm;.html;.gif;.bmp;.jpg;.avi;.mpg;.mpeg;.mov;.mp3;.m3u;.msu;.wav;" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost\Download" /v "CheckExeSignatures" /t REG_SZ /d "no" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0" /f
powershell -nop -ep bypass -c "ForEach($v in (Get-Command -Name \"Set-ProcessMitigation\").Parameters[\"Disable\"].Attributes.ValidValues){Set-ProcessMitigation -System -Disable $v.ToString() -ErrorAction SilentlyContinue}"
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "222202202222222220020000002000200000000000000000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions" /t REG_BINARY /d "000000000000000000000000000000000000000000000000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\Wdigest" /v "UseLogonCredential" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\MitigationOptions" /v "MitigationOptions_FontBocking" /t REG_QWORD /d "1000000000000" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoDataExecutionPrevention" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableHHDEP" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DEPOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WCN\UI" /v "DisableWcnUi" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WCN\Registrars" /v "DisableFlashConfigRegistrar" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WCN\Registrars" /v "DisableInBand802DOT11Registrar" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WCN\Registrars" /v "DisableUPnPRegistrar" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WCN\Registrars" /v "DisableWPDRegistrar" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WCN\Registrars" /v "EnableRegistrars" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "ContentEvaluation" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /t REG_SZ /d "Anywhere" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\FVE" /v "DisableExternalDMAUnderLock" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows\DeviceGuard" /v "RequirePlatformSecurityFeatures" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows\DeviceGuard" /v "HypervisorEnforcedCodeIntegrity" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows\DeviceGuard" /v "LsaCfgFlags" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows\DeviceGuard" /v "ConfigureSystemGuardLaunch" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "RequireMicrosoftSignedBootChain" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "WasEnabledBy" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios" /v "HypervisorEnforcedCodeIntegrity" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\SystemGuard" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Config" /v "VulnerableDriverBlocklistEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DisableTsx" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\KernelShadowStacks" /v "Enabled" /t REG_DWORD /d "0" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\KernelShadowStacks" /v "WasEnabledBy" /f
bcdedit /set disabledynamictick yes
bcdedit /set hypervisorlaunchtype off
bcdedit /set vsmlaunchtype off
bcdedit /set vm No
bcdedit /set x2apicpolicy Enable
bcdedit /set configaccesspolicy Default
bcdedit /set usephysicaldestination No
bcdedit /set usefirmwarepcisettings No
bcdedit /set disableelamdrivers Yes
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set isolatedcontext No
bcdedit /timeout 0
bcdedit /deletevalue flightsigning
powershell -nop -ep bypass -c "Disable-MMAgent -MemoryCompression -PageCombining -ApplicationPreLaunch"
fsutil behavior set disable8dot3 1
fsutil behavior set disablelastaccess 1
fsutil behavior set disabledeletenotify 0
fsutil behavior set disabledeletenotify refs 0
fsutil behavior set mftzone 2
fsutil behavior set encryptpagingfile 0
fsutil behavior set memoryusage 2
fsutil behavior set disablecompression 1
fsutil behavior set disableencryption 1
Auditpol /set /category:* /Success:disable /failure:disable
powercfg -import "C:\TEMP\AmitDisableIdle.pow"
powercfg /hibernate off
powercfg -change -hibernate-timeout-dc 0
powercfg -change -monitor-timeout-ac 30
powercfg -change -standby-timeout-dc 0
for /f %%K in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings" /s /v "Attributes"^|findstr HKEY_') do reg add %%K /v "Attributes" /t REG_DWORD /d "0" /f
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NET CLR Data\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NET CLR Networking\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NET CLR Networking 4.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NET Data Provider for Oracle\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NET Data Provider for SqlServer\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NET Memory Cache 4.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\.NETFramework\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ESENT\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LSM\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC Bridge 3.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC Bridge 4.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
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
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WmiApRpl\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Windows Workflow Foundation 3.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Windows Workflow Foundation 4.0.0.0\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearchIdxPi\Performance" /v "Disable Performance Counters" /t REG_DWORD /d "1" /f
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'Microsoft Wi-Fi Direct Virtual Adapter' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'Microsoft Kernel Debug Network Adapter' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'AMD SMBus' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'Microsoft System Management BIOS Driver' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'UMBus Root Bus Enumerator' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'Microsoft Device Association Root Enumerator' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'Microsoft 虚拟驱动器枚举器' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName '高精度事件计时器' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'NDIS 虚拟网络适配器枚举器' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName '远程桌面设备重定向程序总线' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'SM 总线控制器' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'PCI 设备' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName '未知设备' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'PCI 标准 ISA 桥' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'Microsoft GS 波表合成器' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName '复合总线枚举器' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -FriendlyName 'AMD GPIO 控制器' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
powershell -nop -ep bypass -c "Get-PnpDevice -InstanceId 'PCI\VEN_10DE&DEV_228B&SUBSYS_248210B0&REV_A1\4&2283F625&0&0119' -ErrorAction Ignore | Disable-PnpDevice -Confirm:$false -ErrorAction Ignore"
reg add "HKLM\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction" /v "Enable" /t REG_SZ /d "N" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DisableDeleteNotification" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsAllowExtendedCharacter8dot3Rename" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsBugcheckOnCorrupt" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableCompression" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableEncryption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsEncryptPagingFile" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "RefsDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "UdfsSoftwareDefectManagement" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "Win31FileSystem" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "FileNameCache" /t REG_DWORD /d "1024" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "PathCache" /t REG_DWORD /d "128" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisable8dot3NameCreation" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "ContigFileAllocSize" /t REG_DWORD /d "1536" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "FilterSupportedFeaturesMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisableLastAccessUpdate" /t REG_DWORD /d "80000001" /f
reg add "HKLM\SYSTEM\CurrentControlSet\services\iaStorA\Parameters\Device" /v "Controller0Phy0HIPM" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\services\iaStorA\Parameters\Device" /v "Controller0Phy0DIPM" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\services\iaStorA\Parameters\Device" /v "Controller0Phy1HIPM" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\services\iaStorA\Parameters\Device" /v "Controller0Phy1DIPM" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaStorv" /v "EnableAPM" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaStorv\Parameters" /v "EnableAPM" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\storahci\Parameters" /v "EnableAPM" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdsbs\Settings\CAM" /v "EnableHDDParking" /t REG_DWORD /d "0" /f
for /F "eol=E" %%a in ('reg query "HKLM\System\CurrentControlSet\Services" /S /F "IoLatencyCap"^| FINDSTR /V "IoLatencyCap"') DO (
	reg add "%%a" /v IoLatencyCap /t REG_DWORD /d "0" /f
	for /F "tokens=*" %%z IN ("%%a") DO (
		SET STR=%%z
		SET STR=!STR:HKLM\System\CurrentControlSet\services\=!
		SET STR=!STR:\Parameters=!
	)
)
for /F "tokens=*" %%a in ('reg query "HKLM\System\CurrentControlSet\Enum" /S /F "StorPort"^| FINDSTR /E "StorPort"') DO (
	reg add "%%a" /v EnableIdlePowerManagement /t REG_DWORD /d "0" /f
	for /F "tokens=*" %%z IN ("%%a") DO (
		SET STR=%%z
		SET STR=!STR:HKLM\System\CurrentControlSet\Enum\=!
		SET STR=!STR:\Device Parameters\StorPort=!
	)
)
for /F "eol=E" %%a in ('reg query "HKLM\System\CurrentControlSet\Services" /S /F "EnableHIPM"^| FINDSTR /V "EnableHIPM"') DO (
	reg add "%%a" /v EnableHIPM /t REG_DWORD /d "0" /f
	reg add "%%a" /v EnableDIPM /t REG_DWORD /d "0" /f
	for /F "tokens=*" %%z IN ("%%a") DO (
		SET STR=%%z
		SET STR=!STR:HKLM\System\CurrentControlSet\Services\=!
	)
)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DelayedDesktopSwitchTimeout" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Affinity" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "BackgroundPriority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Background Only" /t REG_SZ /d "True" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "GPU Priority" /t REG_DWORD /d "31" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Priority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Latency Sensitive" /t REG_SZ /d "True" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Affinity" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "BackgroundPriority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Background Only" /t REG_SZ /d "True" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "GPU Priority" /t REG_DWORD /d "31" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Priority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Latency Sensitive" /t REG_SZ /d "True" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Affinity" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Background Only" /t REG_SZ /d "True" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "BackgroundPriority" /t REG_DWORD /d "18" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Clock Rate" /t REG_DWORD /d "10000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "GPU Priority" /t REG_DWORD /d "12" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Priority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Latency Sensitive" /t REG_SZ /d "True" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "12" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "12" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v value /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_SZ /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "GamePanelStartupTipIndex" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v ActivationType /t REG_DWORD /d "0" /f
reg delete "HKCU\System\GameConfigStore\Children" /f
reg delete "HKCU\System\GameConfigStore\Parents" /f
reg add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "DisableVidMemVBs" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "SoftwareOnly" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Direct3D\ReferenceDevice" /v "AllowAsync" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "EmulationOnly" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Avalon.Graphics" /v "DisableHWAcceleration" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\NvTray" /v "StartOnLogin" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NVTweak" /v "Gestalt" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d "5" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "ForceFlipTrueImmediateMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDdiDelay" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDodPresentDelay" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDodVSyncDelay" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLimitCount" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLimitTime" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "UseGpuTimer" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PowerSavingTweaks" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableRuntimePowerManagement" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PrimaryPushBufferSize" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "F1TransitionLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "D3PCLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PciLatencyTimerControl" /t REG_DWORD /d "20" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "LOWLATENCY" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "AdaptiveVsyncEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "AllowDeepCStates" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "BuffersInFlight" /t REG_DWORD /d "4096" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "ComputePreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "ComputePreemptionLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableAsyncPstates" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableGDIAcceleration" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableKmRender" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableKmRenderBoost" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableOverclockedPstates" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisablePFonDP" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisablePreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableAggressivePStateBoost" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableAggressivePStateOnly" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableDirectFlip" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableIndependentFlip" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnablePerformanceMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnablePreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "FlTransitionLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmClkPowerOffDramPllWhenUnused" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDeepLlEntryLatencyUsec" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmFbsrPagedDMA" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableOverlays" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableWDDM23Synchronization" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "ForceDirectFlip" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "UnsupportedMonitorModesAllowed" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "UseXPModel" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\DirectX\GraphicsSettings" /v "SwapEffectUpgradeCache" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NGXCore" /v "ShowDlssIndicator" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemoryNoContext" /t REG_DWORD /d "1" /f
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
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "UseGpuTimer" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "PowerSavingTweaks" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableRuntimePowerManagement" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "PrimaryPushBufferSize" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "F1TransitionLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "FlTransitionLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "D3PCLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RMDeepLlEntryLatencyUsec" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "PciLatencyTimerControl" /t REG_DWORD /d 20 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "LOWLATENCY" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d 1  /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "F1TransitionLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LOWLATENCY" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PciLatencyTimerControl" /t REG_BINARY /d "20" /f
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
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NoFastLinkTrainingForeDP" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePFonDP" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AdaptiveVsyncEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowDeepCStates" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "BuffersInFlight" /t REG_DWORD /d 4096 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemptionLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAcpPowerGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAllClockGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAsyncPstates" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCpPowerGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableGDIAcceleration" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableGDSPowerGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableGfxCGPowerGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableGfxClockGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableGFXPipelinePowerGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableGmcPowerGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableHdpClockPowerGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableHdpMGClockGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableKmRender" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableKmRenderBoost" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableOverclockedPstates" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemption" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSamuClockGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSysClockGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVceClockGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableXdmaPowerGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableXdmaSclkGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAggressivePStateBoost" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAggressivePStateOnly" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableDirectFlip" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableIndependentFlip" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnablePerformanceMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnablePreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableRuntimePowerManagement" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVCNPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "FlTransitionLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableComputePreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableGfxMidCmdPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnablePreemptionLogging" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableSDMAPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_PreemptionLevelLimit" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "2710" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerSavingTweaks" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PrimaryPushBufferSize" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmClkPowerOffDramPllWhenUnused" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDeepLlEntryLatencyUsec" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmFbsrPagedDMA" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "UseGpuTimer" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableOverlay" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSystemMemoryTiling" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableTiledDisplay" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ENABLE_OCA_LOGGING" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PCIEPowerControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PCIEPowerControl_8086191f50001458" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMClkSlowDown" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDisableGpuASPMFlags" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableHdcp22" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMEnableASPMAtLoad" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMEnableASPMDT" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmMIONoPowerOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmPerfRatedTdpLimit" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMSkipHdcp22Init" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmWotHdcpEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "F1TransitionLatency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCoreSlowdown" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMClkSlowdown" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableNVClkSlowdown" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableHwFaultBuffer" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableGDIAcceleration" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfLevelSrc" /t REG_DWORD /d "8738" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerLevel" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerLevelAC" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "SetDefaultFullRGBRangeOnHDMI" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableGR535" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\ExtendedComposition" /v "Compositor" /t REG_SZ /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\ExtendedComposition" /v "enableColorSeparation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\ExtendedComposition" /v "ExclusiveModeFramerateAveragingPeriodMs" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\ExtendedComposition" /v "ExclusiveModeFramerateThresholdPercent" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\ExtendedComposition" /v "ForwardOnlyOnly" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\ExtendedComposition" /v "RemoveSRMeshInShell" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\ExtendedComposition" /v "SydneyDownsampleFilterKernelSize" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v "DWMWA_TRANSITIONS_FORCEDISABLED" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v "DisallowAnimations" /t REG_DWORD" /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v "AnimationAttributionEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v "AnimationAttributionHashingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v "DisableAccentGradient" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v "DisallowFlip3d" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v "Composition" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "DwmInputUsesIoCompletionPort" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "EnableDwmInputProcessing" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v DisplayPowerSaving /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration\XMI34440_28_07E3_95^D728F9563D766089E28024DE82EB8156\00\00" /v "Scaling" /t REG_DWORD /d "2" /f
for /f %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /s /f Scaling') do set "str=%%i" & if "!str!" neq "!str:Configuration\=!" (
	reg add "%%i" /v Scaling /t REG_DWORD /d "1" /f
)
:: reg add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "DirectXUserGlobalSettings" /t REG_SZ /d "AutoHDREnable=0;VRROptimizeEnable=0;SwapEffectUpgradeEnable=0;" /f
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "SfTracingState" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\FTH" /v "Enabled" /t REG_DWORD /d "0" /f
reg delete "HKLM\SOFTWARE\Microsoft\FTH\State" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "HeapDeCommitFreeBlockThreshold" /t REG_DWORD /d "40000" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingCombining" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d ffffffff /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "CacheUnmapBehindLengthInMB" /t REG_DWORD /d "100" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "ModifiedWriteMaximum" /t REG_DWORD /d "20" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemPages" /t REG_DWORD /d ffffffff /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolQuota" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolSize" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolQuota" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolSize" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "SecondLevelDataCache" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "PhysicalAddressExtension" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "SimulateCommitSavings" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "TrackLockedPages" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "TrackPtes" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "AlpcWakePolicy" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\USB\AutomaticSurpriseRemovals" /v "AttemptRecoveryFromUsbPowerDrain" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Storage" /v "StorageD3InModernStandby" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters\Device" /v "IdlePowerMode" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PerfCalculateActualUtilization" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DeepIoCoalescingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "64" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MfBufferingThreshold" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "AwayModeEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t REG_DWORD /d "100" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CustomizeDuringSetup" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HiberFileSizePercent" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TimerRebaseThresholdOnDripsExit" /t REG_DWORD /d "30" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PerfBoostAtGuaranteed" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoreParkingDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" /v "fDisablePowerManagement" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\Default\VetoPolicy" /v "EA:EnergySaverEngaged" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\28\VetoPolicy" /v "EA:PowerStateDischarging" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pci\Parameters" /v "ASPMOptOut" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Profile\Events\{54533251-82be-4824-96c1-47b60b740d00}\{0DA965DC-8FCF-4c0b-8EFE-8DD5E7BC959A}\{7E01ADEF-81E6-4e1b-8075-56F373584694}" /v "TimeLimitInSeconds" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "CPPCEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Capabilities" /t REG_DWORD /d "0x0007e066" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Cstates" /t REG_DWORD /d "0" /f
for /f "delims=" %%a in ('powershell -noprofile -c "$deviceId = '*' + (Get-PnpDevice -PresentOnly | Where-Object {($_.InstanceId -like 'PCI*') -and ($_.Class -like 'Display')}).PNPDeviceID.Replace('\', '\\') + '*'; (gwmi -query 'select * from Win32_PnPAllocatedResource' | Where-Object {$_.__RELPATH -like '*Win32_IRQResource*'} | Where-Object {$_.Dependent -like $deviceId } | Select-Object -ExpandProperty Antecedent).Split('=')[1]"') do set "GPU_IRQ=%%a"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ%GPU_IRQ%Priority" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ0Priority" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "ConvertibleSlateMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "36" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBXHCI\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "AlwaysOn" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "IdleDetectionCycles" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "LazyModeTimeout" /t REG_DWORD /d "10000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "16777216" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcWatchdogProfileOffset" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaximumSharedReadyQueueSize" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableAutoBoost" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcTimeout" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IdealDpcRate" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaximumDpcQueueDepth" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MinimumDpcRate" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ThreadDpcEnable" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "AdjustDpcThreshold" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcWatchdogPeriod" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SplitLargeCaches" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "InterruptSteeringDisabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalDelayedWorkerThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "PassiveIntRealTimeWorkerPriority" /t REG_DWORD /d "18" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mlx4_bus\Parameters" /v "ThreadDpcEnable" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "CrashDumpEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "DisplayParameters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "AutoReboot" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "LogEvent" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Accounts" /v "AllowMicrosoftAccountSignInAssistant" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "RunStartupScriptSync" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "SynchronousUserGroupPolicy" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "SynchronousMachineGroupPolicy" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableCursorSuppression" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "AttractionRectInsetInDIPS" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "DistanceThresholdInDIPS" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "MagnetismDelayInMilliseconds" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "MagnetismUpdateIntervalInMilliseconds" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "VelocityInDIPSPerSecond" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "35" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "35" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseSynchIn100ns" /t REG_DWORD /d "10000000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseResolution" /t REG_DWORD /d "5" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "SampleRate" /t REG_DWORD /d "400" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "27" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "KeyboardDelay" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d "180" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d "2" /f
reg add "HKCU\Control Panel\Accessibility\On" /v "On" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility" /v "DynamicScrollbars" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility" /v "Warning Sounds" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility" /v "Sound on Activation" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "130" /f
reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "MaximumSpeed" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "TimeToMaximumSpeed" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
reg add "HKCU\Control Panel\Accessibility\HighContrast" /v Flags /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\SoundSentry" /v Flags /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\TimeOut" /v On /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\ShowSounds" /v Flags /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\ShowSounds" /v On /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\SoundSentry" /v Flags /t REG_SZ /d "2" /f
reg add "HKCU\Control Panel\Accessibility\SoundSentry" /v FSTextEffect /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\SoundSentry" /v WindowsEffect /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\SoundSentry" /v TextEffect /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Blind Access" /v On /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\SlateLaunch" /v LaunchAT /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Preference" /v "On" /t REG_SZ /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Wisp\Touch" /v "TouchGate" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorSensitivity" /t REG_DWORD /d "2710" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorUpdateInterval" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "IRRemoteNavigationDelta" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Buttons" /v "HardwareButtonsAsVKeys" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "DesktopHeapLogging" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" /v "TreatAbsolutePointerAsAbsolute" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" /v "TreatAbsoluteAsRelative" /t REG_DWORD /d "0" /f
net accounts /lockoutthreshold:0
net accounts /MINPWAGE:0
net accounts /MAXPWAGE:UNLIMITED
reg add "HKCU\Control Panel\Sound" /v "Beep" /t REG_SZ /d "no" /f
reg add "HKCU\Control Panel\Sound" /v "ExtendedSounds" /t REG_SZ /d "no" /f
reg add "HKCU\Control Panel\Desktop" /v "MouseWheelRouting" /t REG_DWORD /d "2" /f
reg add "HKCU\Control Panel\Mouse" /v "Beep" /t REG_SZ /d "No" /f
reg add "HKCU\Control Panel\Mouse" /v "ExtendedSounds" /t REG_SZ /d "No" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "100" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseTrails" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "200" /f
reg add "HKCU\Control Panel\Mouse" /v "SwapMouseButtons" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "RawInput" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\Mouse" /v "SnapToDefaultButton" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseDelay" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "ActiveWindowTracking" /t REG_DWORD /d "0" /f
reg delete "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /f
reg delete "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /f
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
reg add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\International\Geo" /v "Nation" /t REG_SZ /d "244" /f
reg add "HKCU\Control Panel\International\Geo" /v "Name" /t REG_SZ /d "US" /f
reg add "HKCU\Control Panel\Keyboard" /v "PrintScreenKeyForSnippingEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Keyboard Layout\Preload" /v "1" /t REG_SZ /d "00000409" /f
reg add "HKCU\Keyboard Layout\Preload" /v "2" /t REG_SZ /d "00000804" /f
reg delete "HKCU\Control Panel\Input Method\Hot Keys\00000104" /f
reg add "HKCU\Keyboard Layout\Toggle" /v "Language Hotkey" /t REG_SZ /d "3" /f
reg add "HKCU\Keyboard Layout\Toggle" /v "Layout Hotkey" /t REG_SZ /d "3" /f
reg add "HKCU\Keyboard Layout\Toggle" /v "Hotkey" /t REG_SZ /d "3" /f
reg add "HKCU\Software\Microsoft\InputMethod\CandidateWindow\CHS\1" /v "EnableFixedCandidateCountMode" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputMethod\CandidateWindow\CHS\1" /v "MaxCandidates" /t REG_DWORD /d "9" /f
reg add "HKCU\Software\Microsoft\InputMethod\CandidateWindow\CHS\1" /v "CustomizedPagingKey" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\CandidateWindow\CHS\1" /v "ShowSymbolViewActionButton" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableVMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableChineseEnglishPunctuationSwitch" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableSimplifiedTraditionalOutputSwitch" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Enable Auto Correction" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableSmartFuzzyPinyin" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableSuperAbbreviatedPinyin" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnablePeopleName" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableUMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Enable EUDP" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Enable self-learning" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableSmartSelfLearning" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableLiveSticker" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "English Switch Key" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Enable Cloud Candidate" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Enable Dynamic Candidate Ranking" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableExtraDomainType" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableHap" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "HalfWidthInputModeByDefault" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableOpenEmoticonSymbolView" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "HideIPTIPTarget" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "HideIPTIPTouchTarget" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "IncludeRareChar" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "DisableEdgeTarget" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "DisableACIntegration" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableAutocorrection" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableSpellchecking" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableTextPrediction" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnablePredictionSpaceInsertion" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableDoubleTapSpace" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableInkingWithTouch" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableShiftLock" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableAutoShiftEngage" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableKeyAudioFeedback" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableDesktopModeAutoInvoke" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EdgeTargetDockedState" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "TipbandDesiredVisibility" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsInkWorkspace" /v "AllowWindowsInkWorkspace" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "HideIPTIPTarget" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "HideIPTIPTouchTarget" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "IncludeRareChar" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "DisableEdgeTarget" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "DisableACIntegration" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "EnableAutocorrection" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "EnableSpellchecking" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "EnableTextPrediction" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "EnablePredictionSpaceInsertion" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "EnableDoubleTapSpace" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "EnableInkingWithTouch" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "EnableShiftLock" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "EnableAutoShiftEngage" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "EnableKeyAudioFeedback" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "EnableDesktopModeAutoInvoke" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "EdgeTargetDockedState" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "HideIPTIPTarget" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "HideIPTIPTouchTarget" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "IncludeRareChar" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "DisableEdgeTarget" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "DisableACIntegration" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableAutocorrection" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableSpellchecking" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableTextPrediction" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnablePredictionSpaceInsertion" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableDoubleTapSpace" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableInkingWithTouch" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableShiftLock" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableAutoShiftEngage" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableKeyAudioFeedback" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableDesktopModeAutoInvoke" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\TabletTip\1.7" /v "EdgeTargetDockedState" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoAccent" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoApostrophe" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoCap" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoCapAllTokens" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoCorrectFirstWord" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoCorrection" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoCorrectVisualDelay" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoswitchAfterEmoji" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "ContactPenalty" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "DictationEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "DisablePersonalization" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EmojiSuggestion" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EmojiTranslation" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EnableHwkbAutocorrection" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EnableHwkbMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EnableHwkbTextPrediction" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HarvestContacts" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HasTrailer" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HTREnabled" /t REG_DWORD /d "0" /f
reg delete "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HwkbAutocorrectionAlwaysOffList" /f
reg delete "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HwkbInlinePredictionAlwaysOffList" /f
reg delete "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HwkbInlinePredictionAlwaysOnList" /f
reg delete "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HwkbLayoutMappingTemplate" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "IsVoiceTypingKeyEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "KeyboardMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "LMDataLoggerEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "MaxCorrections" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "MultilingualEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "NotActiveLanguagePenalty" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "NotPredictedLanguagePenalty" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "PeriodShortcut" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "Prediction" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "Private" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "ProofDataSources" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "SearchDataSources" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "Spellcheck" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "TouchKeyboard_EnableKeyAudioFeedback" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EnableExpressiveInputEmojiMultipleSelection" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EnableHwkbAutocorrection2" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "AutoAccent" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "AutoApostrophe" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "AutoCap" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "AutoCapAllTokens" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "AutoCorrectFirstWord" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "AutoCorrection" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "AutoCorrectVisualDelay" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "AutoswitchAfterEmoji" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "ContactPenalty" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "DictationEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "DisablePersonalization" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "EmojiSuggestion" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "EmojiTranslation" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "EnableHwkbAutocorrection" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "EnableHwkbMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "EnableHwkbTextPrediction" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "HarvestContacts" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "HasTrailer" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "HTREnabled" /t REG_DWORD /d "0" /f
reg delete "HKCU\Software\Microsoft\Input\Settings" /v "HwkbAutocorrectionAlwaysOffList" /f
reg delete "HKCU\Software\Microsoft\Input\Settings" /v "HwkbInlinePredictionAlwaysOffList" /f
reg delete "HKCU\Software\Microsoft\Input\Settings" /v "HwkbInlinePredictionAlwaysOnList" /f
reg delete "HKCU\Software\Microsoft\Input\Settings" /v "HwkbLayoutMappingTemplate" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "IsVoiceTypingKeyEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "KeyboardMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "LMDataLoggerEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "MaxCorrections" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "MultilingualEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "NotActiveLanguagePenalty" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "NotPredictedLanguagePenalty" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "PeriodShortcut" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "Prediction" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "Private" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "ProofDataSources" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "SearchDataSources" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "Spellcheck" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "TouchKeyboard_EnableKeyAudioFeedback" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "EnableExpressiveInputEmojiMultipleSelection" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "EnableHwkbAutocorrection2" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\International\User Profile" /v "ShowAutoCorrection" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\International\User Profile" /v "ShowTextPrediction" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\International\User Profile" /v "ShowCasing" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\International\User Profile" /v "ShowShiftLock" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\International\User Profile" /v "DiagTrackAuthorization" /t REG_DWORD /d "0" /f
reg delete "HKCU\Control Panel\International\User Profile" /v "UploadPermissionReceived" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Font Drivers" /v "Adobe Type Manager" /f
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows" /v "DisableATMFD" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "Favorites" /t REG_BINARY /d "FF" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "苹方-简 中粗体 (TrueType)" /t REG_SZ /d "PingFangSC-Mod-18.d1-Semibold.otf" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Fonts" /v "苹方-简 中粗体 (TrueType)" /t REG_SZ /d "PingFangSC-Mod-18.d1-Semibold.otf" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_SearchPrograms" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_SearchFiles" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSmallIcons" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarGlomLevel" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowPreviewHandlers" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "FolderContentsInfoTip" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideDrivesWithNoMedia" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowInfoTip" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTypeOverlay" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTypeOverlay" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSizeMove" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAutoHideInTabletMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_SearchFiles" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ServerAdminUI" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCompColor" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DontPrettyPath" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "MapNetDrvBtn" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "WebView" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_ShowRun" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ExtendedUIHoverTime" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarDa" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_NotifyNewApps" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShellViewReentered" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LastActiveClick" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarBadges" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAl" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "NavPaneShowAllFolders" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSi" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "JointResize" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SnapAssist" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "PersistBrowsers" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisallowShaking" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "NavPaneShowAllCloudStates" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SharingWizardOn" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSd" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarFlashing" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AlwaysShowMenus" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "UseCompactMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "NavPaneShowAllFolders" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableSnapBar" /t REG_DWORD /d "0" /
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "NoNetCrawling" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AutoSearch" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_Layout" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_IrisRecommendations" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Start\HideUserTile" /v "value" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableWindowColorization" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorPrevalence" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorizationAfterglow" /t REG_DWORD /d "3293334088" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorizationColor" /t REG_DWORD /d "3293334088" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AccentColor" /t REG_DWORD /d "4282927692" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "AccentColorMenu" /t REG_DWORD /d "4282927692" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "AccentPalette" /t REG_BINARY /d "DFDEDC00A6A5A100686562004C4A4800413F3D0027252400100D0D00107C1000" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "StartColorMenu" /t REG_DWORD /d "4282203969" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "Blur" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "CompositionPolicy" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "Composition" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "AnimationAttributionEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "AnimationAttributionHashingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "OneCoreNoBootDWM" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "ForceEffectMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "DisallowComposition" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "EnableShadow" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "DisableHologramCompositor" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "DisableProjectedShadows" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "EnableDesktopOverlays" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "ColorPrevalence" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnabledBlurBehind" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes" /v "Drop Shadow" /t REG_SZ /d "FALSE" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreen" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Cursors" /v "AppStarting" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Arrow" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "ContactVisualization" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Cursors" /v "CursorDeadzoneJumpingSetting" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Cursors" /v "Crosshair" /t REG_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "GestureVisualization" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Cursors" /v "Hand" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Help" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "IBeam" /t REG_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "No" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "NWPen" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Scheme Source" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeAll" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeNESW" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeNS" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeNWSE" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeWE" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "UpArrow" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Wait" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /ve /t REG_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Pin" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Person" /t REG_EXPAND_SZ /d "" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableAcrylicBackgroundOnLogon" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableLogonBackgroundImage" /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MaxAnimate" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "PaddedBorderWidth" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "ScrollWidth" /t REG_SZ /d "-300" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarContentUpdateMode" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarOpenOnHover" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d "2" /f
reg add "HKCU\Control Panel\Desktop" /v "FontSmoothingType" /t REG_DWORD /d "2" /f
reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "0000000010000000" /f
reg add "HKCU\Control Panel\Desktop" /v "RestorePreviousStateRecalcBehavior" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "Win8DpiScaling" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "DpiScalingVer" /t REG_DWORD /d "00001000" /f
reg add "HKCU\Control Panel\Desktop" /v "LogPixels" /t REG_DWORD /d "00000096" /f
reg add "HKCU\Control Panel\Desktop" /v "SmoothScroll" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "JPEGImportQuality" /t REG_DWORD /d "100" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFxSetting" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "EnableAutoTray" /t REG_DWORD /d "1" /
reg add "HKCU\Software\Microsoft\Multimedia\Audio" /v "UserDuckingPreference" /t REG_DWORD /d "3" /
powershell -nop -ep bypass -c "New-ItemProperty -Path 'HKCU:\AppEvents\Schemes' -Name '(Default)' -Value '.None' -Force"
powershell -nop -ep bypass -c "Get-ChildItem -Path 'HKCU:\AppEvents\Schemes\Apps' | Get-ChildItem | Get-ChildItem | Where-Object { $_.PSChildName -eq '.Current' } | Set-ItemProperty -Name '(Default)' -Value ''"
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\EditionOverrides" /v "UserSetting_DisableStartupSound" /t REG_DWORD /d "1" /f
reg add "HKLM\System\ControlSet001\Services\W32Time\Parameters" /v "Type" /t REG_SZ /d "NoSync" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\NotifyIconGeneratedAumid_11995792071604506045" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Microsoft.Windows.InputSwitchToastHandle" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.DefaultAudioEndpoint" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.StartupApp" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Microsoft.WindowsStore_8wekyb3d8bbwe!App" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoOnlinePrintsWizard" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoPublishingWizard" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoWebServices" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "HistoryViewEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "DeviceHistoryEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d "3" /f
reg add "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HidePeopleBar" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /d "1" /t REG_DWORD /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ClearRecentDocsOnExit" /d "1" /t REG_DWORD /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows Media Foundation\Platform" /v "EnableFrameServerMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\CoProcManager" /v "ShowContextMenu" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvCplApi\Policies" /v "ContextUIPolicy" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "AutoApproveOSDumps" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontShowUI" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultOverrideBehavior" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{F9C77450-3A41-477E-9310-9ACD617BD9E3},{728EE579-943C-4519-9EF7-AB56765798ED}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{F9C77450-3A41-477E-9310-9ACD617BD9E3},{728EE579-943C-4519-9EF7-AB56765798ED}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{1A6364EB-776B-4120-ADE1-B63A406A76B5},{5794DAFD-BE60-433f-88A2-1A31939AC01F}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{1A6364EB-776B-4120-ADE1-B63A406A76B5},{5794DAFD-BE60-433f-88A2-1A31939AC01F}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{0E28E245-9368-4853-AD84-6DA3BA35BB75},{7150F9BF-48AD-4da4-A49C-29EF4A8369BA}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{0E28E245-9368-4853-AD84-6DA3BA35BB75},{7150F9BF-48AD-4da4-A49C-29EF4A8369BA}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{A3F3E39B-5D83-4940-B954-28315B82F0A8},{6232C319-91AC-4931-9385-E70C2B099F0E}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{A3F3E39B-5D83-4940-B954-28315B82F0A8},{6232C319-91AC-4931-9385-E70C2B099F0E}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{74EE6C03-5363-4554-B161-627540339CAB},{E47248BA-94CC-49c4-BBB5-9EB7F05183D0}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{74EE6C03-5363-4554-B161-627540339CAB},{E47248BA-94CC-49c4-BBB5-9EB7F05183D0}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{17D89FEC-5C44-4972-B12D-241CAEF74509},{3A0DBA37-F8B2-4356-83DE-3E90BD5C261F}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{17D89FEC-5C44-4972-B12D-241CAEF74509},{3A0DBA37-F8B2-4356-83DE-3E90BD5C261F}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{6A4C88C6-C502-4f74-8F60-2CB23EDC24E2},{E62688F0-25FD-4c90-BFF5-F508B9D2E31F}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{6A4C88C6-C502-4f74-8F60-2CB23EDC24E2},{E62688F0-25FD-4c90-BFF5-F508B9D2E31F}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{BC75B1ED-5833-4858-9BB8-CBF0B166DF9D},{E5094040-C46C-4115-B030-04FB2E545B00}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{BC75B1ED-5833-4858-9BB8-CBF0B166DF9D},{E5094040-C46C-4115-B030-04FB2E545B00}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{B087BE9D-ED37-454f-AF9C-04291E351182},{AADCED64-746C-4633-A97C-D61349046527}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{B087BE9D-ED37-454f-AF9C-04291E351182},{AADCED64-746C-4633-A97C-D61349046527}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{91FBB303-0CD5-4055-BF42-E512A681B325},{C418DD9D-0D14-4efb-8FBF-CFE535C8FAC7}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{91FBB303-0CD5-4055-BF42-E512A681B325},{C418DD9D-0D14-4efb-8FBF-CFE535C8FAC7}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{E4F48E54-F38D-4884-BFB9-D4D2E5729C18}" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\{E4F48E54-F38D-4884-BFB9-D4D2E5729C18}" /v "TraceLevel" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v Value /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v Value /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" /v "AutoConnectAllowedOEM" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" /v "WiFISenseAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v value /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338387Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "SignInMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightFeatures" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsInkWorkspace" /v "AllowSuggestedAppsInWindowsInkWorkspace" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableTailoredExperiencesWithDiagnosticData" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableCloudOptimizedContent" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /t REG_DWORD /d "255" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAutorun" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /v "Autorun" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAutoplayfornonVolume" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DontSetAutoplayCheckbox" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsNetHood" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" /v "Status" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d "0" /f
reg add "HKCR\CLSID\{323CA680-C24D-4099-B94D-446DD2D7249E}\ShellFolder" /v "Attributes" /t REG_DWORD /d "2696937728" /f
reg add "HKCR\WOW6432Node\CLSID\{323CA680-C24D-4099-B94D-446DD2D7249E}\ShellFolder" /v "Attributes" /t REG_DWORD /d "2696937728" /f
reg add "HKCR\CLSID\{B4FB3F98-C1EA-428d-A78A-D1F5659CBA93}\ShellFolder" /v "Attributes" /t REG_DWORD /d "2962489612" /f
reg add "HKCR\WOW6432Node\CLSID\{B4FB3F98-C1EA-428d-A78A-D1F5659CBA93}\ShellFolder" /v Attributes /t REG_DWORD /d "2962489612" /f
reg add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\ShellFolder" /v "Attributes" /t REG_DWORD /d "4035969101" /f
reg add "HKCR\WOW6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\ShellFolder" /v Attributes /t REG_DWORD /d "4035969101" /f
reg add "HKCR\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}\ShellFolder" /v "Attributes" /t REG_DWORD /d "2689597440" /f
reg add "HKCR\WOW6432Node\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}\ShellFolder" /v "Attributes" /t REG_DWORD /d "2689597440" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoNewAppAlert" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoNewAppAlert" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\AuxilliaryPins" /v "MailPin" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AutoCheckSelect" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "NavPaneExpandToCurrentFolder" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ConfirmFileDelete" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ConfirmFileDelete" /t REG_DWORD /d "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /v "FolderType" /t REG_SZ /d "NotSpecified" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Start\HidePeopleBar" /v "value" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "HidePeopleBar" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /v "PeopleBand" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People\ShoulderTap" /v "ShoulderTapAudio" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "MultipleInvokePromptMinimum" /t REG_DWORD /d "5000" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{D6277990-4C6A-11CF-8D87-00AA0060F5BF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{2227A280-3AEA-1069-A2DE-08002B30309D}" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "ShowOrHideMostUsedApps" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoStartMenuMFUprogramsList" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableGraphRecentItems" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "CheckSameSourceAndTargetForFRAndDFS" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "EnableShellShortcutIconRemotePath" /t REG_DWORD /d "1" /f
reg add  "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Chat" /v "ChatIcon" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoWindowMinimizingShortcuts" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "ShowOrHideMostUsedApps" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "link" /t REG_BINARY /d "00000000" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "Reason Setting" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "HoverSelectDesktops" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRemoteRecursiveEvents" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoNetConnectDisconnect" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoPublishingWizard" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoNetConnectDisconnect" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoMSAppLogo5ChannelNotify" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "IconUnderline" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "MachineOobeUpdates" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "NoWaitOnRoamingPayloads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "ActiveSetupDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "ActiveSetupTaskOverride" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AsyncRunOnce" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AsyncUpdatePCSettings" /t REG_DWORD /d "0" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "DisableAppInstallsOnFirstLogon" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "DisableResolveStoreCategories" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "DisableUpgradeCleanup" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shutdown" /v "CleanShutdown" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "GreyMSIAds" /t REG_DWORD /d "0" /f
Del /F /Q "C:\Users\Administrator\AppData\Microsoft\Windows\Recent\*"
Del /F /Q "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations\*"
Del /F /Q "C:\Users\Administrator\AppData\Microsoft\Windows\Recent\CustomDestinations\*"
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{031E4825-7B94-4DC3-B131-E946B44C8DD5}" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{323CA680-C24D-4099-B94D-446DD2D7249E}" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{323CA680-C24D-4099-B94D-446DD2D7249E}" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /f
reg delete "HKCU\Software\Classes\CLSID\{679F85cb-0220-4080-b29b-5540cc05aab6}" /f
reg delete "HKCU\Software\Classes\WOW6432Node\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{679F85CB-0220-4080-B29B-5540CC05AAB6}" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{679f85cb-0220-4080-b29b-5540cc05aab6}" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{679f85cb-0220-4080-b29b-5540cc05aab6}" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\Microsoft.549981C3F5F10_8wekyb3d8bbwe!App" /v "AgentActivationEnabled" /t REG_DWORD /d "0" /f
Reg add "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps" /v "AgentActivationEnabled" /t REG_DWORD /d "0" /f
Reg add "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps" /v "AgentActivationOnLockScreenEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsActivateWithVoice" /t REG_DWORD /d 2 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsActivateWithVoiceAboveLock" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CanCortanaBeEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilityFlags" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaInAmbientMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f
reg delete "HKCU\Software\Policies\Microsoft\PreviousVersions" /v "DisableLocalPage" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /t REG_DWORD /d "1" /f
reg add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "HubMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowRecent" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowCrossDeviceClipboard" /t REG_DWORD /d "0" /f
reg delete "HKCU\Software\Microsoft\Clipboard" /v "CloudClipboardAutomaticUpload" /f
reg delete "HKCU\Software\Microsoft\Clipboard" /v "EnableCloudClipboard" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\StorageHealth" /v "AllowDiskHealthModelUpdates" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableMmx" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /v "DisableAutoplay" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "NoGenTicket" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "AllowWindowsEntitlementReactivation" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t REG_DWORD /d "5" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSyncOnPaidNetwork" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletPC" /v "TurnOffPenFeedback" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PenWorkspace" /v "PenWorkspaceAppSuggestionsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth" /v "AllowAdvertising" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Peernet" /v "Disabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoCloudApplicationNotification" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /v "EnableConfigFlighting" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /v "AllowBuildPreview" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /v "EnableExperimentation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "HideInsiderPage" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\AppV\CEIP" /v "CEIPEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\VSCommon\15.0\SQM" /v "OptIn" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\usbhub\hubg" /v "DisableOnSoftRemove" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsMSACloudSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsAADCloudSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDeviceSearchHistoryEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoHeapTerminationOnCorruption" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "DisableStoreApps" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PushToInstall" /v "DisablePushToInstall" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\Subscriptions" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\SuggestedApps" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl\StorageTelemetry" /v "DeviceDumpEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PCHealth\ErrorReporting" /v "ShowUI" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\PCHealth\ErrorReporting" /v "ShowUI" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HideRecentlyAddedApps" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoActiveHelp" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInstrumentation" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInstrumentation" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\EdgeUI" /v "DisableMFUTracking" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SystemCertificates\AuthRoot" /v "DisableRootAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeContent" /t REG_SZ /d "208.67.222.222" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeContentV6" /t REG_SZ /d "2620:119:35::35" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeHost" /t REG_SZ /d "resolver1.opendns.com" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeHostV6" /t REG_SZ /d "resolver1.opendns.com" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeContent" /t REG_SZ /d "Microsoft Connect Test" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeContentV6" /t REG_SZ /d "Microsoft Connect Test" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeHost" /t REG_SZ /d "www.msftconnecttest.com" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeHostV6" /t REG_SZ /d "ipv6.msftconnecttest.com" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbePath" /t REG_SZ /d "connecttest.txt" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbePathV6" /t REG_SZ /d "connecttest.txt" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "CaptivePortalTimer" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "CaptivePortalTimerBackOffIncrementsInSeconds" /t REG_DWORD /d "5" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "CaptivePortalTimerMaxInSeconds" /t REG_DWORD /d "30" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "MinimumInternetHopCount" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "PassivePollPeriod" /t REG_DWORD /d "30" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "StaleThreshold" /t REG_DWORD /d "30" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "WebTimeout" /t REG_DWORD /d "35" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /v "UseGlobalDNS" /t REG_DWORD /d "1" /f
for /f "usebackq tokens=1*" %%a in (`2^> nul reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume" /s /f "NukeOnDelete" ^| findstr "HKEY"`) do >nul reg add "%%a %%b" /f /v "NukeOnDelete" /t REG_DWORD /d "1"
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v "{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v "{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v "{374DE290-123F-4565-9164-39C4925E467B}" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v "{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v "{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v "{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v "{A0953C92-50DC-43bf-BE83-3742FED03C9C}" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
reg add "HKLM\SOFTWARE\Microsoft\DriverFlighting\Partner" /v "TargetRing" /t REG_SZ /d "Drivers" /f
del /f /q "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo\*"
del /f /q "C:\Users\Administrator\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\*"
del /f /q /s "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"
del /f /q /s "C:\Users\Administrator\Desktop\Microsoft Edge.lnk"
reg delete "HKCR\*\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\Background\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\LibraryFolder\background\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\UserLibraryFolder\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\ModernSharing" /f
reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing" /f
reg delete "HKCR\MSGraphDocument\shellex\ContextMenuHandlers\ModernSharing" /f
reg delete "HKCR\Folder\ShellEx\ContextMenuHandlers\Library Location" /f
reg delete "HKLM\SOFTWARE\Classes\Folder\ShellEx\ContextMenuHandlers\Library Location" /f
reg delete "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg delete "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg delete "HKLM\SOFTWARE\Classes\Drive\shellex\ContextMenuHandlers\EPP" /f
reg delete "HKLM\SOFTWARE\Classes\Directory\background\shellex\ContextMenuHandlers\NvCplDesktopContext" /f
reg delete "HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{2C7339CF-2B09-4501-B3F3-F3508C9228ED}" /v "StubPath" /f
reg delete "HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{6BF52A52-394A-11d3-B153-00C04F79FAA6}" /v "StubPath" /f
reg delete "HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{89820200-ECBD-11cf-8B85-00AA005B4340}" /v "StubPath" /f
reg delete "HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{89820200-ECBD-11cf-8B85-00AA005B4383}" /v "StubPath" /f
reg delete "HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\>{22d6f312-b0f6-11d0-94ab-0080c74c7e95}" /v "StubPath" /f
reg delete "HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{89B4C1CD-B018-4511-B0A1-5476DBF70820}" /v "StubPath" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Active Setup\Installed Components\{89B4C1CD-B018-4511-B0A1-5476DBF70820}" /v "StubPath" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\Wds\rdpwd" /v "StartupPrograms" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "VMApplet" /f
reg delete "HKCR\AppXkndb5xvk0v1ka1efnjajnamxcd3sfae1" /f
rmdir "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\DesktopSpotlight" /s /q
rmdir "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\DesktopStickerEditorWin32Exe" /s /q

:: https://www.seagate.com/au/en/support/software/seachest/
:: "C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" --scan
:: "C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" -d PD0 --deviceInfo
:: "C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" -d PD0 --showEPCSettings
:: "C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" -d PD0 --checkPowerMode
:: idle_a is dipm timer. idle_b is head parking. idle_c slows down the rpm without stopping it (this I feel is quite neat). Makes the 7200rpm drives consume similar to 5400rpm drives. standby_z is spindown.
:: "C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" -d PD0 --powerBalanceFeature disable
:: "C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" -d PD0 --EPCfeature disable
:: "C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" -d PD0 --idle_b disable

net stop ClipSVC
net start ClipSVC
slmgr -ato
rmdir /s /q "C:\ProgramData\Package Cache"
rmdir /s /q "C:\Users\Administrator\Recent"
rmdir /s /q "C:\Windows\Prefetch"
rmdir /s /q "C:\Windows\Temp"
move "C:\TEMP\SetTimerResolution.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\"
move "C:\TEMP\RunRealHidden.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\"
move "C:\TEMP\CleanUp.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\"
start /b /wait C:\TEMP\IDMan.exe /s /q
start /b /wait C:\Tools\NVidiaProfileInspector\nvidiaProfileInspector.exe
start /b /wait C:\TEMP\NVIDIA_Power_Management_v2.6.0.79_Setup_20230609.exe
start /b /wait C:\TEMP\ColorControl\ColorControl.exe
:: start /b /wait C:\Windows\System32\PowerRun.exe cmd.exe /c C:\TEMP\Setup3.cmd
"C:\Windows\System32\MinSudo.exe" --NoLogo --System --Verbose --TrustedInstaller --Privileged cmd /c C:\TEMP\Setup3.cmd
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "1" /t REG_SZ /d "C:\Tools\Startallback.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "2" /t REG_SZ /d "C:\Tools\IDM-pawel97.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "3" /t REG_SZ /d "C:\Tools\WinSxSCleanup.cmd" /f
