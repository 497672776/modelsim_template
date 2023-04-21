#close dataset
write format wave wave.do
dataset close test

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
vsim -view test=mywlf.wlf -do wave.do
view signals
view structure
view wave
