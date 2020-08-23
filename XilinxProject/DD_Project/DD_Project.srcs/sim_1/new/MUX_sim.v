`timescale 1ns / 1ps
module MUX_sim();
reg clkinput;
reg reset;
reg clk2;
reg [7:0]first;
reg [7:0]second;
reg message;
wire clkOut;
wire MinReset;
wire count;
MUX_Use test6(
.reset(reset),
.selfClk(clkinput),
.clk1(clk1),
.clk2(clk2),
.first(first),
.second(second),
.message(message),
.clkOut(clkOut),
.MinReset(MinReset)
//,.count(count)'
);
initial 
begin
   reset <= 1;
   first <= 4;
   second <= 9;
   #2
   reset <= 0;
   #3
   message <= 1;
   #5 
   message <= 0;
end
initial
begin
    clk2 <= 0;
    forever
    begin
        #25
        clk2 <= ~clk2;
    end
end
initial
begin
    clkinput <= 0;
    forever
    begin
        #1
        clkinput <= ~clkinput;
    end
end 
   
    
endmodule
