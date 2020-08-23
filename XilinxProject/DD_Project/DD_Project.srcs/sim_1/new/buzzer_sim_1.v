`timescale 1ns / 1ps
module buzzer_sim_1(
    );
reg en = 0;
reg clkinput1;
reg clkinput2;
reg [3:0] Minute_First = 0;
reg [3:0] Minute_Second = 0;
reg[3:0] Second_First = 0;
reg [3:0] Second_Second = 0;
wire buzzerOutput;
//initial
//begin
////    clk <= 0;
////    #5;
////    repeat (200000000)
////    begin
////    clk <= ~clk;
////     #5;
////    end
//en <= 0;
//end
initial
begin
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
    end
end
initial 
begin
   repeat (3000)
   begin
      {Minute_First, Minute_Second} <= 8'b01011001;//59
               repeat (5)
                 begin
                     repeat(9)
                     begin
                         Second_Second <= Second_Second +1;
                         #2000;
                     end
                     Second_Second <= 0;
                     Second_First <= Second_First +1;
                     #2000;
                 end
                 repeat(9)
                   begin
                     Second_Second <= Second_Second +1;
                      #2000;
                   end
                   Second_Second <= 0;
                   Second_First <= 0;
                    {Minute_First, Minute_Second} <= 0;
                   #2000
                   {Minute_First, Minute_Second} <= 0;
   end
end
Buzzer buzzerTest3(
en,clkinput1,clkinput2, Minute_First,Minute_Second,Second_First,Second_Second,buzzerOutput);
endmodule
