`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/17 09:37:49
// Design Name: 
// Module Name: lab6_practice1
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


module lab6_practice1(
    input [2:0] input1,
    output reg whichRoom
    );
    
    always @(input1)
    begin
         casex(input1)
         3'bx00:
             whichRoom = 1;
         3'bx01,3'bx10,3'bx11:
             whichRoom = 0;
        endcase
    end
    
endmodule
