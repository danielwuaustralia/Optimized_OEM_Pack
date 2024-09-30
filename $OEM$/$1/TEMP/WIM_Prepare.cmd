@echo on
color 1f

:: Remove Read Only & archive feature on all files
:: C:\Tools\PowerRun.exe cmd /c attrib -a -s -h -r "D:\Games\*.*" /s /d
:: C:\Tools\PowerRun.exe cmd /c attrib -a -s -h -r "D:\SteamLibrary\*.*" /s /d
:: C:\Tools\PowerRun.exe cmd /c attrib -a -s -h -r "E:\$OEM$\*.*" /s /d
:: wmic process where name="csrss.exe" CALL setpriority 256

rem Dism /Get-ImageInfo /imagefile:C:\TEMP\install.wim
rem Dism /Export-Image /SourceImageFile:C:\TEMP\install.wim /SourceIndex:4 /DestinationImageFile:C:\TEMP\install2.wim /CheckIntegrity
rem dism /Image:C:\TEMP\Work /Add-Package /PackagePath:C:\TEMP\kb5043178.msu
rem dism /Image:C:\TEMP\Work /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:C:\TEMP\sxs

dism /mount-wim /wimfile:C:\TEMP\install.wim /index:1 /mountdir:C:\TEMP\Work
dism /Image:C:\TEMP\Work /Set-Edition:ServerDatacenter /ProductKey:D764K-2NDRG-47T6Q-P8T8W-YP6DF /AcceptEula
rem Dism /Image:C:\TEMP\Work /Get-Features
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:SmbDirect
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:Printing-PrintToPDFServices-Features
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:Xps-Foundation-Xps-Viewer
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:Windows-Defender
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:Server-Drivers-Printers
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:WindowsServerBackupSnapin
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:RSAT
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:FileAndStorage-Services
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:Storage-Services
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:WorkFolders-Client
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:SystemDataArchiver
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-BitmapFonts
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-MinConsoleFonts
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-Support
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-TrueType
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:ServerCoreFonts-NonCritical-Fonts-UAPFonts
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:SearchEngine-Client-Package
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /Disable-Feature /featurename:WindowsAdminCenterSetup
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /enable-feature /featurename:ServerMediaFoundation /all
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /enable-feature /featurename:LegacyComponents /all
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /enable-feature /featurename:DirectPlay /all
dism /scratchdir:C:\TEMP\Scratch /image:C:\TEMP\Work /enable-feature /featurename:NetFx4 /all
rem DISM /Image:C:\TEMP\Work /Get-Capabilities
Dism /Image:C:\TEMP\Work /Add-Capability /CapabilityName:WMIC~~~~
Dism /Image:C:\TEMP\Work /Remove-Capability /CapabilityName:App.StepsRecorder~~~~0.0.1.0
Dism /Image:C:\TEMP\Work /Remove-Capability /CapabilityName:AzureArcSetup~~~~
Dism /Image:C:\TEMP\Work /Remove-Capability /CapabilityName:DirectX.Configuration.Database~~~~0.0.1.0
Dism /Image:C:\TEMP\Work /Remove-Capability /CapabilityName:Downlevel.NLS.Sorting.Versions.Server~~~~0.0.1.0
Dism /Image:C:\TEMP\Work /Remove-Capability /CapabilityName:MathRecognizer~~~~0.0.1.0
Dism /Image:C:\TEMP\Work /Remove-Capability /CapabilityName:Microsoft.Windows.PowerShell.ISE~~~~0.0.1.0
Dism /Image:C:\TEMP\Work /Remove-Capability /CapabilityName:OneCoreUAP.OneSync~~~~0.0.1.0
Dism /Image:C:\TEMP\Work /Remove-Capability /CapabilityName:OpenSSH.Client~~~~0.0.1.0
Dism /Image:C:\TEMP\Work /Remove-Capability /CapabilityName:OpenSSH.Server~~~~0.0.1.0
Dism /Image:C:\TEMP\Work /Remove-Capability /CapabilityName:Microsoft.Windows.Sense.Client~~~~
Dism /Image:C:\TEMP\Work /Remove-Capability /CapabilityName:XPS.Viewer~~~~0.0.1.0

dism /unmount-wim /mountdir:C:\TEMP\Work /commit
dism /Export-Image /SourceImageFile:C:\TEMP\install.wim /SourceIndex:1 /DestinationImageFile:C:\TEMP\install2.wim /CheckIntegrity
del /f /q C:\TEMP\install.wim
ren C:\TEMP\install2.wim install.wim
pause
