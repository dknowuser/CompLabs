#************************************************************
# THIS IS A WIZARD-GENERATED FILE.                           
#
# Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Web Edition
#
#************************************************************

# Copyright (C) 1991-2012 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.



# Clock constraints

create_clock -name "1" -period 200.000ns [get_ports {x[0]}]
create_clock -name "2" -period 100.000ns [get_ports {x[1]}]
create_clock -name "3" -period 50.000ns [get_ports {x[2]}]
create_clock -name "4" -period 25.000ns [get_ports {x[3]}]


# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty

# tsu/th constraints

# tco constraints

# tpd constraints
