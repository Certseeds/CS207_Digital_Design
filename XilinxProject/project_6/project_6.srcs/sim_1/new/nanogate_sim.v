`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/26 11:17:43
// Design Name: 
// Module Name: nanogate_sim
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


module nanogate_sim( );
reg sima = 0,simb = 0,simc = 0,simd = 0,sime = 0,simf = 0,simg = 0,simh = 0;
wire simq;
nandgate #(2,1)  u_nand (
        .a(sima),
        .b(simb),
        .c(simc),
        .d(simd),
        .e(sime),
        .f(simf),
        .g(simg),
        .h(simh),
        .q(simq));
        initial begin
        #10
        sima = 0;simb  = 0;
        #10
        sima = 0;simb  = 1;
        #10
        sima = 1 ;simb  = 0;
        #10
        sima = 1 ;simb  = 1;         
        
        end 
endmodule
