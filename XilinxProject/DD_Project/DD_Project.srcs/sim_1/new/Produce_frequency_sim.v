`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/20 15:43:03
// Design Name: 
// Module Name: Produce_frequency_sim
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


module Produce_frequency_sim(

    );
reg clk,reset;
wire clkout1,clkoutput2,clkoutput3,clkoutput4;
Produce_frequency test1(clk,reset,clkout1,clkoutput2,clkoutput3,clkoutput4);
initial fork
    clk <= 0;
    reset <= 1;
    #3 reset <= 0;
    forever 
    #5 
    clk = ~clk;
join
endmodule
