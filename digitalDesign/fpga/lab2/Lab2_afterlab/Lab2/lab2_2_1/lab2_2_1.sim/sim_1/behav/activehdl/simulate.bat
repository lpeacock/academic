@echo off
set bin_path=C:\Aldec\Active-HDL-10.5a\bin
call "%bin_path%/avhdl" -do "do -tcl {lab2_2_1_partA_tb_simulate.do}"
set error=%errorlevel%
copy /Y "C:\Temp\lucaspeacock\FPGA\Lab2\lab2_2_1\lab2_2_1.sim\sim_1\behav\activehdl\lab2_2_1\log\console.log" "simulate.log"
set errorlevel=%error%
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
