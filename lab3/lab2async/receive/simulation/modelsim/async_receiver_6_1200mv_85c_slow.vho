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

-- DATE "09/25/2019 23:12:54"

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

ENTITY 	async_receiver IS
    PORT (
	Clk : IN std_logic;
	D : IN std_logic;
	Dout : OUT std_logic_vector(5 DOWNTO 0);
	Ready : OUT std_logic;
	Error : OUT std_logic
	);
END async_receiver;

-- Design Ports Information
-- Dout[0]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ready	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF async_receiver IS
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
SIGNAL ww_Dout : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Ready : std_logic;
SIGNAL ww_Error : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Error_internal~3_combout\ : std_logic;
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
SIGNAL \D~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Dout_internal[0]~11_combout\ : std_logic;
SIGNAL \Dout_internal[1]~12_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Dout_internal[2]~17_combout\ : std_logic;
SIGNAL \Dout_internal[2]~13_combout\ : std_logic;
SIGNAL \Dout_internal[3]~14_combout\ : std_logic;
SIGNAL \Dout_internal[0]~10_combout\ : std_logic;
SIGNAL \Dout_internal[4]~15_combout\ : std_logic;
SIGNAL \Dout_internal[1]~18_combout\ : std_logic;
SIGNAL \Dout_internal[5]~16_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Ready_internal~0_combout\ : std_logic;
SIGNAL \Ready_internal~1_combout\ : std_logic;
SIGNAL \Ready_internal~q\ : std_logic;
SIGNAL \Error_internal~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \odd~q\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Error_internal~0_combout\ : std_logic;
SIGNAL \Error_internal~2_combout\ : std_logic;
SIGNAL \Error_internal~q\ : std_logic;
SIGNAL counter : std_logic_vector(3 DOWNTO 0);
SIGNAL Dout_internal : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_Ready_internal~q\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_D <= D;
Dout <= ww_Dout;
Ready <= ww_Ready;
Error <= ww_Error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Ready_internal~q\ <= NOT \Ready_internal~q\;

