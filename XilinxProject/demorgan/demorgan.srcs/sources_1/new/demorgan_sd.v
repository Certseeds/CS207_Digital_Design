`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/30 21:08:55
// Design Name: 
// Module Name: demorgan_sd
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
module demorgan_sd(
  input input1,
  input input2,
  output outinput1,
  output outinput2,
  output output1,
  output output2,
  output output3,
  output output4 
    );
   assign outinput1 = input1;
   assign outinput2 = input2;
 wire temp0;
         orgate_0 u_or_0( 
         .a(input1),
         .b(input2),
         .q(temp0)
         );
         notgate_0 u_not_0(
         .a(temp0),
         .c(output1)
         );
       wire temp1;
       wire temp2;
       notgate_0 u_not_1(
              .a(input1),
              .c(temp1)
              );
       notgate_0 u_not_2(
                .a(input2),
                .c(temp2)
                 );
       andgate_0 u_add_0(
               .a(temp1),
               .b(temp2),
               .q(output2));
       orgate_0 u_or_1( 
                .a(temp1),
                .b(temp2),
                .q(output4)
                              );
      wire temp3;
      andgate_0 u_add_1(
                   .a(input1),
                   .b(input2),
                   .q(temp3)
          );
        notgate_0 u_not_3(
                .a(temp3),
                .c(output3)
                );
  endmodule

