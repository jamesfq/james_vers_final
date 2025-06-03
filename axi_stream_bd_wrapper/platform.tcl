# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct O:\ENGS128\lab3\axi_stream_bd_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source O:\ENGS128\lab3\axi_stream_bd_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {axi_stream_bd_wrapper}\
-hw {O:\ENGS128\lab3\axi_stream_bd_wrapper.xsa}\
-out {O:/ENGS128/lab3}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {axi_stream_bd_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform config -updatehw {O:/ENGS128/lab3/axi_stream_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {O:/ENGS128/lab3/axi_stream_bd_wrapper.xsa}
platform generate -domains 
platform active {axi_stream_bd_wrapper}
platform config -updatehw {O:/ENGS128/lab3/axi_stream_bd_wrapper.xsa}
platform generate -domains 
platform active {axi_stream_bd_wrapper}
platform config -updatehw {O:/ENGS128/lab3/axi_stream_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {O:/ENGS128/lab3/axi_stream_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {O:/ENGS128/lab3/axi_stream_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {O:/ENGS128/lab3/axi_stream_bd_wrapper.xsa}
platform generate -domains 
platform active {axi_stream_bd_wrapper}
platform config -updatehw {O:/ENGS128/lab3/axi_stream_bd_wrapper.xsa}
platform generate -domains 
platform active {axi_stream_bd_wrapper}
platform config -updatehw {O:/ENGS128/lab3/axi_stream_bd_wrapper.xsa}
platform config -updatehw {O:/ENGS128/lab3/axi_stream_bd_wrapper.xsa}
platform active {axi_stream_bd_wrapper}
platform config -updatehw {O:/ENGS128/lab3/axi_stream_bd_wrapper.xsa}
platform generate
