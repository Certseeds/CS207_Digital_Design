`timescale 1ns / 1ps
module Make_It_Reset(
input clk,
input [7:0]Number,
output reg Out_Reset
    );
always @(posedge clk)
begin
    if(Number == 8'b00111011)
    begin
        Out_Reset <= 1;
    end
    else
    begin
        Out_Reset <= 0;
    end
end
endmodule
