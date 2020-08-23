`timescale 1ns / 1ps
module NAND_sim( );
      reg [1:0]sima = 2'h00;
      reg [1:0]simb =  2'h00;
      reg [1:0]simc =  2'h00;
      reg [1:0]simd = 2'h11;
      wire [1:0]simoutput1;
      NAND_V #(3,2) NAND_V_U(
.a(sima),
.b(simb),
.c(simc),
.d(simd),
.output1(simoutput1)
);
initial
begin
     simd = 3;
     repeat(4)
         begin 
         sima = sima + 1;
         repeat (4)
             begin 
             simb = simb + 1;
             repeat(4)
                 begin
                 #5
                 simc = simc + 1;
                 $display("sima,simb,simc,simd,simoutput1 ",sima," ",simb," ",simc," ",simd," ",simoutput1);
                 end
             end
         end
end
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2018/10/18 19:55:15
// Design Name:
// Module Name: NAND_sim
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
