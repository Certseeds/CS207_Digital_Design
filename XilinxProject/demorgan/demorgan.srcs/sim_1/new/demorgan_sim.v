`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/30 19:40:48
// Design Name: 
// Module Name: demorgan_sim
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


module demorgan_sim();
    reg siminput1,siminput2;
    wire simoutinput1,simoutinput2,simoutput1,simoutput2,simoutput3,simoutput4;
    demorgan_df demo_df(
    .input1(siminput1),
    .input2(siminput2),
    .outinput1(simoutinput1),
    .outinput2(simoutinput2),
    .output1(simoutput1),
    .output2(simoutput2),
    .output3(simoutput3),
    .output4(simoutput4)
           );
    initial 
    begin
    siminput1=0;
    siminput2=0;
    #100
    siminput1=0;
    siminput2=1;
    #100
    siminput1=1;
    siminput2=0;
    #100
    siminput1=1;
    siminput2=1;
   
    end
endmodule
