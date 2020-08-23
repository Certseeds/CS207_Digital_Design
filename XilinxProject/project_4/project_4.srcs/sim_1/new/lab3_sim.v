`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/19 13:05:13
// Design Name: 
// Module Name: lab3_sim
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


module lab3_sim();
    reg siminput1,siminput2;
    wire simoutput1,simoutput2,simoutput3;
    Lab3_bd u_df(
    //or Lab3_df u_df( use the code instead of chips
         .input1(siminput1),
         .input2(siminput2),
         .output1(simoutput1),
         .output2(simoutput2),
         .output3(simoutput3)
    );
    initial 
    begin
      siminput1=0;
      siminput2=0;
  #10
      siminput1=0;
      siminput2=1;
  #10
      siminput1=1;
      siminput2=0;
  #10
      siminput1=1;
      siminput2=1;
  end
endmodule
