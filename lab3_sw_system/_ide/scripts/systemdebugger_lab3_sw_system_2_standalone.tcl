# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: O:\ENGS128\lab3\lab3_sw_system\_ide\scripts\systemdebugger_lab3_sw_system_2_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source O:\ENGS128\lab3\lab3_sw_system\_ide\scripts\systemdebugger_lab3_sw_system_2_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A6C805A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351A6C805A-13722093-0"}
fpga -file O:/ENGS128/lab3/lab3_sw/_ide/bitstream/axi_stream_bd_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw O:/ENGS128/lab3/axi_stream_bd_wrapper/export/axi_stream_bd_wrapper/hw/axi_stream_bd_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source O:/ENGS128/lab3/lab3_sw/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow O:/ENGS128/lab3/lab3_sw/Debug/lab3_sw.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
