@echo off
title Maintenance Script V14 release 30
echo Maintenance Script V14 release 30
echo.
cd /D %~dp0
setlocal enabledelayedexpansion

IF EXIST "C:\Windows\system32\adminrightstest" (
	rmdir C:\Windows\system32\adminrightstest > nul
)
mkdir C:\Windows\system32\adminrightstest > nul
if %errorlevel% neq 0 (
	powershell "Start-Process \"%~nx0\" -Verb RunAs"
	if !errorlevel! neq 0 (
		powershell "Start-Process '%~nx0' -Verb RunAs"
		if !errorlevel! neq 0 (
			echo The maintenance script couldn't run as Admin
			echo The script will now exit
			echo You can go ahead and manually run the script as Administrator
			pause
			exit
		)
	)
	exit
)
rmdir C:\Windows\system32\adminrightstest > nul

echo Checking running processes...
echo Be patient...
call :recheckall
:scriptcontinue

echo Importing WinDefend Reg ^(might show errors^)...
reg import "%~dp0\data\windefend.reg" /reg:64 >> me_log.txt

IF NOT EXIST "%~dp0\no_boot_maintenance" (
	echo Checking Services...
	start /wait "" "%~dp0\data\ServicesStarter.exe" >> me_log.txt
)
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

IF NOT EXIST "%~dp0\no_boot_maintenance" (
	echo Checking Time...
	sc config w32time start=demand >> me_log.txt
	net start w32time >> me_log.txt
	w32tm /config /manualpeerlist:time.windows.com >> me_log.txt
	w32tm /resync /rediscover >> me_log.txt
)

IF NOT EXIST "%~dp0\no_boot_maintenance" (
	cd /D "C:\Windows\Microsoft.NET"
	cd Framework
	echo Compiling x86 Framework Assemblies...
	call :runngen
	echo Compiling x64 Framework Assemblies...
	cd ..\Framework64
	call :runngen
)

cd /D %~dp0

IF NOT EXIST "%~dp0\no_boot_maintenance" (
	echo Cleaning up early build files...
	dism /online /cleanup-image /startcomponentcleanup /spsuperseded /norestart >> me_log.txt
)

IF NOT EXIST "%~dp0\no_boot_maintenance" (
	copy "%~dp0\data\CheckTime.bat" "C:\CheckTime.bat" /Y >> me_log.txt
	copy "%~dp0\data\ServicesStarter.exe" "C:\ServicesStarter.exe" /Y >> me_log.txt
	copy "%~dp0\data\QueuedItems.bat" "C:\Windows\Microsoft.NET\QueuedItems.bat" /Y >> me_log.txt
	copy "%~dp0\data\DefragSearchIndex.bat" "C:\DefragSearchIndex.bat" /Y >> me_log.txt
	copy "%~dp0\data\CheckVSS.bat" "C:\CheckVSS.bat" /Y >> me_log.txt
) else (
	del "C:\CheckTime.bat" /F >> me_log.txt
	del "C:\ServicesStarter.exe" /F >> me_log.txt
	del "C:\Windows\Microsoft.NET\QueuedItems.bat" /F >> me_log.txt
	del "C:\DefragSearchIndex.bat" /F >> me_log.txt
	del "C:\CheckVSS.bat" /F >> me_log.txt
)
copy "%~dp0\data\procexp64.exe" "C:\procexp64.exe" /Y >> me_log.txt

echo Checking Scheduled Optimization Task...
schtasks /change /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /disable >> me_log.txt
schtasks /delete /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /f >> me_log.txt

IF NOT EXIST "%~dp0\no_boot_maintenance" (
	echo Adding Scheduled Optimization Task...
	schtasks /create /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /xml "%~dp0\data\ScheduledDefrag.xml" /f >> me_log.txt
	schtasks /change /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /enable >> me_log.txt
	schtasks /create /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /xml "%~dp0\data\ScheduledDefrag.xml" /f >> me_log.txt
	schtasks /create /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /xml "%~dp0\data\ScheduledDefrag.xml" /f >> me_log.txt
)

IF NOT EXIST "%~dp0\no_boot_maintenance" (
	echo Cleaning up Windows Components...
	dism /online /cleanup-image /startcomponentcleanup /resetbase /defer /norestart >> me_log.txt
	if !errorlevel! neq 0 (
		dism /online /cleanup-image /startcomponentcleanup /resetbase /norestart >> me_log.txt
		if !errorlevel! neq 0 (
			echo WARNING: Failed to cleanup Windows Components. Please check me_log.txt for details.
		)
		echo Adding Windows 8.1 Scheduled Optimization Task...
		schtasks /create /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /xml "%~dp0\data\ScheduledDefrag_Win81.xml" /f >> me_log.txt
		schtasks /create /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /xml "%~dp0\data\ScheduledDefrag_Win81.xml" /f >> me_log.txt
	)
	echo Cleaning up temporary files...
	cleanmgr /autoclean  >> me_log.txt
	if !errorlevel! neq 0 (
		echo WARNING: Failed to cleanup temporary files. Please check me_log.txt for details.
	)
)

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

IF NOT EXIST "%~dp0\no_boot_maintenance" (
	echo Defragmenting Search Index...
	sc config wsearch start=disabled >> me_log.txt
	net stop wsearch >> me_log.txt
	esentutl /d "C:\ProgramData\Microsoft\Search\Data\Applications\Windows\Windows.edb" >> me_log.txt
	sc config wsearch start=delayed-auto >> me_log.txt
	net start wsearch >> me_log.txt

	sc config vss start=demand >> me_log.txt
	net start VSS >> me_log.txt
	echo Defragging your drives...
	defrag -c -h -o >> me_log.txt
	if !errorlevel! neq 0 (
		defrag -c -h >> me_log.txt
		echo Adding Windows 7 Scheduled Optimization Task...
		schtasks /create /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /xml "%~dp0\data\ScheduledDefrag_Win7.xml" /f >> me_log.txt
		schtasks /create /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /xml "%~dp0\data\ScheduledDefrag_Win7.xml" /f >> me_log.txt
	)
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

:runngen
for /f %%f in ('dir /b /AD *') do (
	cd "%%f"
	IF EXIST ngen.exe (
		ngen update >> me_log.txt
	)
	cd ..\
)
goto :EOF

:recheckall
call :waitprocess dism.exe
call :waitprocess dismhost.exe
call :waitprocess chkdsk.exe
call :waitprocess defrag.exe
call :waitprocess ServicesStarter.exe
call :waitprocess ngen.exe
call :waitprocess ngentask.exe
call :waitprocess w32tm.exe
call :waitprocess sc.exe
call :waitprocess net.exe
call :waitprocess wuauclt.exe
call :waitprocess uso.exe
call :waitprocess usoclient.exe
call :waitprocess cleanmgr.exe
call :waitprocess esentutl.exe
goto :scriptcontinue

:waitprocess
tasklist | findstr /B /I %1 > nul
if %errorlevel% neq 0 (
	timeout 1 /nobreak > nul
	tasklist | findstr /B /I %1 > nul
	if !errorlevel! neq 0 (
		timeout 1 /nobreak > nul
		tasklist | findstr /B /I %1 > nul
		if !errorlevel! neq 0 (
			goto :EOF
		)
	)
)
echo Waiting for %1 to exit...
timeout 10 /nobreak > nul
call :recheckall
goto :EOF

