`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/24 09:27:59
// Design Name: 
// Module Name: testing
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


module testing(
   input[3:0]sw,
   output reg [7:0]seg_out,
   output [7:0]seg_en 
    );
    assign seg_en = ~8'hff;
    always @ * begin
       case(sw) 
          4'h0: seg_out  = 8'b01000000;
          4'h1: seg_out  = 8'b01111001;
          4'h2: seg_out  = 8'b00100100; 
          4'h3: seg_out  = 8'b00110000;
          4'h4: seg_out  = 8'b00011001;
          4'h5: seg_out  = 8'b00010010; 
          4'h6: seg_out  = 8'b00000010; 
          4'h7: seg_out  = 8'b01111000; 
          4'h8: seg_out  = 8'b00000000; 
          4'h9: seg_out  = 8'b00010000; 
          4'ha: seg_out  = 8'b00001000; 
          default:seg_out = 8'b0000000;
//          4'hb: seg_out  = 8'b01000000; 
//          4'hc: seg_out  = 8'b01000000;
//          4'hc: seg_out  = 8'b01000000; 
//          4'hc: seg_out  = 8'b01000000; 
//          4'hc: seg_out  = 8'b01000000;
       endcase
   end
endmodule
