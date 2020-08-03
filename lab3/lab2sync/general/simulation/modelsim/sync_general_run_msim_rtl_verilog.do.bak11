transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/lab3/lab2sync/receive {E:/study/Labs/Components/lab3/lab2sync/receive/sync_receive.v}
vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/lab3/lab2sync/transmit {E:/study/Labs/Components/lab3/lab2sync/transmit/sync_transmit.v}
vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/lab3/lab2sync/general {E:/study/Labs/Components/lab3/lab2sync/general/sync_general.v}

