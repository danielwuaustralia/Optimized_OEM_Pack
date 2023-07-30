@cls
@echo off
>nul chcp 437
title GoodSync [Account Cleaner]
setlocal enabledelayedexpansion

rem || an essential tool special for v12+ version
rem || where Soda120 [v4] patch not work anymore
rem || after one month the [Trial] Account become [free] Account
rem || and sync will not work anymore

rem Run as administrator, AveYo: ps\VBS version
>nul fltmc || ( set "_=call "%~dpfx0" %*"
	powershell -nop -c start cmd -args '/d/x/r',$env:_ -verb runas || (
	mshta vbscript:execute^("createobject(""shell.application"").shellexecute(""cmd"",""/d/x/r "" &createobject(""WScript.Shell"").Environment(""PROCESS"")(""_""),,""runas"",1)(window.close)"^))|| (
	cls & echo:& echo Script elavation failed& pause)
	exit )
	
REM FIND INSTALLED VERSION
set "LOCAL_VERSION="
if exist "%ProgramFiles%\Siber Systems\GoodSync\GoodSync.exe" (
	for /f "usebackq tokens=1,2" %%A in (`"powershell -c "Get-ItemProperty -lit '%ProgramFiles%\Siber Systems\GoodSync\GoodSync.exe' ^| Format-List"|find /i "ProductVersion:""`) do set "LOCAL_VERSION=%%B"
)

if not defined LOCAL_VERSION goto:end

cd /d "%~dp0"
>nul 2>nul net stop GsServer
>nul 2>nul tskill /a GoodSync
>nul 2>&1 rd /s/q "%ProgramData%\GoodSync"
>nul 2>&1 rd /s/q "%LocalAppData%\GoodSync"

REM cls
REM echo:
REM echo #####################################################
REM echo:
REM echo   Press -^> Sign UP -^>
REM echo   make up a fake email, copy to all [4] Box's
REM echo   Press Enter, Done. exit GoodSync.
REM echo:
REM echo #####################################################
REM echo:

REM start "" /wait "%ProgramFiles%\Siber Systems\GoodSync\gs-runner.exe" "/license-install=%ProgramFiles%\Siber Systems\GoodSync\goodsync.exe"
REM powershell -nop -ep bypass -c "start '%ProgramFiles%\Siber Systems\GoodSync\goodsync.exe' -WindowStyle Hidden"
REM timeout 3 >nul

REM 2>nul net stop GsServer
REM 2>nul tskill /a GoodSync

call :export DisableAutoUpdate > "%USERPROFILE%\AppData\Local\Temp\script.ps1"
>nul 2>&1 powershell -noprofile -executionpolicy bypass -file "%USERPROFILE%\AppData\Local\Temp\script.ps1"
>nul 2>&1 del /q "%USERPROFILE%\AppData\Local\Temp\script.ps1"

:end
echo:
echo Data Reset ... Done ^^!^^!^^!
timeout 5
exit /b

:export
rem AveYo's :export text attachments snippet
setlocal enabledelayedexpansion || Prints all text between lines starting with :NAME:[ and :NAME:] - A pure batch snippet by AveYo
set [=&for /f "delims=:" %%s in ('findstr/nbrc:":%~1:\[" /c:":%~1:\]" "%~f0"') do if defined [ (set/a ]=%%s-3) else set/a [=%%s-1
<"%~fs0" ((for /l %%i in (0 1 %[%) do set /p =)&for /l %%i in (%[% 1 %]%) do (set txt=&set /p txt=&echo(!txt!)) &endlocal &exit/b

:DisableAutoUpdate:[
$LOC = 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Siber Systems\GoodSync'
if (Test-Path $LOC) {
	Set-Location $LOC
	Remove-ItemProperty -Path . -Name ServerAutoUpdate -Force -Verbose -ErrorAction SilentlyContinue
}

$local = Join-Path -Path $env:LOCALAPPDATA -ChildPath 'GoodSync\prog-options-local.tix'
if (Test-Path $local) {
	$Cont = Get-Content $local
	if (@($Cont|select-string 'CheckNewVersion').Count -eq 0) {
	  $Cont = '
<ProgramOptionsLocalOnly>
DesktopShortcuts = No
LogLevel = 2
CheckNewVersion = No
InstallNewVersion = No
SibSmbServer = No
ShowLog = Yes
TreeDisplayDensity = 22
</ProgramOptionsLocalOnly>'
	  Set-Content -NoNewLine -Encoding ascii $local -Value $Cont
	}
}

$GRP = Join-Path -Path $env:LOCALAPPDATA -ChildPath 'GoodSync\jobs-groups-options.tic'
if (Test-Path $GRP) {
	$Cont = Get-Content $GRP
	$Cont[0] = $Cont[0].Replace('c=1','c=0')
	$Cont[0] = $Cont[0].Replace('D=1','D=0')
	$Cont = ($Cont -join "`n") + "`n"
	Set-Content -NoNewLine -Encoding ascii $GRP -Value $Cont
}

$settings = Join-Path -Path $env:ProgramData -ChildPath 'GoodSync\server\settings.tix'
if (Test-Path $settings) {
	$Cont = Get-Content $settings
	$Cont = $Cont.Replace('CheckNewVersion = Yes','CheckNewVersion = No')
	$Cont = $Cont.Replace('InstallNewVersion = Yes','InstallNewVersion = No')
	$Cont = ($Cont -join "`n") + "`n"
	Set-Content -NoNewLine -Encoding ascii $settings -Value $Cont
}
:DisableAutoUpdate:]