transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/labka1 {E:/study/Labs/Components/labka1/labka1.v}

