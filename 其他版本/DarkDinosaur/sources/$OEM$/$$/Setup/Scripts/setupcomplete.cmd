
rem this script will run before
rem any user log in

@cls
@echo off
title setupcomplete Helper file

echo:
cd /d "%~dp0"

for /f "tokens=*" %%$ in ('"2>nul dir /a/b *.reg"') do (
	echo Process ### %%$
	call reg import "%~dp0%%$"
)
for /f "tokens=*" %%$ in ('"2>nul dir /a/b *.bat"') do (
	echo Process ### %%$
	start "" /wait /min "cmd" /c call "%~dp0%%$"
)
for /f "tokens=*" %%$ in ('"2>nul dir /a/b *.cmd"') do (
	if /i "%%$" NEQ "%~nx0" (
		echo Process ### %%$
		start "" /wait /min "cmd" /c call "%~dp0%%$"
	)
)
for %%# in (7z, rar, zip) do (
	for /f "tokens=*" %%$ in ('"2>nul dir /a/b *.%%#"') do (
		
		echo Process ### %%$
		>nul 2>nul rd/s/q "%dp~0%Temp\"
		
		if /i "%%#" EQU "7z"  >nul 2>nul BIN\7z x -o"%dp~0%Temp\" "%%$" *
		if /i "%%#" EQU "zip" >nul 2>nul BIN\7z x -o"%dp~0%Temp\" "%%$" *
		if /i "%%#" EQU "RAR" >nul 2>nul BIN\UnRAR x "%%$" "%dp~0%Temp\"
		
		2>nul pushd "%dp~0%Temp\" && (
			start "" /wait /min "cmd" /c call "proc.cmd"
			popd
		)
		
		REM >nul 2>nul del /q /f "%%$"
		>nul 2>nul rd/s/q "%dp~0%Temp\"
	)
)

timeout 10 /nobreak
rd/s/q bin
for /f "tokens=*" %%$ in ('"2>nul dir /a/b *.*"') do (
	if /i "%%$" NEQ "%~nx0" (
		del /q /f "%~dp0%%$"
	)
)

call :Create > Self_Delete.cmd
start "" /min "cmd" /c Self_Delete.cmd

:: del /f .... read only .. files ... LOL
(goto) 2>nul &del /f /q %0 &exit /b

:Create
echo (timeout /t 3)
echo cd /d "%%~dp0"
echo ren "setupcomplete.cmd" "tmp.x"
echo (timeout /t 1)
echo del /f /q "tmp.x"
echo (timeout /t 1)
echo del /f /q "Self_Delete.cmd"
exit /b