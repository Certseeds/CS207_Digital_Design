`timescale 1ns / 1ps
module Mux_74151(
    input EI,S2,S1,S0,D0,D1,D2,D3,
    D4,D5,D6,D7,
    output reg Y,
    output EO
    );
    always @*
    if (~EI)
        case({S2,S1,S0}) 
            3'b000: Y = D0;
            3'b001: Y = D1;
            3'b010: Y = D2;
            3'b011: Y = D3;
            3'b100: Y = D4;
            3'b101: Y = D5;
            3'b110: Y = D6;
            3'b111: Y = D7;
        endcase
     else 
     Y = 1'b0;
     assign EO = ~Y;
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/19 20:35:16
// Design Name: 
// Module Name: Mux_74151
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
