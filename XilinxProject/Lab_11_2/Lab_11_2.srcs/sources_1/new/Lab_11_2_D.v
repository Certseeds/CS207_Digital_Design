`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/21 14:53:44
// Design Name: 
// Module Name: Lab_11_2_D
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


module Lab_11_2_D(
input clk,
input EN,
input D,
output Q,
output Q_Tran

    );
    reg Q_this = 0;
    reg Q = 0;
    reg Q_Tran = 1;
    always @(posedge clk,negedge clk)
    
    begin
        if (EN ==1'b0)
            {Q,Q_Tran} <= {Q,Q_Tran};
        else 
        begin
            if (D == 1'b0)
            {Q,Q_Tran} <= 2'b01;
            else 
            {Q,Q_Tran} <= 2'b10;
        end
    end
endmodule
