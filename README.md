# Design and Verification of an 8-Bit ALU Using Verilog HDL
## Overview

This project implements an 8-Bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs various arithmetic and logical operations based on a 3-bit select signal (Sel). The design is verified using a Verilog testbench and simulated on EDA Playground, with waveform analysis performed using EPWave.

# Features
The ALU supports the following operations:

Sel	Operation
000	Addition (A + B)
001	Subtraction (A - B)
010	Bitwise AND
011	Bitwise OR
100	Bitwise XOR
101	Left Shift (A << 1)
110	Right Shift (A >> 1)
111	Bitwise NOT (~A)

# Project Structure
8bit_ALU_Verilog/
│
├── alu_8bit.v
├── testbench.v
├── waveform.png
└── README.md

# ALU Block Diagram
         +------------------+
A[7:0] ->|                  |
         |    8-Bit ALU     |-> Result[7:0]
B[7:0] ->|                  |
         +------------------+
                 ^
                 |
             Sel[2:0]

# Simulation Inputs
A = 8;
B = 4;

# Expected Results
Sel	Operation	Result
000	8 + 4	12
001	8 - 4	4
010	8 & 4	0
011	8 | 4	12
100	8 ^ 4	12
101	8 << 1	16
110	8 >> 1	4
111	~8	247 (11110111)

# Simulation Output
The waveform confirms the correct functionality of all arithmetic and logical operations implemented in the ALU.

# Tools Used
Verilog HDL
EDA Playground
EPWave Waveform Viewer

# Author
Meghana Peddinti
B.Tech Electronics and Communication Engineering (ECE)