-- Location: LCCOMB_X38_Y1_N20
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (counter(0) & (((counter(3)) # (!counter(1))) # (!counter(2)))) # (!counter(0) & ((counter(2)) # ((counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(3),
	datad => counter(1),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X38_Y1_N22
\Error_internal~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Error_internal~3_combout\ = (\D~input_o\) # (counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datac => counter(3),
	combout => \Error_internal~3_combout\);

-- Location: IOOBUF_X37_Y0_N9
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

-- Location: IOOBUF_X37_Y0_N2
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

-- Location: IOOBUF_X39_Y0_N16
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

-- Location: IOOBUF_X39_Y0_N23
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

-- Location: IOOBUF_X39_Y0_N30
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

-- Location: IOOBUF_X39_Y0_N9
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

-- Location: IOOBUF_X37_Y0_N23
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

-- Location: IOOBUF_X37_Y0_N16
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

-- Location: IOIBUF_X37_Y0_N29
\D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: LCCOMB_X38_Y1_N4
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = counter(0) $ (counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => counter(1),
	combout => \Mux2~0_combout\);

-- Location: FF_X38_Y1_N5
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X38_Y1_N16
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = counter(2) $ (((counter(0) & counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X38_Y1_N17
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X38_Y1_N2
\counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (!counter(0) & (((counter(1)) # (counter(2))) # (!\Error_internal~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Error_internal~3_combout\,
	datab => counter(1),
	datac => counter(0),
	datad => counter(2),
	combout => \counter~1_combout\);

-- Location: FF_X38_Y1_N3
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X39_Y1_N24
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(2) $ (((counter(1)) # (counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datac => counter(1),
	datad => counter(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X39_Y1_N28
\Dout_internal[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[0]~11_combout\ = (\Dout_internal[0]~10_combout\ & ((\Add0~0_combout\ & (\D~input_o\)) # (!\Add0~0_combout\ & ((Dout_internal(0)))))) # (!\Dout_internal[0]~10_combout\ & (((Dout_internal(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout_internal[0]~10_combout\,
	datab => \D~input_o\,
	datac => Dout_internal(0),
	datad => \Add0~0_combout\,
	combout => \Dout_internal[0]~11_combout\);

-- Location: FF_X39_Y1_N29
\Dout_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Dout_internal[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dout_internal(0));

-- Location: LCCOMB_X39_Y1_N18
\Dout_internal[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[1]~12_combout\ = (\Dout_internal[1]~18_combout\ & ((\Add0~0_combout\ & (\D~input_o\)) # (!\Add0~0_combout\ & ((Dout_internal(1)))))) # (!\Dout_internal[1]~18_combout\ & (((Dout_internal(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout_internal[1]~18_combout\,
	datab => \D~input_o\,
	datac => Dout_internal(1),
	datad => \Add0~0_combout\,
	combout => \Dout_internal[1]~12_combout\);

-- Location: FF_X39_Y1_N19
\Dout_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Dout_internal[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dout_internal(1));

-- Location: LCCOMB_X38_Y1_N14
\counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (counter(0) & (counter(3) $ (((counter(2) & counter(1)))))) # (!counter(0) & (counter(3) & ((counter(2)) # (counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(3),
	datad => counter(1),
	combout => \counter~2_combout\);

-- Location: FF_X38_Y1_N15
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X39_Y1_N20
\Dout_internal[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[2]~17_combout\ = (!counter(3) & ((counter(0) & (!counter(2) & counter(1))) # (!counter(0) & (counter(2) & !counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(3),
	datac => counter(2),
	datad => counter(1),
	combout => \Dout_internal[2]~17_combout\);

-- Location: LCCOMB_X39_Y1_N12
\Dout_internal[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[2]~13_combout\ = (counter(0) & ((\Dout_internal[2]~17_combout\ & (\D~input_o\)) # (!\Dout_internal[2]~17_combout\ & ((Dout_internal(2)))))) # (!counter(0) & (((Dout_internal(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \D~input_o\,
	datac => Dout_internal(2),
	datad => \Dout_internal[2]~17_combout\,
	combout => \Dout_internal[2]~13_combout\);

-- Location: FF_X39_Y1_N13
\Dout_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Dout_internal[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dout_internal(2));

-- Location: LCCOMB_X39_Y1_N22
\Dout_internal[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[3]~14_combout\ = (counter(0) & (((Dout_internal(3))))) # (!counter(0) & ((\Dout_internal[2]~17_combout\ & (\D~input_o\)) # (!\Dout_internal[2]~17_combout\ & ((Dout_internal(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \D~input_o\,
	datac => Dout_internal(3),
	datad => \Dout_internal[2]~17_combout\,
	combout => \Dout_internal[3]~14_combout\);

-- Location: FF_X39_Y1_N23
\Dout_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Dout_internal[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dout_internal(3));

-- Location: LCCOMB_X39_Y1_N26
\Dout_internal[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[0]~10_combout\ = (!counter(3) & (!counter(1) & counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datac => counter(1),
	datad => counter(0),
	combout => \Dout_internal[0]~10_combout\);

-- Location: LCCOMB_X39_Y1_N4
\Dout_internal[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[4]~15_combout\ = (\Add0~0_combout\ & (((Dout_internal(4))))) # (!\Add0~0_combout\ & ((\Dout_internal[0]~10_combout\ & (\D~input_o\)) # (!\Dout_internal[0]~10_combout\ & ((Dout_internal(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \Add0~0_combout\,
	datac => Dout_internal(4),
	datad => \Dout_internal[0]~10_combout\,
	combout => \Dout_internal[4]~15_combout\);

-- Location: FF_X39_Y1_N5
\Dout_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Dout_internal[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dout_internal(4));

-- Location: LCCOMB_X39_Y1_N6
\Dout_internal[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[1]~18_combout\ = (!counter(3) & (counter(1) & !counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datac => counter(1),
	datad => counter(0),
	combout => \Dout_internal[1]~18_combout\);

-- Location: LCCOMB_X39_Y1_N10
\Dout_internal[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Dout_internal[5]~16_combout\ = (\Add0~0_combout\ & (((Dout_internal(5))))) # (!\Add0~0_combout\ & ((\Dout_internal[1]~18_combout\ & (\D~input_o\)) # (!\Dout_internal[1]~18_combout\ & ((Dout_internal(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \Add0~0_combout\,
	datac => Dout_internal(5),
	datad => \Dout_internal[1]~18_combout\,
	combout => \Dout_internal[5]~16_combout\);

-- Location: FF_X39_Y1_N11
\Dout_internal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Dout_internal[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dout_internal(5));

-- Location: LCCOMB_X38_Y1_N24
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!counter(0) & (!counter(1) & !counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datac => counter(1),
	datad => counter(2),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X38_Y1_N26
\Ready_internal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ready_internal~0_combout\ = (!counter(1) & (!counter(0) & (counter(3) & !counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(2),
	combout => \Ready_internal~0_combout\);

-- Location: LCCOMB_X38_Y1_N28
\Ready_internal~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ready_internal~1_combout\ = (\Selector1~0_combout\ & (!\Ready_internal~0_combout\ & ((\Ready_internal~q\) # (!\D~input_o\)))) # (!\Selector1~0_combout\ & (((\Ready_internal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \Selector1~0_combout\,
	datac => \Ready_internal~q\,
	datad => \Ready_internal~0_combout\,
	combout => \Ready_internal~1_combout\);

-- Location: FF_X38_Y1_N29
Ready_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Ready_internal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ready_internal~q\);

-- Location: LCCOMB_X38_Y1_N0
\Error_internal~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Error_internal~1_combout\ = (\Selector1~0_combout\ & ((\D~input_o\) # (counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datac => counter(3),
	datad => \Selector1~0_combout\,
	combout => \Error_internal~1_combout\);

-- Location: LCCOMB_X38_Y1_N12
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (counter(0) & ((counter(2)) # (!counter(1)))) # (!counter(0) & (!counter(1) & counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datac => counter(1),
	datad => counter(2),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X38_Y1_N10
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (counter(1) & (((counter(3)) # (!\Selector0~0_combout\)) # (!\D~input_o\))) # (!counter(1) & ((\Selector0~0_combout\) # ((!\D~input_o\ & counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => counter(1),
	datac => counter(3),
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X38_Y1_N8
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\D~input_o\ & (\odd~q\ $ (\Selector0~1_combout\))) # (!\D~input_o\ & (\odd~q\ & \Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datac => \odd~q\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X38_Y1_N9
odd : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \odd~q\);

-- Location: LCCOMB_X38_Y1_N6
\counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (counter(1) & (counter(2) & (!counter(3) & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(3),
	datad => counter(0),
	combout => \counter~0_combout\);

-- Location: LCCOMB_X38_Y1_N18
\Error_internal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Error_internal~0_combout\ = (\D~input_o\ & ((\Ready_internal~0_combout\) # ((\odd~q\ & \counter~0_combout\)))) # (!\D~input_o\ & (!\odd~q\ & ((\counter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \odd~q\,
	datac => \Ready_internal~0_combout\,
	datad => \counter~0_combout\,
	combout => \Error_internal~0_combout\);

-- Location: LCCOMB_X38_Y1_N30
\Error_internal~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Error_internal~2_combout\ = (\WideOr0~0_combout\ & (((\Error_internal~q\)))) # (!\WideOr0~0_combout\ & ((\Error_internal~0_combout\) # ((\Error_internal~1_combout\ & \Error_internal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \Error_internal~1_combout\,
	datac => \Error_internal~q\,
	datad => \Error_internal~0_combout\,
	combout => \Error_internal~2_combout\);

-- Location: FF_X38_Y1_N31
Error_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Error_internal~2_combout\,
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


