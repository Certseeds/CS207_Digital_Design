`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/19 13:06:00
// Design Name: 
// Module Name: lab3_df
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


module lab3_df(
    input input1,
    input input2,
    output output1,
    output output2,
    output output3
    );
    assign output1 = input1;
    assign output2 = input1 | (input1 & input2);
    assign output3 = input1 & (input1 | input2);
    
endmodule
