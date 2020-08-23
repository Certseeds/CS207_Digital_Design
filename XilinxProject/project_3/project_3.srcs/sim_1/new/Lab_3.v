`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/19 11:44:04
// Design Name: 
// Module Name: Lab_3
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


module Lab_3();
    reg A,B;
    wire C,D,E;
    design_1 u_df(
    .A(A),
    .B(B),
    .output1(C),
    .output2(D),
    .output3(E) );
    initial begin
    A = 0;
    B = 0;
    #10
    A = 0;
    B = 1;
    #10
    A = 1;
    B = 0;
    #10
    A = 1;
    B = 1;
    end
endmodule
