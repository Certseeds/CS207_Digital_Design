`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/21 11:47:56
// Design Name: 
// Module Name: Lab_11_2_V
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


module Lab_11_2_V(
input clk,
//input EN,
input x_in,
output [1:0]y_out
    );
reg  number0 = 1'b0;
reg  number1 = 2'b0;
wire [1:0]y_out;
wire useless;
 Lab_11_2_D testcase1(
   .clk(clk),
   .EN(x_in),
   .D(x_in & number0),
   .Q(useless),
   .Q_Tran(y_out[0])
   );
Lab_11_2_D testcase2(
      .clk(clk),
      .EN(x_in & number0),
      .D(x_in & number0 & ~number1),
      .Q(y_out[1]),
      .Q_Tran(useless));
always @(y_out)
    begin
    //#1 
    //the stop can action whether or not
    {number1,number0} = y_out;
    end
endmodule
