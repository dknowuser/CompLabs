-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/05/2019 23:48:37"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	labka1 IS
    PORT (
	x : IN std_logic;
	y : IN std_logic;
	z : IN std_logic;
	w : IN std_logic;
	\out\ : OUT std_logic
	);
END labka1;

-- Design Ports Information
-- out	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF labka1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL \ww_out\ : std_logic;
SIGNAL \out~output_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \z~input_o\ : std_logic;
SIGNAL \out~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_z <= z;
ww_w <= w;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X1_Y29_N9
\out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out~0_combout\,
	devoe => ww_devoe,
	o => \out~output_o\);

-- Location: IOIBUF_X1_Y29_N22
\x~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\w~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X1_Y29_N15
\y~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: IOIBUF_X3_Y29_N8
\z~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z,
	o => \z~input_o\);

-- Location: LCCOMB_X2_Y28_N0
\out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out~0_combout\ = (\z~input_o\ & (((\x~input_o\ & !\w~input_o\)) # (!\y~input_o\))) # (!\z~input_o\ & (!\x~input_o\ & (\w~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \w~input_o\,
	datac => \y~input_o\,
	datad => \z~input_o\,
	combout => \out~0_combout\);

\ww_out\ <= \out~output_o\;
END structure;


