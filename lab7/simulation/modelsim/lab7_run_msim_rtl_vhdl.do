transcript on
if ![file isdirectory lab7_iputf_libs] {
	file mkdir lab7_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


# ----------------------------------------
# Copy ROM/RAM files to simulation directory

vlog "E:/study/Labs/Components/lab7/digitalFilter_sim/altera_avalon_sc_fifo.v"                        
vcom "E:/study/Labs/Components/lab7/digitalFilter_sim/auk_dspip_math_pkg_hpfir.vhd"                   
vcom "E:/study/Labs/Components/lab7/digitalFilter_sim/auk_dspip_lib_pkg_hpfir.vhd"                    
vcom "E:/study/Labs/Components/lab7/digitalFilter_sim/auk_dspip_avalon_streaming_controller_hpfir.vhd"
vcom "E:/study/Labs/Components/lab7/digitalFilter_sim/auk_dspip_avalon_streaming_sink_hpfir.vhd"      
vcom "E:/study/Labs/Components/lab7/digitalFilter_sim/auk_dspip_avalon_streaming_source_hpfir.vhd"    
vcom "E:/study/Labs/Components/lab7/digitalFilter_sim/auk_dspip_roundsat_hpfir.vhd"                   
vcom "E:/study/Labs/Components/lab7/digitalFilter_sim/dspba_library_package.vhd"                      
vcom "E:/study/Labs/Components/lab7/digitalFilter_sim/dspba_library.vhd"                              
vcom "E:/study/Labs/Components/lab7/digitalFilter_sim/digitalFilter_rtl.vhd"                          
vcom "E:/study/Labs/Components/lab7/digitalFilter_sim/digitalFilter_ast.vhd"                          
vcom "E:/study/Labs/Components/lab7/digitalFilter_sim/digitalFilter.vhd"                              
vcom "E:/study/Labs/Components/lab7/digitalFilter_sim/digitalFilter_tb.vhd"                           

vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/lab7 {E:/study/Labs/Components/lab7/lab7.v}
vlog -vlog01compat -work work +incdir+E:/study/Labs/Components/lab7 {E:/study/Labs/Components/lab7/sine_cos.v}

