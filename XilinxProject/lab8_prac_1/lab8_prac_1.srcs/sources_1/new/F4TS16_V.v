`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/31 11:58:41
// Design Name: 
// Module Name: F4TS16_V
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


module F4TS16_V(
    input input1,
    input input2,
    input input3,
    input input4,
    input inputen,
    output [7:0]temp1,
    output [7:0]temp2,
    output  [15:0]output1
    );
    T3TE8_V  T3TE8_u(input1,input2,input3,input4,temp1);
    T3TE8_V  T3TE8_u2(input1,input2,input3,~input4,temp2);
    assign output1 = {temp2,temp1};
   // Concat xlconcat_0(temp1,temp2,output1);
    
endmodule
