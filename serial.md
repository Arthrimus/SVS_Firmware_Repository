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

## Serial Commands (Firmware Version 1.13)

|      **Command**     |                                               **Function**                                               |
|:--------------------:|:---------------------------------------------------------------------------------------------------------|
|     `SVS_Input_Up`     | Cycles up by one input                                                                                   |
|    `SVS_Input_Down`    | Cycles down by one input                                                                                 |
| `SVS_Change_Input_"#"` | Changes the input to a specific number. _Example: `SVS_Change_Input_3` switches to the 3rd input module*_ |
| `SVS_Manual_ON` | Turns "manual mode" on deactivates the standard autodetection routine keeping the current input selected regardless of signal presence** |
| `SVS_Manual_OFF` | Turns "manual mode" off allowing the standard autodetection routine to resume after a manual input selection **|
| `SVS_RGB_Comp_ON` | Turns on RGB to Component conversion for the current input _(Requires "RGB to Component Conversion Module")**_ |
| `SVS_RGB_Comp_OFF` | Turns off RGB to Component conversion for the current input _(Requires "RGB to Component Conversion Module")**_ |

<p style="margin:20px;"></p>

_*Input numbers higher than the total number of available input modules will default to the highest available input number._

_** only available on firmware version 1.13 and later._

<br/>
