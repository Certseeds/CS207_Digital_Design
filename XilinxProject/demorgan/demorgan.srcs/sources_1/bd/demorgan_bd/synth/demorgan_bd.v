//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sun Sep 30 19:52:40 2018
//Host        : Nanoseeds-PC running 64-bit major release  (build 9200)
//Command     : generate_target demorgan_bd.bd
//Design      : demorgan_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "demorgan_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=demorgan_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=8,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "demorgan_bd.hwdef" *) 
module demorgan_bd
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

  wire [0:0]andgate_0_q;
  wire [0:0]andgate_1_q;
  wire input1_1;
  wire input2_1;
  wire [0:0]notgate_0_c;
  wire [0:0]notgate_1_c;
  wire [0:0]notgate_2_c;
  wire [0:0]notgate_3_c;
  wire [0:0]orgate_0_q;
  wire [0:0]orgate_1_q;

  assign input1_1 = input1;
  assign input2_1 = input2;
  assign outinput1 = input1_1;
  assign outinput2 = input2_1;
  assign output1[0] = notgate_0_c;
  assign output2[0] = andgate_0_q;
  assign output3[0] = notgate_3_c;
  assign output4[0] = orgate_1_q;
  demorgan_bd_andgate_0_1 andgate_0
       (.a(notgate_1_c),
        .b(notgate_2_c),
        .q(andgate_0_q));
  demorgan_bd_andgate_1_0 andgate_1
       (.a(input1_1),
        .b(input2_1),
        .q(andgate_1_q));
  demorgan_bd_notgate_0_0 notgate_0
       (.a(orgate_0_q),
        .c(notgate_0_c));
  demorgan_bd_notgate_1_0 notgate_1
       (.a(input1_1),
        .c(notgate_1_c));
  demorgan_bd_notgate_2_0 notgate_2
       (.a(input2_1),
        .c(notgate_2_c));
  demorgan_bd_notgate_3_0 notgate_3
       (.a(andgate_1_q),
        .c(notgate_3_c));
  demorgan_bd_orgate_0_0 orgate_0
       (.a(input1_1),
        .b(input2_1),
        .q(orgate_0_q));
  demorgan_bd_orgate_1_0 orgate_1
       (.a(notgate_1_c),
        .b(notgate_2_c),
        .q(orgate_1_q));
endmodule
