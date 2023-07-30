@echo off
cls

set ext=%1
if "%1"=="" (
echo.
echo No extension
goto :eof )

for %%i in ("*.%ext%") do (set fname=%%i) & call :rename
goto :eof

:rename
ren "%fname%" "%fname:~0,-20%.%ext%"
goto :eof