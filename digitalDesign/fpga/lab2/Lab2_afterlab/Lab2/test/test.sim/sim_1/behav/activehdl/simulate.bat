@echo off
set bin_path=C:\Aldec\Active-HDL-Student-Edition\bin
call "%bin_path%/avhdl" -do "do -tcl {fulladder_dataflow_tb_simulate.do}"
set error=%errorlevel%
copy /Y "C:\Users\lucas\Documents\fpga\lab2\Lab2_afterlab\Lab2\test\test.sim\sim_1\behav\activehdl\test\log\console.log" "simulate.log"
set errorlevel=%error%
exit %errorlevel%
