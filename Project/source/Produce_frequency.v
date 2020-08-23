`timescale 1ns / 1ps
module Produce_frequency(
input clk,
input reset,
output reg clkout1,
// 10^8 to 1 hz
output reg clkout2,
//10^8 hz to 4hz
output reg clkout3,
//output3 10^8 to 64hz
output reg clkout4
);
reg [25:0] cnt1;
reg [25:0] cnt2;
reg [25:0] cnt3;
reg [25:0] cnt4;
parameter cnts1 = 4;
//parameter cnts1 = 100000000;
parameter cnts2 = 25000000;
parameter cnts3 = 1562500;
parameter cnts4 = 195312;
//为什么能拓展成4倍,第一只对上升沿敏感,第二就是由两种状态,2×2 = 4
//100000000 10^8 放慢4倍(偶数)之后仍是整数,就说明是偶数倍.-总是要保证最后得到的是整数
always @(posedge clk,posedge reset)
begin
    if(reset)
    begin
        cnt1 <= 0;
        clkout1<= 0;
    end
    else if(cnt1 == (cnts1>>1)-1)
    begin
        cnt1 <= 0;
        clkout1 <= ~clkout1;
    end
    else
    begin
    cnt1 <= cnt1+1;
    end
end 
// clkout1 1hz
always @(posedge clk,posedge reset)
begin
    if(reset)
    begin
        cnt2 <= 0;
        clkout2<= 0;
    end
    else if(cnt2 == (cnts2>>1)-1)
    begin
        cnt2 <= 0;
        clkout2 <= ~clkout2;
    end
    else
    begin
    cnt2 <= cnt2+1;
    end
end
// output2 4hz
always @(posedge clk,posedge reset)
begin
    if(reset)
    begin
        cnt3 <= 0;
        clkout3<= 0;
    end
    else if(cnt3 == (cnts3>>1)-1)
    begin
        cnt3 <= 0;
        clkout3 <= ~clkout3;
    end
    else
    begin
    cnt3 <= cnt3+1;
    end
end
always @(posedge clk,posedge reset)
begin
 if(reset)
 begin
     cnt4 <= 0;
     clkout4<= 0;
 end
 else if(cnt4 == (cnts4>>1)-1)
 begin
     cnt4 <= 0;
     clkout4 <= ~clkout4;
 end
 else
 begin
 cnt4 <= cnt4+1;
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

