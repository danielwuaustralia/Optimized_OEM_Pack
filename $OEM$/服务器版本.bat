@cls
@echo on
>nul chcp 65001
setlocal enabledelayedexpansion
setlocal enableextensions
color 0a

:: Dism /Get-ImageInfo /imagefile:C:\TEMP\install.wim
Dism /Export-Image /SourceImageFile:C:\TEMP\install.wim /SourceIndex:4 /DestinationImageFile:C:\TEMP\install2.wim /CheckIntegrity
Dism /Get-ImageInfo /imagefile:C:\TEMP\install2.wim
mkdir C:\TEMP\mount
dism /mount-wim /wimfile:C:\TEMP\install2.wim /index:1 /mountdir:C:\TEMP\mount

:: dism /image:C:\TEMP\mount /get-features
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /enable-feature /featurename:WirelessNetworking /all
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /enable-feature /featurename:ServerMediaFoundation /all
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /enable-feature /featurename:DirectPlay /all
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /enable-feature /featurename:LegacyComponents /all
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:WorkFolders-Client /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:SearchEngine-Client-Package /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:ServerCore-Drivers-General /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:ServerCore-Drivers-General-WOW64 /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:Storage-Services /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:FileAndStorage-Services /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:ServerCoreFonts-NonCritical-Fonts-Support /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:ServerCoreFonts-NonCritical-Fonts-UAPFonts /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:ServerCoreFonts-NonCritical-Fonts-TrueType /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:ServerCoreFonts-NonCritical-Fonts-BitmapFonts /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:ServerCoreFonts-NonCritical-Fonts-MinConsoleFonts /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:SystemDataArchiver /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:RSAT /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:Microsoft-Windows-Printing-PremiumTools /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:WindowsServerBackupSnapin /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:Server-Drivers-Printers /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:Server-Drivers-General /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:Printing-PrintToPDFServices-Features /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:Printing-Client-Gui /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:Printing-Client /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:MicrosoftWindowsPowerShellV2 /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:Tpm-PSH-Cmdlets /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:TlsSessionTicketKey-PSH-Cmdlets /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:KeyDistributionService-PSH-Cmdlets /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:Server-Psh-Cmdlets /Remove
dism /scratchdir:C:\TEMP /image:C:\TEMP\mount /disable-feature /featurename:NetFx4ServerFeatures /Remove

:: Dism /Image:C:\TEMP\mount /Get-Capabilities
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *App.StepsRecorder* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *DirectX.Configuration.Database* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Downlevel.NLS.Sorting.Versions.Server* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Language.Fonts.Hans~~~und-HANS* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Language.Handwriting~~~zh-CN* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Language.OCR~~~zh-CN* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Language.Speech~~~zh-CN* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Language.TextToSpeech~~~zh-CN* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *MathRecognizer* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Microsoft.Windows.Notepad* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Microsoft.Windows.PowerShell.ISE* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Microsoft.Windows.WordPad* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *OpenSSH.Client* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Windows.Client.ProjFS* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Windows.Telnet.Client* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Windows.TFTP.Client* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *Windows.WinOcr* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"
powershell -nop -ep bypass -c "Get-WindowsCapability -Path 'C:\TEMP\mount' | Where-Object Name -like *XPS.Viewer* | Remove-WindowsCapability -Path 'C:\TEMP\mount'"

C:\Windows\System32\PowerRun_x64.exe cmd /c rmdir /s /q "C:\TEMP\mount\Program Files\WindowsApps"
mkdir C:\TEMP\mount\Program Files\WindowsApps
C:\Windows\System32\PowerRun_x64.exe cmd /c rmdir /s /q "C:\TEMP\mount\Program Files\Windows Defender"
C:\Windows\System32\PowerRun_x64.exe cmd /c rmdir /s /q "C:\TEMP\mount\Program Files\Windows Defender Advanced Threat Protection"


DISM /Image:C:\TEMP\mount /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:C:\TEMP\sxs

dism /unmount-wim /mountdir:C:\TEMP\mount /commit
dism /Export-Image /SourceImageFile:C:\TEMP\install2.wim /SourceIndex:1 /DestinationImageFile:C:\TEMP\Server_Optimized.wim /checkintegrity
del /f /q C:\TEMP\install1.wim
del /f /q C:\TEMP\install2.wim