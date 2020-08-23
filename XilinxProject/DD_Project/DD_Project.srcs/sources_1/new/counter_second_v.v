`timescale 1ns / 1ps
module counter_second_v(
input clkinput,
input reset,
output reg [3:0]first,
output reg [3:0]second,
output reg carry);
wire clkused;
wire useless;
Produce_frequency Onehz(
.clk(clkinput),
.reset(reset),
.clkout1(clkused),
.clkout2(useless),
.clkout3(useless),
.clkout4(useless)
);
// clkused will be 1hz

always@(posedge clkused,posedge reset)
begin
     if(reset)
     begin
         first <= 0;
         second <= 0;
     end
     else 
     begin
         if(second == 9)
         begin
             second <=0;
             if(first == 5)
             begin
                 first <= 0;
                 carry <= 1;
             end
             else
             begin
                 first <= first + 1;
             end
         end
         else 
         begin
             second <= second +1;
             carry <= 0;
         end
     end
end

endmodule


//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/20 20:50:19
// Design Name: 
// Module Name: counter_second_v
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

