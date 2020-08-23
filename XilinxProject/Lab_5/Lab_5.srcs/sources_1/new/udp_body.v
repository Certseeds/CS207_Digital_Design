`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/10 11:57:06
// Design Name: 
// Module Name: udp_body
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

primitive udp_body(
    output1,
    input1,
    input2,
    input3
    );
    output output1;
    input input1,input2,input3;
    // 
    table
        1 ? ? : 1;
        0 0 1 : 1;
        0 1 ? : 0;
        0 ? 0 : 0;
    endtable
endprimitive
