`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/31 11:46:11
// Design Name: 
// Module Name: T3TE8_V
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


module T3TE8_V(
    input input1,
    input input2,
    input input3,
    input inputen,
    output reg [7:0]output1
//    output output2,
//    output output3,
//    output output4,
//    output output5,
//    output output6,
//    output output7,
//    output output8
    );
    always @* 
    begin
        if(~inputen)
            casex ({input1,input2,input3})
                3'b000: output1 = 8'b00000001;
                3'b001: output1 = 8'b00000010;   
                3'b010: output1 = 8'b00000100;
                3'b011: output1 = 8'b00001000;
                3'b100: output1 = 8'b00010000;
                3'b101: output1 = 8'b00100000;
                3'b110: output1 = 8'b01000000;
                3'b111: output1 = 8'b10000000;
             endcase
         else 
         output1 = 8'b00000000;
     end 
             
        endmodule
