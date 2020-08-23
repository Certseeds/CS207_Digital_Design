`timescale 1ns / 1ps
module Center_file_sim();

reg  clkinput;
reg reset;
reg  reset_Second;
reg  reset_Minute;
reg  reset_Hour;
wire [3:0]Second_First;
wire [3:0]Second_Second;
wire[3:0] Minute_First;
wire[3:0] Minute_Second;
wire[3:0]Hour_First;
wire[3:0]Hour_Second;
Center_file test4(
.clkinput(clkinput),
.reset(reset),
.reset_Second(reset_Second),
.Second_First(Second_First),
.Second_Second(Second_Second),
.Minute_First(Minute_First),
.Minute_Second(Minute_Second),
.Hour_First(Hour_First),
.Hour_Second(Hour_Second)
);
initial
begin
    clkinput <= 0;
    reset <= 1;
    //reset_Second <= 1;
   // reset_Minute <= 1;
    #2
    //reset_Second <= 0;
    //reset_Minute <= 0;
    reset <= 0;
    #3 
    forever
    begin
        clkinput <= ~clkinput;
        #5;
    end
end

endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/21 21:17:54
// Design Name: 
// Module Name: Center_file_sim
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
