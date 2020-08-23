`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/21 18:59:11
// Design Name: 
// Module Name: Lab_11_2_sim
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


module Lab_11_2_sim();
reg clksim;
reg simx;
wire [1:0]simy;
Lab_11_2_V test1(
.clk(clksim),
.x_in(simx),
.y_out(simy));
 initial 
   begin
     clksim = 1'b0;
       repeat (200)    
       begin
           #5
           clksim <= ~clksim;
       end
   end    
   initial 
   begin 
   simx = 1'b1;
   repeat(200)
   simx = 1'b1;
   end
endmodule
