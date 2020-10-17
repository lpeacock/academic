@echo off
set bin_path=C:\Aldec\Active-HDL-Student-Edition\bin
call "%bin_path%/VSimSA" -l "compile.log" -do "do -tcl fulladder_dataflow_tb_compile.do"
exit %errorlevel%
