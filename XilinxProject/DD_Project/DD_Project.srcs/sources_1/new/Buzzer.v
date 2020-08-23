`timescale 1ns / 1ps
module Buzzer(
input clk,
input en,
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
//    always @(Minute_First,Minute_Second,Second_First,Second_Second)
//    begin
//    case ({Minute_First,Minute_Second,Second_First,Second_Second})
//            16'b0000000000000000 : 
//            begin
//                buzzerOutput = clkinput2 & ~en;
//            end
//            16'b0101100101010000 :buzzerOutput = clkinput1;
//            16'b0101100101010010 :buzzerOutput = clkinput1;
//            16'b0101100101010100 :buzzerOutput = clkinput1;
//            16'b0101100101010110 :buzzerOutput = clkinput1;
//            16'b0101100101011000 :buzzerOutput = clkinput1;
//            default :            buzzerOutput = 0;             
//     endcase
//     end


     always @(posedge clk)
         begin
         case ({Minute_First,Minute_Second,Second_First,Second_Second})
                 16'b0000000000000000 : 
                begin
                                 buzzerOutput = clkinput2 & ~en;
                             end
                             16'b0101100101010000 :buzzerOutput = clkinput1;
                             16'b0101100101010010 :buzzerOutput = clkinput1;
                             16'b0101100101010100 :buzzerOutput = clkinput1;
                             16'b0101100101010110 :buzzerOutput = clkinput1;
                             16'b0101100101011000 :buzzerOutput = clkinput1;
                             default :            buzzerOutput = 0;           
          endcase
          end
endmodule
