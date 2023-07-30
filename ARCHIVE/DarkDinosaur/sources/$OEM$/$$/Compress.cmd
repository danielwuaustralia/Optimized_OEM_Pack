
rem create_installer_archive.py
rem https://chromium.googlesource.com/chromium/src/+/refs/heads/main/chrome/tools/build/win/create_installer_archive.py

rem 7-Zip command lines (Split from code's DX runtimes)
rem http://ryanvm.net/forum/viewtopic.php?t=6691

rem Efficient LZMA2 in CommandLine to 7z Big File
rem https://sourceforge.net/p/sevenzip/discussion/45797/thread/2037f10a/

rem ZPAQ
rem http://mattmahoney.net/dc/
rem https://github.com/fcorbelli/zpaqfranz/releases
rem https://encode.su/threads/456-zpaq-updates
rem https://encode.su/threads/1860-PAKKA-(ZPAQ-s-Win32-quot-versioned-quot-unpacker)

rem get last folder From Input User
rem https://stackoverflow.com/questions/2396003/get-parent-directory-name-for-a-particular-file-using-dos-batch-scripting

@cls
@echo off

:: setup basic variables
set tst=
set args=
set IsRoot=
set args_1=
set args_2=
set args_3=
set args_4=
set loopEnd=
set userInput=
set ltr=
set ltr_=
set ParentDir=
set endFile=
set userInput=
set address_Header=
set wasted=
set count=
set count_=
set isBool_=
set fix_=
set input_=
set output_=
set folder_=
set tmpValue=

:: setup MOST important var
set args=%*
set args_1=%1
set args_2=%2
set args_3=%3
set args_4=%4

set debug_=
if defined Debug set debug_=echo

:: string for FOR loops
set extract_=-RAR, -7Z, -ZPAQ
set Compress_=RAR, 7Z, 7ZE, ZPAQ
set driveLetterList=c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
set numberList=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40
set numberList_=2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40

:: default Location
:: default settings
set Z_="%windir%\7zr.exe"
set p_="%windir%\zpaq64.exe"
set R_="%ProgramFiles%\winrar\rar.exe"

:: another option
:: set L_=LZMA
:: set p_="%windir%\zpaqfranz.exe"

:begin
:: check user args ...........
if not defined args goto :MENU
if not defined args_1 goto :MENU
if not defined args_2 goto :MENU

:: case user didnt choice 7z or rar
if not defined args_3 (
	for %%i in (RAR, 7ZE) do (
		echo %%i | >nul find /i "7ZE" && (
			call :worker 7Z Compress V2
		) || (
			call :worker %%i Compress
		)
	)
	goto :done
)

:: user is an idiot for sure
if defined args_4 goto :menu

:: Case of Compress
for %%i in (%Compress_%) do (
	if /i '%args_3%' EQU '%%i' (
		echo '%args_3%' | >nul find /i "7ZE" && (
			call :worker 7Z Compress V2
		) ||  (
			call :worker %%i Compress
		)
		goto :done
	)
)

:: Case of Extract
for %%i in (%extract_%) do (
	if /i '%args_3%' EQU '%%i' (
		call :worker %%i Extract
		goto :done
	)
)

:: case end ..
:: bad arguments
goto :MENU

:worker
if /i '%2' Equ 'Compress' 	goto :CompressMode 
if /i '%2' Equ 'Extract' 	goto :ExtractMode
goto :eof

:CompressMode
Title Compress Mode ~ %1
echo.
echo                   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo                      Compress Mode ~ %1
echo                   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo.

:: clear variables
set tst=
set ltr=
set ltr_=
set IsRoot=
set PARENT=
set userInput=
set input_=
set output_=

:: just a couple of checks
:: and some fixes ........

echo Check user Input [%1 #1A]
(echo %args_1% | >nul find /i "*") && (echo %args_1% | >nul find /i "\") && (
	set input_=%args_1%
	goto :PhraseFolderName
) || goto :ignoreFolderName
:PhraseFolderNameValidate
if defined input_ (
	echo Check user Input [%1 #1D]
	echo Found Directory :: %input_%
	if not exist %input_% goto :nofiles
)

:ignoreFolderName
echo Check user Input [%1 #1E]
(echo %args_1% | >nul find /i "*") || ( if not exist %args_1% goto :nofiles )

echo Check user Input [%1 #2]
(echo %args_2% | >nul find /i ".%1") && ( set "userInput=%args_2%" ) || ( set "userInput=%args_2%.%1" )

rem ... find if contain ""
echo Check user Input [%1 #3]
echo %args_1% | >nul find /i """" && goto :validate_4B

rem fix problem with winrar & ZPAQ
rem convert 'Test\' Into 'Test'
:validate_4A
echo Check user Input [%1 #4A]
set tst=%args_1%px
(echo %tst% | >nul find /i "\px") && (set args_1=%args_1:~0,-1%)
goto :validate_More

rem fix problem with winrar & ZPAQ
rem convert '"Script Addins\"' Into '"Script Addins"'
:validate_4B
echo Check user Input [%1 #4B]
set tst=%args_1:~0,-1%px
set tst=%tst:~1,1000000%
(echo %tst% | >nul find /i "\px") && (set args_1="%tst:~0,-3%")

:validate_More
if exist %userInput% (
	1>nul 2>nul del /q /f %userInput%
	if exist %userInput% (
		echo.
		echo %%%%%%%% %1 ERROR %%%%%%%%%
		echo Error remove Dummy file
		title 
		exit /b
))

1>nul 2>nul 3>nul echo.>%userInput%
if not exist %userInput% (
	echo.
	echo %%%%%%%% %1 ERROR %%%%%%%%%
	echo Error Create Dummy file
	title 
	exit /b
)

1>nul 2>nul del /q /f %userInput%

rem case of 'c:'
rem case of 'c:\'
for %%i in (c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z) do (
	set ltr=%%i
	call :getFullName_Drive_v2
)

if defined IsRoot (
	echo.
	echo %%%%%%%% %1 ERROR %%%%%%%%%
	echo Do not use Root as Source
	echo Example Not~To~Do ^> D:^ D^:^\
	title 
	exit /b
)

if /i '%1' EQU 'RAR'  	%Debug_% %R_% a -s -r -ep1 -MT12 -m5 -ma5 -md256m %userInput% %args_1%

if /i '%1' EQU '7Z' (
	if /i '%3' EQU '' 		%Debug_% %Z_% a -t7z -ms=on -mmt=on -m0=BCJ2 -m1=LZMA2:d28:fb256:mc256 -m2=LZMA2:d28:fb256:mc256 -m3=LZMA2:d28:fb256:mc256 -mb0:1 -mb0s1:2 -mb0s2:3 %userInput% %args_1%
	if /i '%3' EQU 'v2' 	%Debug_% %Z_% a -t7z -ms=on -mmt=on -mx9 -md256m -mfb=256 %userInput% %args_1%
)

if /i '%1' EQU 'ZPAQ' 	call :zpaq
goto :eof

:zpaq
echo.>%userInput%
call :getFullName
set target="%address_Header%\%endFile%"
1>nul 2>nul del /q /f %userInput%

:: not allowd files v1
echo Check user Input [ZPAQ #5]
echo %args_1% | >nul find /i "*" && (
	echo.
	echo %%%%%%%% ZPAQ ERROR %%%%%%%%%
	echo Compress files is not supported
	title 
	exit /b
)

:: not allowd files v2
echo Check user Input [ZPAQ #6]
(pushd %args_1% && popd) || (
	echo.
	echo %%%%%%%% ZPAQ ERROR %%%%%%%%%
	echo Compress files is not supported
	title 
	exit /b
)

rem case of '/?folder/?'
echo Check user Input [ZPAQ #7]
(echo '%args_1%' | >nul find /i "/") && (
	echo.
	echo %%%%%%%% ZPAQ ERROR %%%%%%%%%
	echo Do not use ^/ in folder name
	echo Example Not~To~Do ^> Folder^/
	title 
	exit /b
)

rem case of 'folder\folder'
rem case of '?:\folder\folder'
echo Check user Input [ZPAQ #8]
(echo '%args_1%' | >nul find /i "\") && (
	FOR %%I in (%args_1%) do (
		SET PARENT="%%~nI"
	)
)

rem Cancled since validate_4A validate_4B
REM rem case of 'folder\'
REM echo Check user Input [ZPAQ #9]
REM if '%PARENT%' EQU '""' (
REM echo.
REM echo %%%%%%%% ZPAQ ERROR %%%%%%%%%
REM echo Do not use ^\^ on Last folder 
REM title 
REM exit /b
REM )

rem case of 'folder'
echo Check user Input [ZPAQ #9]
if not defined PARENT (set PARENT=%args_1%)

pushd %args_1% & cd..
echo.

if defined debug echo Pth=%cd%
%Debug_% %p_% add %TARGET% %PARENT% -m5 -t12

popd
goto :eof

:ExtractMode
rem remove the '-' shit we added
set var=%1
set var_fixed=%var:~1,100%

Title Extract Mode ~ %var_fixed%
echo.
echo                   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo                      Extract Mode ~ %var_fixed%
echo                   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo.

set userInput=
echo Check user Input [%var_fixed% #1]
echo %args_2% | find /i ".%var_fixed%"
if /i %errorlevel% EQU 0 ( set userInput=%args_2% ) else (set userInput=%args_2%.%var_fixed%)

echo Check user Input [%var_fixed% #2]
if not exist %userInput% goto :nofiles

1>nul 2>nul md %args_1%
(1>nul 2>nul pushd %args_1% && popd) || (
	
	echo.
	echo Fail to Procced with folder creation
	if exist %args_1% 		echo file name allready exist
	if not exist %args_1% 	echo couldn't create folder
	exit /b
)

if /i '%var_fixed%' EQU 'RAR'  %Debug_% %R_% x -r -y %userInput% %args_1%
if /i '%var_fixed%' EQU '7Z'   %Debug_% %Z_% x -r -y -o%args_1% %userInput% *.*
if /i '%var_fixed%' EQU 'ZPAQ' %Debug_% %p_% extract %userInput% -to %args_1% from 1 -force
goto :eof

:: program done
:: place calls here

:menu
echo.
echo :: How to Use ::
echo :: Compress Input Output [^-] Rar^/7Z^/7ZE^/Zpaq
echo :: Example -- compress "%programfiles%\Windows Defender" defender ZPAQ
echo :: Compress Tool also support deCompress Files with ^'-^' switch
echo :: Example -- compress "%cd%" defender -ZPAQ
exit /b

:nofiles
echo.
echo Missing folder ^/ File
title 
exit /b

:done
echo.
echo Done.
title 
exit /b

:CreateFolderFail
echo.
echo Create folder Name
echo '%args_1%'
echo #### FAILED ####
title 
exit /b

:UpdateCount
set /a count+=1
goto :eof

:getFullName_Drive_v2
if /i '%args_1%' Equ '"%ltr%:"' (set IsRoot=%ltr%:)
if /i '%args_1%' Equ '"%ltr%:\"' (set IsRoot=%ltr%:)
if /i '%args_1%' Equ '%ltr%:' (set IsRoot=%ltr%:)
if /i '%args_1%' Equ '%ltr%:\' (set IsRoot=%ltr%:)
goto :eof

:: special section for find file name
:: when using weires path location
:: like "xxx\xxx\7.rar"

:getFullName
set wasted=0
set count=0
set ltr=
set ltr_=
set endFile=
set loopEnd=
set address_Header=

for %%i in (%numberList_%) do (	
	call :getFullName_Path %%i
)

for %%i in (%driveLetterList%) do (
	if not defined loopEnd (
		set ltr=%%i
		call :getFullName_Drive
	)
)

if defined debug echo Check Directory [1]
for /f "tokens=*" %%x in ('dir %userInput% ^/b') do (
	set endFile=%%x
)

set address_Header=%ltr_%%address_Header%
goto :eof

:getFullName_Path
if /i '%count%' EQU '%wasted%' (
	set /a wasted+=1
	if defined debug echo Check Directory [2]
	
	for /f "tokens=%1 delims=\" %%x in ('dir %userInput% ^| find ^/i ^"Directory^"') do (
		if "%%x" NEQ "" (
			call :UpdateCount
			if not defined address_Header set address_Header=%%x
			if defined address_Header set address_Header=%address_Header%^\%%x
		)
	)
)
goto :eof

:getFullName_Drive
if defined debug echo Check Directory [3]
dir %userInput% | find /i "%ltr%:\">nul
if /i %errorlevel% EQU 0 (set loopEnd=true & set ltr_=%ltr%:)
goto :eof

:: special section for find folder name
:: when using weires path location
:: like ... "fgdfg\dfgdfg\dfgdg\*.zip"

:PhraseFolderName
set count=0
set count_=-1
set isBool_=
set address_Header=
	
echo Check user Input [%1 #1B]
echo %input_% | find /i """" && goto :removeGer
goto :PhraseFolderName_
:removeGer
set fix_=%input_:~0,-1%
set fix_=%fix_:~1,1000000%
set input_=%fix_%
set isBool_=true
:PhraseFolderName_
call :UpdateFolderStructure %1
goto :PhraseFolderNameValidate

:UpdateFolderStructure
set input__=%input_%
FOR /f "tokens=1 delims=*" %%G IN ("%input_%") do (set input_=%%G)
for %%i in (%numberList%) do call :BuildFolderStructure %%i

echo Check user Input [%1 #1C]
echo %input__% | find /i "\*" && (set /a count_=%count%) || (set /a count_=%count%-1)

if /i %count_% LSS 1 (
	set input_=
	goto :eof
)

for %%i in (%numberList%) do call :BuildFolderStructure %%i

set input_=%address_Header%
if /i '%input__:~0,1%' EQU '\' set input_=\%input_%
if defined isBool_ set input_="%input_%"
goto :eof

:BuildFolderStructure
FOR /f "tokens=%1 delims=\" %%G IN ("%input_%") do ( 
	if '%%G' NEQ '' (
		if /i %count_% EQU -1 (
			call :UpdateCount
			goto :eof
		)
		
		if /i %1 LEQ %count_% (
			if defined address_Header 		(set address_Header=%address_Header%^\%%G)
			if not defined address_Header 	(set address_Header=%%G)
		)
	)
)
goto :eof