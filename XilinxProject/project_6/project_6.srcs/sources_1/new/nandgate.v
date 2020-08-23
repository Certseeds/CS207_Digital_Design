`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/26 11:11:34
// Design Name: 
// Module Name: nandgate
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


module nandgate
#(parameter Port_Number = 2,WIDTH = 1)
(
    input [WIDTH - 1:1]a,
    input [WIDTH - 1:1]b,
    input [WIDTH - 1:1]c,
    input [WIDTH - 1:1]d,
    input [WIDTH - 1:1]e,
    input [WIDTH - 1:1]f,
    input [WIDTH - 1:1]g,
    input [WIDTH - 1:1]h,
    output [WIDTH - 1:1]q
    );
    assign q = ~(a & b & c & d & e & f & g & h);
endmodule
