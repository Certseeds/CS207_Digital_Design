`timescale 1ns / 1ps
module Center_file(
input clkinput,
input reset,
input reset_Second,
input reset_Minute,
input Another_Reset_Minute,
input reset_Hour,
output wire [7:0]seg_out,
output wire [7:0]seg_en
,output wire buzzerOutput
  ,output wire [3:0] Minute_First,
  output wire [3:0] Minute_Second
,output wire [7:0]cal
,output wire Minute_Real_reset
    );
wire enCarry;
wire Minute_Reset_3;
wire Hours_Reset_4;
wire [7:0]cal2;
//wire [7:0]cal;
//wire [3:0] Minute_First;
//wire [3:0] Minute_Second;
//wire Minute_Real_reset;
wire [3:0]Second_First;
wire [3:0]Second_Second;
wire [3:0]Hour_First;
wire [3:0]Hour_Second;
wire clkused;
// 1hz ,use it as clk
wire clk_Four;
//4hz
wire clk_six_four;
// 64hz
wire clkUsed_Hihgest;
// 512hz
wire clk_thousand;
// 1024hz
wire clk_two_thousand;
// 2048hz
wire clk_out_second;
// 1/60
wire clk_in_Minute;
// 4 or 1/40
wire clk_in_Hour;
// 4 or 1/60/60
wire clk_out_minute;
// 1/60/60
wire useless;
Produce_frequency Onehz_Second(
.clk(clkinput),
.reset(reset),
.clkout1(clkused),
.clkout2(clk_Four),
.clkout3(clk_six_four),
.clkout4(clkUsed_Hihgest)
);
produce_fre_2 Large(
.clk(clkinput),
.reset(reset)
,.clkout5(clk_thousand)
,.clkout6(clk_two_thousand)
);
Counter_Second_Use second(
.clkinput(clkused),
.reset(reset_Second || reset),
.first(Second_First),
.second(Second_Second),
.carry(clk_out_second)
);
Counter_Second_Use Minute(
.clkinput(clk_in_Minute),
.reset(reset||Minute_Real_reset || Another_Reset_Minute || Minute_Reset_3),
.first(Minute_First),
.second(Minute_Second),
.carry(clk_out_minute)
);
Counter_Hours_Use Hours(
.clkinput(clk_in_Hour && enCarry),
.reset(reset || Hours_Reset_4),
.first(Hour_First),
.second(Hour_Second),
.carry(useless)
);
Times_to_Seg trans(
.clk(clkUsed_Hihgest),
.reset(reset),
.Second_First(Second_First),
.Second_Second(Second_Second),
.Minute_First(Minute_First),
.Minute_Second(Minute_Second),
.Hour_First(Hour_First),
.Hour_Second(Hour_Second),
.seg_out(seg_out),
.seg_en(seg_en)
);
MUX_Use minute2 (
.selfClk(clk_six_four),
.clk1(clk_out_second),
.clk2(clk_Four),
.first(Minute_First),
.second(Minute_Second),
.message(reset_Minute),
.clkOut(clk_in_Minute),
.MinReset(Minute_Real_reset)
,.cal(cal)
,.enCarry(enCarry)
);
Make_It_Reset minute3(
.clk(clk_six_four),
.Number(cal),
.Out_Reset(Minute_Reset_3)
);
MUX_Use_2 Hour2 (
.selfClk(clk_six_four),
.clk1(clk_out_minute),
.clk2(clk_Four),
.first(Hour_First),
.second(Hour_Second),
.message(reset_Hour),
.clkOut(clk_in_Hour)
//,.MinReset(Minute_Real_reset_2)
,.cal(cal2)
);
Make_It_Reset_2 Hours3(
.clk(clk_six_four),
.Number(cal2),
.Out_Reset(Hours_Reset_4)
);
Buzzer buzzer1(
.en(reset_Second),
.clkinput1(clkUsed_Hihgest),
.clkinput2(clk_thousand),
.Minute_First(Minute_First),
.Minute_Second(Minute_Second),
.Second_First(Second_First),
.Second_Second(Second_Second)
,.buzzerOutput(buzzerOutput)
);
//assign buzzerOutput = clk_thousand;
endmodule