@echo off
SetLocal EnableDelayedExpansion
Set Ver=: 2021 Edition Version 3.0 :
color 17
title Windows ISO Tweaker %Ver% by MyDigitallife Member
echo *****************************************************************
echo ------------------- Ensure Admin Privileges ---------------------
echo *****************************************************************
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (    echo Requesting administrative privileges...    goto UACPrompt) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
echo:                  Got Administrator Privilege
echo *****************************************************************
echo.
echo *****************************************************************
echo *        Win10 ISO Tweaker Script %Ver%  *
echo *            (c) 2021 by Mydigitallife Member            *
echo *****************************************************************
echo.
Powershell -Command "Write-Output '    : Welcome To Win11 ISO Tweaker Project by MyDigitallife Member : ' '' ':***********************************************************************:' '' '                                                  { Urgent }' '' '                                Please Disable Your Antivirus ' '' '                              Please Use WIM Based ISO Only' '' '                          Please Dont Use Already Serviced ISO ' '' '                 This Project Works Only on Win10 64Bit Host OS ' '' ':***********************************************************************:' '' 'You Can Close this Script Now and Re Execute After Urgent Notice Done' '' '                       Waiting Time is 10 Min Until You Press OK' | MSG "%username%" /TIME:600 /W"
echo.
echo  Tweaker Script %Ver% Started at %DATE% %TIME%
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Extract ISO to Script Path and Create Mount Directory
echo *****************************************************************
cd %~dp0
IF NOT EXIST "Mount" md "Mount"
IF NOT EXIST "DVD" md "DVD"
Bin\7z.exe x -y -o"DVD" "ISO\*.iso"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Export Single WIM Index of Your Choice to Script Path
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
echo *****************************************************************
:MOVE
echo *****************************************************************
echo --- Move Back Exported WIM Image to its Source Path
echo *****************************************************************
move /y "install.wim" "DVD\sources\install.wim"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Mounting Selected WIM Image Index to Mount Directory
echo *****************************************************************
Powershell -Command "Mount-WindowsImage -ImagePath 'DVD\sources\install.wim' -Index 1 -Path 'Mount' -Verbose"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Get Mounted Image Edition ^& Target Editions to be Upgraded
echo *****************************************************************
Powershell -Command "Get-WindowsEdition -Path 'Mount' -Verbose"
Powershell -Command "Get-WindowsEdition -Path 'Mount' -Target -Verbose"
echo *****************************************************************
echo.
echo *****************************************************************
echo.--- Disable Tamper Protection ^& Remove SystemApps
echo *****************************************************************

echo: User Can Remove All System Apps Except:
echo: Microsoft.UI.Xaml.CBS (Essential App)
echo: Microsoft.Windows.ShellExperienceHost (Essential App)
echo: Windows.immersivecontrolpanel (Essential App)
echo: Microsoft.Windows.StartMenuExperienceHost (Can Remove Alternate Available StartisBack++ But Most Users Say That OpenShell is much better then StartisBack)
echo: MetroApps / WindowsApps are also included in SystemApps Removal User-GridView GUI Powershell Function of Powershell Integerated Scripting Engine so user Must be Sure not to select Left WindowsApps Removal in this SystemApps Removal Tweak Which will be present in last or Go through Path they will Show ProgramFiles as there Path in GUI View]

reg load "HKLM\OfflineSOFTWARE" "Mount\Windows\System32\config\SOFTWARE"
Bin\SetACL -on "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender\Features" -ot reg -actn setowner -ownr "n:Administrators"
Bin\SetACL -on "HKLM\OfflineSOFTWARE\Microsoft\Windows Defender\Features" -ot reg -actn ace -ace "n:Administrators;p:full"
Bin\SetACL -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications" -ot reg -actn setowner -ownr "n:Administrators"
Bin\SetACL -on "HKLM\OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications" -ot reg -actn ace -ace "n:Administrators;p:full"
Powershell -Command "Get-Item -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows Defender\Features' | New-ItemProperty -Name TamperProtection -Value 4 -PropertyType DWord -Verbose"
Powershell -Command "Get-Item -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows Defender\Features' | New-ItemProperty -Name TamperProtectionSource -Value 2 -PropertyType DWord -Verbose"
Powershell -Command "Get-ChildItem -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | Out-GridView -PassThru -Title 'Select System Apps to Remove' | Remove-Item -Force -Confirm:$False -Verbose"
reg unload "HKLM\OfflineSOFTWARE"

