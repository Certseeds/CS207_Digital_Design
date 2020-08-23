`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/31 19:24:22
// Design Name: 
// Module Name: lab8_prac_1_sim
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


module lab8_prac_1_sim( );
   reg siminput1,siminput2,siminput3,siminput4,siminputen;
//   reg siminput2;
//   reg siminput3;
//   reg siminput4;
//   reg siminputen;
   wire [7:0]simtemp1;
   wire  [7:0]simtemp2;
   wire [15:0]simoutput1;
   F4TS16_V u(
   .input1(siminput1),
   .input2(siminput2),
   .input3(siminput3),
   .input4(siminput4),
   .inputen(siminputen), 
   .temp1(simtemp1),
   .temp2(simtemp2), 
   .output1(simoutput1)
   );
   initial
       begin 
       siminputen = 1'b0;
       {siminput4,siminput1,siminput2,siminput3} = 0;
           repeat(15)
               #10
             {siminput4,siminput1,siminput2,siminput3} =  {siminput4,siminput1,siminput2,siminput3}+ 1;
              $display("input1,input2,input3,input4,output"+siminput1+" "+siminput2 +" "+siminput3+" "+siminput4+" "+simoutput1);
         end
endmodule
