`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/30 17:46:00
// Design Name: 
// Module Name: demorgan_df
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


module demorgan_df(
    input input1,
    input input2,
    output outinput1,
    output outinput2,
    output output1,
    output output2,
    output output3,
    output output4
    );
    assign outinput1 = input1;
    assign outinput2 = input2;
    assign output1 = ~(input1 | input2);
    assign output2 = (~input1)&(~input2);
    assign output3 = ~(input1 & input2);
    assign output4 = (~input1)|(~input2);
    
endmodule
