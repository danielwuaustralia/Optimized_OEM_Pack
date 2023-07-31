@cls
@echo off
>nul chcp 437
setlocal enabledelayedexpansion

cd "%~dp0"
color 17
title Win 10-11 ISO Debloater
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
echo *****************************************************************
echo.
echo *****************************************************************
echo  Debloater Script Started at %DATE% %TIME%
echo *****************************************************************
echo.

>nul 2>&1 reg unload HKLM\_SAM
>nul 2>&1 reg unload HKLM\_SECURITY 
>nul 2>&1 reg unload HKLM\_Software
>nul 2>&1 reg unload HKLM\_SYSTEM
>nul 2>&1 reg unload HKU\_USER

if exist MOUNT (
	>nul 2>&1 Dism /Unmount-Image /MountDir:"%~dp0Mount" /discard
	>nul 2>&1 DISM /Cleanup-Wim
	>nul 2>&1 DISM /Cleanup-Mountpoints
)

IF EXIST "TEMP"  >nul 2>&1 rd /s /q "TEMP"
IF EXIST "Mount" >nul 2>&1 rd /s /q "Mount"
IF EXIST "Mount" (
	echo:
	echo ERR ### Log off and start over
	echo:
	pause
	exit /b
)

echo *****************************************************************
echo --- Create Mount Directory
echo *****************************************************************

IF NOT EXIST "Mount"    md "Mount"
IF NOT EXIST "TEMP"     md "TEMP"
IF NOT EXIST "DVD"      md "DVD"
IF NOT EXIST "Registry" md Registry

