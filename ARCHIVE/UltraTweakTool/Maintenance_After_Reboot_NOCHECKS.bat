@echo off
title Maintenance Script V14 release 30 NOCHECKS
echo Maintenance Script V14 release 30 NOCHECKS
echo.
cd /D %~dp0
setlocal enabledelayedexpansion

echo Importing WinDefend Reg ^(might show errors^)...
reg import "%~dp0\data\windefend.reg" /reg:64 >> me_log.txt

powershell "Remove-Item -Path \"HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\*\" -Recurse" >> me_log.txt
if %errorlevel% neq 0 (
	echo WARNING: Failed to remove leftovers in Image File Execution Options
	echo This usually doesn't really matter
	echo Check me_log.txt for details
)

echo Setting MaxLoaderThreads...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f >> me_log.txt
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f >> me_log.txt
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RuntimeBroker.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f >> me_log.txt
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f >> me_log.txt
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f >> me_log.txt

cd /D %~dp0

del "C:\CheckTime.bat" /F >> me_log.txt
del "C:\ServicesStarter.exe" /F >> me_log.txt
del "C:\Windows\Microsoft.NET\QueuedItems.bat" /F >> me_log.txt
del "C:\DefragSearchIndex.bat" /F >> me_log.txt
del "C:\CheckVSS.bat" /F >> me_log.txt
copy "%~dp0\data\procexp64.exe" "C:\procexp64.exe" /Y >> me_log.txt

IF EXIST "%~dp0\compact_mode_placeholder" (
	echo Enabling Compact Mode ^(this can take a while^)...
	compact /compactos:always >> me_log.txt
	if !errorlevel! neq 0 (
		echo WARNING: Failed to enable Compact Mode. Please check me_log.txt for details.
	)
	del "%~dp0\compact_mode_placeholder" /f >> me_log.txt
)
IF EXIST "%~dp0\compress_files_placeholder" (
	echo Compressing Software Data ^(this might take a very long time^)...
	compact /C /S:"C:\Program Files" /A /I /Q >> me_log.txt
	compact /C /S:"C:\Program Files (x86)" /A /I /Q >> me_log.txt
	compact /C /S:"C:\ProgramData" /A /I /Q >> me_log.txt
	compact /C /S:"%userprofile%\AppData" /A /I /Q >> me_log.txt
	for /f "delims=" %%d in ('dir C:\Windows /b /AD') do (
		if "%%d" neq "Boot" (
			if "%%d" neq "System32" (
				if "%%d" neq "SysWOW64" (
					if "%%d" neq "Fonts" (
						if "%%d" neq "Cursors" (
							if "%%d" neq "INF" (
								compact /C /S:"C:\Windows\%%d" /A /I /Q >> me_log.txt
							)
						)
					)
				)
			)
		)
	)
	for /f "delims=" %%f in ('dir C:\Windows /b /A-D') do (
		compact /C "C:\Windows\%%f" /A /I /Q >> me_log.txt
	)
	compact /C "C:\Windows" /A /I /Q >> me_log.txt
	del "%~dp0\compress_files_placeholder" /f >> me_log.txt
)

echo Enabling Process Explorer as a Task Manager...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe" /v "Debugger" /t REG_SZ /d "C:\procexp64.exe" /f >> me_log.txt

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "legalnoticecaption" /t REG_SZ /d "" /f >> me_log.txt
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "legalnoticetext" /t REG_SZ /d "" /f >> me_log.txt


reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "WasLUADisabled" | findstr /I "0x1" >> me_log.txt
if %errorlevel% neq 0 (
	echo Enabling LUA back...
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "1" /f >> me_log.txt
) else (
	echo Warning: Keeping LUA disabled
	reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "WasLUADisabled" /f >> me_log.txt
)

echo You need to reboot for the changes to take effect
shutdown -r -t 0 -f
exit
