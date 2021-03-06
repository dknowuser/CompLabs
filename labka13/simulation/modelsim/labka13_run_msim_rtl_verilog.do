transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/labka13 {E:/study/Labs/Components/labka13/labka13.v}
vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/labka13 {E:/study/Labs/Components/labka13/my_decode.v}

vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/labka13/simulation/modelsim {E:/study/Labs/Components/labka13/simulation/modelsim/bench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
