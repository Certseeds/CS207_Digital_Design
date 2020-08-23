`timescale 1ns / 1ps
module Ass_4_3_v(
input clk,
input reset,
input x_in,
output[1:0] state
    );
    reg [1:0] state,next_state;
    parameter S0 = 2'b00,S1 = 2'b01,S2 = 2'b10,S3 = 2'b11;
always @(posedge clk,posedge reset)
begin
    if (reset)
    begin
        state <= S0;
    end
    else
    begin 
        state <= next_state;
    end    
end

always @(state,x_in)
  begin
     if (x_in)
     begin
         case(state)
         S0 :next_state <= S1;
         S1 :next_state <= S3;
         S3 :next_state <= S2;
         S2 :next_state <= S0;
         endcase
     end
     else 
     begin
         next_state <= state;
     end    
 end    
  
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 22:53:17
// Design Name: 
// Module Name: Ass_4_3_v
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
