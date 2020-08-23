`timescale 1ns / 1ps
module enCoder_Four_to_Eight(
//input clk,
input [3:0] decimalNumber,
output reg [7:0] segNumber
    );
always @ *
//(posedge clk)
begin
    case(decimalNumber)
        4'h0: segNumber  <= 8'b01000000;
        4'h1: segNumber  <= 8'b01111001;
        4'h2: segNumber  <= 8'b00100100; 
        4'h3: segNumber  <= 8'b00110000;
        4'h4: segNumber  <= 8'b00011001;
        4'h5: segNumber  <= 8'b00010010; 
        4'h6: segNumber  <= 8'b00000010; 
        4'h7: segNumber  <= 8'b01111000; 
        4'h8: segNumber  <= 8'b00000000; 
        4'h9: segNumber  <= 8'b00010000; 
        default:segNumber <= 8'b11111111;
     endcase
 end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/22 10:39:46
// Design Name: 
// Module Name: enCoder_Four_to_Eight
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
