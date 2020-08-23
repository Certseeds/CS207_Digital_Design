`timescale 1ns / 1ps
module buzzer_sim_2(
    );
reg clk;
reg en;
reg clkinput1;
reg clkinput2;
reg [3:0] Minute_First;
reg [3:0] Minute_Second;
reg[3:0] Second_First;
reg [3:0] Second_Second;
wire buzzerOutput;
initial
begin
    en <= 0;
    clk <= 0;
    #5;
    repeat (25000000)
    begin
    clk <= ~clk;
    #5;
    end
end
initial
begin
    en <= 0;
    clkinput1 <= 0;
    #40;
    repeat (25000000)
    begin
    clkinput1 <= ~clkinput1;
    #40;
    end
end
initial
begin
    en <= 0;
    clkinput2 <= 0;
    #20;
    repeat (50000000)
    begin
    clkinput2 <= ~clkinput2;
    #20;
    end
end
initial 
begin
{Minute_First,Minute_Second,Second_First,Second_Second} <= 16'b0000000000000000;
#20000;
{Minute_First,Minute_Second,Second_First,Second_Second} <=  16'b0101100101010000 ;
#20000;
{Minute_First,Minute_Second,Second_First,Second_Second} <= 16'b0101100101010010 ;
#20000;
{Minute_First,Minute_Second,Second_First,Second_Second} <=  16'b0101100101010100;
#20000;
{Minute_First,Minute_Second,Second_First,Second_Second} <= 16'b0101100101010110 ;
#20000;
{Minute_First,Minute_Second,Second_First,Second_Second} <= 16'b0101100101011000 ;
   end
Buzzer buzzerTest4(
clk,en,clkinput1,clkinput2, Minute_First,Minute_Second,Second_First,Second_Second,buzzerOutput);
endmodule
