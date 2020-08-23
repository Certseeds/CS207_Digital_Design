`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/14 22:39:20
// Design Name: 
// Module Name: four_bit_adder
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

// 4 is the higest 
module four_bit_adder(
input firstAdd1,
input firstAdd2,
input firstAdd3,
input firstAdd4,
input secondAdd1,
input secondAdd2,
input secondAdd3,
input secondAdd4,
output isEn,
output output4,
output output3,
output output2,
output output1
);
wire temp1;
wire temp2;
wire temp3;
two_bit_adder add1(firstAdd1,secondAdd1,0,temp1,output1);
two_bit_adder add2(firstAdd2,secondAdd2,temp1,temp2,output2);
two_bit_adder add3(firstAdd3,secondAdd3,temp2,temp3,output3);
two_bit_adder add4(firstAdd4,secondAdd4,temp3,isEn,output4);

endmodule
