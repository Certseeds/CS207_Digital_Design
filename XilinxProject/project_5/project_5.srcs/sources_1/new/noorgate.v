`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/26 10:25:43
// Design Name: 
// Module Name: noorgate
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


module noorgate
# (parameter WIDTH = 1,PORTNUMBER = 2) 
(

    input [WIDTH - 1:0]A,
    input [WIDTH - 1:0]B,
    input [WIDTH - 1:0]C,
    input [WIDTH - 1:0]D,
    output [WIDTH - 1:0]E
    );
    assign E = ~(A|B|C|D); 
endmodule
