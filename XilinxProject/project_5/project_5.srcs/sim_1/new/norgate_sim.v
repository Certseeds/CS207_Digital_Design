`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/26 10:31:48
// Design Name: 
// Module Name: norgate_sim
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


module norgate_sim(

    );
    reg sa,sb,sc,sd;
    wire se;
    noorgate #(1,2) u_nor(
        .A(sa),
        .B(sb),
        .C(sc),
        .D(sd),
        .E(se)
    
    );
    initial 
    begin
    sa = 0;sb = 0; sc = 0; sd = 0;
    #10;
    sa = 0;sb = 0; sc = 0; sd = 1;
    #10;
    sa = 0;sb = 0; sc = 1; sd = 1;
    #10;
    sa = 1;sb = 1; sc = 1; sd = 1;
    #10;
    
    end
endmodule
