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

-- DATE "09/25/2019 23:02:46"

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

ENTITY 	async_transmitter IS
    PORT (
	Clk : IN std_logic;
	Din : IN std_logic_vector(5 DOWNTO 0);
	Start : IN std_logic;
	D : OUT std_logic
	);
END async_transmitter;

-- Design Ports Information
-- D	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[5]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF async_transmitter IS
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
SIGNAL ww_Din : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Start : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \odd~3_combout\ : std_logic;
SIGNAL \odd~4_combout\ : std_logic;
SIGNAL \Din[4]~input_o\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \counter[0]~2_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \odd~6_combout\ : std_logic;
SIGNAL \Din[5]~input_o\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \odd~2_combout\ : std_logic;
SIGNAL \odd~5_combout\ : std_logic;
SIGNAL \odd~q\ : std_logic;
SIGNAL \current_bit~0_combout\ : std_logic;
SIGNAL \current_bit~1_combout\ : std_logic;
SIGNAL \current_bit~2_combout\ : std_logic;
SIGNAL \current_bit~3_combout\ : std_logic;
SIGNAL \current_bit~q\ : std_logic;
SIGNAL counter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_current_bit~q\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Din <= Din;
ww_Start <= Start;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_current_bit~q\ <= NOT \current_bit~q\;

