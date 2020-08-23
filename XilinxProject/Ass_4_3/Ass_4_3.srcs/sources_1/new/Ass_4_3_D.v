`timescale 1ns / 1ps
module  Ass_4_3_D(
input clk,
input D,
input reset,
output wire Q,
output wire Qtran
    );
    reg Qtemp;
    always @(posedge clk,posedge reset,negedge reset)
    begin
        if (reset)
            begin
            Qtemp = 0;
            end
        else 
            begin
            Qtemp = D;
            end  
    end
    assign Q = Qtemp;
    assign Qtran = ~Q;
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 23:36:04
// Design Name: 
// Module Name: Ass_4_3_D
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
