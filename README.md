**FOR GRADING:**
To find the corresponding files, use the following paths:

*Updated Lab 1 and 2 files:*
`lab3.srcs > sources_1 > imports`: axis_i2s_wrapper.vhd, axis_receiver.vhd, axis_transmitter.vhd

*New Lab 3 modules:*
`lab3.srcs > sources_1 > imports`: axi_fir_wrapper.vhd, axi_dds.vhd

*New Lab 3 IPs:*
`lab3.srcs > sources_1 > ip`: fir_bpf_0, fir_bsf_0, fir_for_sim, fir_hpf_0, fir_lpf_0
Note that fir_for_sim was used for an accelerated sampling rate in simulation, but not employed by the hardware.

*FIR & updated BRAM coefficient files:*
`lab3.srcs > filter_coe`: bpf_fir.coe, bsf_fir.coe, hpf_fir.coe, lab3_audio_sine.coe, lpf_fir.coe

*AXI-Lite DDS and FIR testbenches:*
`lab3.srcs > sim_1 > new`: tb_S00_AXI.vhd, tb_fir_top_level.vhd
