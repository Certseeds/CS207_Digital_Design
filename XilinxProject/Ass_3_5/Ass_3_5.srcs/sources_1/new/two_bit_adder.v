`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/14 22:57:47
// Design Name: 
// Module Name: two_bit_adder
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


module two_bit_adder(
    input x,
    input y,
    input en,
    output isEn,
    output result
);
assign result = ( ~x & ~y & en) | (~x & y & ~en) |  ( x & ~y & ~en)  | (x & y & en);
assign isEn  = ( x & y) |( y & en) | (en & x);
    
endmodule
