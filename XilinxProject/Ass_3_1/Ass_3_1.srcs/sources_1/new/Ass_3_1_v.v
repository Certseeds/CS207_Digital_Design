`timescale 1ns / 1ps
module Ass_3_1_v(
   input [15:0]input1,
   output reg [7:0]  seg_out,
   output [7:0] seg_en,
   output [15:0] output1
    );
    assign seg_en = ~8'hff;
    assign output1 = input1;
    always @*
    begin 
     casex(input1)
     16'bxxxxxxxxxxxxxxx1: seg_out = 8'b01000000;//0
     16'bxxxxxxxxxxxxxx10: seg_out = 8'b01111001;//1
     16'bxxxxxxxxxxxxx100: seg_out = 8'b00100100;//2
     16'bxxxxxxxxxxxx1000: seg_out = 8'b00110000;//3
     16'bxxxxxxxxxxx10000: seg_out = 8'b00011001;//4
     16'bxxxxxxxxxx100000: seg_out = 8'b00010010;//5
     16'bxxxxxxxxx1000000: seg_out = 8'b00000010;//6
     16'bxxxxxxxx10000000: seg_out = 8'b01111000;//7
     16'bxxxxxxx100000000: seg_out = 8'b00000000;//8
     16'bxxxxxx1000000000: seg_out = 8'b00010000;//9
     16'bxxxxx10000000000: seg_out = 8'b00001000;//A
     16'bxxxx100000000000: seg_out = 8'b00000011;//B
     16'bxxx1000000000000: seg_out = 8'b01000110;//C
     16'bxx10000000000000: seg_out = 8'b00100001;//D
     16'bx100000000000000: seg_out = 8'b00000110;//E
     16'b1000000000000000: seg_out = 8'b00001110;//F
     default:seg_out = 8'b0000000;
    endcase
    end  
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/19 14:21:04
// Design Name: 
// Module Name: Ass_3_1_v
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