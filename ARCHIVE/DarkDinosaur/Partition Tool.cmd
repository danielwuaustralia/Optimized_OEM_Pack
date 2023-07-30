
@cls
@echo off
>nul chcp 437
setlocal enabledelayedexpansion

rem UEFI/GPT-based hard drive partitions
rem https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/configure-uefigpt-based-hard-drive-partitions?view=windows-11

set "f_Name=%~n0"

if "%~1"=="" echo:&echo ERR ### MISSING DISK ID VALUE & echo ERR ### MISSING DISK SIZE VALUE & echo:& Goto:ERR
if "%~2"=="" echo:&echo ERR ### MISSING DISK SIZE VALUE & echo:& Goto:ERR

call :verify_Number %~1
if not defined IsNum echo:&echo ERR ### BAD VALUE & echo:& Goto:ERR

call :verify_Number %~2
if not defined IsNum echo:&echo ERR ### BAD VALUE & echo:& Goto:ERR

set Disk_ID_Size=
set Disk_ID_Type=
set Disk_ID_Found=
for /f "tokens=1,2,3,4,5,6,7,8,9" %%a in ('"echo List Disk | Diskpart"') do if /i "%%a" EQU "Disk" if /i "%%b" NEQ "###" if "%%b" EQU "%~1" (
	set    "Disk_ID_Type=%%e"
	set /a "Disk_ID_Size=%%d"
	set     Disk_ID_Found=true
	
)
if not defined Disk_ID_Found echo:&echo ERR ### DISK ID NOT FOUND & echo:& Goto:ERR
if /i "!Disk_ID_Type!" EQU "GB" set /a "Disk_ID_Size=!Disk_ID_Size!*1024"
if /i "!Disk_ID_Type!" EQU "TB" set /a "Disk_ID_Size=!Disk_ID_Size!*1024*1024"
set /a "Disk_ID_Size-=116"

(
	echo select disk %~1
	echo clean
	echo convert GPT
	echo create partition primary size=100 id=c12a7328-f81f-11d2-ba4b-00a0c93ec93b
	echo create partition primary size=16  id=e3c9e316-0b5c-4db8-817d-f92df00215ae
)  >X:\SCRIPT.txt

shift
shift

:Loop
if "%~0" NEQ "" (
	call :verify_Number %~0
	if defined IsNum (
		>>X:\SCRIPT.txt echo Create Partition Primary size=%~0 id=ebd0a0a2-b9e5-4433-87c0-68b6b72699c7
		set /a "Disk_ID_Size-=%~0"
		shift
		goto :Loop
	)
	echo:&echo ERR ### BAD VALUE & echo:& Goto:ERR
)
if !Disk_ID_Size! LSS 5 echo:&echo ERR ### NOT ENOUGHT SPACE & echo:& Goto:ERR

(
	echo select partition 1
	echo FORMAT FS=FAT32 QUICK
	echo ASSIGN LETTER=S
) >>X:\SCRIPT.txt

diskpart /s X:\SCRIPT.txt

echo:
pushd s:\
for %%$ in (C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,T,U,V,W,X,Y,Z) do if exist %%$:\EFI xcopy %%$:\EFI EFI /y /h /q /f /i /s /c
cd EFI\Microsoft\Boot
bcdedit /store BCD /delete {default}
popd

(
	echo SELECT VOLUME=S
	echo REMOVE LETTER=S
) >X:\SCRIPT.txt
diskpart /s X:\SCRIPT.txt

echo:
echo:
echo:
echo Done, now press refresh.
echo:
goto :eof

:ERR
echo How to use ^?
echo:
echo - Create 2 Partition For Windows 10 ^& Windows 11 On Disk [0]
echo "%f_Name%" 0 30000 30000
echo:
echo Available Disk List
echo ---------------------
for /f "tokens=1,2,3,4,5,6,7,8,9" %%a in ('"echo List Disk | Diskpart"') do (
	if /i "%%a" EQU "Disk" if /i "%%b" NEQ "###" echo Disk %%b - Total Size [%%d %%e]
)
goto :eof

:verify_Number
set IsNum=
2>nul set /a "TestVal=%*"
if "!TestVal!" EQU "%*" set IsNum=True
goto :eof