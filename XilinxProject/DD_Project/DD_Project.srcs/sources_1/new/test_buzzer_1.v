`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/25 15:00:32
// Design Name: 
// Module Name: test_buzzer_1
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


module test_buzzer_1(
input clk,
input reset,
output reg buzzerOut
    );
reg [25:0]count;
parameter cnts9 = 100000;
//1000hz
always @(posedge clk,posedge reset)
begin
    if(reset)
    begin
        count <= 0;
       buzzerOut<= 0;
    end
    else if(count == (cnts9>>1)-1)
    begin
        count<= 0;
        buzzerOut<= ~buzzerOut;
    end
    else
    begin
        count<= count+1;
    end
end 
endmodule
