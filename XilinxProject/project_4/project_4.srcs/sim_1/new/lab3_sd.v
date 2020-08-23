`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/19 15:36:54
// Design Name: 
// Module Name: lab3_sd
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


module lab3_sd(
    input siminput1,
    input siminput2,
    output simoutput1,
    output simoutput2,
    output simoutput3
    );
    assign simoutput1 = siminput1;
    wire temp0;
    andgate_0 u_add0(
       .a(siminput1),
       .b(siminput2),
       .q(temp0) );
    orgate_0 u_or0(
    .a(temp0),
    .b(siminput1),
    .q(simoutput2)
    );
    wire temp1;
    orgate_0 u_or1(
        .a(siminput1),
        .b(siminput2),
        .q(temp1)
        );
    andgate_0 u_add1(
        .a(temp1),
        .b(temp2),
        .q(si) );
endmodule
