vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../test/test.srcs/sources_1/imports/fpga/lab2/lab3_1_1/lab3_1_1.srcs/sources_1/new/fulladder_dataflow.v" \
"../../../test/test.srcs/sources_1/imports/fpga/fulladder_dataflow_tb.v" \


vlog -work xil_defaultlib \
"glbl.v"

