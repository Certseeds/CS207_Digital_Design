`timescale 1ns / 1ps
module Ass_4_2_sim(
    );
    reg Jsim;
    reg Ksim;
    reg clksim;
    reg setsim;
    reg resetsim;
    wire Qsim;
    Ass_4_2_V test1(
    .J(Jsim),
    .K(Ksim),
    .clk(clksim),
    .set(setsim),
    .reset(resetsim),
    .Q(Qsim)
    );
    initial 
    begin
        clksim = 1'b0;
        repeat(200)
        begin
            #5
            clksim = ~clksim;
        end
   end
   initial 
   begin
       setsim = 1'b1;
       resetsim = 1'b0;
      {Jsim,Ksim} = 2'b00;
       #10
       setsim = 1'b0;
   repeat(5)
   begin
       repeat(4)
       begin
           #10
           {Jsim,Ksim} = {Jsim,Ksim} +1'b1;
            $display($time," %d %d %d %d",Jsim,Ksim,clksim,Qsim); 
       end   
       repeat(4)
       begin
           #10
           {Jsim,Ksim} = {Jsim,Ksim} +2'b10;
           $display($time," %d %d %d %d",Jsim,Ksim,clksim,Qsim); 
       end      
       repeat(4)
       begin
           #10
           {Jsim,Ksim} = {Jsim,Ksim} +2'b11;
           $display($time," %d %d %d %d",Jsim,Ksim,clksim,Qsim); 
       end
       repeat(4)
       begin
           #10
           {Jsim,Ksim} = {Jsim,Ksim} +1'b0;
           $display($time," %d %d %d %d",Jsim,Ksim,clksim,Qsim); 
       end
   end
 end                         
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 21:41:27
// Design Name: 
// Module Name: Ass_4_2_sim
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

