@echo on
color 1f

:: Remove Read Only & archive feature on all files
:: C:\Tools\PowerRun.exe cmd /c attrib -a -s -h -r "D:\Games\*.*" /s /d
:: C:\Tools\PowerRun.exe cmd /c attrib -a -s -h -r "D:\SteamLibrary\*.*" /s /d
:: C:\Tools\PowerRun.exe cmd /c attrib -a -s -h -r "E:\$OEM$\*.*" /s /d
:: wmic process where name="csrss.exe" CALL setpriority 256

rem Windows Patches
dism /English /mount-wim /wimfile:C:\TEMP\install.wim /index:1 /mountdir:C:\TEMP\scratchdir
dism /English /Image:C:\TEMP\scratchdir /Add-Package /PackagePath:C:\TEMP\KB5044384.msu
dism /English /Image:C:\TEMP\scratchdir /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:C:\TEMP\sxs
dism /English /unmount-wim /mountdir:C:\TEMP\scratchdir /commit
dism /English /Export-Image /SourceImageFile:C:\TEMP\install.wim /SourceIndex:1 /DestinationImageFile:C:\TEMP\install2.wim
del /f /q C:\TEMP\install.wim
ren C:\TEMP\install2.wim install.wim

rem complete
dism /English /mount-wim /wimfile:C:\TEMP\install.wim /index:1 /mountdir:C:\TEMP\scratchdir
dism /English /image:C:\TEMP\scratchdir /Remove-DefaultAppAssociations
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:SmbDirect
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:Printing-PrintToPDFServices-Features
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:Xps-Foundation-Xps-Viewer
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:Windows-Defender
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:Server-Drivers-Printers
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:WindowsServerBackupSnapin
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:RSAT
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:FileAndStorage-Services
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:Storage-Services
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:WorkFolders-Client
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:SystemDataArchiver
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-BitmapFonts
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-MinConsoleFonts
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-Support
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-TrueType
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-UAPFonts
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:SearchEngine-Client-Package
dism /English /image:C:\TEMP\scratchdir /Disable-Feature /featurename:WindowsAdminCenterSetup
dism /English /image:C:\TEMP\scratchdir /enable-feature /featurename:ServerMediaFoundation /all
dism /English /image:C:\TEMP\scratchdir /enable-feature /featurename:LegacyComponents /all
dism /English /image:C:\TEMP\scratchdir /enable-feature /featurename:DirectPlay /all
dism /English /image:C:\TEMP\scratchdir /enable-feature /featurename:NetFx4 /all
dism /English /Image:C:\TEMP\scratchdir /Add-Capability /CapabilityName:WMIC~~~~
dism /English /Image:C:\TEMP\scratchdir /Remove-Capability /CapabilityName:App.StepsRecorder~~~~0.0.1.0
dism /English /Image:C:\TEMP\scratchdir /Remove-Capability /CapabilityName:AzureArcSetup~~~~
dism /English /Image:C:\TEMP\scratchdir /Remove-Capability /CapabilityName:DirectX.Configuration.Database~~~~0.0.1.0
dism /English /Image:C:\TEMP\scratchdir /Remove-Capability /CapabilityName:Downlevel.NLS.Sorting.Versions.Server~~~~0.0.1.0
dism /English /Image:C:\TEMP\scratchdir /Remove-Capability /CapabilityName:MathRecognizer~~~~0.0.1.0
dism /English /Image:C:\TEMP\scratchdir /Remove-Capability /CapabilityName:Microsoft.Windows.PowerShell.ISE~~~~0.0.1.0
dism /English /Image:C:\TEMP\scratchdir /Remove-Capability /CapabilityName:OneCoreUAP.OneSync~~~~0.0.1.0
dism /English /Image:C:\TEMP\scratchdir /Remove-Capability /CapabilityName:OpenSSH.Client~~~~0.0.1.0
dism /English /Image:C:\TEMP\scratchdir /Remove-Capability /CapabilityName:OpenSSH.Server~~~~0.0.1.0
rem dism /English /Image:C:\TEMP\scratchdir /Remove-Capability /CapabilityName:Microsoft.Windows.Sense.Client~~~~
rem dism /English /Image:C:\TEMP\scratchdir /Remove-Capability /CapabilityName:XPS.Viewer~~~~0.0.1.0
dism /English /unmount-wim /mountdir:C:\TEMP\scratchdir /commit
dism /English /Export-Image /SourceImageFile:C:\TEMP\install.wim /SourceIndex:1 /DestinationImageFile:C:\TEMP\install2.wim
del /f /q C:\TEMP\install.wim
ren C:\TEMP\install2.wim install.wim
rem dism /English /Export-Image /SourceImageFile:C:\TEMP\install.wim /SourceIndex:1 /DestinationImageFile:C:\TEMP\install.esd /Compress:recovery
