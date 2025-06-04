// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Jun  4 02:06:16 2025
// Host        : m210-17 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_system_ila_0_0 -prefix
//               design_1_system_ila_0_0_ design_1_system_ila_0_0_stub.v
// Design      : design_1_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_f60c,Vivado 2021.2" *)
module design_1_system_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[23:0],probe1[0:0],probe2[47:0],probe3[0:0],probe4[0:0],probe5[11:0],probe6[0:0],probe7[24:0],probe8[7:0],probe9[0:0],probe10[23:0],probe11[23:0],probe12[23:0],probe13[7:0],probe14[0:0],probe15[6:0],probe16[11:0],probe17[23:0],probe18[23:0]" */;
  input clk;
  input [23:0]probe0;
  input [0:0]probe1;
  input [47:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [11:0]probe5;
  input [0:0]probe6;
  input [24:0]probe7;
  input [7:0]probe8;
  input [0:0]probe9;
  input [23:0]probe10;
  input [23:0]probe11;
  input [23:0]probe12;
  input [7:0]probe13;
  input [0:0]probe14;
  input [6:0]probe15;
  input [11:0]probe16;
  input [23:0]probe17;
  input [23:0]probe18;
endmodule
