`timescale 1ns / 1ps
module Times_to_Seg(
input clk,
input reset,
input [3:0]Second_First,
input [3:0]Second_Second,
input [3:0] Minute_First,
input [3:0] Minute_Second,
input [3:0]Hour_First,
input [3:0]Hour_Second,
output reg [7:0]seg_out,
output reg [7:0]seg_en
    );
reg [2:0] count;
wire [7:0]S_F_out;
wire [7:0]S_S_out;
wire [7:0]M_F_out;
wire [7:0]M_S_out;
wire [7:0]H_F_out;
wire [7:0]H_S_out;
enCoder_Four_to_Eight S_F(
//.clk(clk),
.decimalNumber(Second_First),
.segNumber(S_F_out)
);
enCoder_Four_to_Eight S_S(
//.clk(clk),
.decimalNumber(Second_Second),
.segNumber(S_S_out)
);
enCoder_Four_to_Eight M_F(
//.clk(clk),
.decimalNumber(Minute_First),
.segNumber(M_F_out)
);
enCoder_Four_to_Eight M_S(
//.clk(clk),
.decimalNumber(Minute_Second),
.segNumber(M_S_out)
);
enCoder_Four_to_Eight H_F(
//.clk(clk),
.decimalNumber(Hour_First),
.segNumber(H_F_out)
);
enCoder_Four_to_Eight H_S(
//.clk(clk),
.decimalNumber(Hour_Second),
.segNumber(H_S_out)
);
always @ (posedge clk,posedge reset)
begin
    if(reset)
    begin
    count <= 0;
    end
    else
    begin
        if(count == 5)
        begin
            count <= 0;
        end
        else
        begin
            count <= count +1;
        end
    end
end
always @ (count)
begin
    case (count)
        3'b000:
        begin
            seg_out <= S_S_out;
            seg_en <= 8'b11111110;
        end
        3'b001:
        begin
            seg_out <= S_F_out;
            seg_en <= 8'b11111101;
        end
        3'b010:
        begin
            seg_out <= M_S_out;
            seg_en <= 8'b11110111;
        end
        3'b011:
        begin
            seg_out <= M_F_out;
            seg_en <= 8'b11101111;
        end
        3'b100:
        begin
            seg_out <= H_S_out;
            seg_en <= 8'b10111111;
        end
        3'b101:
        begin
            seg_out <= H_F_out;
            seg_en <= 8'b01111111;      
        end 
        default
        begin
            seg_out <= 8'b11111111;
            seg_en <= 8'b11111111;
        end
     endcase    
end    
    
    
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/22 10:35:58
// Design Name: 
// Module Name: Times_to_Seg
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