-- Location: LCCOMB_X40_Y9_N22
\ShiftRight0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (!counter(3) & (counter(2) $ (((counter(1)) # (counter(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(0),
	datad => counter(3),
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X40_Y9_N0
\odd~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \odd~3_combout\ = (counter(0) & ((counter(2)) # (!counter(1)))) # (!counter(0) & (counter(2) & !counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \odd~3_combout\);

-- Location: LCCOMB_X40_Y9_N30
\odd~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \odd~4_combout\ = (\odd~q\ & ((counter(3)) # ((counter(1)) # (\odd~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => \odd~q\,
	datad => \odd~3_combout\,
	combout => \odd~4_combout\);

-- Location: IOIBUF_X41_Y8_N1
\Din[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(4),
	o => \Din[4]~input_o\);

-- Location: IOIBUF_X41_Y10_N15
\Din[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(1),
	o => \Din[1]~input_o\);

-- Location: IOIBUF_X41_Y10_N8
\Din[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(0),
	o => \Din[0]~input_o\);

-- Location: IOOBUF_X41_Y10_N23
\D~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_current_bit~q\,
	devoe => ww_devoe,
	o => \D~output_o\);

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

-- Location: IOIBUF_X41_Y9_N15
\Start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: LCCOMB_X40_Y9_N20
\counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Start~input_o\ & (\counter[0]~2_combout\ & (counter(0) $ (counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => counter(0),
	datac => counter(1),
	datad => \counter[0]~2_combout\,
	combout => \counter~6_combout\);

-- Location: FF_X40_Y9_N21
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X39_Y9_N20
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (counter(1) & counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(1),
	datad => counter(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X40_Y9_N14
\counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\counter[0]~2_combout\ & (\Start~input_o\ & (counter(2) $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~2_combout\,
	datab => \Start~input_o\,
	datac => counter(2),
	datad => \Add0~0_combout\,
	combout => \counter~3_combout\);

-- Location: FF_X40_Y9_N15
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X39_Y9_N14
\counter[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[0]~2_combout\ = ((counter(2)) # ((counter(1)) # (counter(0)))) # (!counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(2),
	datac => counter(1),
	datad => counter(0),
	combout => \counter[0]~2_combout\);

-- Location: LCCOMB_X40_Y9_N10
\counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Start~input_o\ & (!counter(0) & \counter[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datac => counter(0),
	datad => \counter[0]~2_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X40_Y9_N11
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X39_Y9_N18
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = counter(3) $ (((counter(2) & (counter(1) & counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(3),
	datac => counter(1),
	datad => counter(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X39_Y9_N0
\counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Start~input_o\ & (\counter[0]~2_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datac => \counter[0]~2_combout\,
	datad => \Add1~0_combout\,
	combout => \counter~5_combout\);

-- Location: FF_X39_Y9_N1
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X39_Y9_N16
\odd~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \odd~6_combout\ = (counter(1) & ((counter(3)) # ((!counter(0)) # (!counter(2))))) # (!counter(1) & (((counter(2)) # (counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(3),
	datac => counter(2),
	datad => counter(0),
	combout => \odd~6_combout\);

-- Location: IOIBUF_X41_Y8_N15
\Din[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(5),
	o => \Din[5]~input_o\);

-- Location: LCCOMB_X40_Y9_N6
\ShiftRight0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = (counter(0) & (\Din[4]~input_o\ & ((!counter(1))))) # (!counter(0) & (((\Din[5]~input_o\ & counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[4]~input_o\,
	datab => \Din[5]~input_o\,
	datac => counter(0),
	datad => counter(1),
	combout => \ShiftRight0~2_combout\);

-- Location: LCCOMB_X40_Y9_N8
\ShiftRight0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = (counter(2) & (!counter(3) & \ShiftRight0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datac => counter(3),
	datad => \ShiftRight0~2_combout\,
	combout => \ShiftRight0~3_combout\);

-- Location: IOIBUF_X41_Y9_N22
\Din[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(2),
	o => \Din[2]~input_o\);

-- Location: IOIBUF_X41_Y10_N1
\Din[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(3),
	o => \Din[3]~input_o\);

-- Location: LCCOMB_X40_Y9_N16
\ShiftRight0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (counter(1) & (((counter(0))))) # (!counter(1) & ((counter(0) & (\Din[0]~input_o\)) # (!counter(0) & ((\Din[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[0]~input_o\,
	datab => \Din[3]~input_o\,
	datac => counter(1),
	datad => counter(0),
	combout => \ShiftRight0~0_combout\);

-- Location: LCCOMB_X40_Y9_N18
\ShiftRight0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (counter(1) & ((\ShiftRight0~0_combout\ & ((\Din[2]~input_o\))) # (!\ShiftRight0~0_combout\ & (\Din[1]~input_o\)))) # (!counter(1) & (((\ShiftRight0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[1]~input_o\,
	datab => \Din[2]~input_o\,
	datac => counter(1),
	datad => \ShiftRight0~0_combout\,
	combout => \ShiftRight0~1_combout\);

-- Location: LCCOMB_X40_Y9_N2
\odd~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \odd~2_combout\ = (\ShiftRight0~3_combout\) # ((\ShiftRight0~4_combout\ & \ShiftRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~4_combout\,
	datac => \ShiftRight0~3_combout\,
	datad => \ShiftRight0~1_combout\,
	combout => \odd~2_combout\);

-- Location: LCCOMB_X40_Y9_N28
\odd~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \odd~5_combout\ = (\Start~input_o\ & (\odd~4_combout\ $ (((\odd~6_combout\ & \odd~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \odd~4_combout\,
	datab => \Start~input_o\,
	datac => \odd~6_combout\,
	datad => \odd~2_combout\,
	combout => \odd~5_combout\);

-- Location: FF_X40_Y9_N29
odd : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \odd~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \odd~q\);

-- Location: LCCOMB_X40_Y9_N26
\current_bit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit~0_combout\ = (counter(1) & (counter(0) & (counter(2) & !\odd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(2),
	datad => \odd~q\,
	combout => \current_bit~0_combout\);

-- Location: LCCOMB_X40_Y9_N24
\current_bit~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit~1_combout\ = (counter(2) & ((!counter(1)) # (!counter(0)))) # (!counter(2) & ((counter(0)) # (counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datac => counter(0),
	datad => counter(1),
	combout => \current_bit~1_combout\);

-- Location: LCCOMB_X40_Y9_N12
\current_bit~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit~2_combout\ = (\current_bit~1_combout\ & ((\ShiftRight0~3_combout\) # ((\ShiftRight0~4_combout\ & \ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~4_combout\,
	datab => \current_bit~1_combout\,
	datac => \ShiftRight0~3_combout\,
	datad => \ShiftRight0~1_combout\,
	combout => \current_bit~2_combout\);

-- Location: LCCOMB_X40_Y9_N4
\current_bit~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit~3_combout\ = (\Start~input_o\ & ((counter(3)) # ((!\current_bit~0_combout\ & !\current_bit~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => \current_bit~0_combout\,
	datac => \Start~input_o\,
	datad => \current_bit~2_combout\,
	combout => \current_bit~3_combout\);

-- Location: FF_X40_Y9_N5
current_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \current_bit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_bit~q\);

ww_D <= \D~output_o\;
END structure;


