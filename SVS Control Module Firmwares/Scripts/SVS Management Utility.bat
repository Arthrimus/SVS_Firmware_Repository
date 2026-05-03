@echo off
setlocal

:: Change to the directory where this batch file is located
cd /d "%~dp0"

set "SCRIPT_NAME=SVS_Update_Auto_Downloader.ps1"
:: Note: %% is used to escape the % character in batch files
set "DOWNLOAD_URL=https://raw.githubusercontent.com/Arthrimus/SVS_Firmware_Repository/refs/heads/main/SVS%%20Control%%20Module%%20Firmwares/Scripts/SVS_Update_Auto_Downloader.ps1"

:: Check if the PowerShell script exists in the current directory
if exist "%SCRIPT_NAME%" (
    echo [+] Found %SCRIPT_NAME% in the executing directory.
) else (
    echo [!] %SCRIPT_NAME% not found. Downloading from repository...
    :: Download using curl.exe (built into Windows 10/11)
    curl.exe -fsSL -o "%SCRIPT_NAME%" "%DOWNLOAD_URL%"
    if %errorlevel% neq 0 (
        echo [X] Download failed. Please check your internet connection or URL.
        pause
        exit /b 1
    )
    echo [+] Download complete.
)

:: Set execution policy for this PowerShell session and run the script
:: -ExecutionPolicy Bypass allows the script to run without modifying system-wide settings or requiring admin rights
echo [+] Setting execution policy and running script...
powershell -ExecutionPolicy Bypass -File "%SCRIPT_NAME%"