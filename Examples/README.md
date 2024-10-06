# STM32G0CubeAssembly Examples Overview

## Introduction

This repository contains various assembly examples for the **STM32G0** microcontroller family. Each example demonstrates the usage of a specific peripheral or functionality such as **ADC**, **GPIO**, **TIMER**, **PWM**, and **USART**. These examples aim to provide a hands-on understanding of how to interface with these peripherals using assembly language.

### Covered Examples
- **ADC**: Demonstrates how to read from an analog pin using the ADC peripheral and control an LED based on the input.
- **PWM (ADC + TIMER)**: Combines ADC and TIMER peripherals to create a PWM signal, with the duty cycle controlled by an ADC input (e.g., a potentiometer).
- **TIMER**: Demonstrates the use of the TIMER peripheral to create time delays and control the blinking of an LED.
- **USART**: Includes several examples showcasing USART communication, such as transmitting and receiving data and controlling peripherals.

## Running the Examples

Each example directory contains:
- A **README.md** file that explains the example and its setup.
- A **main.s** file, which contains the assembly code for the example.

### How to Set Up and Build an Example in Keil

1. **Open Keil Project**: 
   - Create a new project or open an existing project in **Keil**.
   - Add the `main.s` file from the example you wish to run (located in the respective example directory).

2. **Add Required Files**:
   - In addition to the `main.s` file, you will need to add the following files to your project:
     - `startup_stm32g031xx.s`: Responsible for setting up the stack, vector table, and reset handler.
     - `stm32G0_constants.s`: Contains address mappings and peripheral register declarations for the STM32G0.
     - `core_cm0_plus_constants.s`: Provides core register constants, including NVIC, SysTick, SCB, and MPU registers.

3. **Compile and Run**:
   - Once the required files have been added to the project, you can **build** the project in Keil and **flash** it onto your STM32G0 microcontroller.

## Drivers Overview

This project includes three driver files that are essential for each example. Here is a brief description of each:

1. **core_cm0_plus_constants.s**:
   - Contains constants related to the **core registers**:
     - Core Register
     - Core NVIC Register
     - Core SCB Register
     - Core SysTick Register
     - Core MPU Register

2. **startup_stm32g031xx.s**:
   - Initializes the stack pointer and the reset handler.
   - Sets up the vector table entries with the exception ISR addresses.
   - Branches to the `__main` function in the C library after reset (this eventually calls `main()`).

3. **stm32G0_constants.s**:
   - Contains address mappings for all peripherals.
   - Declares peripheral registers and defines their bit fields.

---

Each example is designed to be a standalone project, and the **README.md** in each example directory provides further details on wiring, expected behavior, and peripheral configuration.

Feel free to explore the different example directories to gain a deeper understanding of how to use the STM32G0 microcontroller with assembly language.


