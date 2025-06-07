# CPU_BUILD

Welcome to **CPU_BUILD** — a personal journey into building a custom CPU from the ground up. This repository is a structured workspace where I explore digital logic design, CPU architecture, and gradually scale my understanding and implementation from fundamental logic gates to a fully functional 8-bit CPU — with plans to scale to 32-bit.

## 📁 Repository Structure

This repository is divided into two main directories:

### 🔬 `practice/`
> _"Before you walk, you gotta crawl."_

This folder contains all my experimental and practice modules — a sandbox for learning the basics of digital design. You'll find:

- ✅ Implementations of **basic logic gates** (AND, OR, NOT, XOR, etc.)
- 🧱 Building blocks like **multiplexers, decoders**, and **flip-flops**
- 🔁 Small-scale **combinational and sequential circuits**
- 📘 Personal notes or simulation outputs as I test and debug

> This is the warm-up zone — messy, evolving, and crucial.

---

### 🧰 `main/`
> _"This is where the real stuff happens."_

The `main` folder will contain the primary design for the CPU architecture. This is the serious, structured, and scalable side of the repo.

Planned milestones:

- [ ] **8-bit CPU core**
  - ALU
  - Register file
  - Control unit
  - Instruction decoder
  - Program counter
- [ ] **Basic instruction set**
- [ ] **Simulation & test benches**
- [ ] **Eventually scale to 32-bit**

As development progresses, the folder will reflect a more mature architecture with detailed schematics and Verilog/VHDL/SystemVerilog modules (depending on final implementation choice).

---

## 🛠 Tools & Tech Stack

- **Simulation**: Vivado, ModelSim, or open-source alternatives (like Icarus Verilog)
- **Language**: Verilog / VHDL (decided during progression)
- **Visualization**: GTKWave for waveform inspection
- **Goal**: Eventually deploy on an FPGA (e.g., Basys 3 / Nexys A7 / Spartan series)

---

---

## 🧠 Philosophy

This isn't just about building a CPU. It's about understanding how a machine thinks — from electrons toggling gates to full-blown instruction execution. I'm documenting every step of the way, for myself and for anyone else starting their own hardware adventure.

---

## 📬 Feedback or Suggestions?

Feel free to open an issue if you've got ideas, critiques, or want to collaborate. If you’re just watching, buckle up — it’s gonna be a gritty ride through the silicon jungle.

---

## 📜 License

[MIT License](LICENSE) — free to use, modify, or learn from.

---

> “The CPU is the brain of the computer... so I’m building one neuron at a time.”
