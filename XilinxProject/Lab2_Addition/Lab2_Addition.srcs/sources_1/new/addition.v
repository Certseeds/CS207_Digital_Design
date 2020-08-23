`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/30 10:23:39
// Design Name: 
// Module Name: addition
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


module addition(
    input [1:0]A,
    input [1:0]B,
    output[2:0]C,
    output[1:0]D,
    output[1:0]E
    );
    assign  D = A;
    assign  E = B;
    assign  C = A + B;
   
    
endmodule
