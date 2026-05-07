@echo off
setlocal

:: Always operate in the directory where this batch file resides
cd /d "%~dp0"

set "SCRIPT_NAME=SVS_Update_Auto_Downloader.ps1"
set "DOWNLOAD_URL=https://raw.githubusercontent.com/Arthrimus/SVS_Firmware_Repository/refs/heads/main/SVS%%20Control%%20Module%%20Firmwares/Scripts/SVS_Update_Auto_Downloader.ps1"

:: === FILE EXISTS ===
:: Runs silently with zero prompts, exactly as requested
if exist "%SCRIPT_NAME%" (
    powershell -ExecutionPolicy Bypass -File "%SCRIPT_NAME%"
    exit /b
)

:: === FILE MISSING ===
echo.
echo =========================================================
echo   SVS Management Utility - First Time Setup Detected
echo =========================================================
echo   The core management script is not installed in this directory.
echo   Required dependencies must be downloaded to continue.
echo.
set /p "user_choice=Do you agree to download the required files? (Y/N): "

:: Check user input (case-insensitive, first character only)
if /i not "%user_choice:~0,1%"=="Y" (
    echo [CANCELLED] Setup aborted by user.
    exit /b
)

echo [DOWNLOAD] Fetching dependencies from repository...
curl.exe -fsSL -o "%SCRIPT_NAME%" "%DOWNLOAD_URL%"

:: Verify the file was actually created (avoids %errorlevel% parsing bug)
if not exist "%SCRIPT_NAME%" (
    echo.
    echo [ERROR] Download failed. Please check your internet connection and try again.
    pause
    exit /b 1
)

echo [DOWNLOAD] Complete. Launching SVS Management Utility...
powershell -ExecutionPolicy Bypass -File "%SCRIPT_NAME%"
exit /b