//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sun Sep 30 19:52:41 2018
//Host        : Nanoseeds-PC running 64-bit major release  (build 9200)
//Command     : generate_target demorgan_bd_wrapper.bd
//Design      : demorgan_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module demorgan_bd_wrapper
   (input1,
    input2,
    outinput1,
    outinput2,
    output1,
    output2,
    output3,
    output4);
  input input1;
  input input2;
  output outinput1;
  output outinput2;
  output [0:0]output1;
  output [0:0]output2;
  output [0:0]output3;
  output [0:0]output4;

  wire input1;
  wire input2;
  wire outinput1;
  wire outinput2;
  wire [0:0]output1;
  wire [0:0]output2;
  wire [0:0]output3;
  wire [0:0]output4;

  demorgan_bd demorgan_bd_i
       (.input1(input1),
        .input2(input2),
        .outinput1(outinput1),
        .outinput2(outinput2),
        .output1(output1),
        .output2(output2),
        .output3(output3),
        .output4(output4));
endmodule
