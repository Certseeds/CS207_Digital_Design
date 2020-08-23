`timescale 1ns / 1ps
module test_Mux_2(
input clkinput,
input reset,
input reset_Minute,
output [3:0] Minute_First,
output [3:0] Minute_Second,
output wire clkused,
 //1
output wire clk_Four,
// 4
output wire clkUsed_Hihgest,
output wire clk_in_test8,
output wire Minute_Real_reset

    );
//wire clkused;
// //1
//wire clk_Four;
//// 4
//wire clkUsed_Hihgest;
//wire clk_in_test8;
//wire Minute_Real_reset;
Produce_frequency test7(
.clk(clkinput),
.reset(reset),
.clkout1(clkused),
.clkout2(clk_Four),
.clkout3(clkUsed_Hihgest)
);
Counter_Second_Use test8(
.clkinput(clk_in_test8),
.reset( reset || Minute_Real_reset),
.first(Minute_First),
.second(Minute_Second)
);
MUX_Use test9 (
.reset(reset),
.selfClk(clkinput),
.clk1(clkused),
.clk2(clk_Four),
.first(Minute_First),
.second(Minute_Second),
.message(reset_Minute),
.clkOut(clk_in_test8),
.MinReset(Minute_Real_reset)
);
endmodule
