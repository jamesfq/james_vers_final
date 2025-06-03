
//------------------------------------------------------------------------------
// (c) Copyright 2014 Xilinx, Inc. All rights reserved.
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
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "fir_hpf_0" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: 789,-327,-261,-205,-157,-117,-83,-54,-31,-10,7,21,32,42,49,55,60,64,66,67,68,67,66,63,60,56,51,46,39,32,25,16,7,-2,-11,-21,-31,-41,-51,-60,-70,-78,-86,-93,-99,-103,-107,-109,-109,-108,-105,-100,-94,-86,-76,-65,-52,-37,-21,-4,15,34,54,74,94,114,134,153,171,187,201,214,224,232,237,238,236,231,221,208,190,169,143,113,79,42,0,-46,-95,-147,-202,-259,-319,-380,-442,-506,-570,-633,-697,-758,-818,-876,-932,-984,-1034,-1078,-1118,-1155,-1186,-1212,-1231,-1247,-1255,32767,-1255,-1247,-1231,-1212,-1186,-1155,-1118,-1078,-1034,-984,-932,-876,-818,-758,-697,-633,-570,-506,-442,-380,-319,-259,-202,-147,-95,-46,0,42,79,113,143,169,190,208,221,231,236,238,237,232,224,214,201,187,171,153,134,114,94,74,54,34,15,-4,-21,-37,-52,-65,-76,-86,-94,-100,-105,-108,-109,-109,-107,-103,-99,-93,-86,-78,-70,-60,-51,-41,-31,-21,-11,-2,7,16,25,32,39,46,51,56,60,63,66,67,68,67,66,64,60,55,49,42,32,21,7,-10,-31,-54,-83,-117,-157,-205,-261,-327,789
// chanpats: 173
// name: fir_hpf_0
// filter_type: 0
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 227
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 0
// coeff_width: 16
// coeff_fract_width: 0
// chan_seq: 0
// num_channels: 1
// num_paths: 1
// data_width: 24
// data_fract_width: 0
// output_rounding_mode: 1
// output_width: 24
// output_fract_width: 0
// config_method: 0

const double fir_hpf_0_coefficients[227] = {789,-327,-261,-205,-157,-117,-83,-54,-31,-10,7,21,32,42,49,55,60,64,66,67,68,67,66,63,60,56,51,46,39,32,25,16,7,-2,-11,-21,-31,-41,-51,-60,-70,-78,-86,-93,-99,-103,-107,-109,-109,-108,-105,-100,-94,-86,-76,-65,-52,-37,-21,-4,15,34,54,74,94,114,134,153,171,187,201,214,224,232,237,238,236,231,221,208,190,169,143,113,79,42,0,-46,-95,-147,-202,-259,-319,-380,-442,-506,-570,-633,-697,-758,-818,-876,-932,-984,-1034,-1078,-1118,-1155,-1186,-1212,-1231,-1247,-1255,32767,-1255,-1247,-1231,-1212,-1186,-1155,-1118,-1078,-1034,-984,-932,-876,-818,-758,-697,-633,-570,-506,-442,-380,-319,-259,-202,-147,-95,-46,0,42,79,113,143,169,190,208,221,231,236,238,237,232,224,214,201,187,171,153,134,114,94,74,54,34,15,-4,-21,-37,-52,-65,-76,-86,-94,-100,-105,-108,-109,-109,-107,-103,-99,-93,-86,-78,-70,-60,-51,-41,-31,-21,-11,-2,7,16,25,32,39,46,51,56,60,63,66,67,68,67,66,64,60,55,49,42,32,21,7,-10,-31,-54,-83,-117,-157,-205,-261,-327,789};

const xip_fir_v7_2_pattern fir_hpf_0_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_hpf_0_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_hpf_0";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_hpf_0_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 227;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_hpf_0_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 24;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_TRUNCATE_LSBS;
  config.output_width        = 24;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_hpf_0_config = gen_fir_hpf_0_config();

