`timescale 1ns / 1ps
module produce_fre_2(
input clk,
input reset,
// output 10^8 to 512
output reg clkout5
,output reg clkout6
);
reg [25:0] cnt5;
reg [25:0] cnt6;
//parameter cnts1 = 32; //1hz
//parameter cnts2 = 512; // 4hz
//parameter cnts3 = 64; // 64hz
//parameter cnts4 = 8; // 512 hz
//parameter cnts5 = 4;
//parameter cnts6 = 2;
parameter cnts5 = 100;
parameter cnts6 = 24;
//为什么能拓展成4倍,第一只对上升沿敏感,第二就是由两种状态,2×2 = 4
//100000000 10^8 放慢4倍(偶数)之后仍是整数,就说明是偶数倍.-总是要保证最后得到的是整数
always @(posedge clk,posedge reset)
begin
 if(reset)
 begin
     cnt5 <= 0;
     clkout5<= 0;
 end
 else if(cnt5 == (cnts5>>1)-1)
 begin
     cnt5 <= 0;
     clkout5 <= ~clkout5 ;
 end
 else
 begin
 cnt5 <= cnt5+1;
 end
end
always @(posedge clk,posedge reset)
begin
 if(reset)
 begin
     cnt6 <= 0;
     clkout6<= 0;
 end
 else if(cnt6 == (cnts6>>1)-1)
 begin
     cnt6 <= 0;
     clkout6 <= ~clkout6;
 end
 else
 begin
 cnt6 <= cnt6+1;
 end
end
    
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/20 14:59:07
// Design Name: 
// Module Name: Produce_frequency
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
