`timescale 1ns / 1ps
module lab6_practice2_sim();
    reg xsim,ysim,zsim;
    wire output1sim;
    //wire output2sim;
   // wire output3sim;
    //wire output4sim;
    /*lab6_practice2_udp  lab6_practice2_udp_01(
     .output1(output1sim),
    .x(xsim),
    .y(ysim),
    .z(zsim)
    );*/
    lab6_practice2_df_sop  lab6_practice2_df_01(
        .output1(output1sim),
        .x(xsim),
        .y(ysim),
        .z(zsim),
        .output2(output2sim),
        .output3(output3sim),
        .output4(output4sim)
        );
    initial 
    begin
        {xsim,ysim,zsim} = 3'b000;
        repeat(8)
        begin
            #100    {xsim,ysim,zsim} = {xsim,ysim,zsim}+1;
            $display($time,"{x,y,z}:%d",{xsim,ysim,zsim});
        end
        $finish(1);
    end
endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/19 11:41:46
// Design Name: 
// Module Name: lab6_practice2_sim
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

