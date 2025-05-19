# AHB2APB Bridge Design

## 🔧 Overview

This project implements an **AHB2APB Bridge** using Verilog HDL, designed as part of an industrial internship at Maven Silicon Softech Ltd. The AHB2APB bridge is a vital component in SoC (System on Chip) architectures, enabling communication between high-speed AHB components and low-speed APB peripherals.

## 📘 What is AHB2APB Bridge?

The **AHB2APB Bridge** facilitates communication between two different AMBA protocols:

- **AHB (Advanced High-performance Bus)**: Used for high-speed, high-bandwidth data transfers.
- **APB (Advanced Peripheral Bus)**: Designed for low-bandwidth, low-power peripheral communication.

The bridge translates AHB transactions into APB-compatible transactions, allowing seamless data flow between core components and peripheral devices.

## ⚙️ Modules Implemented

### 🔹 AHB Master Interface
- Initiates high-speed read/write transactions.
- Controls timing and signal flow for multi-master AHB communication.

### 🔹 AHB Slave Interface
- Responds to AHB transactions.
- Supports data reception and handshake with master devices.

### 🔹 APB Controller
- Simplified controller for low-speed peripherals (UARTs, timers, etc.).
- Manages address decoding, write enable, and read operations.

### 🔹 APB Interface
- Generates peripheral-specific control signals.
- Ensures low-power, low-latency access to connected APB devices.

## 🧪 Tools Used

- **ModelSim – Intel FPGA Starter Edition 10.5b**
- **Quartus Prime 17.1 (Intel/Altera)**

These tools were used for design simulation, synthesis, and verification.

## 🧠 Learning Outcomes

- Developed a complete bridge logic interfacing two different bus standards.
- Learned how to manage handshaking, clock domain synchronization, and peripheral addressing.
- Gained hands-on experience with simulation and RTL debugging using industry tools.

## 📁 Repository Structure
├── src/ # Verilog source files for AHB2APB bridge
├── tb/ # Testbenches for module-level and top-level testing
├── docs/ # Design documents or block diagrams
├── synthesis/ # Synthesis reports and logs
└── README.md # Project description
