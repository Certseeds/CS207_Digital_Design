`timescale 1ns / 1ps
module counter_second_sim();
reg clk,reset;
wire [3:0]first;
wire[3:0]second;
wire carry;
counter_second_v test3(
.clkinput(clk),
.reset(reset),
.first(first),
.second(second),
.carry(carry)
);
initial 
begin
    clk <= 0;
    reset <= 1;
    #1
    reset <= 0;
    #2
    repeat(20000)
    begin
        clk <= ~clk;
        #1;
    end
end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/20 21:10:17
// Design Name: 
// Module Name: counter_second_sim
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