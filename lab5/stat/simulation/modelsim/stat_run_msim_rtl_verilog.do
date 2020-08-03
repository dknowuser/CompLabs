transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/lab5/stat {E:/study/Labs/Components/lab5/stat/stat.v}
vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/lab5/stat {E:/study/Labs/Components/lab5/stat/my_rom.v}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/mc8051_tmrctr_rtl.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/mc8051_siu_rtl.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/mc8051_p.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/mc8051_core_struc.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/mc8051_control_struc.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/mc8051_alu_struc.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/dcml_adjust_rtl.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/control_mem_rtl.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/control_fsm_rtl.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/comb_mltplr_rtl.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/comb_divider_rtl.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/alumux_rtl.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/alucore_rtl.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/addsub_ovcy_rtl.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/addsub_cy_rtl.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/addsub_core_struc.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/mc8051_tmrctr_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/mc8051_siu_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/mc8051_core_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/mc8051_control_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/mc8051_alu_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/dcml_adjust_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/control_mem_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/control_fsm_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/comb_mltplr_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/comb_divider_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/alumux_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/alucore_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/addsub_ovcy_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/addsub_cy_.vhd}
vcom -93 -work work {E:/study/Labs/Components/lab5/stat/addsub_core_.vhd}

