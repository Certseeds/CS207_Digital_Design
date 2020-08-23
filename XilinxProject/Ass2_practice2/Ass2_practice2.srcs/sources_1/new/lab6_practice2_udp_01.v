`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/20 09:45:36
// Design Name: 
// Module Name: lab6_practice2_udp_01
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
primitive lab6_practice2_udp(
     output1,
     x,
     y,
     z
    );
     output output1;
     input x,y,z;
    table
    0 0 0 :0;
    1 0 0 :1;
    0 1 0 :1;
    0 0 1 :1;
    1 1 0 :0;
    1 0 1 :0;
    0 1 1 :0;
    1 1 1 :1;
    endtable
    
endprimitive