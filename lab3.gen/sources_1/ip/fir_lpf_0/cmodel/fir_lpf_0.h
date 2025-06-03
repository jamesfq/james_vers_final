
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
// C Model configuration for the "fir_lpf_0" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: 78,48,62,79,98,121,146,175,207,243,282,325,372,423,477,536,598,663,732,804,878,955,1034,1113,1194,1274,1354,1432,1508,1581,1649,1712,1770,1819,1861,1893,1915,1926,1923,1908,1878,1832,1771,1692,1597,1483,1350,1200,1030,842,635,410,168,-91,-365,-654,-955,-1268,-1590,-1920,-2255,-2593,-2931,-3267,-3597,-3919,-4229,-4524,-4801,-5056,-5285,-5486,-5655,-5789,-5884,-5937,-5944,-5904,-5813,-5669,-5469,-5212,-4895,-4518,-4079,-3578,-3014,-2388,-1700,-950,-141,727,1650,2627,3654,4728,5845,7001,8192,9412,10657,11921,13198,14483,15770,17052,18323,19576,20806,22007,23171,24293,25367,26387,27348,28244,29070,29822,30497,31089,31595,32014,32342,32578,32720,32767,32720,32578,32342,32014,31595,31089,30497,29822,29070,28244,27348,26387,25367,24293,23171,22007,20806,19576,18323,17052,15770,14483,13198,11921,10657,9412,8192,7001,5845,4728,3654,2627,1650,727,-141,-950,-1700,-2388,-3014,-3578,-4079,-4518,-4895,-5212,-5469,-5669,-5813,-5904,-5944,-5937,-5884,-5789,-5655,-5486,-5285,-5056,-4801,-4524,-4229,-3919,-3597,-3267,-2931,-2593,-2255,-1920,-1590,-1268,-955,-654,-365,-91,168,410,635,842,1030,1200,1350,1483,1597,1692,1771,1832,1878,1908,1923,1926,1915,1893,1861,1819,1770,1712,1649,1581,1508,1432,1354,1274,1194,1113,1034,955,878,804,732,663,598,536,477,423,372,325,282,243,207,175,146,121,98,79,62,48,78
// chanpats: 173
// name: fir_lpf_0
// filter_type: 0
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 251
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

const double fir_lpf_0_coefficients[251] = {78,48,62,79,98,121,146,175,207,243,282,325,372,423,477,536,598,663,732,804,878,955,1034,1113,1194,1274,1354,1432,1508,1581,1649,1712,1770,1819,1861,1893,1915,1926,1923,1908,1878,1832,1771,1692,1597,1483,1350,1200,1030,842,635,410,168,-91,-365,-654,-955,-1268,-1590,-1920,-2255,-2593,-2931,-3267,-3597,-3919,-4229,-4524,-4801,-5056,-5285,-5486,-5655,-5789,-5884,-5937,-5944,-5904,-5813,-5669,-5469,-5212,-4895,-4518,-4079,-3578,-3014,-2388,-1700,-950,-141,727,1650,2627,3654,4728,5845,7001,8192,9412,10657,11921,13198,14483,15770,17052,18323,19576,20806,22007,23171,24293,25367,26387,27348,28244,29070,29822,30497,31089,31595,32014,32342,32578,32720,32767,32720,32578,32342,32014,31595,31089,30497,29822,29070,28244,27348,26387,25367,24293,23171,22007,20806,19576,18323,17052,15770,14483,13198,11921,10657,9412,8192,7001,5845,4728,3654,2627,1650,727,-141,-950,-1700,-2388,-3014,-3578,-4079,-4518,-4895,-5212,-5469,-5669,-5813,-5904,-5944,-5937,-5884,-5789,-5655,-5486,-5285,-5056,-4801,-4524,-4229,-3919,-3597,-3267,-2931,-2593,-2255,-1920,-1590,-1268,-955,-654,-365,-91,168,410,635,842,1030,1200,1350,1483,1597,1692,1771,1832,1878,1908,1923,1926,1915,1893,1861,1819,1770,1712,1649,1581,1508,1432,1354,1274,1194,1113,1034,955,878,804,732,663,598,536,477,423,372,325,282,243,207,175,146,121,98,79,62,48,78};

const xip_fir_v7_2_pattern fir_lpf_0_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_lpf_0_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_lpf_0";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_lpf_0_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 251;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_lpf_0_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 24;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_TRUNCATE_LSBS;
  config.output_width        = 24;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_lpf_0_config = gen_fir_lpf_0_config();

