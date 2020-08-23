`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/15 00:34:06
// Design Name: 
// Module Name: four_bit_multi_sim
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


module four_bit_multi_sim(

    );
    reg sim1M1,sim1M2,sim1M3,sim1M4,sim2M1,sim2M2,sim2M3,sim2M4;
    wire simoutput1,simoutput2,simoutput3,simoutput4,simoutput5,simoutput6,simoutput7,simoutput8;
    four_bit_multply temp1(
    .firstMulti1(sim1M1),
    .firstMulti2(sim1M2),
    .firstMulti3(sim1M3),
    .firstMulti4(sim1M4), 
    .secondMulti1(sim2M1),
    .secondMulti2(sim2M2),
    .secondMulti3(sim2M3),
    .secondMulti4(sim2M4),
    .output0(simoutput1), 
    .output1(simoutput2),
    .output2(simoutput3),
    .output3(simoutput4),
    .output4(simoutput5),
    .output5(simoutput6),
    .output6(simoutput7),
    .output7(simoutput8)
    );
    initial
        begin
        {sim1M1,sim1M2,sim1M3,sim1M4} = 4'b0000;
        {sim2M1,sim2M2,sim2M3,sim2M4} = 4'b0000;
        repeat (15)
            begin
            #1
            {sim1M1,sim1M2,sim1M3,sim1M4} =  {sim1M1,sim1M2,sim1M3,sim1M4} + 1;
             repeat (16)
                 begin
                 #1
                  {sim2M1,sim2M2,sim2M3,sim2M4} =  {sim2M1,sim2M2,sim2M3,sim2M4} +1;
                   $display(sim1M1 + " " +sim1M2+ " "  +sim1M3+ " "  +sim1M4+ " "  +sim2M1 + " " +sim2M2+ " "  +sim2M3+ " "  +sim2M4 );
                 end
             end  
        end       
endmodule
