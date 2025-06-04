// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:numcyc:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_numcyc_0_0 (
  aclk,
  rgb_data_o,
  fsync_i,
  hblank_i,
  grad_sel_i,
  reset_n_i,
  s00_axis_aclk,
  s00_axis_tready,
  s00_axis_tdata,
  s00_axis_tstrb,
  s00_axis_tlast,
  s00_axis_tvalid,
  mag_data_o,
  bff_o,
  fft_in_dbg_o,
  fft_out_dbg_o,
  fft_tready_dbg_o,
  intensity_dbg_o,
  tlast_dbg_o,
  count_dbg_o,
  fft_valid_dbg_o,
  dbg_real_o,
  dbg_imag_o,
  dbg_r_mag_o,
  dbg_i_mag_o,
  m_axis_data_tuser,
  m_axis_data_tvalid,
  m_axis_data_tready,
  m_axis_data_tlast
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_data:s00_axis, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
output wire [23 : 0] rgb_data_o;
input wire fsync_i;
input wire hblank_i;
input wire grad_sel_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n_i, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n_i RST" *)
input wire reset_n_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis_aclk, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axis_aclk CLK" *)
input wire s00_axis_aclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TREADY" *)
output wire s00_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TDATA" *)
input wire [31 : 0] s00_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TSTRB" *)
input wire [3 : 0] s00_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TLAST" *)
input wire s00_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TVALID" *)
input wire s00_axis_tvalid;
output wire [24 : 0] mag_data_o;
output wire [7 : 0] bff_o;
output wire [23 : 0] fft_in_dbg_o;
output wire [47 : 0] fft_out_dbg_o;
output wire fft_tready_dbg_o;
output wire [7 : 0] intensity_dbg_o;
output wire tlast_dbg_o;
output wire [6 : 0] count_dbg_o;
output wire fft_valid_dbg_o;
output wire [11 : 0] dbg_real_o;
output wire [11 : 0] dbg_imag_o;
output wire [23 : 0] dbg_r_mag_o;
output wire [23 : 0] dbg_i_mag_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TUSER" *)
output wire [7 : 0] m_axis_data_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TVALID" *)
output wire m_axis_data_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TREADY" *)
input wire m_axis_data_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_data, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TLAST" *)
output wire m_axis_data_tlast;

  numcyc #(
    .DATA_WIDTH(32),
    .FFT_BINS(64),
    .RES_HEIGHT(512)
  ) inst (
    .aclk(aclk),
    .rgb_data_o(rgb_data_o),
    .fsync_i(fsync_i),
    .hblank_i(hblank_i),
    .grad_sel_i(grad_sel_i),
    .reset_n_i(reset_n_i),
    .s00_axis_aclk(s00_axis_aclk),
    .s00_axis_tready(s00_axis_tready),
    .s00_axis_tdata(s00_axis_tdata),
    .s00_axis_tstrb(s00_axis_tstrb),
    .s00_axis_tlast(s00_axis_tlast),
    .s00_axis_tvalid(s00_axis_tvalid),
    .mag_data_o(mag_data_o),
    .bff_o(bff_o),
    .fft_in_dbg_o(fft_in_dbg_o),
    .fft_out_dbg_o(fft_out_dbg_o),
    .fft_tready_dbg_o(fft_tready_dbg_o),
    .intensity_dbg_o(intensity_dbg_o),
    .tlast_dbg_o(tlast_dbg_o),
    .count_dbg_o(count_dbg_o),
    .fft_valid_dbg_o(fft_valid_dbg_o),
    .dbg_real_o(dbg_real_o),
    .dbg_imag_o(dbg_imag_o),
    .dbg_r_mag_o(dbg_r_mag_o),
    .dbg_i_mag_o(dbg_i_mag_o),
    .m_axis_data_tuser(m_axis_data_tuser),
    .m_axis_data_tvalid(m_axis_data_tvalid),
    .m_axis_data_tready(m_axis_data_tready),
    .m_axis_data_tlast(m_axis_data_tlast)
  );
endmodule
