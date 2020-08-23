`timescale 1ns / 1ps
module Ass_3_2_v(
input EI,
input A,B,C,D,
output outputa,outputb,outputc,outputd,
output F,
output EO
    );
    assign {outputa,outputb,outputc,outputd} = {A,B,C,D};
    Mux_74151 Mux1(
    .EI(EI),
    .S2(A),
    .S1(B),
    .S0(C),
    .D0(1'b1),
    .D1(1'b1),
    .D2(1'b1),
    .D3(1'b1),
    .D4(1'b1),
    .D5(1'b1),
    .D6(1'b0),
    .D7(D),
    .Y(F),
    .EO(EO));
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/19 20:31:22
// Design Name: 
// Module Name: Ass_3_2_v
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
