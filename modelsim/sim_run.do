#build
vlib work
vmap work 
vlog -f compile.f

#sim
vsim -novopt +nowarnTSCALE -c -lib work testbench
vcd add -file myvcdfile.vcd -r /testbench/*
run -all

#endsim
quit -sim
vcd2wlf myvcdfile.vcd mywlf.wlf

#sim
vsim -view test=mywlf.wlf
view signals
view structure
view wave

write format wave wave.do

