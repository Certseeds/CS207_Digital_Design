`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/30 10:31:17
// Design Name: 
// Module Name: addition_sim
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


module addition_sim(

    );
    reg A,B;
    wire C,D,E;
    addition u_duf(
                 .A(A),
                 .B(B),
                 .C(C),
                 .D(D),
                 .E(E)
                 );
     
     initial 
     begin 
     A = 0; B =0;
     #10;
     A = 0; B =1;
     #10;
     A = 1; B =0;
     #10;
     A = 1; B =1;
     #10;
     end 
endmodule
