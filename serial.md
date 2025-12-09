---
layout: default
title: SVS Serial Commands
---

<h1 align="center" style="margin-top: 0px;">SVS Control Module Serial Commands</h1>

<p style="margin:20px;"></p>

## Description

Starting with firmware version 1.12 the SVS supports serial commands to control various functions of the switch remotely. Currently this is possible through USB using the built in serial chip in the SVS Control Module. You will need to connect the SVS to a USB host such as a computer or Raspberry Pi and open the COM port with the settings listed below. The valid serial commands are listed in the table below. More commands will be added in the future as Control Module functionality expands.

<p style="margin:20px;"></p>


## COM Port Settings

| **Speed** | **Data Bits** | **Parity** | **Stop Bits** |
|:---------:|:-------------:|:----------:|:-------------:|
| 9600 Baud |       8       |      N     |       1       |

<p style="margin:20px;"></p>

## Serial Commands (Minimum Firmware Version 1.12)

|      **Command**     |                                               **Function**                                               |
|:--------------------:|:---------------------------------------------------------------------------------------------------------|
|     `SVS_Input_Up`     | Cycles up by one input                                                                                   |
|    `SVS_Input_Down`    | Cycles down by one input                                                                                 |
| `SVS_Change_Input_"#"` | Changes the input to a specific number. _Example: `SVS_Change_Input_3` switches to the 3rd input module*_ |

## Serial Commands (Minimum Firmware Version 1.13)

|      **Command**     |                                               **Function**                                               |
|:--------------------:|:---------------------------------------------------------------------------------------------------------|
| `SVS_Manual_ON` | Turns "manual mode" on deactivates the standard autodetection routine keeping the current input selected regardless of signal presence |
| `SVS_Manual_OFF` | Turns "manual mode" off allowing the standard autodetection routine to resume after a manual input selection|
| `SVS_RGB_Comp_ON` | Turns on RGB to Component transcoding for the current input _(Requires "RGB to Component Transcoder Module")_ |
| `SVS_RGB_Comp_OFF` | Turns off RGB to Component transcoding for the current input _(Requires "RGB to Component Transcoder Module")_ |

## Serial Commands (Minimum Firmware Version 1.14)

|      **Command**     |                                               **Function**                                               |
|:--------------------:|:---------------------------------------------------------------------------------------------------------|
| `SVS_Power_ON` | Wake SVS Control Module from standby |
| `SVS_Power_OFF` | Place SVS Control Module into standby mode |
| `SVS_Attract_ON` | Turns on "Attract Mode" |
| `SVS_Attract_OFF` | Turns off "Attract Mode" |
| `SVS_Input_Seek_Up` | Seeks for the next active input number |
| `SVS_Input_Seek_Down` | Seeks for the previous active input number |

## Serial Commands (Minimum Firmware Version 1.16) 

|      **Command**     |                                               **Function**                                               |
|:--------------------:|:---------------------------------------------------------------------------------------------------------|
| `SVS_Comp_RGB_ON` | Turns on Component to RGB transcoding for the current input _(Requires "Component to RGB Transcoder Module")_ |
| `SVS_Comp_RGB_OFF` | Turns off Component to RGB transcoding for the current input _(Requires "Component to RGB Transcoder Module")_ |
| `R"#"` | Read one byte from the EEPROM, where "#" is replaced with the number of the EEPROM address you are attempting to read. _Example: `R251` will return the current value of address 251 of the EEPROM_ |
| `W"#1""#2"` | Write one byte to the EEPROM, where "#1" is replaced with the value of the byte you wish to write, and "#2" is replaced with the number of the EEPROM address you are attempting to write to. _Example: `W255001` will write the byte "255" to the EEPROM address "1". Numbers must be formatted with 3 digits. Smaller numbers must have leading zeros in order to be interpreted correctly. Example: 1 should be written as 001, 10 should be written as 010, etc._ |

<p style="margin:20px;"></p>

**_*Input numbers higher than the total number of available input modules will default to the highest available input number._**


<br/>
