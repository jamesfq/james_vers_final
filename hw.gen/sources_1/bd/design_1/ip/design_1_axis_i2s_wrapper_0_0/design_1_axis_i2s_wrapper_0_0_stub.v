// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Jun  4 03:35:43 2025
// Host        : m210-17 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               o:/ENGS128/james_vers_final/hw.gen/sources_1/bd/design_1/ip/design_1_axis_i2s_wrapper_0_0/design_1_axis_i2s_wrapper_0_0_stub.v
// Design      : design_1_axis_i2s_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_i2s_wrapper,Vivado 2021.2" *)
module design_1_axis_i2s_wrapper_0_0(sysclk_i, ac_mute_en_i, dds_enable_i, 
  ac_bclk_o, ac_mclk_o, ac_mute_n_o, ac_dac_data_o, ac_dac_lrclk_o, ac_adc_data_i, 
  ac_adc_lrclk_o, lrclk_o, m00_axis_aclk, m00_axis_aresetn, m00_axis_tvalid, m00_axis_tdata, 
  m00_axis_tstrb, m00_axis_tlast, m00_axis_tready, s00_axi_aclk, s00_axi_aresetn, 
  s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, 
  s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, 
  s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, 
  s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, dbg_left_audio_rx_o, 
  left_dds_phase_inc_dbg_o, dbg_right_audio_rx_o, right_dds_phase_inc_dbg_o, lrclk_dbg)
/* synthesis syn_black_box black_box_pad_pin="sysclk_i,ac_mute_en_i,dds_enable_i,ac_bclk_o,ac_mclk_o,ac_mute_n_o,ac_dac_data_o,ac_dac_lrclk_o,ac_adc_data_i,ac_adc_lrclk_o,lrclk_o,m00_axis_aclk,m00_axis_aresetn,m00_axis_tvalid,m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tready,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,dbg_left_audio_rx_o[23:0],left_dds_phase_inc_dbg_o[11:0],dbg_right_audio_rx_o[23:0],right_dds_phase_inc_dbg_o[11:0],lrclk_dbg" */;
  input sysclk_i;
  input ac_mute_en_i;
  input dds_enable_i;
  output ac_bclk_o;
  output ac_mclk_o;
  output ac_mute_n_o;
  output ac_dac_data_o;
  output ac_dac_lrclk_o;
  input ac_adc_data_i;
  output ac_adc_lrclk_o;
  output lrclk_o;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tstrb;
  output m00_axis_tlast;
  input m00_axis_tready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  output [23:0]dbg_left_audio_rx_o;
  output [11:0]left_dds_phase_inc_dbg_o;
  output [23:0]dbg_right_audio_rx_o;
  output [11:0]right_dds_phase_inc_dbg_o;
  output lrclk_dbg;
endmodule
