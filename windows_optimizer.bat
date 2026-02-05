reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f

taskkill /f /im explorer.exe
start explorer.exe

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v LetAppsRunInBackground /t REG_DWORD /d 2 /f

del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\*" /q

powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

del /q /f "%TEMP%\*"
