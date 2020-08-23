`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/18 17:24:10
// Design Name: 
// Module Name: more_directly
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


module more_directly(
    input [3:0]m1,
    input [3:0]m2,
    output [7:0] output1
    );
    assign output1 = m1 * m2;
endmodule
