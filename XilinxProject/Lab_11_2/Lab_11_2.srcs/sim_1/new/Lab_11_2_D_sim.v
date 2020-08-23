`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/21 15:00:32
// Design Name: 
// Module Name: Lab_11_2_D_sim
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


module Lab_11_2_D_sim(
    );
    reg ENsim,Dsim,clksim;
    wire Qsim,Q_Tran_sim;
    Lab_11_2_D test1(
    .clk(clksim),
    .EN(ENsim),
    .D(Dsim),
    .Q(Qsim),
    .Q_Tran(Q_Tran_sim));
    initial 
    begin
      clksim = 1'b0;
        repeat (200)    
        begin
            #5
            clksim <= ~clksim;
        end
    end    
    
initial 
begin 
ENsim = 1'b0;
Dsim = 1'b0;    
      repeat (50)
      begin
      ENsim = ~ENsim;
          repeat (4)
          begin
          #5
          Dsim = ~Dsim;
          end
     end   
end          
endmodule
