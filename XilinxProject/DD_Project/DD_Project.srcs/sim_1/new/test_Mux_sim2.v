`timescale 1ns / 1ps
module test_Mux_sim2();
reg clkinput;
reg reset_Minute;
reg reset;
wire [3:0]Minute_First;
wire [3:0]Minute_Second;
wire clkused;
 //1
wire clk_Four;
// 4
wire clkUsed_Hihgest;
wire clk_in_test8;
wire Minute_Real_reset;
test_Mux_2 test9(
.clkinput(clkinput),
.reset(reset),
.reset_Minute(reset_Minute),
.Minute_First(Minute_First),
.Minute_Second(Minute_Second),
.clkused(clkused),
.clk_Four(clk_Four),
.clkUsed_Hihgest(clkUsed_Hihgest),
.clk_in_test8(clk_in_test8),
.Minute_Real_reset(Minute_Real_reset)
);

initial
begin
    clkinput <= 0;
    reset <= 1;
    #2
    reset <= 0;
    #3 
    repeat (20000)
    begin
        clkinput <= ~clkinput;
        #5;
    end
    clkinput <= ~clkinput;
    reset_Minute <= 1;
    #5
    reset_Minute <= 0;
    repeat (200000)
       begin
           clkinput <= ~clkinput;
           #5;
    end
end
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/24 17:55:07
// Design Name: 
// Module Name: test_Mux_sim2
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
