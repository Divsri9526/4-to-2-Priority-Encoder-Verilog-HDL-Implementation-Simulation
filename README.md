# 4-to-2 Priority Encoder in Verilog

## 📌 Overview
This project implements a **4-to-2 Priority Encoder** using **Verilog HDL**.  
A priority encoder assigns priority to inputs so that if multiple inputs are high, the **highest-priority input** is reflected in the output.

**Priority Order:**  
`I3 > I2 > I1 > I0` (I3 has the highest priority)

---

## ⚙️ Features
- Implements **combinational logic** for priority encoding
- Generates **Valid** signal to indicate active inputs
- Includes **testbench** for functional verification
- Works with standard Verilog simulators (**Icarus Verilog**, **ModelSim**, etc.)

---

## 🧮 Truth Table

| I3 | I2 | I1 | I0 | Out[1:0] | Valid |
|----|----|----|----|----------|-------|
| 0  | 0  | 0  | 0  | 00       | 0     |
| 0  | 0  | 0  | 1  | 00       | 1     |
| 0  | 0  | 1  | X  | 01       | 1     |
| 0  | 1  | X  | X  | 10       | 1     |
| 1  | X  | X  | X  | 11       | 1     |

---

## 📂 File Descriptions
- `priority_encoder_4to2.sv` — Verilog module for the priority encoder
- `priority_encoder_4to2_tb.sv` — Testbench to verify functionality
- `priority_encoder_4to2_waveform.png` — Waveform Screenshot of priority encoder

---

## 📊 Expected Output

Time=0  | in=0000 | out=00 | valid=0
Time=10 | in=0001 | out=00 | valid=1
Time=20 | in=0010 | out=01 | valid=1
Time=30 | in=0011 | out=01 | valid=1
Time=40 | in=0100 | out=10 | valid=1
Time=50 | in=0110 | out=10 | valid=1
Time=60 | in=1000 | out=11 | valid=1
Time=70 | in=1011 | out=11 | valid=1
