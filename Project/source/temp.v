`timescale 1ns / 1ps
module Buzzer(
input clk,
//4000hz
input clkinput1,
//512
input clkinput2,
//1024
input [3:0] Minute_First,
input [3:0] Minute_Second,
input [3:0] Second_First,
input [3:0] Second_Second,
output reg buzzerOutput
    );
    reg [3:0]M_F;
    reg [3:0]M_S;
    reg [3:0]S_F;
    reg [3:0]S_S;
//reg buzzerOutput = 0; 
parameter [3:0] zero = 4'b0000;
parameter [3:0] two = 4'b0010;
parameter [3:0] four= 4'b0100;
parameter [3:0]five = 4'b0101;
parameter [3:0] six = 4'b0110;
parameter [3:0] eight = 4'b1000;
parameter [3:0]nine = 4'b1001;
    always @(posedge clk)
    begin
    if(clk)
    begin
         if(~(M_F == Minute_First  ))
         begin
             M_F <= Minute_First;
         end
         if(~(M_S == Minute_Second ))
         begin
             M_S <= Minute_Second;
         end
         if(~(S_F == Second_First))
         begin
             S_F <= Second_First;
         end
         if(~(S_S == Second_Second))
         begin
             S_S <= Second_Second;
         end
         if(M_F == five && M_S == nine && S_F == five && (S_S == zero || S_S == two|| S_S == four|| S_S == six|| S_S == eight) )
         begin
             buzzerOutput <= clkinput1;
         end
         else if(M_F == zero && M_S == zero && S_F == zero && S_S == zero )
         begin
             buzzerOutput <= clkinput2;
         end
         else 
         begin
             buzzerOutput <= 0;
         end
        // buzzerOutput <= clkinput1;
//            if((Minute_First == 4'b0101 && Minute_Second == 4'b1001 && Second_First == 4'b0101) &&(Second_Second == 4'b0000 || Second_Second == 4'b0010 || Second_Second == 4'b0100 || Second_Second == 4'b0110 || Second_Second == 4'b1000))
//            // 59:50/2/4/6/8
//            begin
//                buzzerOutput <= clkinput1;
//            end
//            else if(Minute_First == 4'b0000 && Minute_Second == 4'b0000  && Second_First  == 4'b0000 && Second_Second == 4'b0000 )
//            //00:00
//            begin
//                buzzerOutput <= clkinput2;
//            end
//            else 
//            begin
//                buzzerOutput <= 0;
//            end
     end
     end
endmodule
