onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib xcl_design_opt

do {wave.do}

view wave
view structure
view signals

do {xcl_design.udo}

run -all

quit -force
