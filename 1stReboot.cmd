@cls
@echo on
>nul chcp 437
setlocal enabledelayedexpansion

move "C:\Windows\Runstartuptask.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup" /y
del /f /q C:\Windows\Startallback.exe
del /f /q /s C:\Windows\Acrobat\*
del /f /q C:\Windows\AAFOptimusDCHAudioPack.exe
