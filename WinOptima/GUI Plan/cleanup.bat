@echo off
cls
echo Cleaning Temporary Files...
echo.
del /s /q "%TEMP%\*" >nul 2>&1
echo Cleanup done.
pause
