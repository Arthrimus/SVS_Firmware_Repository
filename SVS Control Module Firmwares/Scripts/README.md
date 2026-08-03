### SVS Management Utility

#### Windows Users

- Download the latest Firmware Update file and unzip it somewhere on your computer.
- Double click the .bat file labeled “SVS Management Utility.bat”
- The SVS Management Utility will search the firmware update repository and find the latest firmware file and download it for you. If you want to install a different firmware version than the latest stable firmware you can use the “Browse” button to look for a different firmware file on your PC.
- Click the “Connect SVS” Button. The SVS Management Utility will search for the correct COM port for updating your SVS. The SVS uses a CH340 serial chip, so the firmware update tool searches for any CH340 devices and selects the first one it finds. If you have multiple CH340 devices connected at once you can click “No” and you will can manually enter the correct COM port for your SVS.
- Once the SVS Management Utility connects to your SVS you will see the current firmware version that is installed on your SVS, the total number of inputs connected to your SVS, and the current active input of your SVS.
- To update your firmware, simply click the “Firmware Update” button and the SVS Management Utility will flash the new firmware file and alert you when the flash is complete. It will update the current firmware version to reflect the newly installed firmware on your SVS.

#### Mac Users (Beta)

- Download the latest Firmware Update file and unzip it somewhere on your computer.

- Follow the instruction at https://brew.sh to install Brew.

- Install AVRDUDE using Brew with the following terminal command:
``brew install avrdude``

- In the terminal, navigate to the directory where you unzipped the SVS Management Utility.app file and run these two commands:

	``chmod +x "Svs Management Utility.app/Contents/MacOS/Svs.App"`` 
	``xattr -cr "SVS Management Utility.app"``

- You only need to run this command once when you download the latest app. After that you can launch the app by double clicking on it.

##### In addition to firmware updates you can also use the SVS Management Utility to control your SVS.

- Next Input, Previous Input: These buttons allow you to manually cycle the input selection up or down by one input on your SVS. ""Requires minimum SVS Firmware Version 1.12""
- Change Input: This button allows you to manually change to the input number specified in the “Enter Input Number” text box. ""Requires minimum SVS Firmware Version 1.12""
- Seek Next, Seek Previous: These buttons allow you to manually seek to the next or previous active input if you have multiple video sources active at the same time. This function skips all inactive inputs. ""Requires minimum SVS Firmware Version 1.14""
- Attract Mode: This checkbox allows you to turn “Attract Mode” on or off. ""Requires minimum SVS Firmware Version 1.14""
- RGB to YPbPr: Opens a menu that allows you to bulk enable or disable the RGB to YPbPr transcoder module for each input. ""Requires a RGB to YPbPr transcoder module""
- YPbPr to RGB: Opens a menu that allows you to bulk enable or disable the YPbPr to RGB transcoder module for each input. ""Requires a YPbPr to RGB transcoder module""
- RGBS to RGsB: Opens a menu that allows you to bulk enable or disable the RGBS to RGsB conversion for each input. ""Requires V3 SCART or V3 VGA Modules""
- Sync Bypass:  Opens a menu that allows you to bulk enable or disable the Sync Bypass option for each input. ""Requires V3 SCART modules""
- Auto Profile Priority: Opens a menu that allows you to bulk enable or disable the Auto Profile transmission over VGA or IR blaster for each input. ""Requires minimum SVS Firmware Version 1.20""
- IR Code Editor: