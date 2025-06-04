-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Jun  4 02:06:16 2025
-- Host        : m210-17 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_system_ila_0_0 -prefix
--               design_1_system_ila_0_0_ design_1_system_ila_0_0_stub.vhdl
-- Design      : design_1_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_system_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end design_1_system_ila_0_0;

architecture stub of design_1_system_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[23:0],probe1[0:0],probe2[47:0],probe3[0:0],probe4[0:0],probe5[11:0],probe6[0:0],probe7[24:0],probe8[7:0],probe9[0:0],probe10[23:0],probe11[23:0],probe12[23:0],probe13[7:0],probe14[0:0],probe15[6:0],probe16[11:0],probe17[23:0],probe18[23:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_f60c,Vivado 2021.2";
begin
end;
