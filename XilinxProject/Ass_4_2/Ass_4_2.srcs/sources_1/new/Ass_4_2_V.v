`timescale 1ns / 1ps
primitive Ass_4_2_V(
Q,
J,
K,
clk,
set,
reset
    );
    output Q;
    input J;
    input K;
    input clk;
    input set;
    input reset;
    reg Q;
    initial Q = 0;
    table
    ? ? (?0) ? ? : ? : -;
    (??) ? ? ? ? : ? : -;
    ? (??) ? ? ? : ? : -; 
 // J K  clk set reset
    ? ? (01) 1 0 : ? : 1;
    1 0 (01) ? ? : ? : 1;   
    // set zhiwei
    ? ? (01) 0 1 : ? : 0;
    0 1 (01) ? ? : ? : 0;   
    // reset fuwei
    0 0 (01) 0 0 : ? : -;
    // J 0 K 0,no set and reset Q(t+1) = Q(t)
    1 1 (01) 0 0 : 1 : 0;
    1 1 (01) 0 0 : 0 : 1;
   // J 1 K 1, no set and reset  Q(t+1) = ~Q(t)
    endtable
endprimitive

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/29 22:47:31
// Design Name: 
// Module Name: Ass_4_2_V
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
