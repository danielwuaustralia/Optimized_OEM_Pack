
rem https://superuser.com/questions/1700602
rem Using PowerShell to add an entry to "PendingFileRenameOperations" without distrupting previous entries

@cls
@echo off
>nul chcp 437
setlocal enabledelayedexpansion
title Drivers Installation tool

:verify
cls
(2>nul powershell -nop -c "Get-WMIObject -Classname Win32_Process | Where { $_.CommandLine -match 'WAC_SE.cmd' } | select path" | more +4 | >nul find /i ".exe") && (
	echo:
	echo please wait until 'Windows Auto Configure' will finish
	echo:
	>nul timeout 3
	goto :verify	
)


rem Run as administrator, AveYo: ps\VBS version
>nul fltmc || ( set "_=call "%~dpfx0" %*"
    powershell -nop -c start cmd -args '/d/x/r',$env:_ -verb runas || (
    mshta vbscript:execute^("createobject(""shell.application"").shellexecute(""cmd"",""/d/x/r "" &createobject(""WScript.Shell"").Environment(""PROCESS"")(""_""),,""runas"",1)(window.close)"^))|| (
    cls & echo:& echo Script elavation failed& pause)
    exit )

echo:
cd /d "%~dp0"
if /i "X%~1X" NEQ "XX" goto :%~1


call :Install "REALTEK LAN DRIVER" "DRV_LAN_Realtek_SZ_W10_64_V104612312020_20210316RL" "setup.exe /s"
call :Install "REALTEK AUDIO DRIVER" "DRV_Audio_RTK_SZ_RTK_W10_64_V6091261_20210731RL" "setup.exe /s"
call :Install "REALTEK CARD READER DRIVER" "RtsUer_10.0.18362.31252_W19H1_WHQL_20190621" "setup.exe /s"

call :Install "NVIDIA DISPLAY DRIVER" "522.25-desktop-win10-win11-64bit-international-dch-whql" "setup.exe -s -noreboot -clean"
call :Install "NVIDIA USB C DRIVER"              "nVidia-PPC_1.1.27.831"            "pnputil /add-driver %%%%cd%%%%\nvppc.inf /install"

REM call :Install "INTEL CHIPSET DRIVER" "DRV_Chipset_Intel_KBL_SZ_W10_64_V101114_20210803RL" "SetupChipset -s -norestart"
REM call :Install "INTEL ENGINE MANAGMENT INTERFACE" "DRV_MEI_Intel_Con_CFL_SZ_W10_64_V204010001029_20210823RL" "pnputil /add-driver %%%%cd%%%%\heci.inf /install"
call :Install "INTEL DRIVER AND SUPPORT" "Intel-Driver-and-Support-Assistant-Installer" "Intel-Driver-and-Support-Assistant-Installer /S"
call :Install "INTEL ENGINE MANAGMENT INTERFACE" "DRV_MEI_Intel_Con_CFL_SZ_W10_64_V204010001029_20210823RL" "SetupME /S"

call :Install "INTEL RAPID STORAGE TECHNOLOGY" "DRV_RST_Intel_CFL_SZ_W10_64_V17941017_20200910RL" "Install\SetupRST -accepteula -s"
call :Install "INTEL BLUETOOTH DRIVER" "bt_K1550-1650-BT_21.60.0.4_Win10_UWD_x64_21.60.0.4" "Intel_Bluetooth.msi /quiet /norestart"
call :Install "INTEL CHIPSET DRIVER" "DRV_Chipset_Intel_KBL_SZ_W10_64_V101114_20210803RL" "pnputil /add-driver %%%%cd%%%%\*.inf /subdirs /install"
call :Install "INTEL DISPLAY DRIVER" "igfx_win_101.1994" "Installer.exe /s" -Temp

echo:
echo Done.
for %%$ in (7z.dll, 7z.exe, UnRAR.exe) do (>nul 2>&1 del /q %%$)
>nul 2>&1 cmd /c reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /f /v "1" /t Reg_SZ /d "cmd /c rd/s/q %windir%\drivers"
timeout 5
>nul 2>&1 del /q "%~nx0"
exit

:Install
if not exist "%~2.rar" if not exist "%~2.7z" if not exist "%~2.zip" goto :eof
echo Install %~1
set ExtractFolder="%~2\"
if "%~4" == "-Temp" set "ExtractFolder=c:\Temp"
if exist !ExtractFolder! >nul 2>&1 rd/s/q !ExtractFolder!
2>nul md !ExtractFolder!
if exist "%~2.rar" >nul 2>&1 UnRAR.exe x "%~2.rar" !ExtractFolder!
if exist "%~2.7z"  >nul 2>&1 7z x -o!ExtractFolder! "%~2.7z" *
if exist "%~2.zip" >nul 2>&1 7z x -o!ExtractFolder! "%~2.zip" *
pushd !ExtractFolder!
>nul 2>&1 cmd /c %~3
popd

>nul 2>&1 rd/s/q !ExtractFolder!
for %%$ in (7z, rar, zip) do (if exist "%~2.%%$"  >nul 2>&1 del /q "%~2.%%$")
goto :eof