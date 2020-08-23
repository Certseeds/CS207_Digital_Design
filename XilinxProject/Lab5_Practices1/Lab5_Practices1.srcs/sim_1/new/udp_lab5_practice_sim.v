`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/16 22:29:48
// Design Name: 
// Module Name: udp_lab5_practice_sim
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


module udp_lab5_practice_sim();
    reg xsim,ysim,zsim,psim;
    wire output1sim;
    udp_lab5_practices1  udp_lab5_practices1_One(
     .output1(output1sim),
    .x(xsim),
    .y(ysim),
    .z(zsim),
    .p(psim)
    );
    initial 
    begin
        {xsim,ysim,zsim,psim} = 4'b0000;
        repeat(15)
        begin
            #100    {xsim,ysim,zsim,psim} = {xsim,ysim,zsim,psim}+1;
            $display($time,"{x,y,z,q}:%d",{xsim,ysim,zsim,psim});
        end
        $finish(1);
    end

endmodule
