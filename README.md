# VLSI Design and Simulation of ROM, PLA and PAL using Verilog HDL

## Overview

This project focuses on the design and simulation of Programmable Logic Devices (PLDs) including ROM, PLA, and PAL using Verilog HDL.

The project implements:
- ROM using Gate-Level Modeling
- ROM using Pseudo-NMOS Transistor-Level Modeling
- PLA using Gate-Level Modeling
- PLA using Pseudo-NMOS Transistor-Level Modeling
- PAL using Gate-Level Modeling
- PAL using Pseudo-NMOS Transistor-Level Modeling

All designs were simulated and verified using EDA Playground and EPWave.

---

## Project Objectives

- Design ROM, PLA, and PAL architectures using Verilog HDL.
- Implement Boolean functions using Sum-of-Products (SOP) representation.
- Understand programmable logic structures.
- Compare gate-level and transistor-level implementations.
- Verify circuit operation using Verilog testbenches.

---

## Tools & Technologies

- Verilog HDL
- SystemVerilog
- VLSI Design
- Digital Logic Design
- Boolean Algebra
- NMOS Transistor Logic
- EDA Playground
- EPWave

---

## Project Structure

```
VLSI-ROM-PLA-PAL-Verilog
│
├── ROM_Gate_Level
│   ├── Design.sv
│   └── Testbench.sv
│
├── ROM_NMOS_Level
│   ├── Design.sv
│   └── Testbench.sv
│
├── PLA_Gate_Level
│   ├── Design.sv
│   └── Testbench.sv
│
├── PLA_NMOS_Level
│   ├── Design.sv
│   └── Testbench.sv
│
├── PAL_Gate_Level
│   ├── Design.sv
│   └── Testbench.sv
│
├── PAL_NMOS_Level
│   ├── Design.sv
│   └── Testbench.sv
│
├── Simulation_Result
│   ├── Waveform Screenshots
│   └── Truth Table
│
└── VLSI_Project_Report.pdf
```

---

## Implementations

### ROM (Read Only Memory)

ROM was designed by implementing the required Boolean function using selected minterms.

Implemented:
- Gate-Level ROM
- Pseudo-NMOS ROM

---

### PLA (Programmable Logic Array)

PLA was implemented using:

- Programmable AND plane
- Programmable OR plane

Shared product terms were used between outputs to optimize the design.

Implemented:
- Gate-Level PLA
- Pseudo-NMOS PLA

---

### PAL (Programmable Array Logic)

PAL was implemented using:

- Programmable AND plane
- Fixed OR plane

Implemented:
- Gate-Level PAL
- Pseudo-NMOS PAL

---

## Boolean Functions

The implemented Boolean functions are:

```
Y1 = Σm(0,1,2,5,9)

Y2 = Σm(0,1,2,5,8,9)
```

Simplified expressions:

```
Y1 = A'C'D + B'C'D + A'B'D'

Y2 = B'C' + A'C'D + A'B'D'
```

---

## Simulation and Verification

Each design was verified using Verilog testbenches.

Verification includes:

- Testing all 16 possible combinations of 4-bit inputs (A, B, C, D)
- Generating VCD waveform files
- Observing output behavior using EPWave

The gate-level and pseudo-NMOS implementations were verified to produce equivalent outputs.

---

## Simulation Results

Waveform screenshots from EDA Playground simulation are included in the `Simulation_Result` folder.

---

## Author

**Md. Akib Jawad**

Department of Electronics and Communication Engineering  
Khulna University of Engineering & Technology (KUET)

---

## Course

**ECE 4102 - VLSI Design and Technology Laboratory**