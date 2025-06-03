onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+fir_for_sim -L xilinx_vip -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L fir_compiler_v7_2_17 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fir_for_sim xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {fir_for_sim.udo}

run -all

endsim

quit -force
