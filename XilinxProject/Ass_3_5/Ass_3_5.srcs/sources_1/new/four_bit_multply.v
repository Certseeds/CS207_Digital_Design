`timescale 1ns / 1ps
  // 4 is the higest       
module four_bit_multply(
input firstMulti1,
input firstMulti2,
input firstMulti3,
input firstMulti4,
input secondMulti1,
input secondMulti2,
input secondMulti3,
input secondMulti4,
output output0,
output output1,
output output2,
output output3,
output output4,
output output5,     
output output6,
output output7);
   wire temp1;
   wire temp2;
   wire temp3;
   wire temp4;
   wire temp5;
   wire temp6;
   wire temp7;
   wire temp8;         
    assign output0 = firstMulti1 & secondMulti1;
    four_bit_adder fout_bit_adder1(
    (firstMulti2 & secondMulti1),(firstMulti2 & secondMulti2),
    (firstMulti2 & secondMulti3),(firstMulti2 & secondMulti4),
    (firstMulti1 & secondMulti2),(firstMulti1 & secondMulti3),
    (firstMulti1 & secondMulti4),0,
    temp1,temp2,temp3,temp4,output1);
    
    four_bit_adder fout_bit_adder2(
    (firstMulti3 & secondMulti1),(firstMulti3 & secondMulti2),
    (firstMulti3 & secondMulti3),(firstMulti3 & secondMulti4),
    temp4,temp3,temp2,temp1,
    temp5,temp6,temp7,temp8,output2);
    
    four_bit_adder fout_bit_adder3(
     (firstMulti4 & secondMulti1),(firstMulti4 & secondMulti2),
     (firstMulti4 & secondMulti3),(firstMulti4 & secondMulti4),
     temp8,temp7,temp6,temp5,
     output7,output6,output5,output4,output3);
     endmodule
 //////////////////////////////////////////////////////////////////////////////////
     // Company: 
     // Engineer: 
     // 
     // Create Date: 2018/11/14 22:38:30
     // Design Name: 
     // Module Name: four_bit_multply
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
     
   
