-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Jun  4 03:36:11 2025
-- Host        : m210-17 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               o:/ENGS128/james_vers_final/hw.gen/sources_1/bd/design_1/ip/design_1_numcyc_0_0/design_1_numcyc_0_0_stub.vhdl
-- Design      : design_1_numcyc_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_numcyc_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    rgb_data_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    fsync_i : in STD_LOGIC;
    hblank_i : in STD_LOGIC;
    grad_sel_i : in STD_LOGIC;
    reset_n_i : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    mag_data_o : out STD_LOGIC_VECTOR ( 24 downto 0 );
    bff_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fft_in_dbg_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    fft_out_dbg_o : out STD_LOGIC_VECTOR ( 47 downto 0 );
    fft_tready_dbg_o : out STD_LOGIC;
    intensity_dbg_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tlast_dbg_o : out STD_LOGIC;
    count_dbg_o : out STD_LOGIC_VECTOR ( 6 downto 0 );
    fft_valid_dbg_o : out STD_LOGIC;
    dbg_real_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dbg_imag_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dbg_r_mag_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dbg_i_mag_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_data_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC
  );

end design_1_numcyc_0_0;

architecture stub of design_1_numcyc_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,rgb_data_o[23:0],fsync_i,hblank_i,grad_sel_i,reset_n_i,s00_axis_aclk,s00_axis_tready,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,mag_data_o[24:0],bff_o[7:0],fft_in_dbg_o[23:0],fft_out_dbg_o[47:0],fft_tready_dbg_o,intensity_dbg_o[7:0],tlast_dbg_o,count_dbg_o[6:0],fft_valid_dbg_o,dbg_real_o[11:0],dbg_imag_o[11:0],dbg_r_mag_o[23:0],dbg_i_mag_o[23:0],m_axis_data_tuser[7:0],m_axis_data_tvalid,m_axis_data_tready,m_axis_data_tlast";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "numcyc,Vivado 2021.2";
begin
end;
