-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_11 -sv \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_13 -sv \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_stream_bd/ip/axi_stream_bd_processing_system7_0_0/sim/axi_stream_bd_processing_system7_0_0.v" \
  "../../../bd/axi_stream_bd/ip/axi_stream_bd_axis_fifo_1_0/sim/axi_stream_bd_axis_fifo_1_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_25 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_24 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_26 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_stream_bd/ip/axi_stream_bd_xbar_0/sim/axi_stream_bd_xbar_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_stream_bd/ip/axi_stream_bd_rst_ps7_0_50M_0/sim/axi_stream_bd_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_iic_v2_1_1 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/89a5/hdl/axi_iic_v2_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_stream_bd/ip/axi_stream_bd_axi_iic_0_0/sim/axi_stream_bd_axi_iic_0_0.vhd" \
  "../../../bd/axi_stream_bd/ip/axi_stream_bd_rst_s_axi_aclk_0_100M_0/sim/axi_stream_bd_rst_s_axi_aclk_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_stream_bd/ip/axi_stream_bd_axis_fifo_0_0/sim/axi_stream_bd_axis_fifo_0_0.v" \
  "../../../bd/axi_stream_bd/ip/axi_stream_bd_axis_i2s_wrapper_0_0/sim/axi_stream_bd_axis_i2s_wrapper_0_0.v" \
  "../../../bd/axi_stream_bd/ip/axi_stream_bd_axis_fir_0_0/sim/axi_stream_bd_axis_fir_0_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_25 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_stream_bd/ip/axi_stream_bd_auto_pc_0/sim/axi_stream_bd_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_24 \
  "../../../../lab3.gen/sources_1/bd/axi_stream_bd/ipshared/23c0/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_stream_bd/ip/axi_stream_bd_auto_cc_0/sim/axi_stream_bd_auto_cc_0.v" \
  "../../../bd/axi_stream_bd/ip/axi_stream_bd_auto_cc_1/sim/axi_stream_bd_auto_cc_1.v" \
  "../../../bd/axi_stream_bd/sim/axi_stream_bd.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

