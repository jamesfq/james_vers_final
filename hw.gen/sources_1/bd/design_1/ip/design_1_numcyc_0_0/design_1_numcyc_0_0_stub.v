// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Jun  4 03:36:11 2025
// Host        : m210-17 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               o:/ENGS128/james_vers_final/hw.gen/sources_1/bd/design_1/ip/design_1_numcyc_0_0/design_1_numcyc_0_0_stub.v
// Design      : design_1_numcyc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "numcyc,Vivado 2021.2" *)
module design_1_numcyc_0_0(aclk, rgb_data_o, fsync_i, hblank_i, grad_sel_i, 
  reset_n_i, s00_axis_aclk, s00_axis_tready, s00_axis_tdata, s00_axis_tstrb, s00_axis_tlast, 
  s00_axis_tvalid, mag_data_o, bff_o, fft_in_dbg_o, fft_out_dbg_o, fft_tready_dbg_o, 
  intensity_dbg_o, tlast_dbg_o, count_dbg_o, fft_valid_dbg_o, dbg_real_o, dbg_imag_o, 
  dbg_r_mag_o, dbg_i_mag_o, m_axis_data_tuser, m_axis_data_tvalid, m_axis_data_tready, 
  m_axis_data_tlast)
/* synthesis syn_black_box black_box_pad_pin="aclk,rgb_data_o[23:0],fsync_i,hblank_i,grad_sel_i,reset_n_i,s00_axis_aclk,s00_axis_tready,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,mag_data_o[24:0],bff_o[7:0],fft_in_dbg_o[23:0],fft_out_dbg_o[47:0],fft_tready_dbg_o,intensity_dbg_o[7:0],tlast_dbg_o,count_dbg_o[6:0],fft_valid_dbg_o,dbg_real_o[11:0],dbg_imag_o[11:0],dbg_r_mag_o[23:0],dbg_i_mag_o[23:0],m_axis_data_tuser[7:0],m_axis_data_tvalid,m_axis_data_tready,m_axis_data_tlast" */;
  input aclk;
  output [23:0]rgb_data_o;
  input fsync_i;
  input hblank_i;
  input grad_sel_i;
  input reset_n_i;
  input s00_axis_aclk;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tstrb;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  output [24:0]mag_data_o;
  output [7:0]bff_o;
  output [23:0]fft_in_dbg_o;
  output [47:0]fft_out_dbg_o;
  output fft_tready_dbg_o;
  output [7:0]intensity_dbg_o;
  output tlast_dbg_o;
  output [6:0]count_dbg_o;
  output fft_valid_dbg_o;
  output [11:0]dbg_real_o;
  output [11:0]dbg_imag_o;
  output [23:0]dbg_r_mag_o;
  output [23:0]dbg_i_mag_o;
  output [7:0]m_axis_data_tuser;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output m_axis_data_tlast;
endmodule
