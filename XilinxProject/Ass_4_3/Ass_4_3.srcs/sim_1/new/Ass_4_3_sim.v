`timescale 1ns / 1ps
module Ass_4_3_sim(

    );
reg clksim;
reg resetsim;
reg x_in_sim;
wire [1:0]statesim;
//Ass_4_3_v test1(
Ass_4_3_ff test1(
.clk(clksim),
.reset(resetsim),
.x_in(x_in_sim),
.state(statesim));
initial
begin
    clksim = 1'b0;
    repeat(200)
    begin
        #5
        clksim = ~clksim;
    end
end
initial 
begin
    resetsim = 1'b1;
    x_in_sim = 1'b0;
    #10
    resetsim = 1'b0;
    repeat(100)
    begin
        #10
        x_in_sim = ~x_in_sim;
    end
end
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 23:05:17
// Design Name: 
// Module Name: Ass_4_3_sim
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