echo *****************************************************************
echo.
echo *****************************************************************
echo --- Select and Remove Windows Apps
echo *****************************************************************

echo: User Can Remove All Windows Apps Except:
echo: Microsoft.UI.Xaml (Essential App)
echo: Microsoft.VCLibs (Essential App)
echo: MicrosftWindows.Client.WebExperience (Essential App)
echo: Notepad, Wordpad & Paint [Included in Metro Apps]

Powershell -Command "Get-AppXProvisionedPackage -Path 'Mount' | Out-GridView -PassThru -Title 'Select All Windows Apps to Remove' | Remove-AppxProvisionedPackage -Path 'Mount' -Verbose"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Select and Disable UnNeeded Windows Features
echo *****************************************************************

echo: User Can Remove All WindowsOptinalFeatures Except:
echo: Printing.PintToPDFServices-Features (Essential Feature)
echo: NetFx4-AdvSrvs (Essential Feature)
echo: WCF-Services45 (Essential Feature)

Powershell -Command "Get-WindowsOptionalFeature -Path 'Mount' | Where-Object {$_.State -eq 'Enabled' } | Out-GridView -PassThru -Title 'Select Windows Optional Features to Disable' | Disable-WindowsOptionalFeature -Path 'Mount' -Verbose"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Select and Remove UnNeeded Windows Capabilities
echo *****************************************************************

echo: User Can Remove All WindowsCapabilities Except:

echo: DirectX.Configuration.Database (Essential Capability)
echo: Language.Basic (Essential Capability)
echo: Language.Handwriting (Essential Capability)
echo: Language.OCR (Essential Capability)
echo: Microsoft.Windows.Notepad.System (Essential Capability)
echo: Microsoft.Windows.PowerShell.ISE (Essential Capability)
echo: Microsoft.Windows.WordPad (Essential Capability)
echo: Windows.Client.ShellComponents (Essential Capability)
echo: Windows.Kernel.XXXX (Essential Capability)

