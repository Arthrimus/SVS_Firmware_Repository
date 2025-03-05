@echo off
title SVS Firmware Update Tool
:START
cls
echo ************************************************************************************************************************
echo ******************************************** SVS Firmware Update Tool V1.0 *********************************************
echo ********************************************      ARTHRIMUS LLC 2024       *********************************************
echo ************************************************************************************************************************
echo.
echo Scanning for possible SVS Control Modules...
timeout /t 1 >nul
@echo off &setlocal
for /f "tokens=2 delims=()" %%i in ('wmic path win32_pnpentity where "caption like 'USB-SERIAL CH340%%'" get caption') do set "com=%%i"
set num=%com:~3%
if %num% == ~3 goto NOTCONNECTED
echo.
echo Results:
echo ========================================================================================================================
wmic path win32_pnpentity get caption /format:table| "%WINDIR%/System32/find.exe" "CH340" 
echo ========================================================================================================================
echo.
timeout /t 1 >nul 
echo If multiple options appear then that means we're not sure which option is the SVS. 
echo The SVS uses a CH340 USB serial communication chip. 
echo If you see more than one CH340 listed that means you have some other device connected that also uses a CH340. 
echo If so, you should unplug the SVS and run the firmware update again to see which of the CH340 COM ports disappears. 
echo Then plug your SVS back in and run the firmware update again to see which new CH340 COM port appears. 
echo That will be the port number for the firmware update.
echo.
echo Based on the scan of the available COM ports your SVS is probably connected to "COM%num%" 
echo Is this correct?
choice /c YN
if %errorlevel%==1 goto MIDDLE
echo.
echo Please manually enter the port number of your SVS Control Module.
set /p num= COM#:
echo.

:main 

if %num% equ 0 goto valid
if %num% == "" goto invalid
	set /a inputval="%num%"*1
if %inputval% equ 0 goto invalid
	goto valid

:invalid
echo Input is not a number. Try again.
pause
goto START

:valid
echo The COM port for your SVS is set to COM%num%
echo.
echo Is this correct?
choice /c YN
if %errorlevel%==1 goto MIDDLE
if %errorlevel%==2 goto START
echo.

:NOTCONNECTED
cls
echo ************************************************************************************************************************
echo ******************************************** SVS Firmware Update Tool V1.0 *********************************************
echo ********************************************      ARTHRIMUS LLC 2024       *********************************************
echo ************************************************************************************************************************
echo.
echo No SVS Control Module Detected. Please make sure your USB cable is plugged in and try again.
echo.
echo If you are running this script on Windows 11 and you know for sure that your SVS is connected you may not have the 
echo windows feature "wmic" installed. This feature was recently deprecated from Windows 11. To install wmic you can open the
echo start menu and search for "Optional features" then select "View Features" and search for "wmic" and install it. Once you
echo have completed these steps you can run the firmware update script again.
echo.
echo Alternatively if you already know which COM port number your SVS is connected to you can manually type the COM # here 
echo and continue the update without installing wmic.
set /p num= COM#:
goto main

:MIDDLE
cls
REM echo ************************************************************************************************************************
REM echo ******************************************** SVS Firmware Update Tool V1.0 *********************************************
REM echo ********************************************      ARTHRIMUS LLC 2024       *********************************************
REM echo ************************************************************************************************************************
REM echo.
REM echo Checking current Firmware version. This could take a few seconds.
REM echo If the firmware update hangs here that means the wrong COM port was selected and no SVS was detected. You'll need to
REM echo check that your SVS is connected via USB and that you have selected the correct COM port for your SVS then try again.
REM mode COM%num% BAUD=9600 PARITY=n DATA=8 DTR=on >nul
REM echo d >COM%num%
REM timeout /t 1 >nul
REM COPY COM%num% fwver.txt >nul
REM echo >nul
REM set /p Build=<fwver.txt

cls
echo ************************************************************************************************************************
echo ******************************************** SVS Firmware Update Tool V1.0 *********************************************
echo ********************************************      ARTHRIMUS LLC 2024       *********************************************
echo ************************************************************************************************************************
echo.
REM echo Checking current Firmware version. Done!
REM echo ------------------------------------------------------------------------------------------------------------------------
REM echo The current installed SVS Firmware version is "%Build%"
REM echo ------------------------------------------------------------------------------------------------------------------------
echo.
echo Scanning for the newest SVS firmware file in the "SVS Firmware Update" folder...
echo.
timeout /t 1 >nul
set fn=""
FOR /F "eol=| delims=" %%I IN ('DIR "SVS_FW_*.hex" /A-D /B /OD /TW 2^>nul') DO (SET "fn=%%I")
if %fn% == "" goto NOTDETECTED
echo.
echo Result:
echo ========================================================================================================================
echo %fn%
echo ========================================================================================================================
timeout /t 1 >nul
echo.
REM if %fn% == %Build% goto SAME
echo The newest firmware update file detected was "%fn%" Is this the firmware file you wish to update to 
choice /c YN
if %errorlevel%==1 goto EXEC
if %errorlevel%==2 goto MANUAL

:SAME
echo The newest firmware "%fn%" is already installed. Do you want to install this firmware again anyway?
choice /c YN
if %errorlevel%==1 goto EXEC
if %errorlevel%==2 goto MANUAL

:NOTDETECTED
echo Results:
echo ========================================================================================================================
echo File Not Found
echo ========================================================================================================================
echo.
echo No SVS firmware file could be found. Please download a new firmware update file from arthrimus.com and place it in the "SVS Firmware Update" folder then try again.
pause
exit

:MANUAL
cls
echo ************************************************************************************************************************
echo ******************************************** SVS Firmware Update Tool V1.0 *********************************************
echo ********************************************      ARTHRIMUS LLC 2024       *********************************************
echo ************************************************************************************************************************
REM echo.
REM echo Checking current Firmware version. Done!
REM echo ------------------------------------------------------------------------------------------------------------------------
REM echo The current installed SVS Firmware version is %Build%.hex
REM echo ------------------------------------------------------------------------------------------------------------------------
echo.
echo Scanning for all SVS Firmware files in the "SVS Firmware Update" folder...
timeout /t 1 >nul
echo.
echo Results:
echo ========================================================================================================================
dir /b /a-d *.hex
echo ========================================================================================================================
timeout /t 1 >nul
echo.
echo Please enter the full filename of your firmware update hex file as it appears above. 
echo If you do not see the correct firmware file listed above, please download a new firmware update file from arthrimus.com and place it in the "SVS Firmware Update" folder.
set /p fn= Filename:
:main2 
ECHO.%fn%| "%WINDIR%/System32/find.exe" /I ".hex">Nul && ( 
  goto valid2
) || (
  goto invalid2
)
echo.

:invalid2
echo Invalid firmware file. Does not end in ".hex"
pause
goto MANUAL


:valid2
echo The filename of your update is set to %fn%
echo.
echo Is this correct?
choice /c YN
if %errorlevel%==1 goto EXEC
if %errorlevel%==2 goto MANUAL
:EXEC
"tools\avrdude\7.2/bin/avrdude" -c urclock -p m328p -P COM%num% -b 115200 -V -D -U flash:w:"%fn%":i
pause