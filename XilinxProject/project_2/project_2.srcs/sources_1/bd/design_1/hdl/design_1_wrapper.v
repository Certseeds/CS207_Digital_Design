//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Sep 19 11:25:11 2018
//Host        : Nanoseeds-PC running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (temp1,
    temp2out,
    temp3input,
    temp4output,
    temp5out);
  input temp1;
  output [0:0]temp2out;
  input temp3input;
  output [0:0]temp4output;
  output temp5out;

  wire temp1;
  wire [0:0]temp2out;
  wire temp3input;
  wire [0:0]temp4output;
  wire temp5out;

  design_1 design_1_i
       (.temp1(temp1),
        .temp2out(temp2out),
        .temp3input(temp3input),
        .temp4output(temp4output),
        .temp5out(temp5out));
endmodule
