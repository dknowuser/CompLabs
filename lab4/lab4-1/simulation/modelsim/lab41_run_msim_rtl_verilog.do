transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/lab4/lab4-1 {E:/study/Labs/Components/lab4/lab4-1/lab41.v}
vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/lab4/lab4-1 {E:/study/Labs/Components/lab4/lab4-1/ram_dp.v}

