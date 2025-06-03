onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+axi_block_design -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axi_block_design xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {axi_block_design.udo}

run -all

endsim

quit -force
