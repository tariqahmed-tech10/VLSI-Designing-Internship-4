# VLSI-Designing-Internship-4

**Name :** M Tariq Ahmed

**Company :** Main Crafts Technology

**ID :** MT6117

**Domain :** VLSI Designing 

**Duration :** 7th June 2026 to 7th July 2026

## Overview Of The Project

The  overview of the project is to create the verilog code and it's testbench for Moore Finite State Machine, Mealy Finite State Machine, Traffic Light Controller and Sequence Detector and simulate it using Icarus verilog, Gtkwave and Visual Studio Code. 

## Finite State Machine

A Finite State Machine (FSM) is an abstract mathematical model of computation used to design both computer programs and sequential logic circuits. Simply put, it is a system that can only exist in exactly one of a limited (finite) number of predefined states at any given time.The machine transitions from one state to another in response to external inputs.

## Moore Finite State Machine

A Moore Finite State Machine (FSM) is a digital logic circuit where the outputs depend solely on the current state of the machine.In a Moore machine, the external inputs only determine what the next state will be. They do not directly or immediately affect the output.If an input signal spikes or glitches momentarily between clock cycles, the output will not change. This makes Moore machines very stable.

<img width="3142" height="2790" alt="Moore FSM" src="https://github.com/user-attachments/assets/f10b495e-c4e1-45a3-a906-d88a3f88616c" />

## Output of Moore Finite State Machine

<img width="1561" height="1015" alt="Screenshot 2026-07-07 200538" src="https://github.com/user-attachments/assets/1ae7588a-1b04-4ff1-8efa-2dd9579fc551" />

## Waveform of Moore Finite State Machine

<img width="1917" height="1021" alt="Screenshot 2026-07-07 184824" src="https://github.com/user-attachments/assets/56a11a44-a3ca-464b-9da3-c63507545812" />

## Mealy Finite State Machine

A Mealy Finite State Machine (FSM) is a digital logic model where the outputs are determined by both the current state and the current inputs.Mealy machines typically require fewer states than Moore machines to implement the same logic. A single state can produce multiple different outputs depending on which input triggers the transition.

<img width="2866" height="2426" alt="Mealy FSM" src="https://github.com/user-attachments/assets/306005bd-8aea-4b17-83df-48fb6585416d" />

## Output of Mealy Finite State Machine

<img width="1542" height="1017" alt="Screenshot 2026-07-08 170247" src="https://github.com/user-attachments/assets/7446ffb7-9380-40f8-b9a1-039fc40d1333" />
<img width="1557" height="1015" alt="Screenshot 2026-07-08 170308" src="https://github.com/user-attachments/assets/8386b847-9924-4dbd-a6b4-7867faa4c503" />

## Waveform of Mealy Finite State Machine

<img width="1918" height="1021" alt="Screenshot 2026-07-08 170453" src="https://github.com/user-attachments/assets/dbdc91dd-46d8-4e14-9167-d15c8e489f58" />

## Traffic Light Controller

A Traffic Light Controller is a real-world application of a Finite State Machine (FSM). 
It is a digital logic system designed to sequence through a specific set of states (the lights) safely and predictably.
The system has distinct "modes" it can be in. For your project, these are State 0 (Red), State 1 (Green), and State 2 (Yellow).
The controller evaluates its current state and moves to the next state every time the clock ticks (the "posedge" or positive edge).Depending strictly on what state the machine is currently in, it outputs a specific binary signal to turn the physical LEDs on or off.

<img width="2540" height="2604" alt="Traffic Light Controller" src="https://github.com/user-attachments/assets/0ce83893-4070-4909-a532-5fa531e2503c" />

## Output of Traffic Light Controller

<img width="1562" height="1012" alt="Screenshot 2026-07-08 203302" src="https://github.com/user-attachments/assets/50a20949-ea64-4d69-b3ea-e40c5f783ea5" />
<img width="1558" height="1020" alt="Screenshot 2026-07-08 203322" src="https://github.com/user-attachments/assets/c5f42748-510a-4df9-8f53-960066251c61" />

## Waveform of Traffic Light Controller

<img width="1918" height="1008" alt="Screenshot 2026-07-08 203451" src="https://github.com/user-attachments/assets/34be4464-8787-4eb2-b030-013ee375b1d7" />

## Sequence Detector

A sequence detector is a type of sequential digital circuit designed to recognize a specific pattern of bits (0s and 1s) within a continuous stream of input data.The circuit has a finite number of "states."
Each state represents how much of the target sequence has been successfully detected so far. For example, in your 1011 detector, State 0 means nothing matched, State 1 means "1" is matched, State 2 means "10" is matched, and so on.
The circuit operates on a clock signal. With every active clock edge, it reads the current input bit and decides whether to move forward to the next state (if the bit matches the sequence) or fall back to an earlier state (if the sequence breaks).
When the circuit reaches the final state that completes the target sequence, it drives an output signal high (usually to 1) for that clock cycle to signal a successful detection

<img width="4096" height="2532" alt="Sequence Detector" src="https://github.com/user-attachments/assets/af97d152-6fa6-4c2c-9cb0-de9cdb80881b" />

## Output of Sequence Detector

<img width="1538" height="1025" alt="Screenshot 2026-07-09 162707" src="https://github.com/user-attachments/assets/7591f9fe-2042-4e2c-af84-5935a6d5f0cf" />
<img width="1553" height="1021" alt="Screenshot 2026-07-09 162721" src="https://github.com/user-attachments/assets/5bbea899-a84a-4035-b567-d0af03586b46" />

## Waveform of Sequence Detector

<img width="1918" height="1020" alt="Screenshot 2026-07-09 162859" src="https://github.com/user-attachments/assets/013b9f57-b950-43aa-804d-444772727d53" />












