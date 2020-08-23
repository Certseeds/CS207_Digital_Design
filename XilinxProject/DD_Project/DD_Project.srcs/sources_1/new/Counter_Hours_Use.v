`timescale 1ns / 1ps
module Counter_Hours_Use(
input clkinput,
input reset,
output reg [3:0]first,
output reg [3:0]second,
output reg carry
    );
always@(posedge clkinput,posedge reset)
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
             second <= 0;
             first <= first +1;
         end
         else if(second == 3)
         begin
             if(first == 2)
             begin
                 first <= 0;
                 second <= 0;
             end
             else
             begin
                 second <= second +1;
             end
         end
         else 
         begin
             second <= second +1;
         end
     end
end

endmodule

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/21 22:29:25
// Design Name: 
// Module Name: Counter_Hours_Use
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
