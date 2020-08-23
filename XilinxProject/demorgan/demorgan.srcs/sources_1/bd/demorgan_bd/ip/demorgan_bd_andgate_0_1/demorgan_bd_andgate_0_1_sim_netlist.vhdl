-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sun Sep 30 18:03:09 2018
-- Host        : Nanoseeds-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top demorgan_bd_andgate_0_1 -prefix
--               demorgan_bd_andgate_0_1_ andgate_0_sim_netlist.vhdl
-- Design      : andgate_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity demorgan_bd_andgate_0_1 is
  port (
    a : in STD_LOGIC_VECTOR ( 0 to 0 );
    b : in STD_LOGIC_VECTOR ( 0 to 0 );
    q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of demorgan_bd_andgate_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of demorgan_bd_andgate_0_1 : entity is "andgate_0,andgate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of demorgan_bd_andgate_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of demorgan_bd_andgate_0_1 : entity is "andgate,Vivado 2017.4";
end demorgan_bd_andgate_0_1;

architecture STRUCTURE of demorgan_bd_andgate_0_1 is
begin
\q[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      O => q(0)
    );
end STRUCTURE;
