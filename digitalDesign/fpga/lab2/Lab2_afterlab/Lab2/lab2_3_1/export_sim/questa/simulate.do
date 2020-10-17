onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fulladder_dataflow_tb_opt

do {wave.do}

view wave
view structure
view signals

do {fulladder_dataflow_tb.udo}

run -all

quit -force
