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

-- DATE "12/15/2019 15:15:21"

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

ENTITY 	lab6q IS
    PORT (
	Clk : IN std_logic;
	R : IN std_logic;
	Start : IN std_logic;
	Din : IN std_logic_vector(9 DOWNTO 0);
	Ready : OUT std_logic;
	Busy : OUT std_logic;
	Indicator_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab6q;

-- Design Ports Information
-- Ready	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Busy	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Indicator_out[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Indicator_out[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Indicator_out[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Indicator_out[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Indicator_out[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Indicator_out[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Indicator_out[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Indicator_out[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab6q IS
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
SIGNAL ww_R : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Din : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Ready : std_logic;
SIGNAL ww_Busy : std_logic;
SIGNAL ww_Indicator_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|current_state.s1~q\ : std_logic;
SIGNAL \controller|current_state.s3~q\ : std_logic;
SIGNAL \controller|Selector1~0_combout\ : std_logic;
SIGNAL \Din[9]~input_o\ : std_logic;
SIGNAL \Din[4]~input_o\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \Din[7]~input_o\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \controller|current_state.s3~feeder_combout\ : std_logic;
SIGNAL \Ready~output_o\ : std_logic;
SIGNAL \Busy~output_o\ : std_logic;
SIGNAL \Indicator_out[0]~output_o\ : std_logic;
SIGNAL \Indicator_out[1]~output_o\ : std_logic;
SIGNAL \Indicator_out[2]~output_o\ : std_logic;
SIGNAL \Indicator_out[3]~output_o\ : std_logic;
SIGNAL \Indicator_out[4]~output_o\ : std_logic;
SIGNAL \Indicator_out[5]~output_o\ : std_logic;
SIGNAL \Indicator_out[6]~output_o\ : std_logic;
SIGNAL \Indicator_out[7]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \kept_value~2_combout\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ : std_logic;
SIGNAL \controller|Selector3~0_combout\ : std_logic;
SIGNAL \controller|Selector2~0_combout\ : std_logic;
SIGNAL \controller|Enable~q\ : std_logic;
SIGNAL \current_bit_counter|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \controller|Selector6~0_combout\ : std_logic;
SIGNAL \controller|Ready~feeder_combout\ : std_logic;
SIGNAL \controller|Ready~q\ : std_logic;
SIGNAL \controller|Selector0~0_combout\ : std_logic;
SIGNAL \controller|current_state.s0~q\ : std_logic;
SIGNAL \controller|Selector3~1_combout\ : std_logic;
SIGNAL \controller|Busy~q\ : std_logic;
SIGNAL \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \Din[8]~input_o\ : std_logic;
SIGNAL \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \Din[5]~input_o\ : std_logic;
SIGNAL \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \Din[6]~input_o\ : std_logic;
SIGNAL \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ : std_logic;
SIGNAL \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ : std_logic;
SIGNAL \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~7_combout\ : std_logic;
SIGNAL \kept_value~3_combout\ : std_logic;
SIGNAL \kept_value~q\ : std_logic;
SIGNAL \fall_edge_counter|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \converter|WideOr6~0_combout\ : std_logic;
SIGNAL \converter|WideOr5~0_combout\ : std_logic;
SIGNAL \converter|WideOr4~0_combout\ : std_logic;
SIGNAL \converter|WideOr3~0_combout\ : std_logic;
SIGNAL \converter|WideOr2~0_combout\ : std_logic;
SIGNAL \converter|WideOr1~0_combout\ : std_logic;
SIGNAL \converter|WideOr0~0_combout\ : std_logic;
SIGNAL \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \converter|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_R <= R;
ww_Start <= Start;
ww_Din <= Din;
Ready <= ww_Ready;
Busy <= ww_Busy;
Indicator_out <= ww_Indicator_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Clk~inputclkctrl_outclk\ <= NOT \Clk~inputclkctrl_outclk\;
\converter|ALT_INV_WideOr0~0_combout\ <= NOT \converter|WideOr0~0_combout\;

-- Location: FF_X2_Y26_N23
\controller|current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \controller|Selector1~0_combout\,
	clrn => \R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|current_state.s1~q\);

-- Location: FF_X2_Y26_N31
\controller|current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \controller|current_state.s3~feeder_combout\,
	clrn => \R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|current_state.s3~q\);

-- Location: LCCOMB_X2_Y26_N22
\controller|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector1~0_combout\ = (!\controller|current_state.s3~q\ & (\Start~input_o\ & !\controller|Enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|current_state.s3~q\,
	datac => \Start~input_o\,
	datad => \controller|Enable~q\,
	combout => \controller|Selector1~0_combout\);

-- Location: IOIBUF_X0_Y25_N1
\Din[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(9),
	o => \Din[9]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\Din[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(4),
	o => \Din[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\Din[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(2),
	o => \Din[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\Din[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(7),
	o => \Din[7]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\Din[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(1),
	o => \Din[1]~input_o\);

-- Location: LCCOMB_X2_Y26_N30
\controller|current_state.s3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|current_state.s3~feeder_combout\ = \controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Selector6~0_combout\,
	combout => \controller|current_state.s3~feeder_combout\);

-- Location: IOOBUF_X0_Y20_N2
\Ready~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controller|Ready~q\,
	devoe => ww_devoe,
	o => \Ready~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\Busy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controller|Busy~q\,
	devoe => ww_devoe,
	o => \Busy~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\Indicator_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \converter|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \Indicator_out[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\Indicator_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \converter|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \Indicator_out[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\Indicator_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \converter|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \Indicator_out[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\Indicator_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \converter|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \Indicator_out[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\Indicator_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \converter|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \Indicator_out[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\Indicator_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \converter|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \Indicator_out[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\Indicator_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \converter|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \Indicator_out[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\Indicator_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Indicator_out[7]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\Clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X1_Y26_N16
\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X2_Y26_N12
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X0_Y21_N8
\R~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: LCCOMB_X2_Y26_N2
\kept_value~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kept_value~2_combout\ = (\Start~input_o\) # (!\R~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datac => \R~input_o\,
	combout => \kept_value~2_combout\);

-- Location: IOIBUF_X0_Y23_N15
\Start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: LCCOMB_X1_Y26_N18
\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) 
-- # (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # 
-- (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X1_Y26_N20
\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ 
-- (GND))) # (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X1_Y26_N22
\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ (\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	cin => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: FF_X1_Y26_N23
\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \kept_value~2_combout\,
	ena => \current_bit_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X1_Y26_N21
\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \kept_value~2_combout\,
	ena => \current_bit_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X1_Y26_N0
\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ = (\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & !\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\);

-- Location: LCCOMB_X2_Y26_N24
\controller|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector3~0_combout\ = (\controller|Enable~q\ & (((\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (!\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\)) # 
-- (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \controller|Enable~q\,
	datad => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	combout => \controller|Selector3~0_combout\);

-- Location: LCCOMB_X2_Y26_N0
\controller|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector2~0_combout\ = (\controller|Selector3~0_combout\) # ((\controller|current_state.s1~q\ & !\Start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|current_state.s1~q\,
	datac => \Start~input_o\,
	datad => \controller|Selector3~0_combout\,
	combout => \controller|Selector2~0_combout\);

-- Location: FF_X2_Y26_N1
\controller|Enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \controller|Selector2~0_combout\,
	clrn => \R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|Enable~q\);

-- Location: LCCOMB_X2_Y26_N28
\current_bit_counter|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_counter|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\Start~input_o\) # ((\controller|Enable~q\) # (!\R~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datac => \R~input_o\,
	datad => \controller|Enable~q\,
	combout => \current_bit_counter|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X1_Y26_N17
\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \kept_value~2_combout\,
	ena => \current_bit_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: FF_X1_Y26_N19
\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \kept_value~2_combout\,
	ena => \current_bit_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X2_Y26_N10
\controller|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector6~0_combout\ = (\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\controller|Enable~q\ & 
-- \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \controller|Enable~q\,
	datad => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	combout => \controller|Selector6~0_combout\);

-- Location: LCCOMB_X2_Y26_N20
\controller|Ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Ready~feeder_combout\ = \controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Selector6~0_combout\,
	combout => \controller|Ready~feeder_combout\);

-- Location: FF_X2_Y26_N21
\controller|Ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \controller|Ready~feeder_combout\,
	clrn => \R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|Ready~q\);

-- Location: LCCOMB_X2_Y26_N16
\controller|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector0~0_combout\ = (!\controller|current_state.s3~q\ & ((\controller|current_state.s0~q\) # (\Start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|current_state.s3~q\,
	datac => \controller|current_state.s0~q\,
	datad => \Start~input_o\,
	combout => \controller|Selector0~0_combout\);

-- Location: FF_X2_Y26_N17
\controller|current_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \controller|Selector0~0_combout\,
	clrn => \R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|current_state.s0~q\);

-- Location: LCCOMB_X2_Y26_N26
\controller|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controller|Selector3~1_combout\ = (\controller|current_state.s1~q\) # ((\controller|Selector3~0_combout\) # ((!\controller|current_state.s0~q\ & \Start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|current_state.s1~q\,
	datab => \controller|current_state.s0~q\,
	datac => \Start~input_o\,
	datad => \controller|Selector3~0_combout\,
	combout => \controller|Selector3~1_combout\);

-- Location: FF_X2_Y26_N27
\controller|Busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \controller|Selector3~1_combout\,
	clrn => \R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|Busy~q\);

-- Location: LCCOMB_X1_Y26_N6
\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X1_Y26_N8
\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: IOIBUF_X0_Y26_N1
\Din[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(8),
	o => \Din[8]~input_o\);

-- Location: LCCOMB_X1_Y26_N30
\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ = (\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ & ((\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) 
-- & (\Din[9]~input_o\)) # (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\Din[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[9]~input_o\,
	datab => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \Din[8]~input_o\,
	datad => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	combout => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\);

-- Location: IOIBUF_X0_Y24_N1
\Din[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(0),
	o => \Din[0]~input_o\);

-- Location: LCCOMB_X1_Y26_N4
\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ = (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (\Din[2]~input_o\)) # (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\Din[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[2]~input_o\,
	datab => \Din[0]~input_o\,
	datac => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\);

-- Location: IOIBUF_X0_Y23_N8
\Din[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(3),
	o => \Din[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\Din[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(5),
	o => \Din[5]~input_o\);

-- Location: LCCOMB_X1_Y26_N24
\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))) # 
-- (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\Din[5]~input_o\))) # 
-- (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\Din[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[1]~input_o\,
	datab => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \Din[5]~input_o\,
	datad => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X1_Y26_N14
\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ 
-- & (\Din[7]~input_o\)) # (!\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & ((\Din[3]~input_o\))))) # (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (((\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[7]~input_o\,
	datab => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \Din[3]~input_o\,
	datad => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	combout => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: IOIBUF_X0_Y25_N15
\Din[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(6),
	o => \Din[6]~input_o\);

-- Location: LCCOMB_X2_Y26_N18
\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ = (\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- ((\Din[6]~input_o\))) # (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\Din[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[4]~input_o\,
	datab => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \Din[6]~input_o\,
	datad => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\);

-- Location: LCCOMB_X1_Y26_N2
\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ = (\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (((\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\)))) # (!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- ((\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\) # ((\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	datac => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datad => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\,
	combout => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\);

-- Location: LCCOMB_X1_Y26_N28
\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~7_combout\ = (\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\) # 
-- ((!\current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_bit_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	datad => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\,
	combout => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~7_combout\);

-- Location: LCCOMB_X2_Y26_N8
\kept_value~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kept_value~3_combout\ = (!\Start~input_o\ & (\controller|Enable~q\ & (\R~input_o\ & \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => \controller|Enable~q\,
	datac => \R~input_o\,
	datad => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~7_combout\,
	combout => \kept_value~3_combout\);

-- Location: FF_X2_Y26_N9
kept_value : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \kept_value~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kept_value~q\);

-- Location: LCCOMB_X1_Y26_N26
\fall_edge_counter|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fall_edge_counter|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\kept_value~2_combout\) # ((\kept_value~q\ & (\controller|Enable~q\ & !\current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kept_value~2_combout\,
	datab => \kept_value~q\,
	datac => \controller|Enable~q\,
	datad => \current_bit_multiplexer|LPM_MUX_component|auto_generated|muxlut_result0w~7_combout\,
	combout => \fall_edge_counter|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X1_Y26_N9
\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \kept_value~2_combout\,
	ena => \fall_edge_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X1_Y26_N10
\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ 
-- (GND))) # (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X1_Y26_N11
\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \kept_value~2_combout\,
	ena => \fall_edge_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X1_Y26_N7
\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \kept_value~2_combout\,
	ena => \fall_edge_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y26_N12
\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ $ (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	cin => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: FF_X1_Y26_N13
\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \kept_value~2_combout\,
	ena => \fall_edge_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X21_Y26_N0
\converter|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \converter|WideOr6~0_combout\ = (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \converter|WideOr6~0_combout\);

-- Location: LCCOMB_X21_Y26_N2
\converter|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \converter|WideOr5~0_combout\ = (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- ((\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) # (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))) # 
-- (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ 
-- (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \converter|WideOr5~0_combout\);

-- Location: LCCOMB_X21_Y26_N20
\converter|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \converter|WideOr4~0_combout\ = (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- ((\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \converter|WideOr4~0_combout\);

-- Location: LCCOMB_X21_Y26_N6
\converter|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \converter|WideOr3~0_combout\ = (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \converter|WideOr3~0_combout\);

-- Location: LCCOMB_X21_Y26_N16
\converter|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \converter|WideOr2~0_combout\ = (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- !\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- ((!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) # (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \converter|WideOr2~0_combout\);

-- Location: LCCOMB_X21_Y26_N10
\converter|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \converter|WideOr1~0_combout\ = (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \converter|WideOr1~0_combout\);

-- Location: LCCOMB_X21_Y26_N12
\converter|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \converter|WideOr0~0_combout\ = (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # 
-- (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))) # (!\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- ((\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (\fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \fall_edge_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \converter|WideOr0~0_combout\);

ww_Ready <= \Ready~output_o\;

ww_Busy <= \Busy~output_o\;

ww_Indicator_out(0) <= \Indicator_out[0]~output_o\;

ww_Indicator_out(1) <= \Indicator_out[1]~output_o\;

ww_Indicator_out(2) <= \Indicator_out[2]~output_o\;

ww_Indicator_out(3) <= \Indicator_out[3]~output_o\;

ww_Indicator_out(4) <= \Indicator_out[4]~output_o\;

ww_Indicator_out(5) <= \Indicator_out[5]~output_o\;

ww_Indicator_out(6) <= \Indicator_out[6]~output_o\;

ww_Indicator_out(7) <= \Indicator_out[7]~output_o\;
END structure;


