@cls
@echo off
>nul chcp 437
setlocal enabledelayedexpansion
title Temp Cleaner

echo.
cd /d "%~dp0"

rem Run as administrator, AveYo: ps\VBS version
>nul fltmc || ( set "_=call "%~dpfx0" %*"
	powershell -nop -c start cmd -args '/d/x/r',$env:_ -verb runas || (
	mshta vbscript:execute^("createobject(""shell.application"").shellexecute(""cmd"",""/d/x/r "" &createobject(""WScript.Shell"").Environment(""PROCESS"")(""_""),,""runas"",1)(window.close)"^))|| (
	cls & echo:& echo Script elavation failed& pause)
	exit )

rem Clean Up the WinSxS Folder
rem https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/clean-up-the-winsxs-folder

echo ### Clean Folder :: "C:\WINDOWS\WinSxS"
1>nul 2>&1 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration" /f /v "DisableResetbase" /t "reg_DWORD" /d 0
1>nul 2>&1 Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase || (
	1>nul 2>&1 Dism.exe /online /Cleanup-Image /SPSuperseded
	1>nul 2>&1 Dism.exe /online /Cleanup-Image /StartComponentCleanup
)

call :DestryFolder "%Windir%\Temp"
call :DestryFolder "%Windir%\assembly\tmp"
call :DestryFolder "%Windir%\assembly\temp"
call :DestryFolder "%LOCALAPPDATA%\Temp"
call :DestryFolder "%ALLUSERSPROFILE%\Comodo\Cis\tempscrpt"
call :DestryFolder "%Windir%\SoftwareDistribution\Download"
call :DestryFolder "%ProgramData%\NVIDIA Corporation\Downloader"
call :DestryFolder "%ProgramFiles%\NVIDIA Corporation\Installer2"

rem More logs location
rem https://forums.mydigitallife.net/threads/windows-10-event-logs.86754/#post-1784459

call :DestryFolder "%Windir%\logs"
call :DestryFolder "%Windir%\system32\logs"
call :DestryFolder "%Windir%\system32\sru"
call :DestryFolder "%Windir%\system32\wdi"
call :DestryFolder "%Windir%\System32\winevt\Logs"
call :DestryFolder "%Windir%\System32\LogFiles\WMI"

echo ### Clean Folder :: "%Windir%\System32\config\systemprofile\AppData\Local"
set "tPath=%Windir%\System32\config\systemprofile\AppData\Local"
>"%USERPROFILE%\AppData\Local\Temp\result" 2>&1 dir /ad /b "%tPath%\*tmp" && for /f "tokens=*" %%# in ('type "%USERPROFILE%\AppData\Local\Temp\result"') do >nul 2>&1 rd /s /q "%tPath%\%%#"


echo.
1>nul 2>&1 reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches" && (
	>"%USERPROFILE%\AppData\Local\Temp\tmp" reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches"
	for /f "tokens=*" %%g in ('type "%USERPROFILE%\AppData\Local\Temp\tmp"') do (
		set addin=%%g
		echo ### Clean Addins :: !addin:~83!
		1>nul 2>&1 REG ADD "%%g" /f /v "StateFlags0001" /t REG_DWORD /d "2"
	)
	start /wait /HIGH "" "cleanmgr" "/sagerun:1"
)

if exist "%ProgramFiles%\CCleaner\CCleaner.exe" (
  echo:
  echo Auto Clean Using CCleaner .....
  "%ProgramFiles%\CCleaner\CCleaner.exe" /AUTO
)

echo.
pause
exit /b

:DestryFolder
set "targetFolder=%*"
echo ### Clean Folder :: %targetFolder%
if exist %targetFolder% (
    1>nul 2>&1 rd /s /q %targetFolder%
    if exist %targetFolder% (
		if /i '!targetFolder!' NEQ '%USERPROFILE%\AppData\Local\Temp' (
			for /f "tokens=*" %%g in ('dir /b/s /a-d %targetFolder%') do (
				1>nul 2>&1 move /y "%%g" "%USERPROFILE%\AppData\Local\Temp"
			)
		)
	) else (
		md %targetFolder%
	)
) else (
	md %targetFolder%
)
goto :eof