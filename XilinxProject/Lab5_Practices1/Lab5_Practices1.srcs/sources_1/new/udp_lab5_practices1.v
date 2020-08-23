`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/16 22:10:48
// Design Name: 
// Module Name: udp_lab5_practices1
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


primitive udp_lab5_practices1(
     output1,
     x,
     y,
     z,
     p
    );
    output output1;
    input x,y,z,p;
    table
    0 0 0 0:0;
    1 0 0 0:1;
    0 1 0 0:1;
    0 0 1 0:1;
    0 0 0 1:1;
    1 1 0 0:0;
    1 0 1 0:0;
    1 0 0 1:0;
    0 1 1 0:0;
    0 1 0 1:0;
    0 0 1 1:0;
    0 1 1 1:1;
    1 0 1 1:1;
    1 1 0 1:1;
    1 1 1 0:1;
    1 1 1 1:0;
    endtable
endprimitive
