//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Sep 19 11:58:10 2018
//Host        : Nanoseeds-PC running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (A,
    B,
    output1,
    output2,
    output3);
  input A;
  input B;
  output [0:0]output1;
  output [0:0]output2;
  output output3;

  wire A;
  wire B;
  wire [0:0]output1;
  wire [0:0]output2;
  wire output3;

  design_1 design_1_i
       (.A(A),
        .B(B),
        .output1(output1),
        .output2(output2),
        .output3(output3));
endmodule
