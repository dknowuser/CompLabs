transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/labka13 {E:/study/Labs/Components/labka13/my_decode.v}
vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/labka13 {E:/study/Labs/Components/labka13/labka13.v}
vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/labka12 {E:/study/Labs/Components/labka12/my_mux.v}
vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/labka12 {E:/study/Labs/Components/labka12/labka12.v}
vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/labka1 {E:/study/Labs/Components/labka1/labka1.v}
vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/labka1gen {E:/study/Labs/Components/labka1gen/labka1gen.v}

vcom -93 -work work {E:/study/Labs/Components/labka1gen/simulation/modelsim/labka1gen.vht}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
