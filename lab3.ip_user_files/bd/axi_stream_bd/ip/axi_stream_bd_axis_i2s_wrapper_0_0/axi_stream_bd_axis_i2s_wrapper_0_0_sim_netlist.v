// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed May 14 10:53:57 2025
// Host        : m210-29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               o:/ENGS128/lab3/lab3.gen/sources_1/bd/axi_stream_bd/ip/axi_stream_bd_axis_i2s_wrapper_0_0/axi_stream_bd_axis_i2s_wrapper_0_0_sim_netlist.v
// Design      : axi_stream_bd_axis_i2s_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_stream_bd_axis_i2s_wrapper_0_0,axis_i2s_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_i2s_wrapper,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module axi_stream_bd_axis_i2s_wrapper_0_0
   (sysclk_i,
    ac_mute_en_i,
    dds_reset_i,
    dds_enable_i,
    ac_bclk_o,
    ac_mclk_o,
    ac_mute_n_o,
    ac_dac_data_o,
    ac_dac_lrclk_o,
    ac_adc_lrclk_o,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    dbg_left_audio_rx_o,
    dbg_left_audio_tx_o,
    dbg_right_audio_rx_o,
    dbg_right_audio_tx_o);
  input sysclk_i;
  input ac_mute_en_i;
  input dds_reset_i;
  input dds_enable_i;
  output ac_bclk_o;
  output ac_mclk_o;
  output ac_mute_n_o;
  output ac_dac_data_o;
  output ac_dac_lrclk_o;
  output ac_adc_lrclk_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis_aclk, ASSOCIATED_BUSIF s00_axis, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN axi_stream_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TREADY" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN axi_stream_bd_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m00_axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis_aclk, ASSOCIATED_BUSIF m00_axis, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN axi_stream_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m00_axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN axi_stream_bd_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN axi_stream_bd_s_axi_aclk_0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN axi_stream_bd_s_axi_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  output [23:0]dbg_left_audio_rx_o;
  output [23:0]dbg_left_audio_tx_o;
  output [23:0]dbg_right_audio_rx_o;
  output [23:0]dbg_right_audio_tx_o;

  wire \<const0> ;
  wire ac_adc_lrclk_o;
  wire ac_bclk_o;
  wire ac_dac_data_o;
  wire ac_dac_lrclk_o;
  wire ac_mclk_o;
  wire ac_mute_en_i;
  wire ac_mute_n_o;
  wire [23:0]dbg_left_audio_rx_o;
  wire [23:0]dbg_left_audio_tx_o;
  wire [23:0]dbg_right_audio_rx_o;
  wire [23:0]dbg_right_audio_tx_o;
  wire dds_enable_i;
  wire dds_reset_i;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:8]\^m00_axis_tdata ;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  (* IBUF_LOW_PWR *) wire sysclk_i;
  wire NLW_inst_m00_axis_tlast_UNCONNECTED;
  wire [7:0]NLW_inst_m00_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_inst_m00_axis_tstrb_UNCONNECTED;
  wire [1:0]NLW_inst_s00_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s00_axi_rresp_UNCONNECTED;

  assign m00_axis_tdata[31:8] = \^m00_axis_tdata [31:8];
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \<const0> ;
  assign m00_axis_tlast = \<const0> ;
  assign m00_axis_tstrb[3] = \<const0> ;
  assign m00_axis_tstrb[2] = \<const0> ;
  assign m00_axis_tstrb[1] = \<const0> ;
  assign m00_axis_tstrb[0] = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* AC_DATA_WIDTH = "24" *) 
  (* C_AXI_STREAM_DATA_WIDTH = "32" *) 
  (* C_S00_AXI_ADDR_WIDTH = "4" *) 
  (* PHASE_DATA_WIDTH = "12" *) 
  axi_stream_bd_axis_i2s_wrapper_0_0_axis_i2s_wrapper inst
       (.ac_adc_lrclk_o(ac_adc_lrclk_o),
        .ac_bclk_o(ac_bclk_o),
        .ac_dac_data_o(ac_dac_data_o),
        .ac_dac_lrclk_o(ac_dac_lrclk_o),
        .ac_mclk_o(ac_mclk_o),
        .ac_mute_en_i(ac_mute_en_i),
        .ac_mute_n_o(ac_mute_n_o),
        .dbg_left_audio_rx_o(dbg_left_audio_rx_o),
        .dbg_left_audio_tx_o(dbg_left_audio_tx_o),
        .dbg_right_audio_rx_o(dbg_right_audio_rx_o),
        .dbg_right_audio_tx_o(dbg_right_audio_tx_o),
        .dds_enable_i(dds_enable_i),
        .dds_reset_i(dds_reset_i),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata({\^m00_axis_tdata ,NLW_inst_m00_axis_tdata_UNCONNECTED[7:0]}),
        .m00_axis_tlast(NLW_inst_m00_axis_tlast_UNCONNECTED),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tstrb(NLW_inst_m00_axis_tstrb_UNCONNECTED[3:0]),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr({s00_axi_araddr[3:2],1'b0,1'b0}),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arprot({1'b0,1'b0,1'b0}),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr({s00_axi_awaddr[3:2],1'b0,1'b0}),
        .s00_axi_awprot({1'b0,1'b0,1'b0}),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bresp(NLW_inst_s00_axi_bresp_UNCONNECTED[1:0]),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(NLW_inst_s00_axi_rresp_UNCONNECTED[1:0]),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata({s00_axis_tdata[31:8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s00_axis_tlast(1'b0),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s00_axis_tvalid(s00_axis_tvalid),
        .sysclk_i(sysclk_i));
endmodule

(* ORIG_REF_NAME = "axi_dds" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_axi_dds
   (dbg_left_audio_rx_o,
    dbg_right_audio_rx_o,
    axi_awready_reg,
    axi_wready_reg,
    axi_arready_reg,
    s00_axi_bvalid,
    s00_axi_rvalid,
    s00_axi_rdata,
    lrclk_o,
    dds_enable_i,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_araddr,
    s00_axi_awaddr,
    s00_axi_wdata,
    dds_reset_i,
    s00_axi_wstrb);
  output [23:0]dbg_left_audio_rx_o;
  output [23:0]dbg_right_audio_rx_o;
  output axi_awready_reg;
  output axi_wready_reg;
  output axi_arready_reg;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [31:0]s00_axi_rdata;
  input lrclk_o;
  input dds_enable_i;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_araddr;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input dds_reset_i;
  input [3:0]s00_axi_wstrb;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire [23:0]dbg_left_audio_rx_o;
  wire [23:0]dbg_right_audio_rx_o;
  wire dds_enable_i;
  wire dds_reset_i;
  wire [11:0]left_dds_phase_incr_o;
  wire lrclk_o;
  wire [11:0]right_dds_phase_incr_o;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  axi_stream_bd_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI engs128_axi_dds_S00_AXI_inst
       (.Q(left_dds_phase_incr_o),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_wready_reg_0(axi_wready_reg),
        .\right_dds_phase_incr_o_reg[11]_0 (right_dds_phase_incr_o),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
  axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1 left_audio_dds
       (.Q(left_dds_phase_incr_o),
        .dbg_left_audio_rx_o(dbg_left_audio_rx_o),
        .dds_enable_i(dds_enable_i),
        .dds_reset_i(dds_reset_i),
        .lrclk_o(lrclk_o));
  axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller right_audio_dds
       (.\addr_ctr_reg[11]_0 (right_dds_phase_incr_o),
        .dbg_right_audio_rx_o(dbg_right_audio_rx_o),
        .dds_enable_i(dds_enable_i),
        .dds_reset_i(dds_reset_i),
        .lrclk_o(lrclk_o));
endmodule

(* AC_DATA_WIDTH = "24" *) (* C_AXI_STREAM_DATA_WIDTH = "32" *) (* C_S00_AXI_ADDR_WIDTH = "4" *) 
(* ORIG_REF_NAME = "axis_i2s_wrapper" *) (* PHASE_DATA_WIDTH = "12" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_axis_i2s_wrapper
   (sysclk_i,
    ac_mute_en_i,
    dds_reset_i,
    dds_enable_i,
    ac_bclk_o,
    ac_mclk_o,
    ac_mute_n_o,
    ac_dac_data_o,
    ac_dac_lrclk_o,
    ac_adc_lrclk_o,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    dbg_left_audio_rx_o,
    dbg_left_audio_tx_o,
    dbg_right_audio_rx_o,
    dbg_right_audio_tx_o);
  input sysclk_i;
  input ac_mute_en_i;
  input dds_reset_i;
  input dds_enable_i;
  output ac_bclk_o;
  output ac_mclk_o;
  output ac_mute_n_o;
  output ac_dac_data_o;
  output ac_dac_lrclk_o;
  output ac_adc_lrclk_o;
  input s00_axis_aclk;
  input s00_axis_aresetn;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tstrb;
  input s00_axis_tlast;
  input s00_axis_tvalid;
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
  output [23:0]dbg_left_audio_tx_o;
  output [23:0]dbg_right_audio_rx_o;
  output [23:0]dbg_right_audio_tx_o;

  wire \<const0> ;
  wire ac_adc_lrclk_o;
  wire ac_bclk_o;
  wire ac_dac_data_o;
  wire ac_dac_lrclk_o;
  wire ac_mclk_o;
  wire ac_mute_en_i;
  wire ac_mute_n_o;
  wire ac_mute_n_o_i_1_n_0;
  wire bclk_o;
  wire [1:0]curr_state;
  wire [23:0]dbg_left_audio_rx_o;
  wire [23:0]dbg_left_audio_tx_o;
  wire [23:0]dbg_right_audio_rx_o;
  wire [23:0]dbg_right_audio_tx_o;
  wire dds_enable_i;
  wire dds_reset_i;
  wire [23:0]input_data;
  wire lrclk_o;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:8]\^m00_axis_tdata ;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire mclk_o;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire sysclk_i;

  assign m00_axis_tdata[31:8] = \^m00_axis_tdata [31:8];
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \<const0> ;
  assign m00_axis_tlast = \<const0> ;
  assign m00_axis_tstrb[3] = \<const0> ;
  assign m00_axis_tstrb[2] = \<const0> ;
  assign m00_axis_tstrb[1] = \<const0> ;
  assign m00_axis_tstrb[0] = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    ac_mute_n_o_i_1
       (.I0(ac_mute_en_i),
        .O(ac_mute_n_o_i_1_n_0));
  FDRE ac_mute_n_o_reg
       (.C(mclk_o),
        .CE(1'b1),
        .D(ac_mute_n_o_i_1_n_0),
        .Q(ac_mute_n_o),
        .R(1'b0));
  axi_stream_bd_axis_i2s_wrapper_0_0_axis_receiver axi_receiver
       (.D(input_data),
        .curr_state(curr_state),
        .dbg_left_audio_tx_o(dbg_left_audio_tx_o),
        .dbg_right_audio_tx_o(dbg_right_audio_tx_o),
        .lrclk_o(lrclk_o),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata[31:8]),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
  axi_stream_bd_axis_i2s_wrapper_0_0_axis_transmitter axi_transmitter
       (.dbg_left_audio_rx_o(dbg_left_audio_rx_o),
        .dbg_right_audio_rx_o(dbg_right_audio_rx_o),
        .lrclk_o(lrclk_o),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(\^m00_axis_tdata ),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid));
  axi_stream_bd_axis_i2s_wrapper_0_0_axi_dds axis_dds
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_wready_reg(s00_axi_wready),
        .dbg_left_audio_rx_o(dbg_left_audio_rx_o),
        .dbg_right_audio_rx_o(dbg_right_audio_rx_o),
        .dds_enable_i(dds_enable_i),
        .dds_reset_i(dds_reset_i),
        .lrclk_o(lrclk_o),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
  axi_stream_bd_axis_i2s_wrapper_0_0_i2s_clock_gen clock_generation
       (.ac_adc_lrclk_o(ac_adc_lrclk_o),
        .ac_bclk_o(ac_bclk_o),
        .ac_dac_lrclk_o(ac_dac_lrclk_o),
        .ac_mclk_o(ac_mclk_o),
        .bclk_o(bclk_o),
        .lrclk_o(lrclk_o),
        .mclk_o(mclk_o),
        .sysclk_i(sysclk_i));
  axi_stream_bd_axis_i2s_wrapper_0_0_i2s_transmitter transmitter
       (.CLK(bclk_o),
        .D(input_data),
        .\FSM_sequential_curr_state_reg[1]_0 (curr_state),
        .ac_dac_data_o(ac_dac_data_o),
        .lrclk_o(lrclk_o));
endmodule

(* ORIG_REF_NAME = "axis_receiver" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_axis_receiver
   (D,
    dbg_left_audio_tx_o,
    dbg_right_audio_tx_o,
    s00_axis_tready,
    curr_state,
    s00_axis_aresetn,
    lrclk_o,
    s00_axis_tvalid,
    s00_axis_aclk,
    s00_axis_tdata);
  output [23:0]D;
  output [23:0]dbg_left_audio_tx_o;
  output [23:0]dbg_right_audio_tx_o;
  output s00_axis_tready;
  input [1:0]curr_state;
  input s00_axis_aresetn;
  input lrclk_o;
  input s00_axis_tvalid;
  input s00_axis_aclk;
  input [23:0]s00_axis_tdata;

  wire [23:0]D;
  wire \FSM_sequential_curr_state[0]_i_1__1_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_1__1_n_0 ;
  wire \FSM_sequential_curr_state[2]_i_1__0_n_0 ;
  wire [1:0]curr_state;
  wire [2:0]curr_state_0;
  wire [23:0]dbg_left_audio_tx_o;
  wire [23:0]dbg_right_audio_tx_o;
  wire \left_audio_data_o[23]_i_1_n_0 ;
  wire lrclk_o;
  wire \right_audio_data_o[23]_i_1_n_0 ;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [23:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  LUT6 #(
    .INIT(64'h0000302010103020)) 
    \FSM_sequential_curr_state[0]_i_1__1 
       (.I0(curr_state_0[1]),
        .I1(curr_state_0[2]),
        .I2(s00_axis_aresetn),
        .I3(lrclk_o),
        .I4(curr_state_0[0]),
        .I5(s00_axis_tvalid),
        .O(\FSM_sequential_curr_state[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10200020)) 
    \FSM_sequential_curr_state[1]_i_1__1 
       (.I0(curr_state_0[1]),
        .I1(curr_state_0[2]),
        .I2(s00_axis_aresetn),
        .I3(curr_state_0[0]),
        .I4(s00_axis_tvalid),
        .O(\FSM_sequential_curr_state[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h20204000)) 
    \FSM_sequential_curr_state[2]_i_1__0 
       (.I0(curr_state_0[1]),
        .I1(curr_state_0[2]),
        .I2(s00_axis_aresetn),
        .I3(lrclk_o),
        .I4(curr_state_0[0]),
        .O(\FSM_sequential_curr_state[2]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "ready:001,lreceive:010,rreceive:011,hold:100,idle:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[0]_i_1__1_n_0 ),
        .Q(curr_state_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ready:001,lreceive:010,rreceive:011,hold:100,idle:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[1]_i_1__1_n_0 ),
        .Q(curr_state_0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ready:001,lreceive:010,rreceive:011,hold:100,idle:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[2]_i_1__0_n_0 ),
        .Q(curr_state_0[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[0]_i_1 
       (.I0(dbg_left_audio_tx_o[0]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[10]_i_1 
       (.I0(dbg_left_audio_tx_o[10]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[11]_i_1 
       (.I0(dbg_left_audio_tx_o[11]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[12]_i_1 
       (.I0(dbg_left_audio_tx_o[12]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[13]_i_1 
       (.I0(dbg_left_audio_tx_o[13]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[14]_i_1 
       (.I0(dbg_left_audio_tx_o[14]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[15]_i_1 
       (.I0(dbg_left_audio_tx_o[15]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[16]_i_1 
       (.I0(dbg_left_audio_tx_o[16]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[16]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[17]_i_1 
       (.I0(dbg_left_audio_tx_o[17]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[17]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[18]_i_1 
       (.I0(dbg_left_audio_tx_o[18]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[18]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[19]_i_1 
       (.I0(dbg_left_audio_tx_o[19]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[19]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[1]_i_1 
       (.I0(dbg_left_audio_tx_o[1]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[20]_i_1 
       (.I0(dbg_left_audio_tx_o[20]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[20]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[21]_i_1 
       (.I0(dbg_left_audio_tx_o[21]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[21]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[22]_i_1 
       (.I0(dbg_left_audio_tx_o[22]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[22]),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[23]_i_2 
       (.I0(dbg_left_audio_tx_o[23]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[23]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[2]_i_1 
       (.I0(dbg_left_audio_tx_o[2]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[3]_i_1 
       (.I0(dbg_left_audio_tx_o[3]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[4]_i_1 
       (.I0(dbg_left_audio_tx_o[4]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[5]_i_1 
       (.I0(dbg_left_audio_tx_o[5]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[6]_i_1 
       (.I0(dbg_left_audio_tx_o[6]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[7]_i_1 
       (.I0(dbg_left_audio_tx_o[7]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[8]_i_1 
       (.I0(dbg_left_audio_tx_o[8]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[9]_i_1 
       (.I0(dbg_left_audio_tx_o[9]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(dbg_right_audio_tx_o[9]),
        .O(D[9]));
  LUT3 #(
    .INIT(8'h02)) 
    \left_audio_data_o[23]_i_1 
       (.I0(curr_state_0[1]),
        .I1(curr_state_0[2]),
        .I2(curr_state_0[0]),
        .O(\left_audio_data_o[23]_i_1_n_0 ));
  FDRE \left_audio_data_o_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[0]),
        .Q(dbg_left_audio_tx_o[0]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[10]),
        .Q(dbg_left_audio_tx_o[10]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[11]),
        .Q(dbg_left_audio_tx_o[11]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[12]),
        .Q(dbg_left_audio_tx_o[12]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[13]),
        .Q(dbg_left_audio_tx_o[13]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[14]),
        .Q(dbg_left_audio_tx_o[14]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[15]),
        .Q(dbg_left_audio_tx_o[15]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[16]),
        .Q(dbg_left_audio_tx_o[16]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[17]),
        .Q(dbg_left_audio_tx_o[17]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[18]),
        .Q(dbg_left_audio_tx_o[18]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[19] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[19]),
        .Q(dbg_left_audio_tx_o[19]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[1]),
        .Q(dbg_left_audio_tx_o[1]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[20] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[20]),
        .Q(dbg_left_audio_tx_o[20]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[21] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[21]),
        .Q(dbg_left_audio_tx_o[21]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[22] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[22]),
        .Q(dbg_left_audio_tx_o[22]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[23] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[23]),
        .Q(dbg_left_audio_tx_o[23]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[2]),
        .Q(dbg_left_audio_tx_o[2]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[3]),
        .Q(dbg_left_audio_tx_o[3]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[4]),
        .Q(dbg_left_audio_tx_o[4]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[5]),
        .Q(dbg_left_audio_tx_o[5]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[6]),
        .Q(dbg_left_audio_tx_o[6]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[7]),
        .Q(dbg_left_audio_tx_o[7]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[8]),
        .Q(dbg_left_audio_tx_o[8]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[9]),
        .Q(dbg_left_audio_tx_o[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \right_audio_data_o[23]_i_1 
       (.I0(curr_state_0[2]),
        .I1(curr_state_0[0]),
        .I2(curr_state_0[1]),
        .O(\right_audio_data_o[23]_i_1_n_0 ));
  FDRE \right_audio_data_o_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[0]),
        .Q(dbg_right_audio_tx_o[0]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[10]),
        .Q(dbg_right_audio_tx_o[10]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[11]),
        .Q(dbg_right_audio_tx_o[11]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[12]),
        .Q(dbg_right_audio_tx_o[12]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[13]),
        .Q(dbg_right_audio_tx_o[13]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[14]),
        .Q(dbg_right_audio_tx_o[14]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[15]),
        .Q(dbg_right_audio_tx_o[15]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[16]),
        .Q(dbg_right_audio_tx_o[16]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[17]),
        .Q(dbg_right_audio_tx_o[17]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[18]),
        .Q(dbg_right_audio_tx_o[18]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[19] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[19]),
        .Q(dbg_right_audio_tx_o[19]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[1]),
        .Q(dbg_right_audio_tx_o[1]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[20] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[20]),
        .Q(dbg_right_audio_tx_o[20]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[21] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[21]),
        .Q(dbg_right_audio_tx_o[21]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[22] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[22]),
        .Q(dbg_right_audio_tx_o[22]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[23] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[23]),
        .Q(dbg_right_audio_tx_o[23]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[2]),
        .Q(dbg_right_audio_tx_o[2]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[3]),
        .Q(dbg_right_audio_tx_o[3]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[4]),
        .Q(dbg_right_audio_tx_o[4]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[5]),
        .Q(dbg_right_audio_tx_o[5]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[6]),
        .Q(dbg_right_audio_tx_o[6]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[7]),
        .Q(dbg_right_audio_tx_o[7]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[8]),
        .Q(dbg_right_audio_tx_o[8]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(s00_axis_tdata[9]),
        .Q(dbg_right_audio_tx_o[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    s00_axis_tready_INST_0
       (.I0(curr_state_0[1]),
        .I1(curr_state_0[0]),
        .I2(curr_state_0[2]),
        .O(s00_axis_tready));
endmodule

(* ORIG_REF_NAME = "axis_transmitter" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_axis_transmitter
   (m00_axis_tdata,
    m00_axis_tvalid,
    lrclk_o,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tready,
    dbg_right_audio_rx_o,
    dbg_left_audio_rx_o);
  output [23:0]m00_axis_tdata;
  output m00_axis_tvalid;
  input lrclk_o;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  input m00_axis_tready;
  input [23:0]dbg_right_audio_rx_o;
  input [23:0]dbg_left_audio_rx_o;

  wire \FSM_sequential_curr_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_1__0_n_0 ;
  wire [31:8]Ltemp1;
  wire [31:8]Ltemp2;
  wire [31:8]Rtemp1;
  wire [31:8]Rtemp2;
  wire [1:0]curr_state;
  wire [23:0]dbg_left_audio_rx_o;
  wire [23:0]dbg_right_audio_rx_o;
  wire lrclk_o;
  wire lrclk_temp1;
  wire lrclk_temp2;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [23:0]m00_axis_tdata;
  wire \m00_axis_tdata[10]_i_1_n_0 ;
  wire \m00_axis_tdata[11]_i_1_n_0 ;
  wire \m00_axis_tdata[12]_i_1_n_0 ;
  wire \m00_axis_tdata[13]_i_1_n_0 ;
  wire \m00_axis_tdata[14]_i_1_n_0 ;
  wire \m00_axis_tdata[15]_i_1_n_0 ;
  wire \m00_axis_tdata[16]_i_1_n_0 ;
  wire \m00_axis_tdata[17]_i_1_n_0 ;
  wire \m00_axis_tdata[18]_i_1_n_0 ;
  wire \m00_axis_tdata[19]_i_1_n_0 ;
  wire \m00_axis_tdata[20]_i_1_n_0 ;
  wire \m00_axis_tdata[21]_i_1_n_0 ;
  wire \m00_axis_tdata[22]_i_1_n_0 ;
  wire \m00_axis_tdata[23]_i_1_n_0 ;
  wire \m00_axis_tdata[24]_i_1_n_0 ;
  wire \m00_axis_tdata[25]_i_1_n_0 ;
  wire \m00_axis_tdata[26]_i_1_n_0 ;
  wire \m00_axis_tdata[27]_i_1_n_0 ;
  wire \m00_axis_tdata[28]_i_1_n_0 ;
  wire \m00_axis_tdata[29]_i_1_n_0 ;
  wire \m00_axis_tdata[30]_i_1_n_0 ;
  wire \m00_axis_tdata[31]_i_1_n_0 ;
  wire \m00_axis_tdata[8]_i_1_n_0 ;
  wire \m00_axis_tdata[9]_i_1_n_0 ;
  wire m00_axis_tready;
  wire m00_axis_tvalid;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80C88C08)) 
    \FSM_sequential_curr_state[0]_i_1__0 
       (.I0(lrclk_temp2),
        .I1(m00_axis_aresetn),
        .I2(curr_state[1]),
        .I3(curr_state[0]),
        .I4(m00_axis_tready),
        .O(\FSM_sequential_curr_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8CC080C0)) 
    \FSM_sequential_curr_state[1]_i_1__0 
       (.I0(lrclk_temp2),
        .I1(m00_axis_aresetn),
        .I2(curr_state[1]),
        .I3(curr_state[0]),
        .I4(m00_axis_tready),
        .O(\FSM_sequential_curr_state[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "ltransmit:01,rtransmit:10,idle:00,hold:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[0]_i_1__0_n_0 ),
        .Q(curr_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ltransmit:01,rtransmit:10,idle:00,hold:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[1]_i_1__0_n_0 ),
        .Q(curr_state[1]),
        .R(1'b0));
  FDRE \Ltemp1_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[2]),
        .Q(Ltemp1[10]),
        .R(1'b0));
  FDRE \Ltemp1_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[3]),
        .Q(Ltemp1[11]),
        .R(1'b0));
  FDRE \Ltemp1_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[4]),
        .Q(Ltemp1[12]),
        .R(1'b0));
  FDRE \Ltemp1_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[5]),
        .Q(Ltemp1[13]),
        .R(1'b0));
  FDRE \Ltemp1_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[6]),
        .Q(Ltemp1[14]),
        .R(1'b0));
  FDRE \Ltemp1_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[7]),
        .Q(Ltemp1[15]),
        .R(1'b0));
  FDRE \Ltemp1_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[8]),
        .Q(Ltemp1[16]),
        .R(1'b0));
  FDRE \Ltemp1_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[9]),
        .Q(Ltemp1[17]),
        .R(1'b0));
  FDRE \Ltemp1_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[10]),
        .Q(Ltemp1[18]),
        .R(1'b0));
  FDRE \Ltemp1_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[11]),
        .Q(Ltemp1[19]),
        .R(1'b0));
  FDRE \Ltemp1_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[12]),
        .Q(Ltemp1[20]),
        .R(1'b0));
  FDRE \Ltemp1_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[13]),
        .Q(Ltemp1[21]),
        .R(1'b0));
  FDRE \Ltemp1_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[14]),
        .Q(Ltemp1[22]),
        .R(1'b0));
  FDRE \Ltemp1_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[15]),
        .Q(Ltemp1[23]),
        .R(1'b0));
  FDRE \Ltemp1_reg[24] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[16]),
        .Q(Ltemp1[24]),
        .R(1'b0));
  FDRE \Ltemp1_reg[25] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[17]),
        .Q(Ltemp1[25]),
        .R(1'b0));
  FDRE \Ltemp1_reg[26] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[18]),
        .Q(Ltemp1[26]),
        .R(1'b0));
  FDRE \Ltemp1_reg[27] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[19]),
        .Q(Ltemp1[27]),
        .R(1'b0));
  FDRE \Ltemp1_reg[28] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[20]),
        .Q(Ltemp1[28]),
        .R(1'b0));
  FDRE \Ltemp1_reg[29] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[21]),
        .Q(Ltemp1[29]),
        .R(1'b0));
  FDRE \Ltemp1_reg[30] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[22]),
        .Q(Ltemp1[30]),
        .R(1'b0));
  FDRE \Ltemp1_reg[31] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[23]),
        .Q(Ltemp1[31]),
        .R(1'b0));
  FDRE \Ltemp1_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[0]),
        .Q(Ltemp1[8]),
        .R(1'b0));
  FDRE \Ltemp1_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_left_audio_rx_o[1]),
        .Q(Ltemp1[9]),
        .R(1'b0));
  FDRE \Ltemp2_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[10]),
        .Q(Ltemp2[10]),
        .R(1'b0));
  FDRE \Ltemp2_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[11]),
        .Q(Ltemp2[11]),
        .R(1'b0));
  FDRE \Ltemp2_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[12]),
        .Q(Ltemp2[12]),
        .R(1'b0));
  FDRE \Ltemp2_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[13]),
        .Q(Ltemp2[13]),
        .R(1'b0));
  FDRE \Ltemp2_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[14]),
        .Q(Ltemp2[14]),
        .R(1'b0));
  FDRE \Ltemp2_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[15]),
        .Q(Ltemp2[15]),
        .R(1'b0));
  FDRE \Ltemp2_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[16]),
        .Q(Ltemp2[16]),
        .R(1'b0));
  FDRE \Ltemp2_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[17]),
        .Q(Ltemp2[17]),
        .R(1'b0));
  FDRE \Ltemp2_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[18]),
        .Q(Ltemp2[18]),
        .R(1'b0));
  FDRE \Ltemp2_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[19]),
        .Q(Ltemp2[19]),
        .R(1'b0));
  FDRE \Ltemp2_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[20]),
        .Q(Ltemp2[20]),
        .R(1'b0));
  FDRE \Ltemp2_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[21]),
        .Q(Ltemp2[21]),
        .R(1'b0));
  FDRE \Ltemp2_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[22]),
        .Q(Ltemp2[22]),
        .R(1'b0));
  FDRE \Ltemp2_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[23]),
        .Q(Ltemp2[23]),
        .R(1'b0));
  FDRE \Ltemp2_reg[24] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[24]),
        .Q(Ltemp2[24]),
        .R(1'b0));
  FDRE \Ltemp2_reg[25] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[25]),
        .Q(Ltemp2[25]),
        .R(1'b0));
  FDRE \Ltemp2_reg[26] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[26]),
        .Q(Ltemp2[26]),
        .R(1'b0));
  FDRE \Ltemp2_reg[27] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[27]),
        .Q(Ltemp2[27]),
        .R(1'b0));
  FDRE \Ltemp2_reg[28] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[28]),
        .Q(Ltemp2[28]),
        .R(1'b0));
  FDRE \Ltemp2_reg[29] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[29]),
        .Q(Ltemp2[29]),
        .R(1'b0));
  FDRE \Ltemp2_reg[30] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[30]),
        .Q(Ltemp2[30]),
        .R(1'b0));
  FDRE \Ltemp2_reg[31] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[31]),
        .Q(Ltemp2[31]),
        .R(1'b0));
  FDRE \Ltemp2_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[8]),
        .Q(Ltemp2[8]),
        .R(1'b0));
  FDRE \Ltemp2_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Ltemp1[9]),
        .Q(Ltemp2[9]),
        .R(1'b0));
  FDRE \Rtemp1_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[2]),
        .Q(Rtemp1[10]),
        .R(1'b0));
  FDRE \Rtemp1_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[3]),
        .Q(Rtemp1[11]),
        .R(1'b0));
  FDRE \Rtemp1_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[4]),
        .Q(Rtemp1[12]),
        .R(1'b0));
  FDRE \Rtemp1_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[5]),
        .Q(Rtemp1[13]),
        .R(1'b0));
  FDRE \Rtemp1_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[6]),
        .Q(Rtemp1[14]),
        .R(1'b0));
  FDRE \Rtemp1_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[7]),
        .Q(Rtemp1[15]),
        .R(1'b0));
  FDRE \Rtemp1_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[8]),
        .Q(Rtemp1[16]),
        .R(1'b0));
  FDRE \Rtemp1_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[9]),
        .Q(Rtemp1[17]),
        .R(1'b0));
  FDRE \Rtemp1_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[10]),
        .Q(Rtemp1[18]),
        .R(1'b0));
  FDRE \Rtemp1_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[11]),
        .Q(Rtemp1[19]),
        .R(1'b0));
  FDRE \Rtemp1_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[12]),
        .Q(Rtemp1[20]),
        .R(1'b0));
  FDRE \Rtemp1_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[13]),
        .Q(Rtemp1[21]),
        .R(1'b0));
  FDRE \Rtemp1_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[14]),
        .Q(Rtemp1[22]),
        .R(1'b0));
  FDRE \Rtemp1_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[15]),
        .Q(Rtemp1[23]),
        .R(1'b0));
  FDRE \Rtemp1_reg[24] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[16]),
        .Q(Rtemp1[24]),
        .R(1'b0));
  FDRE \Rtemp1_reg[25] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[17]),
        .Q(Rtemp1[25]),
        .R(1'b0));
  FDRE \Rtemp1_reg[26] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[18]),
        .Q(Rtemp1[26]),
        .R(1'b0));
  FDRE \Rtemp1_reg[27] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[19]),
        .Q(Rtemp1[27]),
        .R(1'b0));
  FDRE \Rtemp1_reg[28] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[20]),
        .Q(Rtemp1[28]),
        .R(1'b0));
  FDRE \Rtemp1_reg[29] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[21]),
        .Q(Rtemp1[29]),
        .R(1'b0));
  FDRE \Rtemp1_reg[30] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[22]),
        .Q(Rtemp1[30]),
        .R(1'b0));
  FDRE \Rtemp1_reg[31] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[23]),
        .Q(Rtemp1[31]),
        .R(1'b0));
  FDRE \Rtemp1_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[0]),
        .Q(Rtemp1[8]),
        .R(1'b0));
  FDRE \Rtemp1_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_right_audio_rx_o[1]),
        .Q(Rtemp1[9]),
        .R(1'b0));
  FDRE \Rtemp2_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[10]),
        .Q(Rtemp2[10]),
        .R(1'b0));
  FDRE \Rtemp2_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[11]),
        .Q(Rtemp2[11]),
        .R(1'b0));
  FDRE \Rtemp2_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[12]),
        .Q(Rtemp2[12]),
        .R(1'b0));
  FDRE \Rtemp2_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[13]),
        .Q(Rtemp2[13]),
        .R(1'b0));
  FDRE \Rtemp2_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[14]),
        .Q(Rtemp2[14]),
        .R(1'b0));
  FDRE \Rtemp2_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[15]),
        .Q(Rtemp2[15]),
        .R(1'b0));
  FDRE \Rtemp2_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[16]),
        .Q(Rtemp2[16]),
        .R(1'b0));
  FDRE \Rtemp2_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[17]),
        .Q(Rtemp2[17]),
        .R(1'b0));
  FDRE \Rtemp2_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[18]),
        .Q(Rtemp2[18]),
        .R(1'b0));
  FDRE \Rtemp2_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[19]),
        .Q(Rtemp2[19]),
        .R(1'b0));
  FDRE \Rtemp2_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[20]),
        .Q(Rtemp2[20]),
        .R(1'b0));
  FDRE \Rtemp2_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[21]),
        .Q(Rtemp2[21]),
        .R(1'b0));
  FDRE \Rtemp2_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[22]),
        .Q(Rtemp2[22]),
        .R(1'b0));
  FDRE \Rtemp2_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[23]),
        .Q(Rtemp2[23]),
        .R(1'b0));
  FDRE \Rtemp2_reg[24] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[24]),
        .Q(Rtemp2[24]),
        .R(1'b0));
  FDRE \Rtemp2_reg[25] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[25]),
        .Q(Rtemp2[25]),
        .R(1'b0));
  FDRE \Rtemp2_reg[26] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[26]),
        .Q(Rtemp2[26]),
        .R(1'b0));
  FDRE \Rtemp2_reg[27] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[27]),
        .Q(Rtemp2[27]),
        .R(1'b0));
  FDRE \Rtemp2_reg[28] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[28]),
        .Q(Rtemp2[28]),
        .R(1'b0));
  FDRE \Rtemp2_reg[29] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[29]),
        .Q(Rtemp2[29]),
        .R(1'b0));
  FDRE \Rtemp2_reg[30] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[30]),
        .Q(Rtemp2[30]),
        .R(1'b0));
  FDRE \Rtemp2_reg[31] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[31]),
        .Q(Rtemp2[31]),
        .R(1'b0));
  FDRE \Rtemp2_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[8]),
        .Q(Rtemp2[8]),
        .R(1'b0));
  FDRE \Rtemp2_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Rtemp1[9]),
        .Q(Rtemp2[9]),
        .R(1'b0));
  FDRE lrclk_temp1_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lrclk_o),
        .Q(lrclk_temp1),
        .R(1'b0));
  FDRE lrclk_temp2_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lrclk_temp1),
        .Q(lrclk_temp2),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[10]_i_1 
       (.I0(Ltemp2[10]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[10]),
        .O(\m00_axis_tdata[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[11]_i_1 
       (.I0(Ltemp2[11]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[11]),
        .O(\m00_axis_tdata[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[12]_i_1 
       (.I0(Ltemp2[12]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[12]),
        .O(\m00_axis_tdata[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[13]_i_1 
       (.I0(Ltemp2[13]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[13]),
        .O(\m00_axis_tdata[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[14]_i_1 
       (.I0(Ltemp2[14]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[14]),
        .O(\m00_axis_tdata[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[15]_i_1 
       (.I0(Ltemp2[15]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[15]),
        .O(\m00_axis_tdata[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[16]_i_1 
       (.I0(Ltemp2[16]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[16]),
        .O(\m00_axis_tdata[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[17]_i_1 
       (.I0(Ltemp2[17]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[17]),
        .O(\m00_axis_tdata[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[18]_i_1 
       (.I0(Ltemp2[18]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[18]),
        .O(\m00_axis_tdata[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[19]_i_1 
       (.I0(Ltemp2[19]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[19]),
        .O(\m00_axis_tdata[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[20]_i_1 
       (.I0(Ltemp2[20]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[20]),
        .O(\m00_axis_tdata[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[21]_i_1 
       (.I0(Ltemp2[21]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[21]),
        .O(\m00_axis_tdata[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[22]_i_1 
       (.I0(Ltemp2[22]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[22]),
        .O(\m00_axis_tdata[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[23]_i_1 
       (.I0(Ltemp2[23]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[23]),
        .O(\m00_axis_tdata[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[24]_i_1 
       (.I0(Ltemp2[24]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[24]),
        .O(\m00_axis_tdata[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[25]_i_1 
       (.I0(Ltemp2[25]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[25]),
        .O(\m00_axis_tdata[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[26]_i_1 
       (.I0(Ltemp2[26]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[26]),
        .O(\m00_axis_tdata[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[27]_i_1 
       (.I0(Ltemp2[27]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[27]),
        .O(\m00_axis_tdata[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[28]_i_1 
       (.I0(Ltemp2[28]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[28]),
        .O(\m00_axis_tdata[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[29]_i_1 
       (.I0(Ltemp2[29]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[29]),
        .O(\m00_axis_tdata[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[30]_i_1 
       (.I0(Ltemp2[30]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[30]),
        .O(\m00_axis_tdata[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[31]_i_1 
       (.I0(Ltemp2[31]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[31]),
        .O(\m00_axis_tdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[8]_i_1 
       (.I0(Ltemp2[8]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[8]),
        .O(\m00_axis_tdata[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \m00_axis_tdata[9]_i_1 
       (.I0(Ltemp2[9]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(Rtemp2[9]),
        .O(\m00_axis_tdata[9]_i_1_n_0 ));
  FDRE \m00_axis_tdata_reg[10] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[10]_i_1_n_0 ),
        .Q(m00_axis_tdata[2]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[11] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[11]_i_1_n_0 ),
        .Q(m00_axis_tdata[3]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[12] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[12]_i_1_n_0 ),
        .Q(m00_axis_tdata[4]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[13] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[13]_i_1_n_0 ),
        .Q(m00_axis_tdata[5]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[14] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[14]_i_1_n_0 ),
        .Q(m00_axis_tdata[6]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[15] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[15]_i_1_n_0 ),
        .Q(m00_axis_tdata[7]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[16] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[16]_i_1_n_0 ),
        .Q(m00_axis_tdata[8]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[17] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[17]_i_1_n_0 ),
        .Q(m00_axis_tdata[9]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[18] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[18]_i_1_n_0 ),
        .Q(m00_axis_tdata[10]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[19] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[19]_i_1_n_0 ),
        .Q(m00_axis_tdata[11]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[20] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[20]_i_1_n_0 ),
        .Q(m00_axis_tdata[12]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[21] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[21]_i_1_n_0 ),
        .Q(m00_axis_tdata[13]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[22] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[22]_i_1_n_0 ),
        .Q(m00_axis_tdata[14]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[23] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[23]_i_1_n_0 ),
        .Q(m00_axis_tdata[15]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[24] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[24]_i_1_n_0 ),
        .Q(m00_axis_tdata[16]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[25] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[25]_i_1_n_0 ),
        .Q(m00_axis_tdata[17]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[26] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[26]_i_1_n_0 ),
        .Q(m00_axis_tdata[18]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[27] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[27]_i_1_n_0 ),
        .Q(m00_axis_tdata[19]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[28] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[28]_i_1_n_0 ),
        .Q(m00_axis_tdata[20]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[29] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[29]_i_1_n_0 ),
        .Q(m00_axis_tdata[21]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[30] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[30]_i_1_n_0 ),
        .Q(m00_axis_tdata[22]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[31] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[31]_i_1_n_0 ),
        .Q(m00_axis_tdata[23]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[8] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[8]_i_1_n_0 ),
        .Q(m00_axis_tdata[0]),
        .R(1'b0));
  FDRE \m00_axis_tdata_reg[9] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tvalid),
        .D(\m00_axis_tdata[9]_i_1_n_0 ),
        .Q(m00_axis_tdata[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    m00_axis_tvalid_INST_0
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .O(m00_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_0" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0
   (clka,
    ena,
    addra,
    douta);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "3" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.979199 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_0" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0__2
   (clka,
    ena,
    addra,
    douta);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "3" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.979199 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_v8_4_5__2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0
   (mclk_o,
    sysclk_i);
  output mclk_o;
  input sysclk_i;

  wire mclk_o;
  wire sysclk_i;

  axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz inst
       (.mclk_o(mclk_o),
        .sysclk_i(sysclk_i));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz
   (mclk_o,
    sysclk_i);
  output mclk_o;
  input sysclk_i;

  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire mclk_o;
  wire mclk_o_clk_wiz_0;
  wire mmcm_adv_inst_n_16;
  wire sysclk_i;
  wire sysclk_i_clk_wiz_0;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(sysclk_i),
        .O(sysclk_i_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(mclk_o_clk_wiz_0),
        .O(mclk_o));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(42.750000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(8.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(62.125000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(7),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(sysclk_i_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(mclk_o_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_adv_inst_n_16),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider
   (bclk_o,
    mclk_o);
  output bclk_o;
  input mclk_o;

  wire I;
  wire bclk_o;
  wire \clock_counter_reg_n_0_[0] ;
  wire mclk_o;
  wire p_0_in;
  wire unbuffered_clk_i_1__0_n_0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1 
       (.I0(\clock_counter_reg_n_0_[0] ),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[0] 
       (.C(mclk_o),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\clock_counter_reg_n_0_[0] ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG slow_clock_bufg
       (.I(I),
        .O(bclk_o));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    unbuffered_clk_i_1__0
       (.I0(\clock_counter_reg_n_0_[0] ),
        .I1(I),
        .O(unbuffered_clk_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    unbuffered_clk_reg
       (.C(mclk_o),
        .CE(1'b1),
        .D(unbuffered_clk_i_1__0_n_0),
        .Q(I),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clock_divider_falling_edge" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider_falling_edge
   (lrclk_o,
    \clock_counter_reg[0]_0 );
  output lrclk_o;
  input \clock_counter_reg[0]_0 ;

  wire I;
  wire \clock_counter[2]_i_1_n_0 ;
  wire \clock_counter[4]_i_1_n_0 ;
  wire \clock_counter_reg[0]_0 ;
  wire \clock_counter_reg_n_0_[0] ;
  wire \clock_counter_reg_n_0_[1] ;
  wire \clock_counter_reg_n_0_[2] ;
  wire \clock_counter_reg_n_0_[3] ;
  wire \clock_counter_reg_n_0_[4] ;
  wire lrclk_o;
  wire [4:0]plusOp;
  wire unbuffered_clk_i_1_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1 
       (.I0(\clock_counter_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_1 
       (.I0(\clock_counter_reg_n_0_[0] ),
        .I1(\clock_counter_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clock_counter[2]_i_1 
       (.I0(\clock_counter_reg_n_0_[1] ),
        .I1(\clock_counter_reg_n_0_[0] ),
        .I2(\clock_counter_reg_n_0_[2] ),
        .O(\clock_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clock_counter[3]_i_1 
       (.I0(\clock_counter_reg_n_0_[0] ),
        .I1(\clock_counter_reg_n_0_[1] ),
        .I2(\clock_counter_reg_n_0_[2] ),
        .I3(\clock_counter_reg_n_0_[3] ),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \clock_counter[4]_i_1 
       (.I0(\clock_counter_reg_n_0_[3] ),
        .I1(\clock_counter_reg_n_0_[1] ),
        .I2(\clock_counter_reg_n_0_[0] ),
        .I3(\clock_counter_reg_n_0_[4] ),
        .I4(\clock_counter_reg_n_0_[2] ),
        .O(\clock_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clock_counter[4]_i_2 
       (.I0(\clock_counter_reg_n_0_[2] ),
        .I1(\clock_counter_reg_n_0_[1] ),
        .I2(\clock_counter_reg_n_0_[0] ),
        .I3(\clock_counter_reg_n_0_[3] ),
        .I4(\clock_counter_reg_n_0_[4] ),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clock_counter_reg[0] 
       (.C(\clock_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\clock_counter_reg_n_0_[0] ),
        .R(\clock_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clock_counter_reg[1] 
       (.C(\clock_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\clock_counter_reg_n_0_[1] ),
        .R(\clock_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clock_counter_reg[2] 
       (.C(\clock_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\clock_counter[2]_i_1_n_0 ),
        .Q(\clock_counter_reg_n_0_[2] ),
        .R(\clock_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clock_counter_reg[3] 
       (.C(\clock_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\clock_counter_reg_n_0_[3] ),
        .R(\clock_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clock_counter_reg[4] 
       (.C(\clock_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\clock_counter_reg_n_0_[4] ),
        .R(\clock_counter[4]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG slow_clock_bufg
       (.I(I),
        .O(lrclk_o));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    unbuffered_clk_i_1
       (.I0(\clock_counter_reg_n_0_[4] ),
        .I1(\clock_counter_reg_n_0_[3] ),
        .I2(\clock_counter_reg_n_0_[2] ),
        .I3(\clock_counter_reg_n_0_[1] ),
        .I4(\clock_counter_reg_n_0_[0] ),
        .I5(I),
        .O(unbuffered_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    unbuffered_clk_reg
       (.C(\clock_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(unbuffered_clk_i_1_n_0),
        .Q(I),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_counter
   (\FSM_sequential_curr_state_reg[2] ,
    \FSM_sequential_curr_state_reg[2]_0 ,
    \count_int_reg[0]_0 ,
    \count_int_reg[0]_1 ,
    curr_state,
    lrclk_o,
    CLK);
  output \FSM_sequential_curr_state_reg[2] ;
  output \FSM_sequential_curr_state_reg[2]_0 ;
  input \count_int_reg[0]_0 ;
  input \count_int_reg[0]_1 ;
  input [0:0]curr_state;
  input lrclk_o;
  input CLK;

  wire CLK;
  wire \FSM_sequential_curr_state_reg[2] ;
  wire \FSM_sequential_curr_state_reg[2]_0 ;
  wire [4:0]count_int;
  wire \count_int[0]_i_1_n_0 ;
  wire \count_int[1]_i_1_n_0 ;
  wire \count_int[2]_i_1_n_0 ;
  wire \count_int[3]_i_1_n_0 ;
  wire \count_int[4]_i_3_n_0 ;
  wire \count_int_reg[0]_0 ;
  wire \count_int_reg[0]_1 ;
  wire counter_reset;
  wire [0:0]curr_state;
  wire lrclk_o;
  wire shift_en;
  wire tc_o;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hCF2244CF)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(tc_o),
        .I1(curr_state),
        .I2(lrclk_o),
        .I3(\count_int_reg[0]_1 ),
        .I4(\count_int_reg[0]_0 ),
        .O(\FSM_sequential_curr_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFCCC44CC)) 
    \FSM_sequential_curr_state[2]_i_1 
       (.I0(tc_o),
        .I1(curr_state),
        .I2(lrclk_o),
        .I3(\count_int_reg[0]_1 ),
        .I4(\count_int_reg[0]_0 ),
        .O(\FSM_sequential_curr_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_curr_state[2]_i_2 
       (.I0(count_int[3]),
        .I1(count_int[4]),
        .I2(count_int[2]),
        .I3(count_int[0]),
        .I4(count_int[1]),
        .O(tc_o));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_int[0]_i_1 
       (.I0(count_int[0]),
        .O(\count_int[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_int[1]_i_1 
       (.I0(count_int[0]),
        .I1(count_int[1]),
        .O(\count_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_int[2]_i_1 
       (.I0(count_int[0]),
        .I1(count_int[1]),
        .I2(count_int[2]),
        .O(\count_int[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h3FFF4000)) 
    \count_int[3]_i_1 
       (.I0(count_int[4]),
        .I1(count_int[0]),
        .I2(count_int[1]),
        .I3(count_int[2]),
        .I4(count_int[3]),
        .O(\count_int[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \count_int[4]_i_1 
       (.I0(\count_int_reg[0]_0 ),
        .I1(\count_int_reg[0]_1 ),
        .I2(curr_state),
        .O(counter_reset));
  LUT3 #(
    .INIT(8'h24)) 
    \count_int[4]_i_2 
       (.I0(\count_int_reg[0]_1 ),
        .I1(\count_int_reg[0]_0 ),
        .I2(curr_state),
        .O(shift_en));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAA2AAA)) 
    \count_int[4]_i_3 
       (.I0(count_int[4]),
        .I1(count_int[0]),
        .I2(count_int[1]),
        .I3(count_int[2]),
        .I4(count_int[3]),
        .O(\count_int[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[0] 
       (.C(CLK),
        .CE(shift_en),
        .D(\count_int[0]_i_1_n_0 ),
        .Q(count_int[0]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[1] 
       (.C(CLK),
        .CE(shift_en),
        .D(\count_int[1]_i_1_n_0 ),
        .Q(count_int[1]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[2] 
       (.C(CLK),
        .CE(shift_en),
        .D(\count_int[2]_i_1_n_0 ),
        .Q(count_int[2]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[3] 
       (.C(CLK),
        .CE(shift_en),
        .D(\count_int[3]_i_1_n_0 ),
        .Q(count_int[3]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[4] 
       (.C(CLK),
        .CE(shift_en),
        .D(\count_int[4]_i_3_n_0 ),
        .Q(count_int[4]),
        .R(counter_reset));
endmodule

(* ORIG_REF_NAME = "dds_controller" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller
   (dbg_right_audio_rx_o,
    lrclk_o,
    dds_enable_i,
    \addr_ctr_reg[11]_0 ,
    dds_reset_i);
  output [23:0]dbg_right_audio_rx_o;
  input lrclk_o;
  input dds_enable_i;
  input [11:0]\addr_ctr_reg[11]_0 ;
  input dds_reset_i;

  wire \addr_ctr[11]_i_2_n_0 ;
  wire \addr_ctr[11]_i_3_n_0 ;
  wire \addr_ctr[11]_i_4_n_0 ;
  wire \addr_ctr[11]_i_5_n_0 ;
  wire \addr_ctr[3]_i_2_n_0 ;
  wire \addr_ctr[3]_i_3_n_0 ;
  wire \addr_ctr[3]_i_4_n_0 ;
  wire \addr_ctr[3]_i_5_n_0 ;
  wire \addr_ctr[7]_i_2_n_0 ;
  wire \addr_ctr[7]_i_3_n_0 ;
  wire \addr_ctr[7]_i_4_n_0 ;
  wire \addr_ctr[7]_i_5_n_0 ;
  wire [11:0]\addr_ctr_reg[11]_0 ;
  wire \addr_ctr_reg[11]_i_1_n_1 ;
  wire \addr_ctr_reg[11]_i_1_n_2 ;
  wire \addr_ctr_reg[11]_i_1_n_3 ;
  wire \addr_ctr_reg[11]_i_1_n_4 ;
  wire \addr_ctr_reg[11]_i_1_n_5 ;
  wire \addr_ctr_reg[11]_i_1_n_6 ;
  wire \addr_ctr_reg[11]_i_1_n_7 ;
  wire \addr_ctr_reg[3]_i_1_n_0 ;
  wire \addr_ctr_reg[3]_i_1_n_1 ;
  wire \addr_ctr_reg[3]_i_1_n_2 ;
  wire \addr_ctr_reg[3]_i_1_n_3 ;
  wire \addr_ctr_reg[3]_i_1_n_4 ;
  wire \addr_ctr_reg[3]_i_1_n_5 ;
  wire \addr_ctr_reg[3]_i_1_n_6 ;
  wire \addr_ctr_reg[3]_i_1_n_7 ;
  wire \addr_ctr_reg[7]_i_1_n_0 ;
  wire \addr_ctr_reg[7]_i_1_n_1 ;
  wire \addr_ctr_reg[7]_i_1_n_2 ;
  wire \addr_ctr_reg[7]_i_1_n_3 ;
  wire \addr_ctr_reg[7]_i_1_n_4 ;
  wire \addr_ctr_reg[7]_i_1_n_5 ;
  wire \addr_ctr_reg[7]_i_1_n_6 ;
  wire \addr_ctr_reg[7]_i_1_n_7 ;
  wire \addr_ctr_reg_n_0_[0] ;
  wire \addr_ctr_reg_n_0_[10] ;
  wire \addr_ctr_reg_n_0_[11] ;
  wire \addr_ctr_reg_n_0_[1] ;
  wire \addr_ctr_reg_n_0_[2] ;
  wire \addr_ctr_reg_n_0_[3] ;
  wire \addr_ctr_reg_n_0_[4] ;
  wire \addr_ctr_reg_n_0_[5] ;
  wire \addr_ctr_reg_n_0_[6] ;
  wire \addr_ctr_reg_n_0_[7] ;
  wire \addr_ctr_reg_n_0_[8] ;
  wire \addr_ctr_reg_n_0_[9] ;
  wire [23:0]dbg_right_audio_rx_o;
  wire dds_enable_i;
  wire dds_reset_i;
  wire lrclk_o;
  wire [3:3]\NLW_addr_ctr_reg[11]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_2 
       (.I0(\addr_ctr_reg_n_0_[11] ),
        .I1(\addr_ctr_reg[11]_0 [11]),
        .O(\addr_ctr[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_3 
       (.I0(\addr_ctr_reg_n_0_[10] ),
        .I1(\addr_ctr_reg[11]_0 [10]),
        .O(\addr_ctr[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_4 
       (.I0(\addr_ctr_reg_n_0_[9] ),
        .I1(\addr_ctr_reg[11]_0 [9]),
        .O(\addr_ctr[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_5 
       (.I0(\addr_ctr_reg_n_0_[8] ),
        .I1(\addr_ctr_reg[11]_0 [8]),
        .O(\addr_ctr[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_2 
       (.I0(\addr_ctr_reg_n_0_[3] ),
        .I1(\addr_ctr_reg[11]_0 [3]),
        .O(\addr_ctr[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_3 
       (.I0(\addr_ctr_reg_n_0_[2] ),
        .I1(\addr_ctr_reg[11]_0 [2]),
        .O(\addr_ctr[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_4 
       (.I0(\addr_ctr_reg_n_0_[1] ),
        .I1(\addr_ctr_reg[11]_0 [1]),
        .O(\addr_ctr[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_5 
       (.I0(\addr_ctr_reg_n_0_[0] ),
        .I1(\addr_ctr_reg[11]_0 [0]),
        .O(\addr_ctr[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_2 
       (.I0(\addr_ctr_reg_n_0_[7] ),
        .I1(\addr_ctr_reg[11]_0 [7]),
        .O(\addr_ctr[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_3 
       (.I0(\addr_ctr_reg_n_0_[6] ),
        .I1(\addr_ctr_reg[11]_0 [6]),
        .O(\addr_ctr[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_4 
       (.I0(\addr_ctr_reg_n_0_[5] ),
        .I1(\addr_ctr_reg[11]_0 [5]),
        .O(\addr_ctr[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_5 
       (.I0(\addr_ctr_reg_n_0_[4] ),
        .I1(\addr_ctr_reg[11]_0 [4]),
        .O(\addr_ctr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[0] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_7 ),
        .Q(\addr_ctr_reg_n_0_[0] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[10] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_5 ),
        .Q(\addr_ctr_reg_n_0_[10] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[11] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_4 ),
        .Q(\addr_ctr_reg_n_0_[11] ),
        .R(dds_reset_i));
  CARRY4 \addr_ctr_reg[11]_i_1 
       (.CI(\addr_ctr_reg[7]_i_1_n_0 ),
        .CO({\NLW_addr_ctr_reg[11]_i_1_CO_UNCONNECTED [3],\addr_ctr_reg[11]_i_1_n_1 ,\addr_ctr_reg[11]_i_1_n_2 ,\addr_ctr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\addr_ctr_reg_n_0_[10] ,\addr_ctr_reg_n_0_[9] ,\addr_ctr_reg_n_0_[8] }),
        .O({\addr_ctr_reg[11]_i_1_n_4 ,\addr_ctr_reg[11]_i_1_n_5 ,\addr_ctr_reg[11]_i_1_n_6 ,\addr_ctr_reg[11]_i_1_n_7 }),
        .S({\addr_ctr[11]_i_2_n_0 ,\addr_ctr[11]_i_3_n_0 ,\addr_ctr[11]_i_4_n_0 ,\addr_ctr[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[1] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_6 ),
        .Q(\addr_ctr_reg_n_0_[1] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[2] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_5 ),
        .Q(\addr_ctr_reg_n_0_[2] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[3] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_4 ),
        .Q(\addr_ctr_reg_n_0_[3] ),
        .R(dds_reset_i));
  CARRY4 \addr_ctr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\addr_ctr_reg[3]_i_1_n_0 ,\addr_ctr_reg[3]_i_1_n_1 ,\addr_ctr_reg[3]_i_1_n_2 ,\addr_ctr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\addr_ctr_reg_n_0_[3] ,\addr_ctr_reg_n_0_[2] ,\addr_ctr_reg_n_0_[1] ,\addr_ctr_reg_n_0_[0] }),
        .O({\addr_ctr_reg[3]_i_1_n_4 ,\addr_ctr_reg[3]_i_1_n_5 ,\addr_ctr_reg[3]_i_1_n_6 ,\addr_ctr_reg[3]_i_1_n_7 }),
        .S({\addr_ctr[3]_i_2_n_0 ,\addr_ctr[3]_i_3_n_0 ,\addr_ctr[3]_i_4_n_0 ,\addr_ctr[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[4] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_7 ),
        .Q(\addr_ctr_reg_n_0_[4] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[5] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_6 ),
        .Q(\addr_ctr_reg_n_0_[5] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[6] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_5 ),
        .Q(\addr_ctr_reg_n_0_[6] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[7] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_4 ),
        .Q(\addr_ctr_reg_n_0_[7] ),
        .R(dds_reset_i));
  CARRY4 \addr_ctr_reg[7]_i_1 
       (.CI(\addr_ctr_reg[3]_i_1_n_0 ),
        .CO({\addr_ctr_reg[7]_i_1_n_0 ,\addr_ctr_reg[7]_i_1_n_1 ,\addr_ctr_reg[7]_i_1_n_2 ,\addr_ctr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\addr_ctr_reg_n_0_[7] ,\addr_ctr_reg_n_0_[6] ,\addr_ctr_reg_n_0_[5] ,\addr_ctr_reg_n_0_[4] }),
        .O({\addr_ctr_reg[7]_i_1_n_4 ,\addr_ctr_reg[7]_i_1_n_5 ,\addr_ctr_reg[7]_i_1_n_6 ,\addr_ctr_reg[7]_i_1_n_7 }),
        .S({\addr_ctr[7]_i_2_n_0 ,\addr_ctr[7]_i_3_n_0 ,\addr_ctr[7]_i_4_n_0 ,\addr_ctr[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[8] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_7 ),
        .Q(\addr_ctr_reg_n_0_[8] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[9] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_6 ),
        .Q(\addr_ctr_reg_n_0_[9] ),
        .R(dds_reset_i));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
  axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0 blk_mem_left
       (.addra({\addr_ctr_reg_n_0_[11] ,\addr_ctr_reg_n_0_[10] ,\addr_ctr_reg_n_0_[9] ,\addr_ctr_reg_n_0_[8] ,\addr_ctr_reg_n_0_[7] ,\addr_ctr_reg_n_0_[6] ,\addr_ctr_reg_n_0_[5] ,\addr_ctr_reg_n_0_[4] ,\addr_ctr_reg_n_0_[3] ,\addr_ctr_reg_n_0_[2] ,\addr_ctr_reg_n_0_[1] ,\addr_ctr_reg_n_0_[0] }),
        .clka(lrclk_o),
        .douta(dbg_right_audio_rx_o),
        .ena(dds_enable_i));
endmodule

(* ORIG_REF_NAME = "dds_controller" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1
   (dbg_left_audio_rx_o,
    lrclk_o,
    dds_enable_i,
    Q,
    dds_reset_i);
  output [23:0]dbg_left_audio_rx_o;
  input lrclk_o;
  input dds_enable_i;
  input [11:0]Q;
  input dds_reset_i;

  wire [11:0]Q;
  wire \addr_ctr[11]_i_2_n_0 ;
  wire \addr_ctr[11]_i_3_n_0 ;
  wire \addr_ctr[11]_i_4_n_0 ;
  wire \addr_ctr[11]_i_5_n_0 ;
  wire \addr_ctr[3]_i_2_n_0 ;
  wire \addr_ctr[3]_i_3_n_0 ;
  wire \addr_ctr[3]_i_4_n_0 ;
  wire \addr_ctr[3]_i_5_n_0 ;
  wire \addr_ctr[7]_i_2_n_0 ;
  wire \addr_ctr[7]_i_3_n_0 ;
  wire \addr_ctr[7]_i_4_n_0 ;
  wire \addr_ctr[7]_i_5_n_0 ;
  wire \addr_ctr_reg[11]_i_1_n_1 ;
  wire \addr_ctr_reg[11]_i_1_n_2 ;
  wire \addr_ctr_reg[11]_i_1_n_3 ;
  wire \addr_ctr_reg[11]_i_1_n_4 ;
  wire \addr_ctr_reg[11]_i_1_n_5 ;
  wire \addr_ctr_reg[11]_i_1_n_6 ;
  wire \addr_ctr_reg[11]_i_1_n_7 ;
  wire \addr_ctr_reg[3]_i_1_n_0 ;
  wire \addr_ctr_reg[3]_i_1_n_1 ;
  wire \addr_ctr_reg[3]_i_1_n_2 ;
  wire \addr_ctr_reg[3]_i_1_n_3 ;
  wire \addr_ctr_reg[3]_i_1_n_4 ;
  wire \addr_ctr_reg[3]_i_1_n_5 ;
  wire \addr_ctr_reg[3]_i_1_n_6 ;
  wire \addr_ctr_reg[3]_i_1_n_7 ;
  wire \addr_ctr_reg[7]_i_1_n_0 ;
  wire \addr_ctr_reg[7]_i_1_n_1 ;
  wire \addr_ctr_reg[7]_i_1_n_2 ;
  wire \addr_ctr_reg[7]_i_1_n_3 ;
  wire \addr_ctr_reg[7]_i_1_n_4 ;
  wire \addr_ctr_reg[7]_i_1_n_5 ;
  wire \addr_ctr_reg[7]_i_1_n_6 ;
  wire \addr_ctr_reg[7]_i_1_n_7 ;
  wire \addr_ctr_reg_n_0_[0] ;
  wire \addr_ctr_reg_n_0_[10] ;
  wire \addr_ctr_reg_n_0_[11] ;
  wire \addr_ctr_reg_n_0_[1] ;
  wire \addr_ctr_reg_n_0_[2] ;
  wire \addr_ctr_reg_n_0_[3] ;
  wire \addr_ctr_reg_n_0_[4] ;
  wire \addr_ctr_reg_n_0_[5] ;
  wire \addr_ctr_reg_n_0_[6] ;
  wire \addr_ctr_reg_n_0_[7] ;
  wire \addr_ctr_reg_n_0_[8] ;
  wire \addr_ctr_reg_n_0_[9] ;
  wire [23:0]dbg_left_audio_rx_o;
  wire dds_enable_i;
  wire dds_reset_i;
  wire lrclk_o;
  wire [3:3]\NLW_addr_ctr_reg[11]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_2 
       (.I0(\addr_ctr_reg_n_0_[11] ),
        .I1(Q[11]),
        .O(\addr_ctr[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_3 
       (.I0(\addr_ctr_reg_n_0_[10] ),
        .I1(Q[10]),
        .O(\addr_ctr[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_4 
       (.I0(\addr_ctr_reg_n_0_[9] ),
        .I1(Q[9]),
        .O(\addr_ctr[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_5 
       (.I0(\addr_ctr_reg_n_0_[8] ),
        .I1(Q[8]),
        .O(\addr_ctr[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_2 
       (.I0(\addr_ctr_reg_n_0_[3] ),
        .I1(Q[3]),
        .O(\addr_ctr[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_3 
       (.I0(\addr_ctr_reg_n_0_[2] ),
        .I1(Q[2]),
        .O(\addr_ctr[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_4 
       (.I0(\addr_ctr_reg_n_0_[1] ),
        .I1(Q[1]),
        .O(\addr_ctr[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_5 
       (.I0(\addr_ctr_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(\addr_ctr[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_2 
       (.I0(\addr_ctr_reg_n_0_[7] ),
        .I1(Q[7]),
        .O(\addr_ctr[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_3 
       (.I0(\addr_ctr_reg_n_0_[6] ),
        .I1(Q[6]),
        .O(\addr_ctr[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_4 
       (.I0(\addr_ctr_reg_n_0_[5] ),
        .I1(Q[5]),
        .O(\addr_ctr[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_5 
       (.I0(\addr_ctr_reg_n_0_[4] ),
        .I1(Q[4]),
        .O(\addr_ctr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[0] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_7 ),
        .Q(\addr_ctr_reg_n_0_[0] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[10] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_5 ),
        .Q(\addr_ctr_reg_n_0_[10] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[11] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_4 ),
        .Q(\addr_ctr_reg_n_0_[11] ),
        .R(dds_reset_i));
  CARRY4 \addr_ctr_reg[11]_i_1 
       (.CI(\addr_ctr_reg[7]_i_1_n_0 ),
        .CO({\NLW_addr_ctr_reg[11]_i_1_CO_UNCONNECTED [3],\addr_ctr_reg[11]_i_1_n_1 ,\addr_ctr_reg[11]_i_1_n_2 ,\addr_ctr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\addr_ctr_reg_n_0_[10] ,\addr_ctr_reg_n_0_[9] ,\addr_ctr_reg_n_0_[8] }),
        .O({\addr_ctr_reg[11]_i_1_n_4 ,\addr_ctr_reg[11]_i_1_n_5 ,\addr_ctr_reg[11]_i_1_n_6 ,\addr_ctr_reg[11]_i_1_n_7 }),
        .S({\addr_ctr[11]_i_2_n_0 ,\addr_ctr[11]_i_3_n_0 ,\addr_ctr[11]_i_4_n_0 ,\addr_ctr[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[1] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_6 ),
        .Q(\addr_ctr_reg_n_0_[1] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[2] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_5 ),
        .Q(\addr_ctr_reg_n_0_[2] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[3] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_4 ),
        .Q(\addr_ctr_reg_n_0_[3] ),
        .R(dds_reset_i));
  CARRY4 \addr_ctr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\addr_ctr_reg[3]_i_1_n_0 ,\addr_ctr_reg[3]_i_1_n_1 ,\addr_ctr_reg[3]_i_1_n_2 ,\addr_ctr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\addr_ctr_reg_n_0_[3] ,\addr_ctr_reg_n_0_[2] ,\addr_ctr_reg_n_0_[1] ,\addr_ctr_reg_n_0_[0] }),
        .O({\addr_ctr_reg[3]_i_1_n_4 ,\addr_ctr_reg[3]_i_1_n_5 ,\addr_ctr_reg[3]_i_1_n_6 ,\addr_ctr_reg[3]_i_1_n_7 }),
        .S({\addr_ctr[3]_i_2_n_0 ,\addr_ctr[3]_i_3_n_0 ,\addr_ctr[3]_i_4_n_0 ,\addr_ctr[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[4] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_7 ),
        .Q(\addr_ctr_reg_n_0_[4] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[5] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_6 ),
        .Q(\addr_ctr_reg_n_0_[5] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[6] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_5 ),
        .Q(\addr_ctr_reg_n_0_[6] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[7] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_4 ),
        .Q(\addr_ctr_reg_n_0_[7] ),
        .R(dds_reset_i));
  CARRY4 \addr_ctr_reg[7]_i_1 
       (.CI(\addr_ctr_reg[3]_i_1_n_0 ),
        .CO({\addr_ctr_reg[7]_i_1_n_0 ,\addr_ctr_reg[7]_i_1_n_1 ,\addr_ctr_reg[7]_i_1_n_2 ,\addr_ctr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\addr_ctr_reg_n_0_[7] ,\addr_ctr_reg_n_0_[6] ,\addr_ctr_reg_n_0_[5] ,\addr_ctr_reg_n_0_[4] }),
        .O({\addr_ctr_reg[7]_i_1_n_4 ,\addr_ctr_reg[7]_i_1_n_5 ,\addr_ctr_reg[7]_i_1_n_6 ,\addr_ctr_reg[7]_i_1_n_7 }),
        .S({\addr_ctr[7]_i_2_n_0 ,\addr_ctr[7]_i_3_n_0 ,\addr_ctr[7]_i_4_n_0 ,\addr_ctr[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[8] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_7 ),
        .Q(\addr_ctr_reg_n_0_[8] ),
        .R(dds_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[9] 
       (.C(lrclk_o),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_6 ),
        .Q(\addr_ctr_reg_n_0_[9] ),
        .R(dds_reset_i));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
  axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0__2 blk_mem_left
       (.addra({\addr_ctr_reg_n_0_[11] ,\addr_ctr_reg_n_0_[10] ,\addr_ctr_reg_n_0_[9] ,\addr_ctr_reg_n_0_[8] ,\addr_ctr_reg_n_0_[7] ,\addr_ctr_reg_n_0_[6] ,\addr_ctr_reg_n_0_[5] ,\addr_ctr_reg_n_0_[4] ,\addr_ctr_reg_n_0_[3] ,\addr_ctr_reg_n_0_[2] ,\addr_ctr_reg_n_0_[1] ,\addr_ctr_reg_n_0_[0] }),
        .clka(lrclk_o),
        .douta(dbg_left_audio_rx_o),
        .ena(dds_enable_i));
endmodule

(* ORIG_REF_NAME = "engs128_axi_dds_S00_AXI" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    s00_axi_rdata,
    Q,
    \right_dds_phase_incr_o_reg[11]_0 ,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_araddr,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [31:0]s00_axi_rdata;
  output [11:0]Q;
  output [11:0]\right_dds_phase_incr_o_reg[11]_0 ;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_araddr;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;

  wire [11:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_reg_lut[0][15]_i_1_n_0 ;
  wire \axi_reg_lut[0][23]_i_1_n_0 ;
  wire \axi_reg_lut[0][31]_i_1_n_0 ;
  wire \axi_reg_lut[0][7]_i_1_n_0 ;
  wire \axi_reg_lut[1][15]_i_1_n_0 ;
  wire \axi_reg_lut[1][23]_i_1_n_0 ;
  wire \axi_reg_lut[1][31]_i_1_n_0 ;
  wire \axi_reg_lut[1][7]_i_1_n_0 ;
  wire \axi_reg_lut[2][15]_i_1_n_0 ;
  wire \axi_reg_lut[2][23]_i_1_n_0 ;
  wire \axi_reg_lut[2][31]_i_1_n_0 ;
  wire \axi_reg_lut[2][7]_i_1_n_0 ;
  wire \axi_reg_lut[3][15]_i_1_n_0 ;
  wire \axi_reg_lut[3][23]_i_1_n_0 ;
  wire \axi_reg_lut[3][31]_i_1_n_0 ;
  wire \axi_reg_lut[3][7]_i_1_n_0 ;
  wire [31:0]\axi_reg_lut_reg[0] ;
  wire [31:0]\axi_reg_lut_reg[1] ;
  wire [31:0]\axi_reg_lut_reg[2] ;
  wire [31:0]\axi_reg_lut_reg[3] ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [31:0]reg_data_out;
  wire reg_rden;
  wire reg_wren__2;
  wire [11:0]\right_dds_phase_incr_o_reg[11]_0 ;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_reg_lut_reg[1] [0]),
        .I1(\axi_reg_lut_reg[0] [0]),
        .I2(\axi_reg_lut_reg[3] [0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_reg_lut_reg[1] [10]),
        .I1(\axi_reg_lut_reg[0] [10]),
        .I2(\axi_reg_lut_reg[3] [10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_reg_lut_reg[1] [11]),
        .I1(\axi_reg_lut_reg[0] [11]),
        .I2(\axi_reg_lut_reg[3] [11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_reg_lut_reg[1] [12]),
        .I1(\axi_reg_lut_reg[0] [12]),
        .I2(\axi_reg_lut_reg[3] [12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_reg_lut_reg[1] [13]),
        .I1(\axi_reg_lut_reg[0] [13]),
        .I2(\axi_reg_lut_reg[3] [13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_reg_lut_reg[1] [14]),
        .I1(\axi_reg_lut_reg[0] [14]),
        .I2(\axi_reg_lut_reg[3] [14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_reg_lut_reg[1] [15]),
        .I1(\axi_reg_lut_reg[0] [15]),
        .I2(\axi_reg_lut_reg[3] [15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_reg_lut_reg[1] [16]),
        .I1(\axi_reg_lut_reg[0] [16]),
        .I2(\axi_reg_lut_reg[3] [16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_reg_lut_reg[1] [17]),
        .I1(\axi_reg_lut_reg[0] [17]),
        .I2(\axi_reg_lut_reg[3] [17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_reg_lut_reg[1] [18]),
        .I1(\axi_reg_lut_reg[0] [18]),
        .I2(\axi_reg_lut_reg[3] [18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_reg_lut_reg[1] [19]),
        .I1(\axi_reg_lut_reg[0] [19]),
        .I2(\axi_reg_lut_reg[3] [19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_reg_lut_reg[1] [1]),
        .I1(\axi_reg_lut_reg[0] [1]),
        .I2(\axi_reg_lut_reg[3] [1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_reg_lut_reg[1] [20]),
        .I1(\axi_reg_lut_reg[0] [20]),
        .I2(\axi_reg_lut_reg[3] [20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_reg_lut_reg[1] [21]),
        .I1(\axi_reg_lut_reg[0] [21]),
        .I2(\axi_reg_lut_reg[3] [21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_reg_lut_reg[1] [22]),
        .I1(\axi_reg_lut_reg[0] [22]),
        .I2(\axi_reg_lut_reg[3] [22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_reg_lut_reg[1] [23]),
        .I1(\axi_reg_lut_reg[0] [23]),
        .I2(\axi_reg_lut_reg[3] [23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_reg_lut_reg[1] [24]),
        .I1(\axi_reg_lut_reg[0] [24]),
        .I2(\axi_reg_lut_reg[3] [24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_reg_lut_reg[1] [25]),
        .I1(\axi_reg_lut_reg[0] [25]),
        .I2(\axi_reg_lut_reg[3] [25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_reg_lut_reg[1] [26]),
        .I1(\axi_reg_lut_reg[0] [26]),
        .I2(\axi_reg_lut_reg[3] [26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_reg_lut_reg[1] [27]),
        .I1(\axi_reg_lut_reg[0] [27]),
        .I2(\axi_reg_lut_reg[3] [27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_reg_lut_reg[1] [28]),
        .I1(\axi_reg_lut_reg[0] [28]),
        .I2(\axi_reg_lut_reg[3] [28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_reg_lut_reg[1] [29]),
        .I1(\axi_reg_lut_reg[0] [29]),
        .I2(\axi_reg_lut_reg[3] [29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_reg_lut_reg[1] [2]),
        .I1(\axi_reg_lut_reg[0] [2]),
        .I2(\axi_reg_lut_reg[3] [2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_reg_lut_reg[1] [30]),
        .I1(\axi_reg_lut_reg[0] [30]),
        .I2(\axi_reg_lut_reg[3] [30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(reg_rden));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_reg_lut_reg[1] [31]),
        .I1(\axi_reg_lut_reg[0] [31]),
        .I2(\axi_reg_lut_reg[3] [31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_reg_lut_reg[1] [3]),
        .I1(\axi_reg_lut_reg[0] [3]),
        .I2(\axi_reg_lut_reg[3] [3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_reg_lut_reg[1] [4]),
        .I1(\axi_reg_lut_reg[0] [4]),
        .I2(\axi_reg_lut_reg[3] [4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_reg_lut_reg[1] [5]),
        .I1(\axi_reg_lut_reg[0] [5]),
        .I2(\axi_reg_lut_reg[3] [5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_reg_lut_reg[1] [6]),
        .I1(\axi_reg_lut_reg[0] [6]),
        .I2(\axi_reg_lut_reg[3] [6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_reg_lut_reg[1] [7]),
        .I1(\axi_reg_lut_reg[0] [7]),
        .I2(\axi_reg_lut_reg[3] [7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_reg_lut_reg[1] [8]),
        .I1(\axi_reg_lut_reg[0] [8]),
        .I2(\axi_reg_lut_reg[3] [8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_reg_lut_reg[1] [9]),
        .I1(\axi_reg_lut_reg[0] [9]),
        .I2(\axi_reg_lut_reg[3] [9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\axi_reg_lut_reg[2] [9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \axi_reg_lut[0][15]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[1]),
        .O(\axi_reg_lut[0][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \axi_reg_lut[0][23]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[2]),
        .O(\axi_reg_lut[0][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \axi_reg_lut[0][31]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[3]),
        .O(\axi_reg_lut[0][31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \axi_reg_lut[0][7]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[0]),
        .O(\axi_reg_lut[0][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_reg_lut[1][15]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[1]),
        .O(\axi_reg_lut[1][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_reg_lut[1][23]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[2]),
        .O(\axi_reg_lut[1][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_reg_lut[1][31]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[3]),
        .O(\axi_reg_lut[1][31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_reg_lut[1][7]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[0]),
        .O(\axi_reg_lut[1][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_reg_lut[2][15]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(\axi_reg_lut[2][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_reg_lut[2][23]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(\axi_reg_lut[2][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_reg_lut[2][31]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(\axi_reg_lut[2][31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_reg_lut[2][7]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(\axi_reg_lut[2][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_reg_lut[3][15]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[1]),
        .O(\axi_reg_lut[3][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_reg_lut[3][23]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[2]),
        .O(\axi_reg_lut[3][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_reg_lut[3][31]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[3]),
        .O(\axi_reg_lut[3][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_reg_lut[3][31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_wvalid),
        .O(reg_wren__2));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_reg_lut[3][7]_i_1 
       (.I0(reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[0]),
        .O(\axi_reg_lut[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_reg_lut_reg[0] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][10] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_reg_lut_reg[0] [10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][11] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_reg_lut_reg[0] [11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][12] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_reg_lut_reg[0] [12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][13] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_reg_lut_reg[0] [13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][14] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_reg_lut_reg[0] [14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][15] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_reg_lut_reg[0] [15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][16] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_reg_lut_reg[0] [16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][17] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_reg_lut_reg[0] [17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][18] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_reg_lut_reg[0] [18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][19] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_reg_lut_reg[0] [19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_reg_lut_reg[0] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][20] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_reg_lut_reg[0] [20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][21] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_reg_lut_reg[0] [21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][22] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_reg_lut_reg[0] [22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][23] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_reg_lut_reg[0] [23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][24] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_reg_lut_reg[0] [24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][25] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_reg_lut_reg[0] [25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][26] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_reg_lut_reg[0] [26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][27] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_reg_lut_reg[0] [27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][28] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_reg_lut_reg[0] [28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][29] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_reg_lut_reg[0] [29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_reg_lut_reg[0] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][30] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_reg_lut_reg[0] [30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][31] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_reg_lut_reg[0] [31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_reg_lut_reg[0] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_reg_lut_reg[0] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_reg_lut_reg[0] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_reg_lut_reg[0] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_reg_lut_reg[0] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][8] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_reg_lut_reg[0] [8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[0][9] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[0][15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_reg_lut_reg[0] [9]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_reg_lut_reg[1] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][10] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_reg_lut_reg[1] [10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][11] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_reg_lut_reg[1] [11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][12] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_reg_lut_reg[1] [12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][13] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_reg_lut_reg[1] [13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][14] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_reg_lut_reg[1] [14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][15] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_reg_lut_reg[1] [15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][16] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_reg_lut_reg[1] [16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][17] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_reg_lut_reg[1] [17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][18] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_reg_lut_reg[1] [18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][19] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_reg_lut_reg[1] [19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_reg_lut_reg[1] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][20] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_reg_lut_reg[1] [20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][21] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_reg_lut_reg[1] [21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][22] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_reg_lut_reg[1] [22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][23] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_reg_lut_reg[1] [23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][24] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_reg_lut_reg[1] [24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][25] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_reg_lut_reg[1] [25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][26] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_reg_lut_reg[1] [26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][27] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_reg_lut_reg[1] [27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][28] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_reg_lut_reg[1] [28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][29] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_reg_lut_reg[1] [29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_reg_lut_reg[1] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][30] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_reg_lut_reg[1] [30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][31] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_reg_lut_reg[1] [31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_reg_lut_reg[1] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_reg_lut_reg[1] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_reg_lut_reg[1] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_reg_lut_reg[1] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_reg_lut_reg[1] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][8] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_reg_lut_reg[1] [8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[1][9] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[1][15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_reg_lut_reg[1] [9]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_reg_lut_reg[2] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][10] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_reg_lut_reg[2] [10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][11] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_reg_lut_reg[2] [11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][12] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_reg_lut_reg[2] [12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][13] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_reg_lut_reg[2] [13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][14] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_reg_lut_reg[2] [14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][15] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_reg_lut_reg[2] [15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][16] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_reg_lut_reg[2] [16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][17] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_reg_lut_reg[2] [17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][18] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_reg_lut_reg[2] [18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][19] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_reg_lut_reg[2] [19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_reg_lut_reg[2] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][20] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_reg_lut_reg[2] [20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][21] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_reg_lut_reg[2] [21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][22] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_reg_lut_reg[2] [22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][23] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_reg_lut_reg[2] [23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][24] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_reg_lut_reg[2] [24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][25] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_reg_lut_reg[2] [25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][26] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_reg_lut_reg[2] [26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][27] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_reg_lut_reg[2] [27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][28] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_reg_lut_reg[2] [28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][29] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_reg_lut_reg[2] [29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_reg_lut_reg[2] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][30] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_reg_lut_reg[2] [30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][31] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_reg_lut_reg[2] [31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_reg_lut_reg[2] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_reg_lut_reg[2] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_reg_lut_reg[2] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_reg_lut_reg[2] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_reg_lut_reg[2] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][8] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_reg_lut_reg[2] [8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[2][9] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[2][15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_reg_lut_reg[2] [9]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_reg_lut_reg[3] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][10] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_reg_lut_reg[3] [10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][11] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_reg_lut_reg[3] [11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][12] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_reg_lut_reg[3] [12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][13] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_reg_lut_reg[3] [13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][14] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_reg_lut_reg[3] [14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][15] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_reg_lut_reg[3] [15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][16] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_reg_lut_reg[3] [16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][17] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_reg_lut_reg[3] [17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][18] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_reg_lut_reg[3] [18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][19] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_reg_lut_reg[3] [19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_reg_lut_reg[3] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][20] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_reg_lut_reg[3] [20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][21] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_reg_lut_reg[3] [21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][22] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_reg_lut_reg[3] [22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][23] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_reg_lut_reg[3] [23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][24] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_reg_lut_reg[3] [24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][25] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_reg_lut_reg[3] [25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][26] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_reg_lut_reg[3] [26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][27] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_reg_lut_reg[3] [27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][28] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_reg_lut_reg[3] [28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][29] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_reg_lut_reg[3] [29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_reg_lut_reg[3] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][30] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_reg_lut_reg[3] [30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][31] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_reg_lut_reg[3] [31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_reg_lut_reg[3] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_reg_lut_reg[3] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_reg_lut_reg[3] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_reg_lut_reg[3] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_reg_lut_reg[3] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][8] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_reg_lut_reg[3] [8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_reg_lut_reg[3][9] 
       (.C(s00_axi_aclk),
        .CE(\axi_reg_lut[3][15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_reg_lut_reg[3] [9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(axi_awready_i_1_n_0));
  FDRE \left_dds_phase_incr_o_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [0]),
        .Q(\right_dds_phase_incr_o_reg[11]_0 [0]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [10]),
        .Q(\right_dds_phase_incr_o_reg[11]_0 [10]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [11]),
        .Q(\right_dds_phase_incr_o_reg[11]_0 [11]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [1]),
        .Q(\right_dds_phase_incr_o_reg[11]_0 [1]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [2]),
        .Q(\right_dds_phase_incr_o_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [3]),
        .Q(\right_dds_phase_incr_o_reg[11]_0 [3]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [4]),
        .Q(\right_dds_phase_incr_o_reg[11]_0 [4]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [5]),
        .Q(\right_dds_phase_incr_o_reg[11]_0 [5]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [6]),
        .Q(\right_dds_phase_incr_o_reg[11]_0 [6]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [7]),
        .Q(\right_dds_phase_incr_o_reg[11]_0 [7]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [8]),
        .Q(\right_dds_phase_incr_o_reg[11]_0 [8]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [9]),
        .Q(\right_dds_phase_incr_o_reg[11]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "i2s_clock_gen" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_i2s_clock_gen
   (bclk_o,
    lrclk_o,
    ac_mclk_o,
    mclk_o,
    ac_bclk_o,
    ac_adc_lrclk_o,
    ac_dac_lrclk_o,
    sysclk_i);
  output bclk_o;
  output lrclk_o;
  output ac_mclk_o;
  output mclk_o;
  output ac_bclk_o;
  output ac_adc_lrclk_o;
  output ac_dac_lrclk_o;
  input sysclk_i;

  wire ac_adc_lrclk_o;
  wire ac_bclk_o;
  wire ac_dac_lrclk_o;
  wire ac_mclk_o;
  wire bclk_o;
  wire lrclk_o;
  wire mclk_o;
  wire sysclk_i;
  wire NLW_adc_lrclk_forward_oddr_R_UNCONNECTED;
  wire NLW_adc_lrclk_forward_oddr_S_UNCONNECTED;
  wire NLW_bclk_forward_oddr_R_UNCONNECTED;
  wire NLW_bclk_forward_oddr_S_UNCONNECTED;
  wire NLW_dac_lrclk_forward_oddr_R_UNCONNECTED;
  wire NLW_dac_lrclk_forward_oddr_S_UNCONNECTED;
  wire NLW_mclk_forward_oddr_R_UNCONNECTED;
  wire NLW_mclk_forward_oddr_S_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    adc_lrclk_forward_oddr
       (.C(lrclk_o),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(ac_adc_lrclk_o),
        .R(NLW_adc_lrclk_forward_oddr_R_UNCONNECTED),
        .S(NLW_adc_lrclk_forward_oddr_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    bclk_forward_oddr
       (.C(bclk_o),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(ac_bclk_o),
        .R(NLW_bclk_forward_oddr_R_UNCONNECTED),
        .S(NLW_bclk_forward_oddr_S_UNCONNECTED));
  axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider_falling_edge clk_divider_falling_edge_inst
       (.\clock_counter_reg[0]_0 (bclk_o),
        .lrclk_o(lrclk_o));
  axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider clk_divider_inst
       (.bclk_o(bclk_o),
        .mclk_o(mclk_o));
  axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0 clk_wiz_inst
       (.mclk_o(mclk_o),
        .sysclk_i(sysclk_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    dac_lrclk_forward_oddr
       (.C(lrclk_o),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(ac_dac_lrclk_o),
        .R(NLW_dac_lrclk_forward_oddr_R_UNCONNECTED),
        .S(NLW_dac_lrclk_forward_oddr_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    mclk_forward_oddr
       (.C(mclk_o),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(ac_mclk_o),
        .R(NLW_mclk_forward_oddr_R_UNCONNECTED),
        .S(NLW_mclk_forward_oddr_S_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "i2s_transmitter" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_i2s_transmitter
   (\FSM_sequential_curr_state_reg[1]_0 ,
    ac_dac_data_o,
    lrclk_o,
    CLK,
    D);
  output [1:0]\FSM_sequential_curr_state_reg[1]_0 ;
  output ac_dac_data_o;
  input lrclk_o;
  input CLK;
  input [23:0]D;

  wire CLK;
  wire [23:0]D;
  wire \FSM_sequential_curr_state[1]_i_1_n_0 ;
  wire [1:0]\FSM_sequential_curr_state_reg[1]_0 ;
  wire ac_dac_data_o;
  wire bit_counter_n_0;
  wire bit_counter_n_1;
  wire [2:2]curr_state;
  wire \input_data[23]_i_1_n_0 ;
  wire \input_data_reg_n_0_[0] ;
  wire \input_data_reg_n_0_[10] ;
  wire \input_data_reg_n_0_[11] ;
  wire \input_data_reg_n_0_[12] ;
  wire \input_data_reg_n_0_[13] ;
  wire \input_data_reg_n_0_[14] ;
  wire \input_data_reg_n_0_[15] ;
  wire \input_data_reg_n_0_[16] ;
  wire \input_data_reg_n_0_[17] ;
  wire \input_data_reg_n_0_[18] ;
  wire \input_data_reg_n_0_[19] ;
  wire \input_data_reg_n_0_[1] ;
  wire \input_data_reg_n_0_[20] ;
  wire \input_data_reg_n_0_[21] ;
  wire \input_data_reg_n_0_[22] ;
  wire \input_data_reg_n_0_[23] ;
  wire \input_data_reg_n_0_[2] ;
  wire \input_data_reg_n_0_[3] ;
  wire \input_data_reg_n_0_[4] ;
  wire \input_data_reg_n_0_[5] ;
  wire \input_data_reg_n_0_[6] ;
  wire \input_data_reg_n_0_[7] ;
  wire \input_data_reg_n_0_[8] ;
  wire \input_data_reg_n_0_[9] ;
  wire lrclk_o;

  LUT4 #(
    .INIT(16'hBF50)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(curr_state),
        .I1(lrclk_o),
        .I2(\FSM_sequential_curr_state_reg[1]_0 [0]),
        .I3(\FSM_sequential_curr_state_reg[1]_0 [1]),
        .O(\FSM_sequential_curr_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "lidlestate:000,lloadregister:001,lshiftdata:010,ridlestate:011,rloadregister:100,rshiftdata:101," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(bit_counter_n_1),
        .Q(\FSM_sequential_curr_state_reg[1]_0 [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "lidlestate:000,lloadregister:001,lshiftdata:010,ridlestate:011,rloadregister:100,rshiftdata:101," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_curr_state_reg[1]_0 [1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "lidlestate:000,lloadregister:001,lshiftdata:010,ridlestate:011,rloadregister:100,rshiftdata:101," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(bit_counter_n_0),
        .Q(curr_state),
        .R(1'b0));
  axi_stream_bd_axis_i2s_wrapper_0_0_counter bit_counter
       (.CLK(CLK),
        .\FSM_sequential_curr_state_reg[2] (bit_counter_n_0),
        .\FSM_sequential_curr_state_reg[2]_0 (bit_counter_n_1),
        .\count_int_reg[0]_0 (\FSM_sequential_curr_state_reg[1]_0 [1]),
        .\count_int_reg[0]_1 (\FSM_sequential_curr_state_reg[1]_0 [0]),
        .curr_state(curr_state),
        .lrclk_o(lrclk_o));
  LUT3 #(
    .INIT(8'h41)) 
    \input_data[23]_i_1 
       (.I0(curr_state),
        .I1(\FSM_sequential_curr_state_reg[1]_0 [1]),
        .I2(\FSM_sequential_curr_state_reg[1]_0 [0]),
        .O(\input_data[23]_i_1_n_0 ));
  FDRE \input_data_reg[0] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[0]),
        .Q(\input_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \input_data_reg[10] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[10]),
        .Q(\input_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \input_data_reg[11] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[11]),
        .Q(\input_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \input_data_reg[12] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[12]),
        .Q(\input_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \input_data_reg[13] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[13]),
        .Q(\input_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \input_data_reg[14] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[14]),
        .Q(\input_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \input_data_reg[15] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[15]),
        .Q(\input_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \input_data_reg[16] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[16]),
        .Q(\input_data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \input_data_reg[17] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[17]),
        .Q(\input_data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \input_data_reg[18] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[18]),
        .Q(\input_data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \input_data_reg[19] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[19]),
        .Q(\input_data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \input_data_reg[1] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[1]),
        .Q(\input_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \input_data_reg[20] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[20]),
        .Q(\input_data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \input_data_reg[21] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[21]),
        .Q(\input_data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \input_data_reg[22] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[22]),
        .Q(\input_data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \input_data_reg[23] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[23]),
        .Q(\input_data_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \input_data_reg[2] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[2]),
        .Q(\input_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \input_data_reg[3] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[3]),
        .Q(\input_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \input_data_reg[4] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[4]),
        .Q(\input_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \input_data_reg[5] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[5]),
        .Q(\input_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \input_data_reg[6] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[6]),
        .Q(\input_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \input_data_reg[7] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[7]),
        .Q(\input_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \input_data_reg[8] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[8]),
        .Q(\input_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \input_data_reg[9] 
       (.C(CLK),
        .CE(\input_data[23]_i_1_n_0 ),
        .D(D[9]),
        .Q(\input_data_reg_n_0_[9] ),
        .R(1'b0));
  axi_stream_bd_axis_i2s_wrapper_0_0_shift_register shift_reg_inst
       (.CLK(CLK),
        .Q({\input_data_reg_n_0_[23] ,\input_data_reg_n_0_[22] ,\input_data_reg_n_0_[21] ,\input_data_reg_n_0_[20] ,\input_data_reg_n_0_[19] ,\input_data_reg_n_0_[18] ,\input_data_reg_n_0_[17] ,\input_data_reg_n_0_[16] ,\input_data_reg_n_0_[15] ,\input_data_reg_n_0_[14] ,\input_data_reg_n_0_[13] ,\input_data_reg_n_0_[12] ,\input_data_reg_n_0_[11] ,\input_data_reg_n_0_[10] ,\input_data_reg_n_0_[9] ,\input_data_reg_n_0_[8] ,\input_data_reg_n_0_[7] ,\input_data_reg_n_0_[6] ,\input_data_reg_n_0_[5] ,\input_data_reg_n_0_[4] ,\input_data_reg_n_0_[3] ,\input_data_reg_n_0_[2] ,\input_data_reg_n_0_[1] ,\input_data_reg_n_0_[0] }),
        .ac_dac_data_o(ac_dac_data_o),
        .curr_state(curr_state),
        .\shift_reg_reg[0]_0 (\FSM_sequential_curr_state_reg[1]_0 [1]),
        .\shift_reg_reg[0]_1 (\FSM_sequential_curr_state_reg[1]_0 [0]));
endmodule

(* ORIG_REF_NAME = "shift_register" *) 
module axi_stream_bd_axis_i2s_wrapper_0_0_shift_register
   (ac_dac_data_o,
    curr_state,
    \shift_reg_reg[0]_0 ,
    \shift_reg_reg[0]_1 ,
    Q,
    CLK);
  output ac_dac_data_o;
  input [0:0]curr_state;
  input \shift_reg_reg[0]_0 ;
  input \shift_reg_reg[0]_1 ;
  input [23:0]Q;
  input CLK;

  wire CLK;
  wire [23:0]Q;
  wire ac_dac_data_o;
  wire [0:0]curr_state;
  wire [22:0]shift_reg;
  wire \shift_reg[0]_i_1_n_0 ;
  wire \shift_reg[10]_i_1_n_0 ;
  wire \shift_reg[11]_i_1_n_0 ;
  wire \shift_reg[12]_i_1_n_0 ;
  wire \shift_reg[13]_i_1_n_0 ;
  wire \shift_reg[14]_i_1_n_0 ;
  wire \shift_reg[15]_i_1_n_0 ;
  wire \shift_reg[16]_i_1_n_0 ;
  wire \shift_reg[17]_i_1_n_0 ;
  wire \shift_reg[18]_i_1_n_0 ;
  wire \shift_reg[19]_i_1_n_0 ;
  wire \shift_reg[1]_i_1_n_0 ;
  wire \shift_reg[20]_i_1_n_0 ;
  wire \shift_reg[21]_i_1_n_0 ;
  wire \shift_reg[22]_i_1_n_0 ;
  wire \shift_reg[23]_i_1_n_0 ;
  wire \shift_reg[23]_i_2_n_0 ;
  wire \shift_reg[2]_i_1_n_0 ;
  wire \shift_reg[3]_i_1_n_0 ;
  wire \shift_reg[4]_i_1_n_0 ;
  wire \shift_reg[5]_i_1_n_0 ;
  wire \shift_reg[6]_i_1_n_0 ;
  wire \shift_reg[7]_i_1_n_0 ;
  wire \shift_reg[8]_i_1_n_0 ;
  wire \shift_reg[9]_i_1_n_0 ;
  wire \shift_reg_reg[0]_0 ;
  wire \shift_reg_reg[0]_1 ;

  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[0]_i_1 
       (.I0(Q[0]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(ac_dac_data_o),
        .O(\shift_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[10]_i_1 
       (.I0(Q[10]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[9]),
        .O(\shift_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[11]_i_1 
       (.I0(Q[11]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[10]),
        .O(\shift_reg[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[12]_i_1 
       (.I0(Q[12]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[11]),
        .O(\shift_reg[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[13]_i_1 
       (.I0(Q[13]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[12]),
        .O(\shift_reg[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[14]_i_1 
       (.I0(Q[14]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[13]),
        .O(\shift_reg[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[15]_i_1 
       (.I0(Q[15]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[14]),
        .O(\shift_reg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[16]_i_1 
       (.I0(Q[16]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[15]),
        .O(\shift_reg[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[17]_i_1 
       (.I0(Q[17]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[16]),
        .O(\shift_reg[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[18]_i_1 
       (.I0(Q[18]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[17]),
        .O(\shift_reg[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[19]_i_1 
       (.I0(Q[19]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[18]),
        .O(\shift_reg[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[0]),
        .O(\shift_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[20]_i_1 
       (.I0(Q[20]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[19]),
        .O(\shift_reg[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[21]_i_1 
       (.I0(Q[21]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[20]),
        .O(\shift_reg[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[22]_i_1 
       (.I0(Q[22]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[21]),
        .O(\shift_reg[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h36)) 
    \shift_reg[23]_i_1 
       (.I0(curr_state),
        .I1(\shift_reg_reg[0]_0 ),
        .I2(\shift_reg_reg[0]_1 ),
        .O(\shift_reg[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[23]_i_2 
       (.I0(Q[23]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[22]),
        .O(\shift_reg[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[1]),
        .O(\shift_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[2]),
        .O(\shift_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[4]_i_1 
       (.I0(Q[4]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[3]),
        .O(\shift_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[5]_i_1 
       (.I0(Q[5]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[4]),
        .O(\shift_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[6]_i_1 
       (.I0(Q[6]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[5]),
        .O(\shift_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[7]_i_1 
       (.I0(Q[7]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[6]),
        .O(\shift_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[8]_i_1 
       (.I0(Q[8]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[7]),
        .O(\shift_reg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[9]_i_1 
       (.I0(Q[9]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(shift_reg[8]),
        .O(\shift_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[0] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[0]_i_1_n_0 ),
        .Q(shift_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[10] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[10]_i_1_n_0 ),
        .Q(shift_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[11] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[11]_i_1_n_0 ),
        .Q(shift_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[12] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[12]_i_1_n_0 ),
        .Q(shift_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[13] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[13]_i_1_n_0 ),
        .Q(shift_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[14] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[14]_i_1_n_0 ),
        .Q(shift_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[15] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[15]_i_1_n_0 ),
        .Q(shift_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[16] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[16]_i_1_n_0 ),
        .Q(shift_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[17] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[17]_i_1_n_0 ),
        .Q(shift_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[18] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[18]_i_1_n_0 ),
        .Q(shift_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[19] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[19]_i_1_n_0 ),
        .Q(shift_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[1] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[1]_i_1_n_0 ),
        .Q(shift_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[20] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[20]_i_1_n_0 ),
        .Q(shift_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[21] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[21]_i_1_n_0 ),
        .Q(shift_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[22] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[22]_i_1_n_0 ),
        .Q(shift_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[23] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[23]_i_2_n_0 ),
        .Q(ac_dac_data_o),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[2] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[2]_i_1_n_0 ),
        .Q(shift_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[3] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[3]_i_1_n_0 ),
        .Q(shift_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[4] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[4]_i_1_n_0 ),
        .Q(shift_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[5] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[5]_i_1_n_0 ),
        .Q(shift_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[6] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[6]_i_1_n_0 ),
        .Q(shift_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[7] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[7]_i_1_n_0 ),
        .Q(shift_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[8] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[8]_i_1_n_0 ),
        .Q(shift_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[9] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1_n_0 ),
        .D(\shift_reg[9]_i_1_n_0 ),
        .Q(shift_reg[9]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 123920)
`pragma protect data_block
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
4q8=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