if exist "ISO\*.iso" (
	echo:
	set /a ISO_count=0
	for /f "tokens=*" %%$ in ('"2>nul dir /a/b ISO\*.iso"') do (
		set /a ISO_count +=1
		set "ISO_!ISO_count!=%%$"
		if !ISO_count! LSS 10 echo Index [#!ISO_count!] %%$
		if !ISO_count! GEQ 10 echo Index [!ISO_count!] %%$
	)

	set "Params="
	if !ISO_count! LEQ 0 echo:&echo ERROR ### Fail to get ISO info&echo:&pause&exit /b
	FOR /L %%$ IN (1,1,!ISO_count!) do set "Params=!Params!,%%$"
	if "!Params:~0,1!" EQU "," set "Params=!Params:~1!"
	
	echo:
	set ISO_Index=
	set /p SelectedISOIndex=Select ISO Index --^> 
	for %%$ in (!Params!) do if "%%$" EQU "!SelectedISOIndex!" set /a "ISO_Index=%%$"
	if not defined ISO_Index echo:&echo ERROR ### Fail to get ISO info&echo:&pause&exit /b
	echo:
	set ISO_NAME=
	for /f "tokens=2 delims==" %%# in ('"set | find /i "ISO_!ISO_Index!""') do set "ISO_NAME=%%#"
	if defined ISO_NAME Bin\7z.exe x -y -o"DVD" "ISO\!ISO_NAME!"
)

echo.
echo *****************************************************************
echo --- Get WIM Index Info
echo *****************************************************************

echo:
set /a count=0
for /f "tokens=*" %%$ in ('"2>nul Dism /Get-ImageInfo /imagefile:"DVD\sources\install.wim" | find /i "Name :""') do (
	set /a count +=1
	set "index_!count!=%%$"
	if !count! LSS 10 echo Index [#!count!] %%$
	if !count! GEQ 10 echo Index [!count!] %%$
)

set "Params="
if !count! LEQ 0 echo:&echo ERROR ### Fail to get index info&echo:&pause&exit /b
FOR /L %%$ IN (1,1,!count!) do set "Params=!Params!,%%$"
if "!Params:~0,1!" EQU "," set "Params=!Params:~1!"
echo:
set WimIndex=
set /p SelectedIndex=Select Edition index --^> 
for %%$ in (!Params!) do if "%%$" EQU "!SelectedIndex!" set /a "WimIndex=%%$"
if not defined WimIndex echo:&echo ERROR ### Fail to get index info&echo:&pause&exit /b

echo.
echo *****************************************************************
echo --- Mounting WIM image to Mount Directory
echo *****************************************************************
DISM /Mount-Image /ImageFile:"DVD\sources\install.wim" /Index:!WimIndex! /MountDir:"Mount" /CheckIntegrity

echo.
echo *****************************************************************
echo --- Edition Change 
echo *****************************************************************
set Current_Edition=
for /f "tokens=4" %%e in ('"2>nul Dism /Image:"Mount" /Get-CurrentEdition | find /i "Current Edition :""') do set "Current_Edition=%%e"
echo:
echo Current   edition: !Current_Edition!
set available_edition=
for /f "tokens=4" %%e in ('"2>nul Dism /Image:"Mount" /Get-TargetEditions | find /i "Target Edition :""') do (
if     defined available_edition set "available_edition=!available_edition!,%%e"
if not defined available_edition set "available_edition=%%e"
	echo available edition: %%e
)
echo:
:select_E
set Found_Edition=
set Select_Edition=
if not defined available_edition goto:_next_E
set /p Select_Edition=Choice Edition Name / Press enter to continue: 
if defined Select_Edition (
	for %%e in (!available_edition!) do if /i "X%%eX" EQU "X!Select_Edition!X" (
		set Found_Edition=*
		Dism /Image:"Mount" /Set-Edition:%%e /AcceptEula
	)
	if not defined Found_Edition goto:select_E
)

:_next_E

echo.
echo *****************************************************************
echo --- Import Registry keys
echo *****************************************************************

echo:
reg load HKLM\_SAM "MOUNT\windows\system32\config\SAM"
reg load HKLM\_SECURITY "MOUNT\windows\system32\config\SECURITY"
reg load HKLM\_Software "MOUNT\windows\system32\config\Software"
reg load HKLM\_SYSTEM "MOUNT\windows\system32\config\SYSTEM"
reg load HKU\_USER "MOUNT\Users\Default\NTUSER.DAT"

for /f "tokens=*" %%r in ('"2>nul dir /a/b Registry\*.reg"') do (
	set "Reg_FILE=%~dp0Registry\%%r"
	attrib "!Reg_FILE!" -r -a -h -s
	powershell -c "(Get-Content '!Reg_FILE!') -Replace 'HKLM', 'HKEY_LOCAL_MACHINE' | Set-Content '!Reg_FILE!'"
	powershell -c "(Get-Content '!Reg_FILE!') -Replace 'HKCU', 'HKEY_CURRENT_USER' | Set-Content '!Reg_FILE!'"
	
	powershell -c "(Get-Content '!Reg_FILE!') -Replace 'HKEY_CURRENT_USER', 'HKEY_USERS\_USER' | Set-Content '!Reg_FILE!'"
	powershell -c "(Get-Content '!Reg_FILE!') -Replace 'HKEY_CLASSES_ROOT', 'HKEY_LOCAL_MACHINE\_Software\Classes' | Set-Content '!Reg_FILE!'"
	powershell -c "(Get-Content '!Reg_FILE!') -Replace 'HKEY_LOCAL_MACHINE\\SAM', 'HKEY_LOCAL_MACHINE\_SAM' | Set-Content '!Reg_FILE!'"
	powershell -c "(Get-Content '!Reg_FILE!') -Replace 'HKEY_LOCAL_MACHINE\\SECURITY', 'HKEY_LOCAL_MACHINE\_SECURITY' | Set-Content '!Reg_FILE!'"
	powershell -c "(Get-Content '!Reg_FILE!') -Replace 'HKEY_LOCAL_MACHINE\\Software', 'HKEY_LOCAL_MACHINE\_Software' | Set-Content '!Reg_FILE!'"
	powershell -c "(Get-Content '!Reg_FILE!') -Replace 'HKEY_LOCAL_MACHINE\\SYSTEM', 'HKEY_LOCAL_MACHINE\_SYSTEM' | Set-Content '!Reg_FILE!'"
)
for /f "tokens=*" %%r in ('"2>nul dir /a/b Registry\*.reg"') do 2>nul reg import "%~dp0Registry\%%r"

2>nul del /q Registry\*.reg
reg unload HKLM\_SAM
reg unload HKLM\_SECURITY 
reg unload HKLM\_Software
reg unload HKLM\_SYSTEM
reg unload HKU\_USER

echo.
echo *****************************************************************
echo --- Prevent Inbox Apps from being deployed
echo *****************************************************************

rem Clean way prevent Inbox Apps from being deployed
rem https://forums.mydigitallife.net/threads/msmg-toolkit.50572/page-52#post-1307366

>nul 2>&1 reg load HKLM\temp Mount\Windows\System32\config\SOFTWARE
set "Appx=Registry::HKLM\temp\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications\"
>nul 2>&1 Powershell -Command "Get-ChildItem -Path $env:Appx | OGV -PassThru -Title 'Select Inbox Apps To disable' | Foreach {start 'REG' -Args 'delete ',$_,' /f' -WindowStyle Hidden -wait}"
>nul 2>&1 reg unload "HKLM\temp"

echo.
echo *****************************************************************
echo --- Select Services To disable
echo *****************************************************************

echo.
>nul 2>&1 reg load HKLM\_SYSTEM "MOUNT\windows\system32\config\SYSTEM"
set "Services=Registry::HKEY_LOCAL_MACHINE\_SYSTEM\ControlSet001\Services\"
>nul 2>&1 Powershell -Command "Get-ChildItem -Path $env:Services | OGV -PassThru -Title 'Service To disable' | Foreach {start 'REG' -Args 'ADD ','\"',$_,'\"',' /f /v Start /d 0x4 /t REG_DWORD' -WindowStyle Hidden -wait}"
>nul 2>&1 reg unload HKLM\_SYSTEM

echo.
echo *****************************************************************
echo --- Select and Remove Windows Apps
echo *****************************************************************
>nul 2>&1 Powershell -Command "Get-AppXProvisionedPackage -Path 'Mount' | OGV -PassThru -Title 'Select All Windows Apps to Remove' | Remove-AppxProvisionedPackage -Path 'Mount' -Verbose"
echo.

echo *****************************************************************
echo --- Select and Disable UnNeeded Windows Features
echo *****************************************************************
>nul 2>&1 Powershell -Command "Get-WindowsOptionalFeature -Path 'Mount' | Where-Object {$_.State -eq 'Enabled' } | OGV -PassThru -Title 'Select Windows Optional Features to Disable' | Disable-WindowsOptionalFeature -Path 'Mount' -Verbose"
echo.

echo *****************************************************************
echo --- Select and Remove UnNeeded Windows Capabilities
echo *****************************************************************
>nul 2>&1 Powershell -Command "Get-WindowsCapability -Path 'Mount' | Where-Object {$_.State -eq 'Installed' } | OGV -PassThru -Title 'Select Windows Capabilities to Remove' | Remove-WindowsCapability -Path 'Mount' -Verbose"
echo.

echo *****************************************************************
echo --- Remove Windows Packages
echo *****************************************************************
>nul 2>&1 Powershell -EP Bypass -MTA -NOL -NONI -NOP -C "Write-Host 'Removing Packages from Offline Image' -ForegroundColor Green -Verbose"
>nul 2>&1 Powershell -EP Bypass -MTA -NOL -NONI -NOP -C "Get-WindowsPackage -Path 'Mount' | OGV -PassThru -Title 'Select Windows Packages to Remove' | Remove-WindowsPackage -Path 'Mount' -Verbose"
echo:

echo *****************************************************************
echo --- Remove Windows Components
echo *****************************************************************

if exist "Component.txt" (
	echo:
	>nul 2>&1 reg load "HKLM\OfflineSOFTWARE" "Mount\Windows\System32\config\SOFTWARE"
	for /f "tokens=*" %%$ in ('"2>nul type Component.txt"') do (
		echo Disable *%%$* Packages
		>nul 2>&1 Powershell -EP Bypass -MTA -NOL -NONI -NOP -C "Set-ItemProperty -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*%%$*' -Name Visibility -Value 1 -Force -EA SilentlyContinue -Verbose"
		>nul 2>&1 Powershell -EP Bypass -MTA -NOL -NONI -NOP -C "Remove-Item -Path 'HKLM:OfflineSOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*%%$*' -Include *Owner* -Recurse -Force -EA SilentlyContinue -Verbose"
	)
	>nul 2>&1 reg unload "HKLM\OfflineSOFTWARE"
)

echo.
echo *****************************************************************
echo --- Saving and Unmounting Final Debloated Image
echo *****************************************************************
DISM /Unmount-Image /MountDir:"Mount" /Commit /CheckIntegrity

echo.
echo *****************************************************************
echo --- Clean WIM Index
echo *****************************************************************

echo:
if !count! GEQ 2 (
	set /a SecCount=0
	set /a RealCount=0
	for /f "tokens=*" %%$ in ('"2>nul Dism /Get-ImageInfo /imagefile:"DVD\sources\install.wim" | find /i "Name :""') do (
		set askUser=
		set /a SecCount +=1
		set /a RealCount +=1
		if "!WimIndex!" NEQ "!RealCount!" (
			if !RealCount! LSS 10 set /p askUser=delete Index [#!RealCount!] %%$ ^? [Y/N] 
			if !RealCount! GEQ 10 set /p askUser=delete Index [!RealCount!] %%$ ^? [Y/N] 
			if /i "X!askUser!" EQU "XY" (
				>nul 2>nul Dism /Delete-Image /ImageFile:"DVD\sources\install.wim" /Index:!SecCount! && echo ----- Clean Index %%$ Succeded || echo --- Clean Index %%$ Failed
				set /a SecCount -=1
				echo:
			)
		) else (
			if !RealCount! LSS 10 echo Skip   Index [#!RealCount!] %%$
			if !RealCount! GEQ 10 echo Skip   Index [!RealCount!] %%$
		)
	)
)

echo.
echo *****************************************************************
echo --- Export Install Wim to Compress Maximum
echo *****************************************************************
DISM /Export-Image /SourceImageFile:"DVD\sources\install.wim" /ALL /DestinationImageFile:"TEMP\install.wim" /Compress:max /CheckIntegrity
>nul 2>&1 move /y "TEMP\install.wim" "DVD\sources\install.wim"

echo.
echo *****************************************************************
echo --- Add $OEM$ Pack if Exist Next to Script
echo *****************************************************************
echo:
echo --- Adding $OEM$ Pack to ISO Sources If Present
IF EXIST "$OEM$" XCOPY "$OEM$" "DVD\sources\$OEM$" /E /I /Y
echo.


echo.
echo *****************************************************************
echo --- Bypass TPM Requirements
echo *****************************************************************
echo:
set Bypass=
set Count=
set /p Bypass=Bypass TPM Requirements ^? [Y/N] 
set "Image_COUNT_CMD=Bin\wimlib-imagex.exe info "DVD\sources\install.wim" --header | find "Image Count""

if /i "!Bypass!" EQU "Y" (
	
	rem remove appraiserres.dll to bypass TPM
	if exist DVD\sources\appraiserres.dll >nul 2>&1 del /q DVD\sources\appraiserres.dll
	
	rem based on Lite UnFuck Windows Setup v1.4 script
	for /f "tokens=4" %%# in ('"%Image_COUNT_CMD%"') do set /a count=%%#
	if defined count for /L %%i in (1,1,!count!) do >nul 2>&1 Bin\wimlib-imagex.exe info "DVD\sources\install.wim" %%i --image-property WINDOWS/INSTALLATIONTYPE=Server
)

echo.
echo *****************************************************************
echo --- Clean Source Folder
echo *****************************************************************
echo:
set CleanISO=
set /p CleanISO=Clean Source folder ^? [Y/N] 
set "file_LIST=boot.wim,install.wim,ei.cfg,lang.ini,setup.exe,$OEM$"
if /i "!CleanISO!" EQU "Y" (

	>nul 2>&1 rd/s/q DVD\SRC_BACKUP  & >nul 2>&1 md DVD\SRC_BACKUP
	for %%# in (%file_LIST%) do if exist DVD\sources\%%#     >nul 2>&1 move DVD\sources\%%# DVD\SRC_BACKUP
	>nul 2>&1 rd /s/q DVD\sources    & >nul 2>&1 md DVD\sources
	for %%# in (%file_LIST%) do if exist DVD\SRC_BACKUP\%%#  >nul 2>&1 move DVD\SRC_BACKUP\%%# DVD\sources
	>nul 2>&1 rd /s/q DVD\SRC_BACKUP
)

echo:
echo *****************************************************************
echo --- Create Final Win10 Debloated ISO
echo *****************************************************************
:SELECT_NAME
echo:
set "ISOFileName="
set /p ISOFileName=Enter ISO Filename --^> 
if not defined ISOFileName goto :SELECT_NAME
"Bin\oscdimg.exe" -bootdata:2#p0,e,b".\DVD\boot\etfsboot.com"#pEF,e,b".\DVD\efi\microsoft\boot\efisys.bin" -o -h -m -u2 -udfver102 -lCPRA_X64FRE_EN-US_DV5 ".\DVD" "%~dp0!ISOFileName!.iso"
echo.

echo *****************************************************************
echo --- Remove Extra Files of Project
echo *****************************************************************
cd %~dp0
DISM /Cleanup-Wim
DISM /Cleanup-Mountpoints
IF EXIST "DVD"   rd /s /q "DVD"
IF EXIST "TEMP"  rd /s /q "TEMP"
IF EXIST "Mount" rd /s /q "Mount"

echo:
echo:
echo *****************************************************************
echo Debloater Script Completed at %DATE% %TIME%
echo *****************************************************************
echo **************************** The End ****************************
color 02
echo:
pause
