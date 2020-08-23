`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/10 11:43:12
// Design Name: 
// Module Name: udp_body_sim
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


    module udp_body_sim();  
    reg siminput1,siminput2,siminput3;
    wire simoutput1,simoutput2,simoutput3;
    udp_body udp_body_p(
    .output1(simoutput1),
    .input1(siminput1),
    .input2(siminput2),
    .input3(siminput3)
     );
    
    initial 
    begin
        {siminput1,siminput2,siminput3} = 3'b000;
        repeat(7)
        begin 
            #100 {siminput1,siminput2,siminput3} = {siminput1,siminput2,siminput3} + 1;
            $display($time,"{siminput1,siminput2,siminput3}:%d",{siminput1,siminput2,siminput3});
        end
        $finish(1);    
    end
endmodule
