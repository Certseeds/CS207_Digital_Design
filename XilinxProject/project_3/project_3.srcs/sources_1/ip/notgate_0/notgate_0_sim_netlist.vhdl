-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Sep 19 11:32:50 2018
-- Host        : Nanoseeds-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/114514/XilinxProject/project_3/project_3.srcs/sources_1/ip/notgate_0/notgate_0_sim_netlist.vhdl
-- Design      : notgate_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity notgate_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 0 to 0 );
    c : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of notgate_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of notgate_0 : entity is "notgate_0,notgate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of notgate_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of notgate_0 : entity is "notgate,Vivado 2017.4";
end notgate_0;

architecture STRUCTURE of notgate_0 is
begin
\c[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(0),
      O => c(0)
    );
end STRUCTURE;
