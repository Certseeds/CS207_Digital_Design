`timescale 1ns / 1ps
module Center_file_sim();
reg  clkinput;
reg  reset;
reg  reset_Minute;
wire [7:0] seg_out;
wire [7:0] seg_en;
wire [3:0] Minute_First;
wire [3:0] Minute_Second;
wire Minute_Real_reset;
wire [7:0] cal;
wire buzzer;
Center_file test4(
.clkinput(clkinput),
.reset(reset),
.reset_Minute(reset_Minute),
.seg_out(seg_out),
.seg_en(seg_en)
,.Minute_First(Minute_First),
.Minute_Second(Minute_Second)
  ,.cal(cal)
 ,. Minute_Real_reset(Minute_Real_reset)
 ,.buzzerOutput(buzzer)
);
initial
begin
    clkinput <= 0;
    reset <= 1;
    reset_Minute <= 1;
    #2
    reset <= 0;
    reset_Minute <= 0;
    #3 
    repeat (200000)
    begin
        clkinput <= ~clkinput;
        #5;
    end
    clkinput <= ~clkinput;
   
    #5
    repeat (2000000000)
           begin
               clkinput <= ~clkinput;
               #5;
        end
    reset_Minute <= 0;
    
end


endmodule