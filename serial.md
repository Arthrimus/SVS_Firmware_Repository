---
layout: default
title: SVS Control Module Firmware
---

<h1 align="center" style="margin-top: 0px;">SVS Control Module Serial Commands</h1>

<p style="margin:20px;"></p>

## COM Port Settings

| **Speed** | **Data Bits** | **Parity** | **Stop Bits** |
|:---------:|:-------------:|:----------:|:-------------:|
| 9600 Baud |       8       |      N     |       1       |

<p style="margin:20px;"></p>

## Serial Commands

|      **Command**     |                                               **Function**                                               |
|:--------------------:|:--------------------------------------------------------------------------------------------------------:|
|     SVS_Input_Up     | Cycles up by one input                                                                                   |
|    SVS_Input_Down    | Cycles Down by one input                                                                                 |
| SVS_Change_Input_"#" | Changes the input to a specific number. _Example: "SVS_Change_Input_3" switches to the 3rd input module_ |

<p style="margin:20px;"></p>

<br/>
