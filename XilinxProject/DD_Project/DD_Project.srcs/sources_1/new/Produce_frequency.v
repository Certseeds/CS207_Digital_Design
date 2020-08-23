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
// output 10^8 to 512
/*,output reg clkout5
,output reg clkout6*/
);
reg [25:0] cnt1;
reg [25:0] cnt2;
reg [25:0] cnt3;
reg [25:0] cnt4;
//reg [25:0] cnt5;
//reg [25:0] cnt6;
parameter cnts1 = 100000;
parameter cnts2 = 25000;
parameter cnts3 = 1600;
parameter cnts4 = 200;
//parameter cnts5 = 4;
//parameter cnts6 = 2;
//parameter cnts1 = 100000000;
//parameter cnts2 = 25000000;
//parameter cnts3 = 1562500;
//parameter cnts4 = 200000;
//parameter cnts5 = 97656;
//parameter cnts6 = 25000;
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
//always @(posedge clk,posedge reset)
//begin
// if(reset)
// begin
//     cnt5 <= 0;
//     clkout5<= 0;
// end
// else if(cnt5 == (cnts5>>1)-1)
// begin
//     cnt5 <= 0;
//     clkout5 <= ~clkout5;
// end
// else
// begin
// cnt5 <= cnt5+1;
// end
//end
//always @(posedge clk,posedge reset)
//begin
// if(reset)
// begin
//     cnt6 <= 0;
//     clkout6<= 0;
// end
// else if(cnt6 == (cnts6>>1)-1)
// begin
//     cnt6 <= 0;
//     clkout6 <= ~clkout6;
// end
// else
// begin
// cnt5 <= cnt5+1;
// end
//end
    
endmodule
