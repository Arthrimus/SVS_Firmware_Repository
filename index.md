---
layout: default
title: SVS Control Module Firmware
---

<h1 align="center" style="margin-top: 0px;">SVS Control Module STABLE Firmware</h1>

<p style="margin:30px;"></p>


### [For BETA firmware versions click here](beta.md)

### [For IR Code SD Card Files click here](ir.md)

### [For Serial Commands click here](serial.md)


<p style="margin:20px;"></p>

<h2 align="center" style="margin-top: 0px;">Update Instructions</h2>

<p style="margin:20px;"></p>

### Windows Users

**SVS Management Utility**

*Based on the foundation created by [KnightNZ](https://github.com/KnightNZ) in the SVS_Flash program I have expanded it into a more comprehensive firmware update and management utility. The SVS Management Utility allows you to connect to your SVS, check current firmware version, install new firmware updates, and manually control the SVS. In future releases the SVS Management Utility will also allow you to configure advanced settings on the SVS in bulk using your computer instead of manually toggling those settings with your SVS IR remote.*

<p align="center">
  <img src="https://github.com/Arthrimus/SVS_Firmware_Repository/blob/main/Images/SVS_Management_Utility.png" />
</p>


**SVS Management Utility Instructions**

1. Download the latest Firmware Update file and unzip it somewhere on your computer.
2. Run the .exe file labeled "SVS Management Utility v1.0.exe" *Windows will warn you that the publisher is unknown, just click "More Info" and then click "Run Anyway"*
3. The SVS Management Utility will search the firmware update folder and find the latest firmware file. If it doesn't find a firmware file the "Firmware Update File" text box will display "Local Firmware File Not Found" You can use the "Browse" button to look for a firmware file in a different folder on your PC.
4. Click the "Connect SVS" Button. The SVS Management Utility will search for the correct COM port for updating your SVS. The SVS uses a CH340 serial chip, so the firmware update tool searches for any CH340 devices and selects the first one it finds. If you have multiple CH340 devices connected at once you can click "No" and you will can manually enter the correct COM port for your SVS.
5. Once the SVS Management Utility connects to your SVS you will see the current firmware version that is installed on your SVS, the total number of inputs connected to your SVS, and the current active input of your SVS.
6. To update your firmware, simply click the "Firmware Update" button and the SVS Management Utility will flash the new firmware file and alert you when the flash is complete. It will update the current firmware version to reflect the newly installed firmware on your SVS.

In addition to firmware updates you can also use the SVS Management Utility to control your SVS. 

* **Next Input, Previous Input:** These buttons allow you to manually cycle the input selection up or down by one input on your SVS. *Requires minimum SVS Firmware Version 1.12*
* **Change Input:** This button allows you to manually change to the input number specified in the "Enter Input Number" text box. *Requires minimum SVS Firmware Version 1.12*
* **Seek Next, Seek Previous:** These buttons allow you to manually seek to the next or previous active input if you have multiple video sources active at the same time. This function skips all inactive inputs. *Requires minimum SVS Firmware Version 1.14*
* **Attract Mode:** This checkbox allows you to turn "Attract Mode" on or off. *Requires minimum SVS Firmware Version 1.14*
* **Advanced Configuration:** This set of features is still under development, but will allow the user to make bulk changes to settings such as which inputs should activate the RGB to YPbPr and YPbPr to RGB Transcoder modules. More info to come.

**_If you are still running Windows 10 you can also use the SVS Management Utility, but the original "SVS Firmware Update Tool v1.0 Windows.bat" file is still included if for whatever reason you would rather use that. The batch file no longer works on Windows 11 with the full deprecation of wmic so the SVS Management Utility is the only option to update on Windows 11._**

<p style="margin:50px;"></p>

### Unix Users

 **Thanks to the fantastic work of [Thiaramus](https://github.com/thiaramus), the firmware update script has been ported to Unix based systems such as Linux and MacOS.**

#### Linux Users

* Install AVRDUDE using your package manager:

Open a terminal and run the following command to install AVRDUDE:
`sudo apt-get install avrdude`

_For your specific Linux distribution, you may need to use a different package manager or command to install AVRDUDE.
The example above is for Ubuntu and Debian based distributions._

* Run in the terminal:
`bash SVS\ Firmware\ Update\ Tool\ v1.0\ Unix.sh`

#### Mac Users

1. Follow the instruction at [https://brew.sh](https://brew.sh) to install Brew.

2. Install AVRDUDE using Brew:
`brew install avrdude`

3. Run in the terminal:
`bash SVS\ Firmware\ Update\ Tool\ v1.0\ Unix.sh`


<p style="margin:100px;"></p>



<h2 align="center" style="margin-top: 0px;">Firmware Update Downloads</h2>

<p style="margin:50px;"></p>

## Version 1.15 (2025-04-09)

### [Download](https://github.com/Arthrimus/SVS_Firmware_Repository/releases/download/v1.15/SVS_Firmware_1.15.7z)

### Changelog:
- Fixed bug with autodetection on 32+ input switch setups. ***This is a required update for the expansion kit and larger than 32 input switches.***
- Fixed an order of operations bug with user defined IR code delay.
- Fixed bug with seek backwards function that could under the right circumstances cause the input number to seek to an out of range number (greater than the total number of available inputs)
- Improved seek behavior when no inputs are active. Seek will now jump to input 0 if no active inputs exist.

<p style="margin:50px;"></p>

## Version 1.14 (2025-03-11)

### [Download](https://github.com/Arthrimus/SVS_Firmware_Repository/releases/download/v1.14/SVS_Firmware_1.14.7z)

### Changelog:
- Added seek mode. Allows you to use the left/right buttons on the SVS remote to jump to the next/previous active input instead of manually cycling through all inputs one at a time. The up/down buttons still allow cycling one by one as with previous firmware versions.
- Added the ability to load a config file from the SD card to change settings such as whether the pushbutton is set to cycle inputs or seek active inputs, change the "Attract Mode" interval, and set the baudrate for the future RS232 module. [Download Config File Here](https://github.com/Arthrimus/SVS_Firmware_Repository/raw/refs/heads/main/SD%20Card%20Files/SD%20Card%20Config%20File.zip)
- Added an interrupt to the control module pushbutton to cancel SD card reading and IR code transmission to speed up manual input cycling during IR code transmission sequence.
- Added a quasi-interrupt like function to the IR receiver to cancel IR code transmission, but not SD reading, to speed up manual input cycling during IR code transmission sequence. (true interrupt not feasible at this time)
- Added user defined IR code transmission delay time for SD card IR code files. (Was present in older firmware, but was temporarily removed (accidentally) in 1.13 as part of the SD card loading system rewrite)
- Added Power on/off option using the SVS IR remote and serial commands.
- Added "attract mode" option to automatically cycle through inputs at timed intervals. Improved from 1.14 BETA version, now uses seek function to only switch between active inputs.
- Optimized serial parser to significantly reduce dynamic memory usage.
- Updated peripheral communication system's command set to reduce memory usage.
- Converted all 2 state variables from integer (we used to have it so easy) to Boolean to reduce memory usage.

<p style="margin:50px;"></p>

## Version 1.13 (2025-03-5)

### [Download](https://github.com/Arthrimus/SVS_Firmware_Repository/releases/download/v1.13/SVS_Firmware_1.13.zip)

### Changelog:
- Streamlined SD Card reading process for IR codes. Allows IR code sequences to be transmitted at a significantly faster interval (1.396 seconds faster per serial code slot)
- Input #0 _"no input selected"_ can now be cycled to using the control module pushbutton as well as IR and Serial Up/Down commands. Previously input cycling would roll over to input 1, skipping input 0.
- Added more serial commands to the existing serial control system. [See Here for details.](serial.md)
- Added wmic deprecation warning and instructions to the firmware update script for Windows 11 users.

<p style="margin:41px;"></p>

## Version 1.12 (2025-02-21)

### [Download](https://github.com/Arthrimus/SVS_Firmware_Repository/releases/download/v1.12/SVS_Firmware_1.12.zip)

### Changelog:
- Added 500ms delay to new input detection. This helps eliminate phantom input detection caused by occasional transient voltage spikes inside the switch
- Added USB based serial control system. Inputs can now be manually selected by passing serial commands to the SVS. [See Here for details.](serial.md)
- Refined the peripheral communication system.

<p style="margin:41px;"></p>


## Version 1.10 (2025-02-06)

### [Download](https://github.com/Arthrimus/SVS_Firmware_Repository/releases/download/V1.10/SVS_Firmware_1.10_Update.7z)

### Changelog:
- Fixed factory reset bug that prevented the user programmable "input up/down" buttons from being erased during the factory reset procedure.
- Fixed IR remote bug that caused the Retro Tink 4k remote's "Profile 1" button to trigger the "input up" function if the user programmed the Retro Tink 4K remote AUX buttons as "input up/down".
- Optimized input detection routine, reducing flash memory usage by 13%.
- Added initial support for peripheral communication system. Needed for future modules such as the RGB to Component Conversion module.


<br/>
