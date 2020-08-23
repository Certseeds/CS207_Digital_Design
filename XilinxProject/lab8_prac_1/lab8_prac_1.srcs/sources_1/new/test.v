`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/31 20:07:43
// Design Name: 
// Module Name: test
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


module test();
  reg [3:0]  r_VAL_1 = 4'b0111;
  reg [3:0]  r_VAL_2 = 4'b1100;
  wire [7:0] w_CAT;
 
  reg  [3:0]       r_UNSIGNED = 4'b0010;
  reg signed [3:0] r_SIGNED   = 4'b1110;
  wire [7:0]       w_CAT_2;
  wire [15:0]      w_CAT_3;
   
  reg              r_CLOCK = 1'b0; 
  reg [7:0]        r_SHIFT_REG = 8'h01;
   
  // Demonstrates a common concatenation.
  assign w_CAT = {r_VAL_1, r_VAL_2};
 
  // Demonstrates concatenation of different types
  assign w_CAT_2 = {r_SIGNED, r_UNSIGNED};
 
  // Demonstrates Verilog padding upper bits with 0.
  assign w_CAT_3 = {r_VAL_1, r_VAL_2};
 
  initial
    begin
      #5;
      $display("Concatenation of %h and %h is %h", 
           r_VAL_1, r_VAL_2, w_CAT);
      #20;
      $display("Concatenation of %h and %h is %h", 
         r_SIGNED, r_UNSIGNED, w_CAT_2);
      #20;
      $display("Concatenation of two 4-bit regs into a 16-bit reg: %h",  
               w_CAT_3);
       
      #20;
      $display("Complete");
    end
  // Generate a clock to drive shift register below
  always #1 r_CLOCK = !r_CLOCK;
 
  // Demonstrate Shifting of a 1 through an 8 bit register.
  always @(posedge r_CLOCK)
    begin
      r_SHIFT_REG[7:0] <= {r_SHIFT_REG[6:0], r_SHIFT_REG[7]};
    end
   
endmodule 
