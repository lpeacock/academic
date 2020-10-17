vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../test/test.srcs/sources_1/imports/fpga/lab2/lab3_1_1/lab3_1_1.srcs/sources_1/new/fulladder_dataflow.v" \
"../../../test/test.srcs/sources_1/imports/fpga/fulladder_dataflow_tb.v" \


vlog -work xil_defaultlib \
"glbl.v"

