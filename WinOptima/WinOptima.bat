@echo off
title Windows Optimizer v3.0
color 0A

:menu
cls
echo ===============================
echo   WINDOWS OPTIMIZER v3.0
echo ===============================
echo.
echo 1. Basic Optimization (Safe)
echo 2. Gaming Mode
echo 3. Cleanup Only
echo 4. Exit
echo.
set /p choice=Select an option (1-4): 

if "%choice%"=="1" goto basic
if "%choice%"=="2" goto gaming
if "%choice%"=="3" goto cleanup
if "%choice%"=="4" exit

echo Invalid choice!
pause
goto menu

:restore
wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Windows Optimizer", 100, 7
echo Restore Point created.
echo.
goto :eof

:basic
cls
echo Running Basic Optimization...
echo.

call :restore

REM Disable animations (safe)
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f

REM High performance Mode
powercfg -setactive SCHEME_MIN

reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f

echo Basic optimization completed.
pause
goto menu

:gaming
cls
echo Turning ON Gaming Mode...
echo.

set /p sure=This is persistent. Continue? (y/n):
if /i not "%sure%"=="y" goto menu

call :restore

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v LetAppsRunInBackground /t REG_DWORD /d 2 /f
taskkill /f /im explorer.exe
start explorer.exe



echo Enjoy Gaming!
pause
goto menu

:cleanup
cls
echo Cleaning Temporary Files...
echo.

del /s /q "%TEMP%\*" >nul 2>&1

echo Completed Cleaning Up files.
pause
goto menu