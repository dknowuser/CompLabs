transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {labka13_6_1200mv_85c_slow.vho}

vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/labka13/simulation/modelsim {E:/study/Labs/Components/labka13/simulation/modelsim/bench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=labka13_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
