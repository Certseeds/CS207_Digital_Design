`timescale 1ns / 1ps
module lab6_practice2_df_sop(
    output output1,
    output output2,
    output output3,
    output output4,
    input x,
    input y,
    input z,
      wire temp1,
      wire temp2,
      wire temp3,
      wire temp4,
      wire temp5,
      wire temp6,
      wire temp7
    );
     not(temp1,x);
     not(temp2,y);
     not(temp3,z);
     and (temp4,x,temp2,temp3);
     and (temp5,y,temp1,temp3);
     and (temp6,z,temp1,temp2);
     and (temp7,x,y,z);
     or (output1,temp4,temp5,temp6,temp7);
    assign output2 = x;
    assign output3 = y;
    assign output4 = z;
endmodule
//////////////////////////////////////////////////////////////////////////////////
//assign output1 = (x&y&z) + (x&~y&~z)+(~x&y&~z)+(~x&~y&z);
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/19 11:50:15
// Design Name: 
// Module Name: lab6_practice2_df_sop
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