Powershell -Command "Get-WindowsCapability -Path 'Mount' | Where-Object {$_.State -eq 'Installed' } | Out-GridView -PassThru -Title 'Select Windows Capabilities to Remove' | Remove-WindowsCapability -Path 'Mount' -Verbose"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Select and Remove UnNeeded Windows Packages
echo *****************************************************************
Powershell -Command "Get-WindowsPackage -Path 'Mount' | Where-Object {$_.PackageState -eq 'Installed' } | Out-GridView -PassThru -Title 'Select Windows Packages to Remove' | Remove-WindowsPackage -Path 'Mount' -Verbose"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Remove UnNeeded Packages From Offline Image
echo *****************************************************************
Bin\tweaker /p Mount /c Server-Help /r
Bin\tweaker /p Mount /c Microsoft-Windows-Help /r
Bin\tweaker /p Mount /c Microsoft-Windows-RDC /r
Bin\tweaker /p Mount /c RemoteDesktopServices /r
Bin\tweaker /p Mount /c Microsoft-Windows-RemoteFX /r
Bin\tweaker /p Mount /c Microsoft-Windows-Remotefx /r
Bin\tweaker /p Mount /c microsoft-windows-RemoteFX /r
Bin\tweaker /p Mount /c Microsoft-Windows-RemoteAssistance /r
Bin\tweaker /p Mount /c Microsoft-OneCore-RemoteDesktopServices /r
Bin\tweaker /p Mount /c Microsoft-OneCoreUap-RemoteDesktopServices /r
Bin\tweaker /p Mount /c Microsoft-Windows-RemoteDesktop /r
Bin\tweaker /p Mount /c Microsoft-Windows-RemoteDesktopServices /r
Bin\tweaker /p Mount /c Microsoft-Windows-Virtualization-RemoteFX /r
Bin\tweaker /p Mount /c Microsoft-Windows-SearchEngine /r
Bin\tweaker /p Mount /c Microsoft-Windows-OneDrive /r
echo.*****************************************************************
echo.
echo *****************************************************************
echo --- Check Mounted Image Health
echo *****************************************************************
PowerShell -Command "Repair-WindowsImage -Path 'Mount' -CheckHealth -Verbose"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Saving and Unmounting Final Debloated Image
echo *****************************************************************
Powershell -Command "Dismount-WindowsImage -Path 'Mount' -Save -CheckIntegrity -Verbose"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Export Wim Images to Compress Maximum
echo *****************************************************************
Dism /Export-Image /SourceImageFile:"DVD\sources\boot.wim" /ALL /DestinationImageFile:"boot.wim" /Compress:max /CheckIntegrity
move /y "boot.wim" "DVD\sources\boot.wim"
PowerShell -Command "Export-WindowsImage -SourceImagePath 'DVD\sources\install.wim' -SourceIndex 1 -DestinationImagePath 'install.wim' -CompressionType Max -CheckIntegrity -Verbose"
move /y "install.wim" "DVD\sources\install.wim"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Reduce ISO Layout to Maximum Extent
echo *****************************************************************
setlocal EnableExtensions DisableDelayedExpansion
set "TargetFolder=.\DVD\sources"
set "ExcludeFiles="
for %%I in ("%TargetFolder%\") do if "%%~dpI" == "%~dp0" set "ExcludeFiles=/C:"%~nx0""
for /F "eol=| delims=" %%I in ('dir "%TargetFolder%\" /AD /B 2^>nul ^| %SystemRoot%\System32\findstr.exe /I /L /V /X /C:".\*"') do rd /S /Q "%TargetFolder%\%%I"
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
echo --- Add ei.cfg , pid.txt , autounattend.xml , $OEM$ if Exist Next to Script
echo *****************************************************************
echo --- Add AutoUnattend.xml to Root of ISO If Present
IF EXIST "AutoUnattend.xml" copy "AutoUnattend.xml" "DVD\AutoUnattend.xml" /v /y
echo.
echo --- Add EI.CFG to ISO Sources If Present
IF EXIST "ei.cfg" copy "ei.cfg" "DVD\sources\ei.cfg" /v /y
echo.
echo --- Add PID.TXT to ISO Sources If Present
IF EXIST "pid.txt" copy "pid.txt" "DVD\sources\pid.txt" /v /y
echo.
echo --- Add $OEM$ Pack to ISO Sources If Present
IF EXIST "$OEM$" XCOPY "$OEM$" "DVD\sources\$OEM$" /E /I /Y
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Create Final Windows Tweaked ISO
echo *****************************************************************
set /p ISOFileName=Enter ISO Filename :
"Bin\oscdimg.exe" -bootdata:2#p0,e,b".\DVD\boot\etfsboot.com"#pEF,e,b".\DVD\efi\microsoft\boot\efisys.bin" -o -h -m -u2 -udfver102 -lWin11 ".\DVD" "%~dp0%ISOFileName%.iso"
echo *****************************************************************
echo.
echo *****************************************************************
echo --- Remove Extra Files of Project %Ver%
echo *****************************************************************
cd %~dp0
Dism /Cleanup-Mountpoints
Powershell -Command "Clear-WindowsCorruptMountPoint"
IF EXIST "DVD" rd /s /q "DVD"
IF EXIST "Mount" rd /s /q "Mount"
IF EXIST "SOFTWAREBKP" del /f /q "SOFTWAREBKP"
echo *****************************************************************
echo Tweaker Script %Ver% Completed at %DATE% %TIME%
echo *****************************************************************
echo **************************** The End ****************************
Powershell -Command "$wshell=New-Object -ComObject wscript.shell; $wshell.SendKeys('^a')
Powershell -Command "$wshell=New-Object -ComObject wscript.shell; $wshell.SendKeys('^c')
Powershell -Command "Get-Clipboard >%UserProfile%\Desktop\Tweaker_LOG.txt"
color 02
pause
exit /b

:ExportIndex
echo.
SET /P INDEXCHOICE=Select Single Image Index Number You Want to Export and Tweak :
DISM /Export-Image /SourceImageFile:"DVD\sources\install.wim" /Sourceindex:%INDEXCHOICE% /DestinationImageFile:"%~dp0\install.wim" /CheckIntegrity
echo *****************************************************************
echo.
GOTO MOVE

:CountIndex
SET /A count+=1
FOR /f "tokens=1* delims=: " %%i IN ('DISM /Get-WimInfo /wimfile:"DVD\sources\install.wim" /index:%1 ^| find /i "Name"') DO SET name%count%=%%j