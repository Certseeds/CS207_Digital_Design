`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/18 21:40:57
// Design Name: 
// Module Name: test_sim
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


module test_sim( );
    reg  [1:0]input1sim = 2'h000;
    wire [1:0]output1sim;

test test_u(
    .input1(input1sim),
    .output1(output1sim)
    );
    initial
    begin
        repeat(3)
        #10
        input1sim = input1sim+1;
    end
endmodule
