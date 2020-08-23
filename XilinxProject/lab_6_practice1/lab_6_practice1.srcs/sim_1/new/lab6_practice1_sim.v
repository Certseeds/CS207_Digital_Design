`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/17 09:41:46
// Design Name: 
// Module Name: lab6_practice1_sim
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


module lab6_practice1_sim();
    reg [2:0]input1sim;
    wire whichRoomsim;
    lab6_practice1 lab6_practice1_u(
    //Lab6_practice1_ifelse lab6_practice1_u(
    //.input1(input1sim),
    //.whichRoom(whichRoomsim)
    input1sim,whichRoomsim
    );
    initial 
    begin 
        input1sim = 3'b000;
        repeat(4)
        begin 
            #100
            input1sim = input1sim + 1;
            $display($time," siminput1:%d",input1sim);
        end
        #100
        $finish(1);
    end
endmodule
