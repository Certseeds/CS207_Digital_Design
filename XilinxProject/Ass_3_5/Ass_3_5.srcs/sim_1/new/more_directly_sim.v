`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/18 17:34:53
// Design Name: 
// Module Name: more_directly_sim
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


module more_directly_sim();
reg [3:0]m1sim;
reg [3:0]m2sim;
wire [7:0]output1sim;
more_directly test1(
.m1(m1sim),
.m2(m2sim),
.output1(output1sim));
    initial 
        begin 
        m1sim = 4'b0000;
        m2sim = 4'b0000;
        repeat (15)
                    begin
                    #1
                    m1sim=  m1sim + 1;
                     repeat (16)
                         begin
                         #1
                         m2sim =  m2sim+1;
                           $display(m1sim +" " + m2sim );
                         end
                     end  
   end 
endmodule
