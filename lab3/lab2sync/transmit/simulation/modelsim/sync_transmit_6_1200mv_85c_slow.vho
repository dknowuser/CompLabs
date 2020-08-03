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

-- DATE "09/25/2019 22:24:20"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sync_transmit IS
    PORT (
	Clk_in : IN std_logic;
	Din : IN std_logic_vector(5 DOWNTO 0);
	Start : IN std_logic;
	Clk_out : OUT std_logic;
	D : OUT std_logic;
	FS : OUT std_logic
	);
END sync_transmit;

-- Design Ports Information
-- Clk_out	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FS	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk_in	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[5]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sync_transmit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk_in : std_logic;
SIGNAL ww_Din : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Start : std_logic;
SIGNAL ww_Clk_out : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_FS : std_logic;
SIGNAL \Clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \Clk_out~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \FS~output_o\ : std_logic;
SIGNAL \Clk_in~input_o\ : std_logic;
SIGNAL \Clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \counter[1]~2_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \counter[0]~feeder_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Din[4]~input_o\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \odd~1_combout\ : std_logic;
SIGNAL \odd~2_combout\ : std_logic;
SIGNAL \odd~0_combout\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \odd~3_combout\ : std_logic;
SIGNAL \odd~q\ : std_logic;
SIGNAL \D_bit~0_combout\ : std_logic;
SIGNAL \Din[5]~input_o\ : std_logic;
SIGNAL \D_bit~1_combout\ : std_logic;
SIGNAL \D_bit~2_combout\ : std_logic;
SIGNAL \D_bit~q\ : std_logic;
SIGNAL \FS_reg~q\ : std_logic;
SIGNAL counter : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_Clk_in <= Clk_in;
ww_Din <= Din;
ww_Start <= Start;
Clk_out <= ww_Clk_out;
D <= ww_D;
FS <= ww_FS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk_in~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\Din[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(2),
	o => \Din[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\Din[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(1),
	o => \Din[1]~input_o\);

-- Location: IOOBUF_X0_Y13_N16
\Clk_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Clk_in~input_o\,
	devoe => ww_devoe,
	o => \Clk_out~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\D~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_bit~q\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\FS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FS_reg~q\,
	devoe => ww_devoe,
	o => \FS~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\Clk_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk_in,
	o => \Clk_in~input_o\);

-- Location: CLKCTRL_G4
\Clk_in~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk_in~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y26_N22
\Start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: LCCOMB_X1_Y27_N28
\counter[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[1]~2_combout\ = counter(1) $ (((!counter(0) & \Start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datac => counter(1),
	datad => \Start~input_o\,
	combout => \counter[1]~2_combout\);

-- Location: FF_X1_Y27_N29
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \counter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X1_Y27_N6
\counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (!counter(0) & ((counter(2)) # (counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datad => counter(0),
	combout => \counter~1_combout\);

-- Location: LCCOMB_X1_Y27_N10
\counter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[0]~feeder_combout\ = \counter~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter~1_combout\,
	combout => \counter[0]~feeder_combout\);

-- Location: FF_X1_Y27_N11
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \counter[0]~feeder_combout\,
	ena => \Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X1_Y27_N12
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(2) $ (((!counter(1) & !counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(2),
	combout => \Add0~0_combout\);

-- Location: FF_X1_Y27_N13
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: IOIBUF_X0_Y26_N8
\Din[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(4),
	o => \Din[4]~input_o\);

-- Location: LCCOMB_X1_Y27_N22
\counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (!counter(1) & ((counter(2)) # (counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datad => counter(0),
	combout => \counter~0_combout\);

-- Location: LCCOMB_X1_Y27_N0
\odd~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \odd~1_combout\ = (\counter~1_combout\ & (\Din[5]~input_o\)) # (!\counter~1_combout\ & ((\Din[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[5]~input_o\,
	datac => \Din[4]~input_o\,
	datad => \counter~1_combout\,
	combout => \odd~1_combout\);

-- Location: LCCOMB_X1_Y27_N2
\odd~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \odd~2_combout\ = \odd~q\ $ (((!counter(2) & (!\counter~0_combout\ & \odd~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \odd~q\,
	datac => \counter~0_combout\,
	datad => \odd~1_combout\,
	combout => \odd~2_combout\);

-- Location: LCCOMB_X1_Y27_N30
\odd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \odd~0_combout\ = (counter(0)) # (counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => counter(1),
	combout => \odd~0_combout\);

-- Location: IOIBUF_X1_Y29_N8
\Din[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(3),
	o => \Din[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\Din[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(0),
	o => \Din[0]~input_o\);

-- Location: LCCOMB_X1_Y27_N20
\ShiftRight0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (\counter~0_combout\ & (((\counter~1_combout\)))) # (!\counter~0_combout\ & ((\counter~1_combout\ & (\Din[1]~input_o\)) # (!\counter~1_combout\ & ((\Din[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[1]~input_o\,
	datab => \Din[0]~input_o\,
	datac => \counter~0_combout\,
	datad => \counter~1_combout\,
	combout => \ShiftRight0~0_combout\);

-- Location: LCCOMB_X1_Y27_N18
\ShiftRight0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (\counter~0_combout\ & ((\ShiftRight0~0_combout\ & ((\Din[3]~input_o\))) # (!\ShiftRight0~0_combout\ & (\Din[2]~input_o\)))) # (!\counter~0_combout\ & (((\ShiftRight0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[2]~input_o\,
	datab => \Din[3]~input_o\,
	datac => \counter~0_combout\,
	datad => \ShiftRight0~0_combout\,
	combout => \ShiftRight0~1_combout\);

-- Location: LCCOMB_X1_Y27_N16
\odd~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \odd~3_combout\ = (counter(2) & (\odd~2_combout\ $ (((\ShiftRight0~1_combout\))))) # (!counter(2) & ((\odd~0_combout\ & (\odd~2_combout\)) # (!\odd~0_combout\ & ((\ShiftRight0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \odd~2_combout\,
	datac => \odd~0_combout\,
	datad => \ShiftRight0~1_combout\,
	combout => \odd~3_combout\);

-- Location: FF_X1_Y27_N17
odd : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \odd~3_combout\,
	ena => \Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \odd~q\);

-- Location: LCCOMB_X1_Y27_N26
\D_bit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_bit~0_combout\ = (counter(0) & ((counter(1) & (!\Din[4]~input_o\)) # (!counter(1) & ((\odd~q\))))) # (!counter(0) & (counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => \Din[4]~input_o\,
	datad => \odd~q\,
	combout => \D_bit~0_combout\);

-- Location: IOIBUF_X0_Y27_N8
\Din[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(5),
	o => \Din[5]~input_o\);

-- Location: LCCOMB_X1_Y27_N24
\D_bit~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_bit~1_combout\ = (counter(0) & (!\D_bit~0_combout\)) # (!counter(0) & (\D_bit~0_combout\ & \Din[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => \D_bit~0_combout\,
	datad => \Din[5]~input_o\,
	combout => \D_bit~1_combout\);

-- Location: LCCOMB_X1_Y27_N4
\D_bit~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_bit~2_combout\ = (counter(2) & (((\ShiftRight0~1_combout\)))) # (!counter(2) & ((\D_bit~1_combout\) # ((!\D_bit~0_combout\ & \ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_bit~0_combout\,
	datab => counter(2),
	datac => \D_bit~1_combout\,
	datad => \ShiftRight0~1_combout\,
	combout => \D_bit~2_combout\);

-- Location: FF_X1_Y27_N5
D_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \D_bit~2_combout\,
	ena => \Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_bit~q\);

-- Location: FF_X1_Y27_N7
FS_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	asdata => \Start~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FS_reg~q\);

ww_Clk_out <= \Clk_out~output_o\;

ww_D <= \D~output_o\;

ww_FS <= \FS~output_o\;
END structure;


