`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/20 22:40:01
// Design Name: 
// Module Name: Center_file
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


module Center_file(
input clkinput,
input reset,
input reset_Second,
input reset_Minute,
input reset_Hour,
output wire [3:0]Second_First,
output wire [3:0]Second_Second,
output wire [3:0] Minute_First,
output wire [3:0] Minute_Second,
output wire [3:0]Hour_First,
output wire [3:0]Hour_Second
//output wire clkused
    );
wire clkused;
wire clk_out_second;
wire clk_out_minute;
// 1hz ,use it as clk 
wire useless;
Produce_frequency Onehz_Second(
.clk(clkinput),
.reset(reset),
.clkout1(clkused),
.clkout2(useless),
.clkout3(useless),
.clkout4(useless)
);
Counter_Second_Use second(
.clkinput(clkused),
.reset(reset_Second || reset),
.first(Second_First),
.second(Second_Second),
.carry(clk_out_second)
);
Counter_Second_Use Minute(
.clkinput(clk_out_second),
.reset(reset_Minute || reset),
.first(Minute_First),
.second(Minute_Second),
.carry(clk_out_minute)
);
Counter_Hours_Use Hours(
.clkinput(clk_out_minute),
.reset(reset_Hour || reset),
.first(Hour_First),
.second(Hour_Second),
.carry(useless)
);

endmodule
