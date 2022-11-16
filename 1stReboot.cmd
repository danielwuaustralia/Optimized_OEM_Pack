@cls
@echo on
>nul chcp 437
setlocal enabledelayedexpansion

move "C:\Windows\Runstartuptask.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup" /y
