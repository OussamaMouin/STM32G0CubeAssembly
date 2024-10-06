# STM32G0 Assembly Code Generator

This project, developed during the 2022/2023 academic year at the **National Engineering School of Tunis**, in collaboration with **ST Microelectronics Tunis**, aims at generating assembly language micro-code for the STM32G0-Discovery board. The goal is to facilitate peripheral configuration by providing a graphical interface that automatically generates the necessary assembly code.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Examples: Basic applications configured using the interface's generated code ](#Examples)
- [SourceCode: Interface's source code written in c++ implemented with QT](#Source-Code)
- [Acknowledgments](#acknowledgments)

## Overview

The main objective of this project is to develop a tool that simplifies the configuration of STM32G0-Discovery board peripherals using assembly language. The graphical interface enables users to configure settings easily, and it automatically generates the corresponding assembly code.

This project was carried out as a part of the curriculum at the National Engineering School of Tunis in collaboration with ST Microelectronics during the academic year 2022/2023.

## Features

- **Graphical User Interface (GUI):** User-friendly interface for configuring STM32G0-Discovery board peripherals.
- **Assembly Code Generation:** Automatic generation of assembly code based on the user's peripheral configuration.
- **Peripheral Support:** Provides support for configuring various peripherals (GPIO, UART, etc.) of the STM32G0 board.
- **Microcontroller:** Designed specifically for the STM32G0 family.

## Installation
   Use the [Link Text](main/Installer.exe) provided in the main directory 

### Prerequisite
- Keil µVision (or any other STM32 development environment)
- STM32G0-Discovery board

### Usage

This graphical interface summarizes the pin assignments and their descriptions. By clicking
on any of the pins , a menu appears, showing pin multi- plexing options, as shown in.
For each pin, we have different functions illustrated in another menu . Each function opens
a new window to fix the parameters of the peripheral we choose. We shall see these windows in
more detail in the next subsection. Add to that, the main window has 2 buttons, one to chose
the path where we want to save our assembly generated code, the other is to confirm that we
finished our configuration and to execute the file generation.
<p align="center">
    <img src="Images/Main_Menu.png" alt = "Pin Menu" width="400"/>
   
   <img src="Images/PinMenu1.png" alt = "Pin Menu" width="300"/>
    
   <img src="Images/PinMenu2.png" alt = "Pin Menu" width="300"/>
 
</p>

### Examples
**Look into the "Examples directory**:
In this project we tested our developed interface's generated configuration code to assure its functionality. The application can configure the following periherials :
<ul>
  <li>GPIO</li>
  <li>ADC</li>
  <li>TIMER</li>
  <li>USART</li>
</ul>

### Source code

In this project we developed the code genration tool using c++ in the QT enviroment. The file **SourceCode** contains the C++ files , the header files and finally the inteface design files.

### Acknowledgments

We are pleased to take this opportunity to express our sincere gratitude and appreciation to all those who have played a role, whether near or far, in the successful completion of this project. First and foremost, we extend our heartfelt thanks to our supervisor at the company, Mr. Younes Lahbib, an Engineer at STMicroelectronics. His unwavering support and guidance were pivotal in ensuring the successful execution of this project.

Additionally, we acknowledge that while we have put significant effort into developing the code, it is not without its flaws. There are areas where the code can be improved, and it still contains some bugs. We remain open to constructive feedback and further refinements to enhance its performance and functionality.

