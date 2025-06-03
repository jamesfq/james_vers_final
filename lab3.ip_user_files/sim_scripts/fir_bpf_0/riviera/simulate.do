onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+fir_bpf_0 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L fir_compiler_v7_2_17 -L xil_defaultlib -L secureip -O5 xil_defaultlib.fir_bpf_0

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {fir_bpf_0.udo}

run -all

endsim

quit -force
