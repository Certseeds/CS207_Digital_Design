`timescale 1ns / 1ps
module Ass_4_3_ff(
input x_in,
input clk,
input reset,
output [1:0]state
    );
    wire useless;
Ass_4_3_D test1(
.D((x_in & ~state[1]) | (~x_in & state[0])),
.clk(clk),
.reset(reset),
.Q(state[0]),
.Qtran(useless)
);
Ass_4_3_D test2(
.D((x_in & state[0]) | (~x_in & state[1])),
.clk(clk),
.reset(reset),
.Q(state[1]),
.Qtran(useless)
);
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 23:39:29
// Design Name: 
// Module Name: Ass_4_3_ff
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
