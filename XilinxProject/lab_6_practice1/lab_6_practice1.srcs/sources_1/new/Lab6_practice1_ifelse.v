`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/18 08:40:09
// Design Name: 
// Module Name: Lab6_practice1_ifelse
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
module Lab6_practice1_ifelse(
    input [2:0] input1,
    output reg whichRoom
    );
      always @(input1)
      begin
      if (input1 ==  3'b000 ||input1 ==  3'b100 )
          whichRoom = 1;
      else 
          whichRoom = 0;
      end
endmodule
