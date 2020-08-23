`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/18 19:43:01
// Design Name: 
// Module Name: NAND_V
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


module NAND_V #(parameter Port_Num = 2,WIDTH = 1)(
    input[(WIDTH -1):0] a,
    input[(WIDTH -1):0] b,
    input[(WIDTH -1):0] c,
    input[(WIDTH -1):0] d,
    output[(WIDTH -1):0] output1
    );
    assign output1 = ~(a & b & c &d);
    //assign output1 = ~(a & b & c);
endmodule
