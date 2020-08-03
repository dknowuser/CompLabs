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

-- DATE "09/25/2019 22:49:18"

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

ENTITY 	sync_receive IS
    PORT (
	Clk : IN std_logic;
	D : IN std_logic;
	FS : IN std_logic;
	Dout : OUT std_logic_vector(5 DOWNTO 0);
	Ready : OUT std_logic;
	Error : OUT std_logic
	);
END sync_receive;

-- Design Ports Information
-- Dout[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ready	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FS	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sync_receive IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_FS : std_logic;
SIGNAL ww_Dout : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Ready : std_logic;
SIGNAL ww_Error : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dout_internal[1]~2_combout\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \Dout[5]~output_o\ : std_logic;
SIGNAL \Ready~output_o\ : std_logic;
SIGNAL \Error~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \FS~input_o\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \counter[1]~2_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Dout_internal[0]~0_combout\ : std_logic;
SIGNAL \Dout_internal[0]~1_combout\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \Dout_internal[1]~3_combout\ : std_logic;
SIGNAL \Dout_internal[2]~4_combout\ : std_logic;
SIGNAL \Dout_internal[2]~5_combout\ : std_logic;
SIGNAL \Dout_internal[3]~6_combout\ : std_logic;
SIGNAL \Dout_internal[4]~7_combout\ : std_logic;
SIGNAL \Dout_internal[5]~8_combout\ : std_logic;
SIGNAL \Ready_internal~0_combout\ : std_logic;
SIGNAL \Ready_internal~q\ : std_logic;
SIGNAL \odd~1_combout\ : std_logic;
SIGNAL \odd~q\ : std_logic;
SIGNAL \odd~0_combout\ : std_logic;
SIGNAL \Error_internal~0_combout\ : std_logic;
SIGNAL \Error_internal~1_combout\ : std_logic;
SIGNAL \Error_internal~q\ : std_logic;
SIGNAL counter : std_logic_vector(2 DOWNTO 0);
SIGNAL Dout_internal : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_Ready_internal~q\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_D <= D;
ww_FS <= FS;
Dout <= ww_Dout;
Ready <= ww_Ready;
Error <= ww_Error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Ready_internal~q\ <= NOT \Ready_internal~q\;

-- Location: LCCOMB_X1_Y7_N14
\Dout_internal[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[1]~2_combout\ = (\FS~input_o\ & (!counter(1) & counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS~input_o\,
	datac => counter(1),
	datad => counter(0),
	combout => \Dout_internal[1]~2_combout\);

-- Location: IOOBUF_X0_Y7_N16
\Dout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Dout_internal(0),
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\Dout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Dout_internal(1),
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\Dout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Dout_internal(2),
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\Dout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Dout_internal(3),
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\Dout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Dout_internal(4),
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Dout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Dout_internal(5),
	devoe => ww_devoe,
	o => \Dout[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\Ready~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ready_internal~q\,
	devoe => ww_devoe,
	o => \Ready~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\Error~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Error_internal~q\,
	devoe => ww_devoe,
	o => \Error~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\Clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G4
\Clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y7_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(2) $ (((counter(1) & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datac => counter(2),
	datad => counter(0),
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X0_Y8_N22
\FS~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FS,
	o => \FS~input_o\);

-- Location: FF_X1_Y7_N9
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \FS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X1_Y7_N24
\counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = ((counter(2) & counter(1))) # (!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datad => counter(1),
	combout => \counter~1_combout\);

-- Location: FF_X1_Y7_N7
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \counter~1_combout\,
	sload => VCC,
	ena => \FS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X1_Y7_N20
\counter[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[1]~2_combout\ = counter(1) $ (((\FS~input_o\ & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS~input_o\,
	datac => counter(1),
	datad => counter(0),
	combout => \counter[1]~2_combout\);

-- Location: FF_X1_Y7_N21
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \counter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X1_Y7_N28
\counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (counter(2) & ((!counter(0)) # (!counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datac => counter(2),
	datad => counter(0),
	combout => \counter~0_combout\);

-- Location: LCCOMB_X1_Y7_N26
\Dout_internal[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[0]~0_combout\ = (\FS~input_o\ & ((counter(1) & (counter(2) & counter(0))) # (!counter(1) & ((!counter(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS~input_o\,
	datab => counter(2),
	datac => counter(1),
	datad => counter(0),
	combout => \Dout_internal[0]~0_combout\);

-- Location: LCCOMB_X1_Y7_N16
\Dout_internal[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[0]~1_combout\ = (\counter~0_combout\ & (((Dout_internal(0))))) # (!\counter~0_combout\ & ((\Dout_internal[0]~0_combout\ & (\D~input_o\)) # (!\Dout_internal[0]~0_combout\ & ((Dout_internal(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \counter~0_combout\,
	datac => Dout_internal(0),
	datad => \Dout_internal[0]~0_combout\,
	combout => \Dout_internal[0]~1_combout\);

-- Location: FF_X1_Y7_N17
\Dout_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Dout_internal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dout_internal(0));

-- Location: IOIBUF_X0_Y7_N1
\D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: LCCOMB_X2_Y7_N0
\Dout_internal[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[1]~3_combout\ = (\Dout_internal[1]~2_combout\ & ((\counter~0_combout\ & ((Dout_internal(1)))) # (!\counter~0_combout\ & (\D~input_o\)))) # (!\Dout_internal[1]~2_combout\ & (((Dout_internal(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout_internal[1]~2_combout\,
	datab => \D~input_o\,
	datac => Dout_internal(1),
	datad => \counter~0_combout\,
	combout => \Dout_internal[1]~3_combout\);

-- Location: FF_X2_Y7_N1
\Dout_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Dout_internal[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dout_internal(1));

-- Location: LCCOMB_X1_Y7_N12
\Dout_internal[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[2]~4_combout\ = (\FS~input_o\ & (!counter(2) & counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS~input_o\,
	datac => counter(2),
	datad => counter(1),
	combout => \Dout_internal[2]~4_combout\);

-- Location: LCCOMB_X1_Y7_N10
\Dout_internal[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[2]~5_combout\ = (\counter~1_combout\ & ((\Dout_internal[2]~4_combout\ & (\D~input_o\)) # (!\Dout_internal[2]~4_combout\ & ((Dout_internal(2)))))) # (!\counter~1_combout\ & (((Dout_internal(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \counter~1_combout\,
	datac => Dout_internal(2),
	datad => \Dout_internal[2]~4_combout\,
	combout => \Dout_internal[2]~5_combout\);

-- Location: FF_X1_Y7_N11
\Dout_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Dout_internal[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dout_internal(2));

-- Location: LCCOMB_X1_Y7_N0
\Dout_internal[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[3]~6_combout\ = (\counter~1_combout\ & (((Dout_internal(3))))) # (!\counter~1_combout\ & ((\Dout_internal[2]~4_combout\ & (\D~input_o\)) # (!\Dout_internal[2]~4_combout\ & ((Dout_internal(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \counter~1_combout\,
	datac => Dout_internal(3),
	datad => \Dout_internal[2]~4_combout\,
	combout => \Dout_internal[3]~6_combout\);

-- Location: FF_X1_Y7_N1
\Dout_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Dout_internal[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dout_internal(3));

-- Location: LCCOMB_X1_Y7_N18
\Dout_internal[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[4]~7_combout\ = (\counter~0_combout\ & ((\Dout_internal[0]~0_combout\ & (\D~input_o\)) # (!\Dout_internal[0]~0_combout\ & ((Dout_internal(4)))))) # (!\counter~0_combout\ & (((Dout_internal(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \counter~0_combout\,
	datac => Dout_internal(4),
	datad => \Dout_internal[0]~0_combout\,
	combout => \Dout_internal[4]~7_combout\);

-- Location: FF_X1_Y7_N19
\Dout_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Dout_internal[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dout_internal(4));

-- Location: LCCOMB_X2_Y7_N30
\Dout_internal[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[5]~8_combout\ = (\Dout_internal[1]~2_combout\ & ((\counter~0_combout\ & (\D~input_o\)) # (!\counter~0_combout\ & ((Dout_internal(5)))))) # (!\Dout_internal[1]~2_combout\ & (((Dout_internal(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout_internal[1]~2_combout\,
	datab => \D~input_o\,
	datac => Dout_internal(5),
	datad => \counter~0_combout\,
	combout => \Dout_internal[5]~8_combout\);

-- Location: FF_X2_Y7_N31
\Dout_internal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Dout_internal[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dout_internal(5));

-- Location: LCCOMB_X1_Y7_N6
\Ready_internal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ready_internal~0_combout\ = ((counter(0)) # (!counter(1))) # (!counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datac => counter(0),
	datad => counter(1),
	combout => \Ready_internal~0_combout\);

-- Location: FF_X1_Y7_N25
Ready_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Ready_internal~0_combout\,
	sload => VCC,
	ena => \FS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ready_internal~q\);

-- Location: LCCOMB_X1_Y7_N22
\odd~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \odd~1_combout\ = \odd~0_combout\ $ (((\D~input_o\ & \Ready_internal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datac => \Ready_internal~0_combout\,
	datad => \odd~0_combout\,
	combout => \odd~1_combout\);

-- Location: FF_X1_Y7_N23
odd : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \odd~1_combout\,
	ena => \FS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \odd~q\);

-- Location: LCCOMB_X1_Y7_N4
\odd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \odd~0_combout\ = (\odd~q\ & (((!counter(1)) # (!counter(2))) # (!counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(1),
	datad => \odd~q\,
	combout => \odd~0_combout\);

-- Location: LCCOMB_X1_Y7_N2
\Error_internal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Error_internal~0_combout\ = (!counter(0) & (counter(1) & (\FS~input_o\ & counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => \FS~input_o\,
	datad => counter(2),
	combout => \Error_internal~0_combout\);

-- Location: LCCOMB_X1_Y7_N30
\Error_internal~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Error_internal~1_combout\ = (\Error_internal~0_combout\ & (\D~input_o\ $ ((!\odd~0_combout\)))) # (!\Error_internal~0_combout\ & (((\Error_internal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \odd~0_combout\,
	datac => \Error_internal~q\,
	datad => \Error_internal~0_combout\,
	combout => \Error_internal~1_combout\);

-- Location: FF_X1_Y7_N31
Error_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Error_internal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Error_internal~q\);

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;

ww_Dout(5) <= \Dout[5]~output_o\;

ww_Ready <= \Ready~output_o\;

ww_Error <= \Error~output_o\;
END structure;


