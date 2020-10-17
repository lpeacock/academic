######################################################################
#
# File name : fulladder_dataflow_tb_simulate.do
# Created on: Fri Feb 07 14:44:27 -0600 2020
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
transcript on
quiet on
createdesign {lab2_3_1} {C:/Users/lucas/Documents/fpga/lab2/Lab2_afterlab/Lab2/lab2_3_1/lab2_3_1.sim/sim_1/behav/activehdl}
opendesign {C:/Users/lucas/Documents/fpga/lab2/Lab2_afterlab/Lab2/lab2_3_1/lab2_3_1.sim/sim_1/behav/activehdl/lab2_3_1/lab2_3_1.adf}
set SIM_WORKING_FOLDER $dsn/..
set worklib lab2_3_1

vmap xil_defaultlib {C:/Users/lucas/Documents/fpga/lab2/Lab2_afterlab/Lab2/lab2_3_1/lab2_3_1.sim/sim_1/behav/activehdl/activehdl/xil_defaultlib}
quiet off
asim -asdb +access +r +m+fulladder_dataflow_tb -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -O5 xil_defaultlib.fulladder_dataflow_tb xil_defaultlib.glbl

if { ![batch_mode] } {
	wave *
} else {
	log *
}


run 1000ns
if [batch_mode] {
	endsim
	quit
}