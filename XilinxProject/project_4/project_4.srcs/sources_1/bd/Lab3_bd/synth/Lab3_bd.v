//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Sep 19 15:18:40 2018
//Host        : Nanoseeds-PC running 64-bit major release  (build 9200)
//Command     : generate_target Lab3_bd.bd
//Design      : Lab3_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Lab3_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Lab3_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Lab3_bd.hwdef" *) 
module Lab3_bd
   (input1,
    input2,
    output1,
    output2,
    output3);
  input input1;
  input input2;
  output [0:0]output1;
  output [0:0]output2;
  output output3;

  wire [0:0]andgate_0_q;
  wire [0:0]andgate_1_q;
  wire input1_1;
  wire input2_1;
  wire [0:0]orgate_0_q;
  wire [0:0]orgate_1_q;

  assign input1_1 = input1;
  assign input2_1 = input2;
  assign output1[0] = andgate_0_q;
  assign output2[0] = orgate_0_q;
  assign output3 = input1_1;
  Lab3_bd_andgate_0_0 andgate_0
       (.a(orgate_1_q),
        .b(input1_1),
        .q(andgate_0_q));
  Lab3_bd_andgate_1_0 andgate_1
       (.a(input1_1),
        .b(input2_1),
        .q(andgate_1_q));
  Lab3_bd_orgate_0_0 orgate_0
       (.a(andgate_1_q),
        .b(input1_1),
        .q(orgate_0_q));
  Lab3_bd_orgate_1_0 orgate_1
       (.a(input1_1),
        .b(input2_1),
        .q(orgate_1_q));
endmodule
