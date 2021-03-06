//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Sep 19 11:58:10 2018
//Host        : Nanoseeds-PC running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire A_1;
  wire B_1;
  wire [0:0]andgate_0_q;
  wire [0:0]andgate_1_q;
  wire [0:0]orgate_0_q;
  wire [0:0]orgate_1_q;

  assign A_1 = A;
  assign B_1 = B;
  assign output1[0] = andgate_0_q;
  assign output2[0] = orgate_1_q;
  assign output3 = B_1;
  design_1_andgate_0_0 andgate_0
       (.a(orgate_0_q),
        .b(B_1),
        .q(andgate_0_q));
  design_1_andgate_1_0 andgate_1
       (.a(A_1),
        .b(B_1),
        .q(andgate_1_q));
  design_1_orgate_0_0 orgate_0
       (.a(A_1),
        .b(B_1),
        .q(orgate_0_q));
  design_1_orgate_1_0 orgate_1
       (.a(B_1),
        .b(andgate_1_q),
        .q(orgate_1_q));
endmodule
