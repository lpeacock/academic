onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fulladder_dataflow_tb -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fulladder_dataflow_tb xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {fulladder_dataflow_tb.udo}

run -all

endsim

quit -force
