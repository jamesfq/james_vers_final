-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Jun  4 03:35:43 2025
-- Host        : m210-17 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               o:/ENGS128/james_vers_final/hw.gen/sources_1/bd/design_1/ip/design_1_axis_i2s_wrapper_0_0/design_1_axis_i2s_wrapper_0_0_stub.vhdl
-- Design      : design_1_axis_i2s_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_axis_i2s_wrapper_0_0 is
  Port ( 
    sysclk_i : in STD_LOGIC;
    ac_mute_en_i : in STD_LOGIC;
    dds_enable_i : in STD_LOGIC;
    ac_bclk_o : out STD_LOGIC;
    ac_mclk_o : out STD_LOGIC;
    ac_mute_n_o : out STD_LOGIC;
    ac_dac_data_o : out STD_LOGIC;
    ac_dac_lrclk_o : out STD_LOGIC;
    ac_adc_data_i : in STD_LOGIC;
    ac_adc_lrclk_o : out STD_LOGIC;
    lrclk_o : out STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    dbg_left_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    left_dds_phase_inc_dbg_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dbg_right_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    right_dds_phase_inc_dbg_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    lrclk_dbg : out STD_LOGIC
  );

end design_1_axis_i2s_wrapper_0_0;

architecture stub of design_1_axis_i2s_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sysclk_i,ac_mute_en_i,dds_enable_i,ac_bclk_o,ac_mclk_o,ac_mute_n_o,ac_dac_data_o,ac_dac_lrclk_o,ac_adc_data_i,ac_adc_lrclk_o,lrclk_o,m00_axis_aclk,m00_axis_aresetn,m00_axis_tvalid,m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tready,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,dbg_left_audio_rx_o[23:0],left_dds_phase_inc_dbg_o[11:0],dbg_right_audio_rx_o[23:0],right_dds_phase_inc_dbg_o[11:0],lrclk_dbg";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_i2s_wrapper,Vivado 2021.2";
begin
end;
