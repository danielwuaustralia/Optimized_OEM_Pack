
@cls
@echo off
>nul chcp 437
title Copy PE tool
setlocal enabledelayedexpansion

echo:
cd /d "%~dp0"

echo:
echo Make sure to run this script
echo * as Administrator
echo * as Trusted installer
echo:
echo Helper for "USB pe tool"
echo with -PE Parameter
echo:

set Letter=
set /p Letter=Enter Drive Letter: 

if defined Letter if exist "!Letter!:\Windows" if /i "!Letter!:" NEQ "%SystemDrive%" (
	echo:
	2>nul md "!Letter!:\windows\Panther"
	xcopy AutoUnattend.xml "!Letter!:\windows\Panther" /g /h /r /y /c /i
	echo:
	2>nul pushd "sources\$OEM$\$$" && (
		xcopy * "!Letter!:\windows" /e /g /h /r /y /c /i
		popd
	)
	echo:
	2>nul pushd "sources\$OEM$\$1" && (
		xcopy * "!Letter!:\" /e /g /h /r /y /c /i
		popd
	)
)

echo:
pause
goto :eof