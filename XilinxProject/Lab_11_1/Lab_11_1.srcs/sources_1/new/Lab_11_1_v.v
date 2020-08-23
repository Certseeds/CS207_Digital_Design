`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/21 10:46:34
// Design Name: 
// Module Name: Lab_11_1_v
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


module Lab_11_1_v(
input clk,
input x_in,
input rst_n,
output reg y_out
    );
reg  [1:0] state, next_state;
parameter S0 = 2'b00,S1 = 2'b01,S2 = 2'b10, S3 = 2'b11;

always @(posedge clk,negedge x_in)
    begin 
    if (~rst_n)
        begin
            state <= S0;
            y_out <= 1'b0;
        end
    else 
    state = next_state;
    end
    
always @(state,x_in)
begin
    if (x_in)
        case (state)
        S0: next_state = S1;
        S1: next_state = S2;
        S2: next_state = S3;
        S3: next_state = S0;
        endcase
    else 
        next_state = state;
end

always @(state,x_in)
begin
    case (state)
     S0,S1,S2: y_out = 1'b0;
     S3:if (x_in) y_out = 1'b1;else y_out = 1'b0;    
     endcase
end 

endmodule

