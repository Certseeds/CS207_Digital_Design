`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/21 10:57:36
// Design Name: 
// Module Name: Lab_11_1_sim
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


module Lab_11_1_sim(

    );
    reg clksim;
    reg x_in_sim;
    reg rst_n_sim;
    wire y_out_sim;
    Lab_11_1_v testOne(
    .clk(clksim),
    .x_in(x_in_sim),
    .rst_n(rst_n_sim),
    .y_out(y_out_sim)
    );
initial 
    begin
    clksim = 1'b0;
    #5
    repeat (200)
        begin
        #5;
        clksim = 1'b1;
        #5 
        clksim = 1'b0;
        end
end
initial 
fork
rst_n_sim = 1'b0;
x_in_sim = 1'b0;
#1 rst_n_sim = 1'b1;
#3 x_in_sim = 1'b1;
#35 x_in_sim = 1'b0;
#40 x_in_sim = 1'b1;
join
endmodule
