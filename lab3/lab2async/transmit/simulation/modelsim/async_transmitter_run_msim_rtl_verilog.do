transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/lab3/lab2async/transmit {E:/study/Labs/Components/lab3/lab2async/transmit/async_transmitter.v}

