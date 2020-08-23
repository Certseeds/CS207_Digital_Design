`timescale 1ns / 1ps
module temp1(
input A,B,C,D,
output a,b,c,d,e,f,g
    );
assign a = ( ~B & ~C & ~D) | (A & ~B & ~C) | (A & ~B & C& ~D) | (A & ~C);
assign b = (~B & ~C)| (~A & ~C & ~D)|(~A & ~B)|(~A & C & D);
assign c = (~A & B)| (~A & ~C)|(~C & ~B)|(~A & C & D);
assign d = (~B & ~C &~D)| (A & ~B & ~C)|(~A & B & ~C & D)|(~A & C & D)| (~A & ~B & C);
assign e = (~B & ~C & ~D)| (~A & C &~D);
assign f = (~A & ~C &~D)| (~B & ~C & ~D)|(~A & B & ~C)|(A & ~B & ~C)| (~A & B & ~D);
assign g = (~A & B &~C)| (~A & ~B & C)|(~A & C & ~D)|(A & C & ~D);
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/19 22:50:11
// Design Name: 
// Module Name: temp1
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
