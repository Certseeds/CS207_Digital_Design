`timescale 1ns / 1ps
module Ass_3_2_sim(
    );
    
    reg EIsim,sima,simb,simc,simd;
    wire outputasim,outputbsim,outputcsim,outputdsim;
    wire Fsim,EOsim;
    Ass_3_2_v test(
    .EI(EIsim),
    .A(sima),
    .B(simb),
    .C(simc),
    .D(simd),
    .outputa(outputasim),
    .outputb(outputbsim),
    .outputc(outputcsim),
    .outputd(outputdsim),
    .F(Fsim),
    .EO(EOsim));
    initial
        begin
        EIsim = 0;
        {sima,simb,simc,simd} = 4'b0000;
            repeat(16)
                begin
                #10
                 {sima,simb,simc,simd} =  {sima,simb,simc,simd} +1;
                 $display($time,"{A,B,C,D,F,EO}:%d %d %d %d %d %d",sima,simb,simc,simd,Fsim,EOsim); 
                 end
            EIsim = 1;
                repeat(16)
                   begin
                   #10
                   {sima,simb,simc,simd} =  {sima,simb,simc,simd} +1;
                 $display($time,"{A,B,C,D,F,EO}:%d %d %d %d %d %d",sima,simb,simc,simd,Fsim,EOsim); 
                    end
         end 
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/19 20:44:46
// Design Name: 
// Module Name: Ass_3_2_sim
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
