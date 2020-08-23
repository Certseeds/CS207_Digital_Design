<!--
 * @Github: https://github.com/Certseeds/CS207_Digital_Design
 * @Organization: SUSTech
 * @Author: nanoseeds
 * @Date: 2020-08-12 22:09:01
 * @LastEditors: nanoseeds
 * @LastEditTime: 2020-08-12 22:21:14
-->
## DIGITAL DESIGN ASSIGNMENT 1

Deadline: 12 noon, Friday 5 October 2018

### PART 1: DIGITAL DESIGN THEORY 

Provide answers to the following questions: 
1.	List the octal and hexadecimal numbers from 10 to 32. Using A and B for the last two digits, list the numbers from 10 to 32 in base 12.
2.	What is the largest binary number that can be expressed with 12 bits? What are the equivalent decimal and hexadecimal numbers?
3.	Convert the decimal number 512 to binary in two ways: (a) convert directly to binary;(b) convert first to hexadecimal and then from hexadecimal to binary. Which method is faster?
4.	Describe the three basic types of logic calculation (write the truth table).
5.	Give the complement code of the following decimal numbers.
a.	27854036
b.	63235006

### PART 2: DIGITAL DESIGN LAB

#### INTRODUCTION
In this lab, you are required to use Vivado 2017.4 and Minisys Practice platform (xilinx FPGA chip artix 7 inside) to design a simple logic circuit: Do the addition on two unsigned 2bit numbers, do the simulation and verify its function on the board. You should submit the description of the operation steps, the Verilog design, the wave form from the simulation, and the on board testing steps and results.

#### PREAMBLE
Before working on the coursework itself, you should master the following material. A separate tutorial document (on the Sakai site) has be provided to you which includes: 
  - Vivado: The Vivado software provides a complete design environment for system-on-a-programmable-chip (SOPC) design. Regardless of whether you use a personal computer or a Linux workstation, Vivado ensures easy design entry, fast processing, and straightforward device programming.
  - Minisys Practice platform: a platform designed for Digital design ,Principles of Computer Organization and many other courses. This platform include FPGA chip ,storage chip and lots of Dial switches, LEDs for input and output.
  - Verilog : standardized as IEEE 1364, is a hardware description language (HDL) used to model electronic systems. It is most commonly used in the design and verification of digital circuits at the register-transfer level of abstraction. It is also used in the verification of analog circuits and mixed-signal circuits, as well as in the design of genetic circuits. http://www.verilog.com/

#### EXERCISE SPECIFICATION

##### TASK1: 
Create a project named as Lab2_Addition, design the source code to get the addition of two 2-bit unsigned numbers, do the simulation and generate the bitstream which is used to program the FPGA chip and verify your design.

Note: there should be two inputs (we need input two operands through dial switch) and three outputs (three led groups needed to demonstrate the value of two operands and the result)
``` Verilog
module Lab2_Addition(addend, augend, addend_led, augend_led, sum_led);
input [1:0] addend, augend;
output [1:0] addend_led, augend_led;
output [2:0] sum_led;
endmodule
``` 
You will focus on how to use Vivado to do the design, simulation, generate the bitstream file which is used to program the FPGA chip (a part of the Minisys practice platform), you will also learn some basic concepts of Verilog. The steps you need to follow are:
1.	Create an empty project.
2.	Edit a design file (Verilog file) & add it to the project.
3.	Edit a simulation file (Verilog file) & add it to the project.
4.	Do the simulation using to verify if the function of design is ok. If not, modify your design and do the simulation again.
5.	Do the synthesize.
6.	Edit a constraints file (to define the Specifications of pins and the binding info between pins and the designed ports) & add it to the project.
7.	Do the implementation.
8.	Generate the bitstream file.
9.	Turn on the board (Minisys & FPGA chip inside) and connect Vivado to the board
10.	Program the device with the bitstream
11.	Test the design on the board (using dial switch as input , using led to see the state of output) 

##### TASK2: 
1. Do the design using data flow, block style and structured style respectively to verify the following theorem (you can find the design on the lab3 courseware as a reference):
DeMorgan:  
  + (x+y)' = x'y'
  + (xy)' = x'+y'
2. Create a test bench, do the simulation to verify the function of the design.
3. Edit a constraints file (to define the Specifications of pins and the binding info between pins and the designed ports) & add it to the project. 
4. Do the synthesis and implementation.
5. Generate bitstream file, program the device with the bitstream
6. Test the design on the board (using dial switch as input , using led to see the state of output). 

##### TIPS : 
1. **Putting all the circuit ( (x+y)' , x'y' ,(xy)' and x'+y')  to one design file, and naming ports in different design file with same name** so that you can reuse the testbench file and constraint file with just a little modification (as in labs courseware, just modify the module name in your design file).
2. Naming the file:
  +	For data flow design, the source file should be `demorgan_df.v` 
  +	For block design, source file should be `demorgan_bd.bd`
  +	For structured design, the source file should be `demorgan_sd.v`
3. All the 3 design could share the **same test bench file** because the number and name of ports are same while only name of module are different. If you want use test bench file of `demorgan_df.v` on demorgan_bd.bd ,just **change the module name** from `demorgan_df` to `demorgan_bd` is enough.
4. All the 3 design could also **share the same constrain file** because the number and name of ports are the same .

### SUBMISSION
Submit your assignment report to the Sakai on Corresponding site by the deadline .

### ASSESSEMENT
The full for this exercise is 100 and they are distributed as follows:
T
heory: 20%

|  Question  | scores |
| :--------: | :----: |
| Question1  |   4    |
| Question2  |   4    |
| Question3  |   4    |
| Question4  |   4    |
| Question5a |   2    |
| Question5b |   2    |
|   Total    |   20   |

Lab: 80%

| Question               |                                       Name                                       | scores |
| :--------------------- | :------------------------------------------------------------------------------: | -----: |
| Task 1                 |                                Design in verilog                                 |      5 |
| Task 1                 |                   Test bench in Verilog and simulation result                    |    5+5 |
| Task 1                 | Constrains file and the description of the test result on Minisys practice board |    5+5 |
| Task 1                 |                           The description of all steps                           |      5 |
| Task 2                 |                                Design in Verilog                                 |    5*3 |
| Task 2                 |                   Test bench in Verilog and simulation result                    |    5+5 |
| Task 2                 | Constrains file and the description of the test result on Minisys practice board |    5+5 |
| Task 2                 |                  The description of steps of doing block design                  |      5 |
| Problems and solutions |                                                                                  |    5+5 |
| Total                  |                                                                                  |     80 |

The templateis in the root path.
