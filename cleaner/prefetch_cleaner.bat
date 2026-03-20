@echo off
:: Check for Administrator rights
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

echo.
echo =======================================
echo   Clearing Windows Prefetch Folder...
echo =======================================
echo.

del /q /f /s C:\Windows\Prefetch\*.*

echo Prefetch cleared successfully.
pause
