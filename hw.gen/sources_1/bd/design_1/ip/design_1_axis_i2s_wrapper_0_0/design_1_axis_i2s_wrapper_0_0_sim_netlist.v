// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Jun  4 03:35:43 2025
// Host        : m210-17 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               o:/ENGS128/james_vers_final/hw.gen/sources_1/bd/design_1/ip/design_1_axis_i2s_wrapper_0_0/design_1_axis_i2s_wrapper_0_0_sim_netlist.v
// Design      : design_1_axis_i2s_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axis_i2s_wrapper_0_0,axis_i2s_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_i2s_wrapper,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_axis_i2s_wrapper_0_0
   (sysclk_i,
    ac_mute_en_i,
    dds_enable_i,
    ac_bclk_o,
    ac_mclk_o,
    ac_mute_n_o,
    ac_dac_data_o,
    ac_dac_lrclk_o,
    ac_adc_data_i,
    ac_adc_lrclk_o,
    lrclk_o,
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
    left_dds_phase_inc_dbg_o,
    dbg_right_audio_rx_o,
    right_dds_phase_inc_dbg_o,
    lrclk_dbg);
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m00_axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis_aclk, ASSOCIATED_BUSIF m00_axis, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m00_axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  output [23:0]dbg_left_audio_rx_o;
  output [11:0]left_dds_phase_inc_dbg_o;
  output [23:0]dbg_right_audio_rx_o;
  output [11:0]right_dds_phase_inc_dbg_o;
  output lrclk_dbg;

  wire \<const0> ;
  wire \<const1> ;
  wire ac_adc_data_i;
  wire ac_adc_lrclk_o;
  wire ac_bclk_o;
  wire ac_dac_data_o;
  wire ac_dac_lrclk_o;
  wire ac_mclk_o;
  wire [23:0]dbg_left_audio_rx_o;
  wire [23:0]dbg_right_audio_rx_o;
  wire dds_enable_i;
  wire [11:0]left_dds_phase_inc_dbg_o;
  wire lrclk_dbg;
  wire lrclk_o;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]\^m00_axis_tdata ;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [11:0]right_dds_phase_inc_dbg_o;
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
  (* IBUF_LOW_PWR *) wire sysclk_i;
  wire NLW_inst_ac_mute_n_o_UNCONNECTED;
  wire [7:1]NLW_inst_m00_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_inst_m00_axis_tstrb_UNCONNECTED;
  wire [1:0]NLW_inst_s00_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s00_axi_rresp_UNCONNECTED;

  assign ac_mute_n_o = \<const1> ;
  assign m00_axis_tdata[31:8] = \^m00_axis_tdata [31:8];
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \^m00_axis_tdata [0];
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
  VCC VCC
       (.P(\<const1> ));
  (* AC_DATA_WIDTH = "24" *) 
  (* C_AXI_STREAM_DATA_WIDTH = "32" *) 
  (* C_S00_AXI_ADDR_WIDTH = "4" *) 
  (* PHASE_DATA_WIDTH = "12" *) 
  design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper inst
       (.ac_adc_data_i(ac_adc_data_i),
        .ac_adc_lrclk_o(ac_adc_lrclk_o),
        .ac_bclk_o(ac_bclk_o),
        .ac_dac_data_o(ac_dac_data_o),
        .ac_dac_lrclk_o(ac_dac_lrclk_o),
        .ac_mclk_o(ac_mclk_o),
        .ac_mute_en_i(1'b0),
        .ac_mute_n_o(NLW_inst_ac_mute_n_o_UNCONNECTED),
        .dbg_left_audio_rx_o(dbg_left_audio_rx_o),
        .dbg_right_audio_rx_o(dbg_right_audio_rx_o),
        .dds_enable_i(dds_enable_i),
        .left_dds_phase_inc_dbg_o(left_dds_phase_inc_dbg_o),
        .lrclk_dbg(lrclk_dbg),
        .lrclk_o(lrclk_o),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(\^m00_axis_tdata ),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tstrb(NLW_inst_m00_axis_tstrb_UNCONNECTED[3:0]),
        .m00_axis_tvalid(m00_axis_tvalid),
        .right_dds_phase_inc_dbg_o(right_dds_phase_inc_dbg_o),
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
        .sysclk_i(sysclk_i));
endmodule

(* ORIG_REF_NAME = "axi_dds" *) 
module design_1_axis_i2s_wrapper_0_0_axi_dds
   (dbg_left_audio_rx_o,
    dbg_right_audio_rx_o,
    axi_awready_reg,
    axi_wready_reg,
    axi_arready_reg,
    s00_axi_bvalid,
    s00_axi_rvalid,
    D,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    left_dds_phase_inc_dbg_o,
    right_dds_phase_inc_dbg_o,
    s00_axi_rdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    dds_enable_i,
    s00_axi_aclk,
    Q,
    \left_axi_tx_reg[23] ,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output [23:0]dbg_left_audio_rx_o;
  output [23:0]dbg_right_audio_rx_o;
  output axi_awready_reg;
  output axi_wready_reg;
  output axi_arready_reg;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [23:0]D;
  output [23:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [11:0]left_dds_phase_inc_dbg_o;
  output [11:0]right_dds_phase_inc_dbg_o;
  output [31:0]s00_axi_rdata;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input dds_enable_i;
  input s00_axi_aclk;
  input [23:0]Q;
  input [23:0]\left_axi_tx_reg[23] ;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [23:0]D;
  wire [23:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [23:0]Q;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire [23:0]dbg_left_audio_rx_o;
  wire [23:0]dbg_right_audio_rx_o;
  wire dds_enable_i;
  wire [23:0]\left_axi_tx_reg[23] ;
  wire [11:0]left_dds_phase_inc_dbg_o;
  wire [11:0]right_dds_phase_inc_dbg_o;
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

  design_1_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI engs128_axi_dds_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_wready_reg_0(axi_wready_reg),
        .left_dds_phase_inc_dbg_o(left_dds_phase_inc_dbg_o),
        .right_dds_phase_inc_dbg_o(right_dds_phase_inc_dbg_o),
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
  design_1_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1 left_audio_dds
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\addr_ctr_reg[11]_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .dbg_left_audio_rx_o(dbg_left_audio_rx_o),
        .dds_enable_i(dds_enable_i),
        .\left_axi_tx_reg[23] (\left_axi_tx_reg[23] ),
        .left_dds_phase_inc_dbg_o(left_dds_phase_inc_dbg_o));
  design_1_axis_i2s_wrapper_0_0_dds_controller right_audio_dds
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .Q(Q),
        .dbg_right_audio_rx_o(dbg_right_audio_rx_o),
        .dds_enable_i(dds_enable_i),
        .right_dds_phase_inc_dbg_o(right_dds_phase_inc_dbg_o));
endmodule

(* AC_DATA_WIDTH = "24" *) (* C_AXI_STREAM_DATA_WIDTH = "32" *) (* C_S00_AXI_ADDR_WIDTH = "4" *) 
(* ORIG_REF_NAME = "axis_i2s_wrapper" *) (* PHASE_DATA_WIDTH = "12" *) 
module design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper
   (sysclk_i,
    ac_mute_en_i,
    dds_enable_i,
    ac_bclk_o,
    ac_mclk_o,
    ac_mute_n_o,
    ac_dac_data_o,
    ac_dac_lrclk_o,
    ac_adc_data_i,
    ac_adc_lrclk_o,
    lrclk_o,
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
    left_dds_phase_inc_dbg_o,
    dbg_right_audio_rx_o,
    right_dds_phase_inc_dbg_o,
    lrclk_dbg);
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

  wire \<const0> ;
  wire ac_adc_data_i;
  wire ac_adc_lrclk_o;
  wire ac_bclk_o;
  wire ac_dac_data_o;
  wire ac_dac_lrclk_o;
  wire ac_mclk_o;
  wire axis_dds_n_100;
  wire axis_dds_n_53;
  wire axis_dds_n_54;
  wire axis_dds_n_55;
  wire axis_dds_n_56;
  wire axis_dds_n_57;
  wire axis_dds_n_58;
  wire axis_dds_n_59;
  wire axis_dds_n_60;
  wire axis_dds_n_61;
  wire axis_dds_n_62;
  wire axis_dds_n_63;
  wire axis_dds_n_64;
  wire axis_dds_n_65;
  wire axis_dds_n_66;
  wire axis_dds_n_67;
  wire axis_dds_n_68;
  wire axis_dds_n_69;
  wire axis_dds_n_70;
  wire axis_dds_n_71;
  wire axis_dds_n_72;
  wire axis_dds_n_73;
  wire axis_dds_n_74;
  wire axis_dds_n_75;
  wire axis_dds_n_76;
  wire axis_dds_n_77;
  wire axis_dds_n_78;
  wire axis_dds_n_79;
  wire axis_dds_n_80;
  wire axis_dds_n_81;
  wire axis_dds_n_82;
  wire axis_dds_n_83;
  wire axis_dds_n_84;
  wire axis_dds_n_85;
  wire axis_dds_n_86;
  wire axis_dds_n_87;
  wire axis_dds_n_88;
  wire axis_dds_n_89;
  wire axis_dds_n_90;
  wire axis_dds_n_91;
  wire axis_dds_n_92;
  wire axis_dds_n_93;
  wire axis_dds_n_94;
  wire axis_dds_n_95;
  wire axis_dds_n_96;
  wire axis_dds_n_97;
  wire axis_dds_n_98;
  wire axis_dds_n_99;
  wire bclk_o;
  wire [1:0]curr_state;
  wire [23:0]dbg_left_audio_rx_o;
  wire [23:0]dbg_right_audio_rx_o;
  wire dds_enable_i;
  wire [23:0]input_data;
  wire [23:0]left_audio_data_o;
  wire [23:0]left_axi_tx;
  wire [11:0]left_dds_phase_inc_dbg_o;
  wire lrclk_o;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]\^m00_axis_tdata ;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [23:0]right_audio_data_o;
  wire [23:0]right_axi_tx;
  wire [11:0]right_dds_phase_inc_dbg_o;
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
  wire sysclk_i;

  assign ac_mute_n_o = \<const0> ;
  assign lrclk_dbg = lrclk_o;
  assign m00_axis_tdata[31:8] = \^m00_axis_tdata [31:8];
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \^m00_axis_tdata [0];
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
  design_1_axis_i2s_wrapper_0_0_axis_transmitter axi_transmitter
       (.E(m00_axis_tvalid),
        .\Ltemp1_reg[31]_0 (left_axi_tx),
        .Q(right_axi_tx),
        .lrclk_temp1_reg_0(lrclk_o),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata({\^m00_axis_tdata [31:8],\^m00_axis_tdata [0]}),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready));
  design_1_axis_i2s_wrapper_0_0_axi_dds axis_dds
       (.D({axis_dds_n_53,axis_dds_n_54,axis_dds_n_55,axis_dds_n_56,axis_dds_n_57,axis_dds_n_58,axis_dds_n_59,axis_dds_n_60,axis_dds_n_61,axis_dds_n_62,axis_dds_n_63,axis_dds_n_64,axis_dds_n_65,axis_dds_n_66,axis_dds_n_67,axis_dds_n_68,axis_dds_n_69,axis_dds_n_70,axis_dds_n_71,axis_dds_n_72,axis_dds_n_73,axis_dds_n_74,axis_dds_n_75,axis_dds_n_76}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({axis_dds_n_77,axis_dds_n_78,axis_dds_n_79,axis_dds_n_80,axis_dds_n_81,axis_dds_n_82,axis_dds_n_83,axis_dds_n_84,axis_dds_n_85,axis_dds_n_86,axis_dds_n_87,axis_dds_n_88,axis_dds_n_89,axis_dds_n_90,axis_dds_n_91,axis_dds_n_92,axis_dds_n_93,axis_dds_n_94,axis_dds_n_95,axis_dds_n_96,axis_dds_n_97,axis_dds_n_98,axis_dds_n_99,axis_dds_n_100}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (lrclk_o),
        .Q(right_audio_data_o),
        .axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_wready_reg(s00_axi_wready),
        .dbg_left_audio_rx_o(dbg_left_audio_rx_o),
        .dbg_right_audio_rx_o(dbg_right_audio_rx_o),
        .dds_enable_i(dds_enable_i),
        .\left_axi_tx_reg[23] (left_audio_data_o),
        .left_dds_phase_inc_dbg_o(left_dds_phase_inc_dbg_o),
        .right_dds_phase_inc_dbg_o(right_dds_phase_inc_dbg_o),
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
  design_1_axis_i2s_wrapper_0_0_i2s_clock_gen clock_generation
       (.ac_adc_lrclk_o(ac_adc_lrclk_o),
        .ac_bclk_o(ac_bclk_o),
        .ac_dac_lrclk_o(ac_dac_lrclk_o),
        .ac_mclk_o(ac_mclk_o),
        .bclk_o(bclk_o),
        .slow_clock_bufg(lrclk_o),
        .sysclk_i(sysclk_i));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[0] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_100),
        .Q(left_axi_tx[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[10] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_90),
        .Q(left_axi_tx[10]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[11] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_89),
        .Q(left_axi_tx[11]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[12] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_88),
        .Q(left_axi_tx[12]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[13] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_87),
        .Q(left_axi_tx[13]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[14] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_86),
        .Q(left_axi_tx[14]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[15] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_85),
        .Q(left_axi_tx[15]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[16] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_84),
        .Q(left_axi_tx[16]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[17] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_83),
        .Q(left_axi_tx[17]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[18] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_82),
        .Q(left_axi_tx[18]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[19] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_81),
        .Q(left_axi_tx[19]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[1] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_99),
        .Q(left_axi_tx[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[20] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_80),
        .Q(left_axi_tx[20]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[21] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_79),
        .Q(left_axi_tx[21]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[22] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_78),
        .Q(left_axi_tx[22]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[23] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_77),
        .Q(left_axi_tx[23]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[2] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_98),
        .Q(left_axi_tx[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[3] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_97),
        .Q(left_axi_tx[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[4] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_96),
        .Q(left_axi_tx[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[5] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_95),
        .Q(left_axi_tx[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[6] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_94),
        .Q(left_axi_tx[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[7] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_93),
        .Q(left_axi_tx[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[8] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_92),
        .Q(left_axi_tx[8]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \left_axi_tx_reg[9] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_91),
        .Q(left_axi_tx[9]),
        .R(1'b0));
  design_1_axis_i2s_wrapper_0_0_i2s_receiver receiver
       (.CLK(bclk_o),
        .D(input_data),
        .\FSM_sequential_curr_state_reg[0]_0 (lrclk_o),
        .Q(left_audio_data_o),
        .ac_adc_data_i(ac_adc_data_i),
        .curr_state(curr_state),
        .\right_audio_data_o_reg[23]_0 (right_audio_data_o));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[0] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_76),
        .Q(right_axi_tx[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[10] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_66),
        .Q(right_axi_tx[10]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[11] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_65),
        .Q(right_axi_tx[11]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[12] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_64),
        .Q(right_axi_tx[12]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[13] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_63),
        .Q(right_axi_tx[13]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[14] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_62),
        .Q(right_axi_tx[14]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[15] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_61),
        .Q(right_axi_tx[15]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[16] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_60),
        .Q(right_axi_tx[16]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[17] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_59),
        .Q(right_axi_tx[17]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[18] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_58),
        .Q(right_axi_tx[18]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[19] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_57),
        .Q(right_axi_tx[19]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[1] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_75),
        .Q(right_axi_tx[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[20] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_56),
        .Q(right_axi_tx[20]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[21] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_55),
        .Q(right_axi_tx[21]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[22] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_54),
        .Q(right_axi_tx[22]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[23] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_53),
        .Q(right_axi_tx[23]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[2] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_74),
        .Q(right_axi_tx[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[3] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_73),
        .Q(right_axi_tx[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[4] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_72),
        .Q(right_axi_tx[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[5] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_71),
        .Q(right_axi_tx[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[6] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_70),
        .Q(right_axi_tx[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[7] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_69),
        .Q(right_axi_tx[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[8] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_68),
        .Q(right_axi_tx[8]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \right_axi_tx_reg[9] 
       (.C(sysclk_i),
        .CE(1'b1),
        .D(axis_dds_n_67),
        .Q(right_axi_tx[9]),
        .R(1'b0));
  design_1_axis_i2s_wrapper_0_0_i2s_transmitter transmitter
       (.CLK(bclk_o),
        .D(input_data),
        .\FSM_sequential_curr_state_reg[0]_0 (lrclk_o),
        .\FSM_sequential_curr_state_reg[1]_0 (curr_state),
        .ac_dac_data_o(ac_dac_data_o));
endmodule

(* ORIG_REF_NAME = "axis_transmitter" *) 
module design_1_axis_i2s_wrapper_0_0_axis_transmitter
   (E,
    m00_axis_tdata,
    m00_axis_tlast,
    lrclk_temp1_reg_0,
    m00_axis_aclk,
    m00_axis_tready,
    m00_axis_aresetn,
    Q,
    \Ltemp1_reg[31]_0 );
  output [0:0]E;
  output [24:0]m00_axis_tdata;
  output m00_axis_tlast;
  input lrclk_temp1_reg_0;
  input m00_axis_aclk;
  input m00_axis_tready;
  input m00_axis_aresetn;
  input [23:0]Q;
  input [23:0]\Ltemp1_reg[31]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_curr_state[0]_i_1__1_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_1__1_n_0 ;
  wire \FSM_sequential_curr_state[2]_i_1__1_n_0 ;
  wire [31:8]Ltemp1;
  wire [23:0]\Ltemp1_reg[31]_0 ;
  wire [31:8]Ltemp2;
  wire [23:0]Q;
  wire [31:8]Rtemp1;
  wire [31:8]Rtemp2;
  wire [2:0]curr_state;
  wire lrclk_temp1;
  wire lrclk_temp1_reg_0;
  wire lrclk_temp2;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [24:0]m00_axis_tdata;
  wire \m00_axis_tdata[0]_i_1_n_0 ;
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
  wire m00_axis_tlast;
  wire m00_axis_tready;

  LUT6 #(
    .INIT(64'h000000001B001800)) 
    \FSM_sequential_curr_state[0]_i_1__1 
       (.I0(m00_axis_tready),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .I3(m00_axis_aresetn),
        .I4(lrclk_temp2),
        .I5(curr_state[2]),
        .O(\FSM_sequential_curr_state[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00002C00)) 
    \FSM_sequential_curr_state[1]_i_1__1 
       (.I0(m00_axis_tready),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .I3(m00_axis_aresetn),
        .I4(curr_state[2]),
        .O(\FSM_sequential_curr_state[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h10008888)) 
    \FSM_sequential_curr_state[2]_i_1__1 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(m00_axis_aresetn),
        .I3(lrclk_temp2),
        .I4(curr_state[2]),
        .O(\FSM_sequential_curr_state[2]_i_1__1_n_0 ));
  (* FSM_ENCODED_STATES = "ltransmit:001,hold:100,rtransmit:010,readyout:011,idle:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[0]_i_1__1_n_0 ),
        .Q(curr_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ltransmit:001,hold:100,rtransmit:010,readyout:011,idle:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[1]_i_1__1_n_0 ),
        .Q(curr_state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ltransmit:001,hold:100,rtransmit:010,readyout:011,idle:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[2]_i_1__1_n_0 ),
        .Q(curr_state[2]),
        .R(1'b0));
  FDRE \Ltemp1_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [2]),
        .Q(Ltemp1[10]),
        .R(1'b0));
  FDRE \Ltemp1_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [3]),
        .Q(Ltemp1[11]),
        .R(1'b0));
  FDRE \Ltemp1_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [4]),
        .Q(Ltemp1[12]),
        .R(1'b0));
  FDRE \Ltemp1_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [5]),
        .Q(Ltemp1[13]),
        .R(1'b0));
  FDRE \Ltemp1_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [6]),
        .Q(Ltemp1[14]),
        .R(1'b0));
  FDRE \Ltemp1_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [7]),
        .Q(Ltemp1[15]),
        .R(1'b0));
  FDRE \Ltemp1_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [8]),
        .Q(Ltemp1[16]),
        .R(1'b0));
  FDRE \Ltemp1_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [9]),
        .Q(Ltemp1[17]),
        .R(1'b0));
  FDRE \Ltemp1_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [10]),
        .Q(Ltemp1[18]),
        .R(1'b0));
  FDRE \Ltemp1_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [11]),
        .Q(Ltemp1[19]),
        .R(1'b0));
  FDRE \Ltemp1_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [12]),
        .Q(Ltemp1[20]),
        .R(1'b0));
  FDRE \Ltemp1_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [13]),
        .Q(Ltemp1[21]),
        .R(1'b0));
  FDRE \Ltemp1_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [14]),
        .Q(Ltemp1[22]),
        .R(1'b0));
  FDRE \Ltemp1_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [15]),
        .Q(Ltemp1[23]),
        .R(1'b0));
  FDRE \Ltemp1_reg[24] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [16]),
        .Q(Ltemp1[24]),
        .R(1'b0));
  FDRE \Ltemp1_reg[25] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [17]),
        .Q(Ltemp1[25]),
        .R(1'b0));
  FDRE \Ltemp1_reg[26] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [18]),
        .Q(Ltemp1[26]),
        .R(1'b0));
  FDRE \Ltemp1_reg[27] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [19]),
        .Q(Ltemp1[27]),
        .R(1'b0));
  FDRE \Ltemp1_reg[28] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [20]),
        .Q(Ltemp1[28]),
        .R(1'b0));
  FDRE \Ltemp1_reg[29] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [21]),
        .Q(Ltemp1[29]),
        .R(1'b0));
  FDRE \Ltemp1_reg[30] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [22]),
        .Q(Ltemp1[30]),
        .R(1'b0));
  FDRE \Ltemp1_reg[31] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [23]),
        .Q(Ltemp1[31]),
        .R(1'b0));
  FDRE \Ltemp1_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [0]),
        .Q(Ltemp1[8]),
        .R(1'b0));
  FDRE \Ltemp1_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\Ltemp1_reg[31]_0 [1]),
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
        .D(Q[2]),
        .Q(Rtemp1[10]),
        .R(1'b0));
  FDRE \Rtemp1_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Rtemp1[11]),
        .R(1'b0));
  FDRE \Rtemp1_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Rtemp1[12]),
        .R(1'b0));
  FDRE \Rtemp1_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(Rtemp1[13]),
        .R(1'b0));
  FDRE \Rtemp1_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(Rtemp1[14]),
        .R(1'b0));
  FDRE \Rtemp1_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(Rtemp1[15]),
        .R(1'b0));
  FDRE \Rtemp1_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(Rtemp1[16]),
        .R(1'b0));
  FDRE \Rtemp1_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(Rtemp1[17]),
        .R(1'b0));
  FDRE \Rtemp1_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(Rtemp1[18]),
        .R(1'b0));
  FDRE \Rtemp1_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(Rtemp1[19]),
        .R(1'b0));
  FDRE \Rtemp1_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(Rtemp1[20]),
        .R(1'b0));
  FDRE \Rtemp1_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(Rtemp1[21]),
        .R(1'b0));
  FDRE \Rtemp1_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(Rtemp1[22]),
        .R(1'b0));
  FDRE \Rtemp1_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(Rtemp1[23]),
        .R(1'b0));
  FDRE \Rtemp1_reg[24] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(Rtemp1[24]),
        .R(1'b0));
  FDRE \Rtemp1_reg[25] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(Rtemp1[25]),
        .R(1'b0));
  FDRE \Rtemp1_reg[26] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(Rtemp1[26]),
        .R(1'b0));
  FDRE \Rtemp1_reg[27] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(Rtemp1[27]),
        .R(1'b0));
  FDRE \Rtemp1_reg[28] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(Rtemp1[28]),
        .R(1'b0));
  FDRE \Rtemp1_reg[29] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(Rtemp1[29]),
        .R(1'b0));
  FDRE \Rtemp1_reg[30] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(Rtemp1[30]),
        .R(1'b0));
  FDRE \Rtemp1_reg[31] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(Rtemp1[31]),
        .R(1'b0));
  FDRE \Rtemp1_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Rtemp1[8]),
        .R(1'b0));
  FDRE \Rtemp1_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(Q[1]),
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
        .D(lrclk_temp1_reg_0),
        .Q(lrclk_temp1),
        .R(1'b0));
  FDRE lrclk_temp2_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(lrclk_temp1),
        .Q(lrclk_temp2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m00_axis_tdata[0]_i_1 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .O(\m00_axis_tdata[0]_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[0] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[0]_i_1_n_0 ),
        .Q(m00_axis_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[10] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[10]_i_1_n_0 ),
        .Q(m00_axis_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[11] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[11]_i_1_n_0 ),
        .Q(m00_axis_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[12] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[12]_i_1_n_0 ),
        .Q(m00_axis_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[13] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[13]_i_1_n_0 ),
        .Q(m00_axis_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[14] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[14]_i_1_n_0 ),
        .Q(m00_axis_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[15] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[15]_i_1_n_0 ),
        .Q(m00_axis_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[16] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[16]_i_1_n_0 ),
        .Q(m00_axis_tdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[17] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[17]_i_1_n_0 ),
        .Q(m00_axis_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[18] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[18]_i_1_n_0 ),
        .Q(m00_axis_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[19] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[19]_i_1_n_0 ),
        .Q(m00_axis_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[20] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[20]_i_1_n_0 ),
        .Q(m00_axis_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[21] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[21]_i_1_n_0 ),
        .Q(m00_axis_tdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[22] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[22]_i_1_n_0 ),
        .Q(m00_axis_tdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[23] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[23]_i_1_n_0 ),
        .Q(m00_axis_tdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[24] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[24]_i_1_n_0 ),
        .Q(m00_axis_tdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[25] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[25]_i_1_n_0 ),
        .Q(m00_axis_tdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[26] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[26]_i_1_n_0 ),
        .Q(m00_axis_tdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[27] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[27]_i_1_n_0 ),
        .Q(m00_axis_tdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[28] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[28]_i_1_n_0 ),
        .Q(m00_axis_tdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[29] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[29]_i_1_n_0 ),
        .Q(m00_axis_tdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[30] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[30]_i_1_n_0 ),
        .Q(m00_axis_tdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[31] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[31]_i_1_n_0 ),
        .Q(m00_axis_tdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[8] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[8]_i_1_n_0 ),
        .Q(m00_axis_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[9] 
       (.C(m00_axis_aclk),
        .CE(E),
        .D(\m00_axis_tdata[9]_i_1_n_0 ),
        .Q(m00_axis_tdata[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    m00_axis_tlast__0
       (.I0(curr_state[2]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .O(m00_axis_tlast));
  LUT3 #(
    .INIT(8'h06)) 
    m00_axis_tvalid_INST_0
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(curr_state[2]),
        .O(E));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_0" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
module design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0
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
  design_1_axis_i2s_wrapper_0_0_blk_mem_gen_v8_4_5 U0
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
module design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0__2
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
  design_1_axis_i2s_wrapper_0_0_blk_mem_gen_v8_4_5__2 U0
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
module design_1_axis_i2s_wrapper_0_0_clk_wiz_0
   (mclk_o,
    sysclk_i);
  output mclk_o;
  input sysclk_i;

  wire mclk_o;
  wire sysclk_i;

  design_1_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz inst
       (.mclk_o(mclk_o),
        .sysclk_i(sysclk_i));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module design_1_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz
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
module design_1_axis_i2s_wrapper_0_0_clock_divider
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

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
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
module design_1_axis_i2s_wrapper_0_0_clock_divider_falling_edge
   (slow_clock_bufg_0,
    \clock_counter_reg[0]_0 );
  output slow_clock_bufg_0;
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
  wire [4:0]plusOp;
  wire slow_clock_bufg_0;
  wire unbuffered_clk_i_1_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1 
       (.I0(\clock_counter_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_1 
       (.I0(\clock_counter_reg_n_0_[0] ),
        .I1(\clock_counter_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clock_counter[2]_i_1 
       (.I0(\clock_counter_reg_n_0_[1] ),
        .I1(\clock_counter_reg_n_0_[0] ),
        .I2(\clock_counter_reg_n_0_[2] ),
        .O(\clock_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
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
        .O(slow_clock_bufg_0));
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
module design_1_axis_i2s_wrapper_0_0_counter
   (\FSM_sequential_curr_state_reg[2] ,
    \FSM_sequential_curr_state_reg[2]_0 ,
    \count_int_reg[0]_0 ,
    \count_int_reg[0]_1 ,
    curr_state,
    \FSM_sequential_curr_state_reg[0] ,
    CLK);
  output \FSM_sequential_curr_state_reg[2] ;
  output \FSM_sequential_curr_state_reg[2]_0 ;
  input \count_int_reg[0]_0 ;
  input \count_int_reg[0]_1 ;
  input [0:0]curr_state;
  input \FSM_sequential_curr_state_reg[0] ;
  input CLK;

  wire CLK;
  wire \FSM_sequential_curr_state_reg[0] ;
  wire \FSM_sequential_curr_state_reg[2] ;
  wire \FSM_sequential_curr_state_reg[2]_0 ;
  wire [4:0]count_int;
  wire \count_int[0]_i_1_n_0 ;
  wire \count_int[1]_i_1_n_0 ;
  wire \count_int[2]_i_1_n_0 ;
  wire \count_int[3]_i_1__0_n_0 ;
  wire \count_int[4]_i_3__0_n_0 ;
  wire \count_int_reg[0]_0 ;
  wire \count_int_reg[0]_1 ;
  wire counter_reset;
  wire [0:0]curr_state;
  wire shift_en;
  wire tc_o;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hCF2244CF)) 
    \FSM_sequential_curr_state[0]_i_1__0 
       (.I0(tc_o),
        .I1(curr_state),
        .I2(\FSM_sequential_curr_state_reg[0] ),
        .I3(\count_int_reg[0]_1 ),
        .I4(\count_int_reg[0]_0 ),
        .O(\FSM_sequential_curr_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFCCC44CC)) 
    \FSM_sequential_curr_state[2]_i_1__0 
       (.I0(tc_o),
        .I1(curr_state),
        .I2(\FSM_sequential_curr_state_reg[0] ),
        .I3(\count_int_reg[0]_1 ),
        .I4(\count_int_reg[0]_0 ),
        .O(\FSM_sequential_curr_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_curr_state[2]_i_2 
       (.I0(count_int[3]),
        .I1(count_int[4]),
        .I2(count_int[2]),
        .I3(count_int[0]),
        .I4(count_int[1]),
        .O(tc_o));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_int[0]_i_1 
       (.I0(count_int[0]),
        .O(\count_int[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_int[1]_i_1 
       (.I0(count_int[0]),
        .I1(count_int[1]),
        .O(\count_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_int[2]_i_1 
       (.I0(count_int[0]),
        .I1(count_int[1]),
        .I2(count_int[2]),
        .O(\count_int[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h3FFF4000)) 
    \count_int[3]_i_1__0 
       (.I0(count_int[4]),
        .I1(count_int[0]),
        .I2(count_int[1]),
        .I3(count_int[2]),
        .I4(count_int[3]),
        .O(\count_int[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \count_int[4]_i_1__0 
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h6AAA2AAA)) 
    \count_int[4]_i_3__0 
       (.I0(count_int[4]),
        .I1(count_int[0]),
        .I2(count_int[1]),
        .I3(count_int[2]),
        .I4(count_int[3]),
        .O(\count_int[4]_i_3__0_n_0 ));
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
        .D(\count_int[3]_i_1__0_n_0 ),
        .Q(count_int[3]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[4] 
       (.C(CLK),
        .CE(shift_en),
        .D(\count_int[4]_i_3__0_n_0 ),
        .Q(count_int[4]),
        .R(counter_reset));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_axis_i2s_wrapper_0_0_counter_0
   (\FSM_sequential_curr_state_reg[0] ,
    \FSM_sequential_curr_state_reg[0]_0 ,
    curr_state_0,
    \FSM_sequential_curr_state_reg[0]_1 ,
    CLK);
  output \FSM_sequential_curr_state_reg[0] ;
  output \FSM_sequential_curr_state_reg[0]_0 ;
  input [2:0]curr_state_0;
  input \FSM_sequential_curr_state_reg[0]_1 ;
  input CLK;

  wire CLK;
  wire \FSM_sequential_curr_state_reg[0] ;
  wire \FSM_sequential_curr_state_reg[0]_0 ;
  wire \FSM_sequential_curr_state_reg[0]_1 ;
  wire [4:0]count_int;
  wire \count_int[0]_i_1__0_n_0 ;
  wire \count_int[1]_i_1__0_n_0 ;
  wire \count_int[2]_i_1__0_n_0 ;
  wire \count_int[3]_i_1_n_0 ;
  wire \count_int[4]_i_2__0_n_0 ;
  wire \count_int[4]_i_3_n_0 ;
  wire counter_reset;
  wire [2:0]curr_state_0;
  wire tc_o;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hA542AF47)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(curr_state_0[0]),
        .I1(tc_o),
        .I2(curr_state_0[2]),
        .I3(curr_state_0[1]),
        .I4(\FSM_sequential_curr_state_reg[0]_1 ),
        .O(\FSM_sequential_curr_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hF508FF08)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(curr_state_0[0]),
        .I1(tc_o),
        .I2(curr_state_0[2]),
        .I3(curr_state_0[1]),
        .I4(\FSM_sequential_curr_state_reg[0]_1 ),
        .O(\FSM_sequential_curr_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_curr_state[1]_i_2 
       (.I0(count_int[3]),
        .I1(count_int[4]),
        .I2(count_int[2]),
        .I3(count_int[0]),
        .I4(count_int[1]),
        .O(tc_o));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_int[0]_i_1__0 
       (.I0(count_int[0]),
        .O(\count_int[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_int[1]_i_1__0 
       (.I0(count_int[0]),
        .I1(count_int[1]),
        .O(\count_int[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_int[2]_i_1__0 
       (.I0(count_int[0]),
        .I1(count_int[1]),
        .I2(count_int[2]),
        .O(\count_int[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
    .INIT(8'h4B)) 
    \count_int[4]_i_1 
       (.I0(curr_state_0[1]),
        .I1(curr_state_0[0]),
        .I2(curr_state_0[2]),
        .O(counter_reset));
  LUT3 #(
    .INIT(8'h06)) 
    \count_int[4]_i_2__0 
       (.I0(curr_state_0[2]),
        .I1(curr_state_0[0]),
        .I2(curr_state_0[1]),
        .O(\count_int[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
        .CE(\count_int[4]_i_2__0_n_0 ),
        .D(\count_int[0]_i_1__0_n_0 ),
        .Q(count_int[0]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[1] 
       (.C(CLK),
        .CE(\count_int[4]_i_2__0_n_0 ),
        .D(\count_int[1]_i_1__0_n_0 ),
        .Q(count_int[1]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[2] 
       (.C(CLK),
        .CE(\count_int[4]_i_2__0_n_0 ),
        .D(\count_int[2]_i_1__0_n_0 ),
        .Q(count_int[2]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[3] 
       (.C(CLK),
        .CE(\count_int[4]_i_2__0_n_0 ),
        .D(\count_int[3]_i_1_n_0 ),
        .Q(count_int[3]),
        .R(counter_reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_int_reg[4] 
       (.C(CLK),
        .CE(\count_int[4]_i_2__0_n_0 ),
        .D(\count_int[4]_i_3_n_0 ),
        .Q(count_int[4]),
        .R(counter_reset));
endmodule

(* ORIG_REF_NAME = "dds_controller" *) 
module design_1_axis_i2s_wrapper_0_0_dds_controller
   (dbg_right_audio_rx_o,
    D,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    dds_enable_i,
    Q,
    right_dds_phase_inc_dbg_o);
  output [23:0]dbg_right_audio_rx_o;
  output [23:0]D;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input dds_enable_i;
  input [23:0]Q;
  input [11:0]right_dds_phase_inc_dbg_o;

  wire [23:0]D;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [23:0]Q;
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
  wire [23:0]dbg_right_audio_rx_o;
  wire dds_enable_i;
  wire [11:0]right_dds_phase_inc_dbg_o;
  wire [3:3]\NLW_addr_ctr_reg[11]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_2 
       (.I0(\addr_ctr_reg_n_0_[11] ),
        .I1(right_dds_phase_inc_dbg_o[11]),
        .O(\addr_ctr[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_3 
       (.I0(\addr_ctr_reg_n_0_[10] ),
        .I1(right_dds_phase_inc_dbg_o[10]),
        .O(\addr_ctr[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_4 
       (.I0(\addr_ctr_reg_n_0_[9] ),
        .I1(right_dds_phase_inc_dbg_o[9]),
        .O(\addr_ctr[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_5 
       (.I0(\addr_ctr_reg_n_0_[8] ),
        .I1(right_dds_phase_inc_dbg_o[8]),
        .O(\addr_ctr[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_2 
       (.I0(\addr_ctr_reg_n_0_[3] ),
        .I1(right_dds_phase_inc_dbg_o[3]),
        .O(\addr_ctr[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_3 
       (.I0(\addr_ctr_reg_n_0_[2] ),
        .I1(right_dds_phase_inc_dbg_o[2]),
        .O(\addr_ctr[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_4 
       (.I0(\addr_ctr_reg_n_0_[1] ),
        .I1(right_dds_phase_inc_dbg_o[1]),
        .O(\addr_ctr[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_5 
       (.I0(\addr_ctr_reg_n_0_[0] ),
        .I1(right_dds_phase_inc_dbg_o[0]),
        .O(\addr_ctr[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_2 
       (.I0(\addr_ctr_reg_n_0_[7] ),
        .I1(right_dds_phase_inc_dbg_o[7]),
        .O(\addr_ctr[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_3 
       (.I0(\addr_ctr_reg_n_0_[6] ),
        .I1(right_dds_phase_inc_dbg_o[6]),
        .O(\addr_ctr[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_4 
       (.I0(\addr_ctr_reg_n_0_[5] ),
        .I1(right_dds_phase_inc_dbg_o[5]),
        .O(\addr_ctr[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_5 
       (.I0(\addr_ctr_reg_n_0_[4] ),
        .I1(right_dds_phase_inc_dbg_o[4]),
        .O(\addr_ctr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[0] 
       (.C(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_7 ),
        .Q(\addr_ctr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[10] 
       (.C(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_5 ),
        .Q(\addr_ctr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[11] 
       (.C(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_4 ),
        .Q(\addr_ctr_reg_n_0_[11] ),
        .R(1'b0));
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
       (.C(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_6 ),
        .Q(\addr_ctr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[2] 
       (.C(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_5 ),
        .Q(\addr_ctr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[3] 
       (.C(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_4 ),
        .Q(\addr_ctr_reg_n_0_[3] ),
        .R(1'b0));
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
       (.C(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_7 ),
        .Q(\addr_ctr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[5] 
       (.C(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_6 ),
        .Q(\addr_ctr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[6] 
       (.C(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_5 ),
        .Q(\addr_ctr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[7] 
       (.C(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_4 ),
        .Q(\addr_ctr_reg_n_0_[7] ),
        .R(1'b0));
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
       (.C(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_7 ),
        .Q(\addr_ctr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[9] 
       (.C(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_6 ),
        .Q(\addr_ctr_reg_n_0_[9] ),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
  design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0 blk_mem_left
       (.addra({\addr_ctr_reg_n_0_[11] ,\addr_ctr_reg_n_0_[10] ,\addr_ctr_reg_n_0_[9] ,\addr_ctr_reg_n_0_[8] ,\addr_ctr_reg_n_0_[7] ,\addr_ctr_reg_n_0_[6] ,\addr_ctr_reg_n_0_[5] ,\addr_ctr_reg_n_0_[4] ,\addr_ctr_reg_n_0_[3] ,\addr_ctr_reg_n_0_[2] ,\addr_ctr_reg_n_0_[1] ,\addr_ctr_reg_n_0_[0] }),
        .clka(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .douta(dbg_right_audio_rx_o),
        .ena(dds_enable_i));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[0]_i_1 
       (.I0(dbg_right_audio_rx_o[0]),
        .I1(Q[0]),
        .I2(dds_enable_i),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[10]_i_1 
       (.I0(dbg_right_audio_rx_o[10]),
        .I1(Q[10]),
        .I2(dds_enable_i),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[11]_i_1 
       (.I0(dbg_right_audio_rx_o[11]),
        .I1(Q[11]),
        .I2(dds_enable_i),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[12]_i_1 
       (.I0(dbg_right_audio_rx_o[12]),
        .I1(Q[12]),
        .I2(dds_enable_i),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[13]_i_1 
       (.I0(dbg_right_audio_rx_o[13]),
        .I1(Q[13]),
        .I2(dds_enable_i),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[14]_i_1 
       (.I0(dbg_right_audio_rx_o[14]),
        .I1(Q[14]),
        .I2(dds_enable_i),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[15]_i_1 
       (.I0(dbg_right_audio_rx_o[15]),
        .I1(Q[15]),
        .I2(dds_enable_i),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[16]_i_1 
       (.I0(dbg_right_audio_rx_o[16]),
        .I1(Q[16]),
        .I2(dds_enable_i),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[17]_i_1 
       (.I0(dbg_right_audio_rx_o[17]),
        .I1(Q[17]),
        .I2(dds_enable_i),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[18]_i_1 
       (.I0(dbg_right_audio_rx_o[18]),
        .I1(Q[18]),
        .I2(dds_enable_i),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[19]_i_1 
       (.I0(dbg_right_audio_rx_o[19]),
        .I1(Q[19]),
        .I2(dds_enable_i),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[1]_i_1 
       (.I0(dbg_right_audio_rx_o[1]),
        .I1(Q[1]),
        .I2(dds_enable_i),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[20]_i_1 
       (.I0(dbg_right_audio_rx_o[20]),
        .I1(Q[20]),
        .I2(dds_enable_i),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[21]_i_1 
       (.I0(dbg_right_audio_rx_o[21]),
        .I1(Q[21]),
        .I2(dds_enable_i),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[22]_i_1 
       (.I0(dbg_right_audio_rx_o[22]),
        .I1(Q[22]),
        .I2(dds_enable_i),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[23]_i_1 
       (.I0(dbg_right_audio_rx_o[23]),
        .I1(Q[23]),
        .I2(dds_enable_i),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[2]_i_1 
       (.I0(dbg_right_audio_rx_o[2]),
        .I1(Q[2]),
        .I2(dds_enable_i),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[3]_i_1 
       (.I0(dbg_right_audio_rx_o[3]),
        .I1(Q[3]),
        .I2(dds_enable_i),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[4]_i_1 
       (.I0(dbg_right_audio_rx_o[4]),
        .I1(Q[4]),
        .I2(dds_enable_i),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[5]_i_1 
       (.I0(dbg_right_audio_rx_o[5]),
        .I1(Q[5]),
        .I2(dds_enable_i),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[6]_i_1 
       (.I0(dbg_right_audio_rx_o[6]),
        .I1(Q[6]),
        .I2(dds_enable_i),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[7]_i_1 
       (.I0(dbg_right_audio_rx_o[7]),
        .I1(Q[7]),
        .I2(dds_enable_i),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[8]_i_1 
       (.I0(dbg_right_audio_rx_o[8]),
        .I1(Q[8]),
        .I2(dds_enable_i),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \right_axi_tx[9]_i_1 
       (.I0(dbg_right_audio_rx_o[9]),
        .I1(Q[9]),
        .I2(dds_enable_i),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "dds_controller" *) 
module design_1_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1
   (dbg_left_audio_rx_o,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \addr_ctr_reg[11]_0 ,
    dds_enable_i,
    \left_axi_tx_reg[23] ,
    left_dds_phase_inc_dbg_o);
  output [23:0]dbg_left_audio_rx_o;
  output [23:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input \addr_ctr_reg[11]_0 ;
  input dds_enable_i;
  input [23:0]\left_axi_tx_reg[23] ;
  input [11:0]left_dds_phase_inc_dbg_o;

  wire [23:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
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
  wire \addr_ctr_reg[11]_0 ;
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
  wire [23:0]\left_axi_tx_reg[23] ;
  wire [11:0]left_dds_phase_inc_dbg_o;
  wire [3:3]\NLW_addr_ctr_reg[11]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_2 
       (.I0(\addr_ctr_reg_n_0_[11] ),
        .I1(left_dds_phase_inc_dbg_o[11]),
        .O(\addr_ctr[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_3 
       (.I0(\addr_ctr_reg_n_0_[10] ),
        .I1(left_dds_phase_inc_dbg_o[10]),
        .O(\addr_ctr[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_4 
       (.I0(\addr_ctr_reg_n_0_[9] ),
        .I1(left_dds_phase_inc_dbg_o[9]),
        .O(\addr_ctr[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[11]_i_5 
       (.I0(\addr_ctr_reg_n_0_[8] ),
        .I1(left_dds_phase_inc_dbg_o[8]),
        .O(\addr_ctr[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_2 
       (.I0(\addr_ctr_reg_n_0_[3] ),
        .I1(left_dds_phase_inc_dbg_o[3]),
        .O(\addr_ctr[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_3 
       (.I0(\addr_ctr_reg_n_0_[2] ),
        .I1(left_dds_phase_inc_dbg_o[2]),
        .O(\addr_ctr[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_4 
       (.I0(\addr_ctr_reg_n_0_[1] ),
        .I1(left_dds_phase_inc_dbg_o[1]),
        .O(\addr_ctr[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[3]_i_5 
       (.I0(\addr_ctr_reg_n_0_[0] ),
        .I1(left_dds_phase_inc_dbg_o[0]),
        .O(\addr_ctr[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_2 
       (.I0(\addr_ctr_reg_n_0_[7] ),
        .I1(left_dds_phase_inc_dbg_o[7]),
        .O(\addr_ctr[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_3 
       (.I0(\addr_ctr_reg_n_0_[6] ),
        .I1(left_dds_phase_inc_dbg_o[6]),
        .O(\addr_ctr[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_4 
       (.I0(\addr_ctr_reg_n_0_[5] ),
        .I1(left_dds_phase_inc_dbg_o[5]),
        .O(\addr_ctr[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addr_ctr[7]_i_5 
       (.I0(\addr_ctr_reg_n_0_[4] ),
        .I1(left_dds_phase_inc_dbg_o[4]),
        .O(\addr_ctr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[0] 
       (.C(\addr_ctr_reg[11]_0 ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_7 ),
        .Q(\addr_ctr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[10] 
       (.C(\addr_ctr_reg[11]_0 ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_5 ),
        .Q(\addr_ctr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[11] 
       (.C(\addr_ctr_reg[11]_0 ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_4 ),
        .Q(\addr_ctr_reg_n_0_[11] ),
        .R(1'b0));
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
       (.C(\addr_ctr_reg[11]_0 ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_6 ),
        .Q(\addr_ctr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[2] 
       (.C(\addr_ctr_reg[11]_0 ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_5 ),
        .Q(\addr_ctr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[3] 
       (.C(\addr_ctr_reg[11]_0 ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[3]_i_1_n_4 ),
        .Q(\addr_ctr_reg_n_0_[3] ),
        .R(1'b0));
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
       (.C(\addr_ctr_reg[11]_0 ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_7 ),
        .Q(\addr_ctr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[5] 
       (.C(\addr_ctr_reg[11]_0 ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_6 ),
        .Q(\addr_ctr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[6] 
       (.C(\addr_ctr_reg[11]_0 ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_5 ),
        .Q(\addr_ctr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[7] 
       (.C(\addr_ctr_reg[11]_0 ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[7]_i_1_n_4 ),
        .Q(\addr_ctr_reg_n_0_[7] ),
        .R(1'b0));
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
       (.C(\addr_ctr_reg[11]_0 ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_7 ),
        .Q(\addr_ctr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_ctr_reg[9] 
       (.C(\addr_ctr_reg[11]_0 ),
        .CE(dds_enable_i),
        .D(\addr_ctr_reg[11]_i_1_n_6 ),
        .Q(\addr_ctr_reg_n_0_[9] ),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
  design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0__2 blk_mem_left
       (.addra({\addr_ctr_reg_n_0_[11] ,\addr_ctr_reg_n_0_[10] ,\addr_ctr_reg_n_0_[9] ,\addr_ctr_reg_n_0_[8] ,\addr_ctr_reg_n_0_[7] ,\addr_ctr_reg_n_0_[6] ,\addr_ctr_reg_n_0_[5] ,\addr_ctr_reg_n_0_[4] ,\addr_ctr_reg_n_0_[3] ,\addr_ctr_reg_n_0_[2] ,\addr_ctr_reg_n_0_[1] ,\addr_ctr_reg_n_0_[0] }),
        .clka(\addr_ctr_reg[11]_0 ),
        .douta(dbg_left_audio_rx_o),
        .ena(dds_enable_i));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[0]_i_1 
       (.I0(dbg_left_audio_rx_o[0]),
        .I1(\left_axi_tx_reg[23] [0]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[10]_i_1 
       (.I0(dbg_left_audio_rx_o[10]),
        .I1(\left_axi_tx_reg[23] [10]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[11]_i_1 
       (.I0(dbg_left_audio_rx_o[11]),
        .I1(\left_axi_tx_reg[23] [11]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[12]_i_1 
       (.I0(dbg_left_audio_rx_o[12]),
        .I1(\left_axi_tx_reg[23] [12]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[13]_i_1 
       (.I0(dbg_left_audio_rx_o[13]),
        .I1(\left_axi_tx_reg[23] [13]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[14]_i_1 
       (.I0(dbg_left_audio_rx_o[14]),
        .I1(\left_axi_tx_reg[23] [14]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[15]_i_1 
       (.I0(dbg_left_audio_rx_o[15]),
        .I1(\left_axi_tx_reg[23] [15]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[16]_i_1 
       (.I0(dbg_left_audio_rx_o[16]),
        .I1(\left_axi_tx_reg[23] [16]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[17]_i_1 
       (.I0(dbg_left_audio_rx_o[17]),
        .I1(\left_axi_tx_reg[23] [17]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[18]_i_1 
       (.I0(dbg_left_audio_rx_o[18]),
        .I1(\left_axi_tx_reg[23] [18]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[19]_i_1 
       (.I0(dbg_left_audio_rx_o[19]),
        .I1(\left_axi_tx_reg[23] [19]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[1]_i_1 
       (.I0(dbg_left_audio_rx_o[1]),
        .I1(\left_axi_tx_reg[23] [1]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[20]_i_1 
       (.I0(dbg_left_audio_rx_o[20]),
        .I1(\left_axi_tx_reg[23] [20]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[21]_i_1 
       (.I0(dbg_left_audio_rx_o[21]),
        .I1(\left_axi_tx_reg[23] [21]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[22]_i_1 
       (.I0(dbg_left_audio_rx_o[22]),
        .I1(\left_axi_tx_reg[23] [22]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[23]_i_1 
       (.I0(dbg_left_audio_rx_o[23]),
        .I1(\left_axi_tx_reg[23] [23]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[2]_i_1 
       (.I0(dbg_left_audio_rx_o[2]),
        .I1(\left_axi_tx_reg[23] [2]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[3]_i_1 
       (.I0(dbg_left_audio_rx_o[3]),
        .I1(\left_axi_tx_reg[23] [3]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[4]_i_1 
       (.I0(dbg_left_audio_rx_o[4]),
        .I1(\left_axi_tx_reg[23] [4]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[5]_i_1 
       (.I0(dbg_left_audio_rx_o[5]),
        .I1(\left_axi_tx_reg[23] [5]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[6]_i_1 
       (.I0(dbg_left_audio_rx_o[6]),
        .I1(\left_axi_tx_reg[23] [6]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[7]_i_1 
       (.I0(dbg_left_audio_rx_o[7]),
        .I1(\left_axi_tx_reg[23] [7]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[8]_i_1 
       (.I0(dbg_left_audio_rx_o[8]),
        .I1(\left_axi_tx_reg[23] [8]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \left_axi_tx[9]_i_1 
       (.I0(dbg_left_audio_rx_o[9]),
        .I1(\left_axi_tx_reg[23] [9]),
        .I2(dds_enable_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [9]));
endmodule

(* ORIG_REF_NAME = "engs128_axi_dds_S00_AXI" *) 
module design_1_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    left_dds_phase_inc_dbg_o,
    right_dds_phase_inc_dbg_o,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [11:0]left_dds_phase_inc_dbg_o;
  output [11:0]right_dds_phase_inc_dbg_o;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

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
  wire [11:0]left_dds_phase_inc_dbg_o;
  wire [31:0]reg_data_out;
  wire reg_rden;
  wire reg_wren__2;
  wire [11:0]right_dds_phase_inc_dbg_o;
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_reg_lut[0][31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_wvalid),
        .O(reg_wren__2));
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
        .Q(left_dds_phase_inc_dbg_o[0]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [10]),
        .Q(left_dds_phase_inc_dbg_o[10]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [11]),
        .Q(left_dds_phase_inc_dbg_o[11]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [1]),
        .Q(left_dds_phase_inc_dbg_o[1]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [2]),
        .Q(left_dds_phase_inc_dbg_o[2]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [3]),
        .Q(left_dds_phase_inc_dbg_o[3]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [4]),
        .Q(left_dds_phase_inc_dbg_o[4]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [5]),
        .Q(left_dds_phase_inc_dbg_o[5]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [6]),
        .Q(left_dds_phase_inc_dbg_o[6]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [7]),
        .Q(left_dds_phase_inc_dbg_o[7]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [8]),
        .Q(left_dds_phase_inc_dbg_o[8]),
        .R(1'b0));
  FDRE \left_dds_phase_incr_o_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[0] [9]),
        .Q(left_dds_phase_inc_dbg_o[9]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [0]),
        .Q(right_dds_phase_inc_dbg_o[0]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [10]),
        .Q(right_dds_phase_inc_dbg_o[10]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [11]),
        .Q(right_dds_phase_inc_dbg_o[11]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [1]),
        .Q(right_dds_phase_inc_dbg_o[1]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [2]),
        .Q(right_dds_phase_inc_dbg_o[2]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [3]),
        .Q(right_dds_phase_inc_dbg_o[3]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [4]),
        .Q(right_dds_phase_inc_dbg_o[4]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [5]),
        .Q(right_dds_phase_inc_dbg_o[5]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [6]),
        .Q(right_dds_phase_inc_dbg_o[6]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [7]),
        .Q(right_dds_phase_inc_dbg_o[7]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [8]),
        .Q(right_dds_phase_inc_dbg_o[8]),
        .R(1'b0));
  FDRE \right_dds_phase_incr_o_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_reg_lut_reg[1] [9]),
        .Q(right_dds_phase_inc_dbg_o[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "i2s_clock_gen" *) 
module design_1_axis_i2s_wrapper_0_0_i2s_clock_gen
   (bclk_o,
    slow_clock_bufg,
    ac_mclk_o,
    ac_bclk_o,
    ac_adc_lrclk_o,
    ac_dac_lrclk_o,
    sysclk_i);
  output bclk_o;
  output slow_clock_bufg;
  output ac_mclk_o;
  output ac_bclk_o;
  output ac_adc_lrclk_o;
  output ac_dac_lrclk_o;
  input sysclk_i;

  wire ac_adc_lrclk_o;
  wire ac_bclk_o;
  wire ac_dac_lrclk_o;
  wire ac_mclk_o;
  wire bclk_o;
  wire mclk_o;
  wire slow_clock_bufg;
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
       (.C(slow_clock_bufg),
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
  design_1_axis_i2s_wrapper_0_0_clock_divider_falling_edge clk_divider_falling_edge_inst
       (.\clock_counter_reg[0]_0 (bclk_o),
        .slow_clock_bufg_0(slow_clock_bufg));
  design_1_axis_i2s_wrapper_0_0_clock_divider clk_divider_inst
       (.bclk_o(bclk_o),
        .mclk_o(mclk_o));
  design_1_axis_i2s_wrapper_0_0_clk_wiz_0 clk_wiz_inst
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
       (.C(slow_clock_bufg),
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

(* ORIG_REF_NAME = "i2s_receiver" *) 
module design_1_axis_i2s_wrapper_0_0_i2s_receiver
   (D,
    Q,
    \right_audio_data_o_reg[23]_0 ,
    curr_state,
    \FSM_sequential_curr_state_reg[0]_0 ,
    CLK,
    ac_adc_data_i);
  output [23:0]D;
  output [23:0]Q;
  output [23:0]\right_audio_data_o_reg[23]_0 ;
  input [1:0]curr_state;
  input \FSM_sequential_curr_state_reg[0]_0 ;
  input CLK;
  input ac_adc_data_i;

  wire CLK;
  wire [23:0]D;
  wire \FSM_sequential_curr_state[2]_i_1_n_0 ;
  wire \FSM_sequential_curr_state_reg[0]_0 ;
  wire [23:0]Q;
  wire ac_adc_data_i;
  wire bit_counter_n_0;
  wire bit_counter_n_1;
  wire [1:0]curr_state;
  wire [2:0]curr_state_0;
  wire [23:0]data_o;
  wire \left_audio_data_o[23]_i_1_n_0 ;
  wire \right_audio_data_o[23]_i_1_n_0 ;
  wire [23:0]\right_audio_data_o_reg[23]_0 ;

  LUT4 #(
    .INIT(16'hE4C4)) 
    \FSM_sequential_curr_state[2]_i_1 
       (.I0(curr_state_0[0]),
        .I1(curr_state_0[2]),
        .I2(curr_state_0[1]),
        .I3(\FSM_sequential_curr_state_reg[0]_0 ),
        .O(\FSM_sequential_curr_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "lidlestate:000,lshift:001,lpush:010,ridlestate:011,rshift:100,rpush:101," *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_curr_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(bit_counter_n_1),
        .Q(curr_state_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "lidlestate:000,lshift:001,lpush:010,ridlestate:011,rshift:100,rpush:101," *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_curr_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(bit_counter_n_0),
        .Q(curr_state_0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "lidlestate:000,lshift:001,lpush:010,ridlestate:011,rshift:100,rpush:101," *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_curr_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[2]_i_1_n_0 ),
        .Q(curr_state_0[2]),
        .R(1'b0));
  design_1_axis_i2s_wrapper_0_0_counter_0 bit_counter
       (.CLK(CLK),
        .\FSM_sequential_curr_state_reg[0] (bit_counter_n_0),
        .\FSM_sequential_curr_state_reg[0]_0 (bit_counter_n_1),
        .\FSM_sequential_curr_state_reg[0]_1 (\FSM_sequential_curr_state_reg[0]_0 ),
        .curr_state_0(curr_state_0));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[0]_i_1 
       (.I0(Q[0]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[10]_i_1 
       (.I0(Q[10]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[11]_i_1 
       (.I0(Q[11]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[12]_i_1 
       (.I0(Q[12]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[13]_i_1 
       (.I0(Q[13]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[14]_i_1 
       (.I0(Q[14]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[15]_i_1 
       (.I0(Q[15]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[16]_i_1 
       (.I0(Q[16]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [16]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[17]_i_1 
       (.I0(Q[17]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [17]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[18]_i_1 
       (.I0(Q[18]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [18]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[19]_i_1 
       (.I0(Q[19]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [19]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[1]_i_1 
       (.I0(Q[1]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[20]_i_1 
       (.I0(Q[20]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [20]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[21]_i_1 
       (.I0(Q[21]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [21]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[22]_i_1 
       (.I0(Q[22]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [22]),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[23]_i_2 
       (.I0(Q[23]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [23]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[2]_i_1 
       (.I0(Q[2]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[3]_i_1 
       (.I0(Q[3]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[4]_i_1 
       (.I0(Q[4]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[5]_i_1 
       (.I0(Q[5]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[6]_i_1 
       (.I0(Q[6]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[7]_i_1 
       (.I0(Q[7]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[8]_i_1 
       (.I0(Q[8]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \input_data[9]_i_1 
       (.I0(Q[9]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(\right_audio_data_o_reg[23]_0 [9]),
        .O(D[9]));
  LUT3 #(
    .INIT(8'h40)) 
    \left_audio_data_o[23]_i_1 
       (.I0(curr_state_0[2]),
        .I1(curr_state_0[0]),
        .I2(curr_state_0[1]),
        .O(\left_audio_data_o[23]_i_1_n_0 ));
  FDRE \left_audio_data_o_reg[0] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[10] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[11] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[12] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[13] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[14] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[15] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[16] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[17] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[18] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[19] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[1] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[20] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[21] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[22] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[23] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[2] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[3] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[4] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[5] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[6] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[7] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[8] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \left_audio_data_o_reg[9] 
       (.C(CLK),
        .CE(\left_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    \right_audio_data_o[23]_i_1 
       (.I0(curr_state_0[1]),
        .I1(curr_state_0[0]),
        .I2(curr_state_0[2]),
        .O(\right_audio_data_o[23]_i_1_n_0 ));
  FDRE \right_audio_data_o_reg[0] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[0]),
        .Q(\right_audio_data_o_reg[23]_0 [0]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[10] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[10]),
        .Q(\right_audio_data_o_reg[23]_0 [10]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[11] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[11]),
        .Q(\right_audio_data_o_reg[23]_0 [11]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[12] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[12]),
        .Q(\right_audio_data_o_reg[23]_0 [12]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[13] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[13]),
        .Q(\right_audio_data_o_reg[23]_0 [13]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[14] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[14]),
        .Q(\right_audio_data_o_reg[23]_0 [14]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[15] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[15]),
        .Q(\right_audio_data_o_reg[23]_0 [15]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[16] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[16]),
        .Q(\right_audio_data_o_reg[23]_0 [16]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[17] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[17]),
        .Q(\right_audio_data_o_reg[23]_0 [17]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[18] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[18]),
        .Q(\right_audio_data_o_reg[23]_0 [18]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[19] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[19]),
        .Q(\right_audio_data_o_reg[23]_0 [19]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[1] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[1]),
        .Q(\right_audio_data_o_reg[23]_0 [1]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[20] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[20]),
        .Q(\right_audio_data_o_reg[23]_0 [20]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[21] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[21]),
        .Q(\right_audio_data_o_reg[23]_0 [21]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[22] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[22]),
        .Q(\right_audio_data_o_reg[23]_0 [22]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[23] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[23]),
        .Q(\right_audio_data_o_reg[23]_0 [23]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[2] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[2]),
        .Q(\right_audio_data_o_reg[23]_0 [2]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[3] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[3]),
        .Q(\right_audio_data_o_reg[23]_0 [3]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[4] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[4]),
        .Q(\right_audio_data_o_reg[23]_0 [4]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[5] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[5]),
        .Q(\right_audio_data_o_reg[23]_0 [5]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[6] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[6]),
        .Q(\right_audio_data_o_reg[23]_0 [6]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[7] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[7]),
        .Q(\right_audio_data_o_reg[23]_0 [7]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[8] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[8]),
        .Q(\right_audio_data_o_reg[23]_0 [8]),
        .R(1'b0));
  FDRE \right_audio_data_o_reg[9] 
       (.C(CLK),
        .CE(\right_audio_data_o[23]_i_1_n_0 ),
        .D(data_o[9]),
        .Q(\right_audio_data_o_reg[23]_0 [9]),
        .R(1'b0));
  design_1_axis_i2s_wrapper_0_0_sipo_shift_register sipo_shift_reg_inst
       (.CLK(CLK),
        .Q(data_o),
        .ac_adc_data_i(ac_adc_data_i),
        .curr_state_0(curr_state_0));
endmodule

(* ORIG_REF_NAME = "i2s_transmitter" *) 
module design_1_axis_i2s_wrapper_0_0_i2s_transmitter
   (\FSM_sequential_curr_state_reg[1]_0 ,
    ac_dac_data_o,
    \FSM_sequential_curr_state_reg[0]_0 ,
    CLK,
    D);
  output [1:0]\FSM_sequential_curr_state_reg[1]_0 ;
  output ac_dac_data_o;
  input \FSM_sequential_curr_state_reg[0]_0 ;
  input CLK;
  input [23:0]D;

  wire CLK;
  wire [23:0]D;
  wire \FSM_sequential_curr_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_curr_state_reg[0]_0 ;
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

  LUT4 #(
    .INIT(16'hBF50)) 
    \FSM_sequential_curr_state[1]_i_1__0 
       (.I0(curr_state),
        .I1(\FSM_sequential_curr_state_reg[0]_0 ),
        .I2(\FSM_sequential_curr_state_reg[1]_0 [0]),
        .I3(\FSM_sequential_curr_state_reg[1]_0 [1]),
        .O(\FSM_sequential_curr_state[1]_i_1__0_n_0 ));
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
        .D(\FSM_sequential_curr_state[1]_i_1__0_n_0 ),
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
  design_1_axis_i2s_wrapper_0_0_counter bit_counter
       (.CLK(CLK),
        .\FSM_sequential_curr_state_reg[0] (\FSM_sequential_curr_state_reg[0]_0 ),
        .\FSM_sequential_curr_state_reg[2] (bit_counter_n_0),
        .\FSM_sequential_curr_state_reg[2]_0 (bit_counter_n_1),
        .\count_int_reg[0]_0 (\FSM_sequential_curr_state_reg[1]_0 [1]),
        .\count_int_reg[0]_1 (\FSM_sequential_curr_state_reg[1]_0 [0]),
        .curr_state(curr_state));
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
  design_1_axis_i2s_wrapper_0_0_shift_register shift_reg_inst
       (.CLK(CLK),
        .Q({\input_data_reg_n_0_[23] ,\input_data_reg_n_0_[22] ,\input_data_reg_n_0_[21] ,\input_data_reg_n_0_[20] ,\input_data_reg_n_0_[19] ,\input_data_reg_n_0_[18] ,\input_data_reg_n_0_[17] ,\input_data_reg_n_0_[16] ,\input_data_reg_n_0_[15] ,\input_data_reg_n_0_[14] ,\input_data_reg_n_0_[13] ,\input_data_reg_n_0_[12] ,\input_data_reg_n_0_[11] ,\input_data_reg_n_0_[10] ,\input_data_reg_n_0_[9] ,\input_data_reg_n_0_[8] ,\input_data_reg_n_0_[7] ,\input_data_reg_n_0_[6] ,\input_data_reg_n_0_[5] ,\input_data_reg_n_0_[4] ,\input_data_reg_n_0_[3] ,\input_data_reg_n_0_[2] ,\input_data_reg_n_0_[1] ,\input_data_reg_n_0_[0] }),
        .ac_dac_data_o(ac_dac_data_o),
        .curr_state(curr_state),
        .\shift_reg_reg[0]_0 (\FSM_sequential_curr_state_reg[1]_0 [1]),
        .\shift_reg_reg[0]_1 (\FSM_sequential_curr_state_reg[1]_0 [0]));
endmodule

(* ORIG_REF_NAME = "shift_register" *) 
module design_1_axis_i2s_wrapper_0_0_shift_register
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
  wire \shift_reg[23]_i_1__0_n_0 ;
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
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[10] ;
  wire \shift_reg_reg_n_0_[11] ;
  wire \shift_reg_reg_n_0_[12] ;
  wire \shift_reg_reg_n_0_[13] ;
  wire \shift_reg_reg_n_0_[14] ;
  wire \shift_reg_reg_n_0_[15] ;
  wire \shift_reg_reg_n_0_[16] ;
  wire \shift_reg_reg_n_0_[17] ;
  wire \shift_reg_reg_n_0_[18] ;
  wire \shift_reg_reg_n_0_[19] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[20] ;
  wire \shift_reg_reg_n_0_[21] ;
  wire \shift_reg_reg_n_0_[22] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[3] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \shift_reg_reg_n_0_[5] ;
  wire \shift_reg_reg_n_0_[6] ;
  wire \shift_reg_reg_n_0_[7] ;
  wire \shift_reg_reg_n_0_[8] ;
  wire \shift_reg_reg_n_0_[9] ;

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
        .I4(\shift_reg_reg_n_0_[9] ),
        .O(\shift_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[11]_i_1 
       (.I0(Q[11]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[10] ),
        .O(\shift_reg[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[12]_i_1 
       (.I0(Q[12]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[11] ),
        .O(\shift_reg[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[13]_i_1 
       (.I0(Q[13]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[12] ),
        .O(\shift_reg[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[14]_i_1 
       (.I0(Q[14]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[13] ),
        .O(\shift_reg[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[15]_i_1 
       (.I0(Q[15]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[14] ),
        .O(\shift_reg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[16]_i_1 
       (.I0(Q[16]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[15] ),
        .O(\shift_reg[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[17]_i_1 
       (.I0(Q[17]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[16] ),
        .O(\shift_reg[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[18]_i_1 
       (.I0(Q[18]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[17] ),
        .O(\shift_reg[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[19]_i_1 
       (.I0(Q[19]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[18] ),
        .O(\shift_reg[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[0] ),
        .O(\shift_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[20]_i_1 
       (.I0(Q[20]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[19] ),
        .O(\shift_reg[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[21]_i_1 
       (.I0(Q[21]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[20] ),
        .O(\shift_reg[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[22]_i_1 
       (.I0(Q[22]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[21] ),
        .O(\shift_reg[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h36)) 
    \shift_reg[23]_i_1__0 
       (.I0(curr_state),
        .I1(\shift_reg_reg[0]_0 ),
        .I2(\shift_reg_reg[0]_1 ),
        .O(\shift_reg[23]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[23]_i_2 
       (.I0(Q[23]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[22] ),
        .O(\shift_reg[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[1] ),
        .O(\shift_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[2] ),
        .O(\shift_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[4]_i_1 
       (.I0(Q[4]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[3] ),
        .O(\shift_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[5]_i_1 
       (.I0(Q[5]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[4] ),
        .O(\shift_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[6]_i_1 
       (.I0(Q[6]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[5] ),
        .O(\shift_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[7]_i_1 
       (.I0(Q[7]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[6] ),
        .O(\shift_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[8]_i_1 
       (.I0(Q[8]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[7] ),
        .O(\shift_reg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \shift_reg[9]_i_1 
       (.I0(Q[9]),
        .I1(curr_state),
        .I2(\shift_reg_reg[0]_1 ),
        .I3(\shift_reg_reg[0]_0 ),
        .I4(\shift_reg_reg_n_0_[8] ),
        .O(\shift_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[0] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[0]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[10] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[10]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[11] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[11]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[12] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[12]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[13] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[13]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[14] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[14]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[15] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[15]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[16] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[16]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[17] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[17]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[18] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[18]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[19] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[19]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[1] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[1]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[20] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[20]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[21] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[21]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[22] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[22]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[23] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[23]_i_2_n_0 ),
        .Q(ac_dac_data_o),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[2] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[2]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[3] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[3]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[4] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[4]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[5] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[5]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[6] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[6]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[7] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[7]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[8] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[8]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shift_reg_reg[9] 
       (.C(CLK),
        .CE(\shift_reg[23]_i_1__0_n_0 ),
        .D(\shift_reg[9]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sipo_shift_register" *) 
module design_1_axis_i2s_wrapper_0_0_sipo_shift_register
   (Q,
    curr_state_0,
    CLK,
    ac_adc_data_i);
  output [23:0]Q;
  input [2:0]curr_state_0;
  input CLK;
  input ac_adc_data_i;

  wire CLK;
  wire [23:0]Q;
  wire ac_adc_data_i;
  wire [2:0]curr_state_0;
  wire load_en;
  wire [23:0]shift_reg;
  wire shift_reg_0;

  LUT3 #(
    .INIT(8'h24)) 
    \data_o[23]_i_1 
       (.I0(curr_state_0[0]),
        .I1(curr_state_0[1]),
        .I2(curr_state_0[2]),
        .O(load_en));
  FDRE \data_o_reg[0] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \data_o_reg[10] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \data_o_reg[11] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \data_o_reg[12] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \data_o_reg[13] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \data_o_reg[14] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \data_o_reg[15] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \data_o_reg[16] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \data_o_reg[17] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \data_o_reg[18] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \data_o_reg[19] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \data_o_reg[1] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \data_o_reg[20] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \data_o_reg[21] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \data_o_reg[22] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \data_o_reg[23] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \data_o_reg[2] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \data_o_reg[3] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \data_o_reg[4] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \data_o_reg[5] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \data_o_reg[6] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \data_o_reg[7] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \data_o_reg[8] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \data_o_reg[9] 
       (.C(CLK),
        .CE(load_en),
        .D(shift_reg[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h12)) 
    \shift_reg[23]_i_1 
       (.I0(curr_state_0[2]),
        .I1(curr_state_0[1]),
        .I2(curr_state_0[0]),
        .O(shift_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(ac_adc_data_i),
        .Q(shift_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[10] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[9]),
        .Q(shift_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[11] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[10]),
        .Q(shift_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[12] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[11]),
        .Q(shift_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[13] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[12]),
        .Q(shift_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[14] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[13]),
        .Q(shift_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[15] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[14]),
        .Q(shift_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[16] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[15]),
        .Q(shift_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[17] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[16]),
        .Q(shift_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[18] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[17]),
        .Q(shift_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[19] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[18]),
        .Q(shift_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[0]),
        .Q(shift_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[20] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[19]),
        .Q(shift_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[21] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[20]),
        .Q(shift_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[22] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[21]),
        .Q(shift_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[23] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[22]),
        .Q(shift_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[1]),
        .Q(shift_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[2]),
        .Q(shift_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[3]),
        .Q(shift_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[4]),
        .Q(shift_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[5]),
        .Q(shift_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[6]),
        .Q(shift_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[8] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[7]),
        .Q(shift_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[9] 
       (.C(CLK),
        .CE(shift_reg_0),
        .D(shift_reg[8]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 123728)
`pragma protect data_block
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
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
