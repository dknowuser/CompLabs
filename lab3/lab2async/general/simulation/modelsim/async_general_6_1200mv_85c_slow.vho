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

-- DATE "09/25/2019 23:19:14"

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

ENTITY 	async_general IS
    PORT (
	Clk : IN std_logic;
	Din : IN std_logic_vector(5 DOWNTO 0);
	Start : IN std_logic;
	Dout : OUT std_logic_vector(5 DOWNTO 0);
	Ready : OUT std_logic;
	Error : OUT std_logic;
	D_connect_trans : OUT std_logic;
	D_connect_recv : IN std_logic
	);
END async_general;

-- Design Ports Information
-- Dout[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ready	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_connect_trans	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_connect_recv	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF async_general IS
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
SIGNAL ww_Dout : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Ready : std_logic;
SIGNAL ww_Error : std_logic;
SIGNAL ww_D_connect_trans : std_logic;
SIGNAL ww_D_connect_recv : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \transmitter|odd~q\ : std_logic;
SIGNAL \transmitter|current_bit~0_combout\ : std_logic;
SIGNAL \transmitter|ShiftRight0~4_combout\ : std_logic;
SIGNAL \transmitter|odd~2_combout\ : std_logic;
SIGNAL \transmitter|odd~3_combout\ : std_logic;
SIGNAL \transmitter|odd~4_combout\ : std_logic;
SIGNAL \transmitter|odd~5_combout\ : std_logic;
SIGNAL \transmitter|odd~6_combout\ : std_logic;
SIGNAL \D_connect_recv~input_o\ : std_logic;
SIGNAL \Din[4]~input_o\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \Dout[5]~output_o\ : std_logic;
SIGNAL \Ready~output_o\ : std_logic;
SIGNAL \Error~output_o\ : std_logic;
SIGNAL \D_connect_trans~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \transmitter|counter[0]~2_combout\ : std_logic;
SIGNAL \transmitter|counter~6_combout\ : std_logic;
SIGNAL \transmitter|Add0~0_combout\ : std_logic;
SIGNAL \transmitter|counter~3_combout\ : std_logic;
SIGNAL \transmitter|Add1~0_combout\ : std_logic;
SIGNAL \transmitter|counter~5_combout\ : std_logic;
SIGNAL \transmitter|counter~4_combout\ : std_logic;
SIGNAL \transmitter|current_bit~1_combout\ : std_logic;
SIGNAL \Din[5]~input_o\ : std_logic;
SIGNAL \transmitter|ShiftRight0~2_combout\ : std_logic;
SIGNAL \transmitter|ShiftRight0~3_combout\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \transmitter|ShiftRight0~0_combout\ : std_logic;
SIGNAL \transmitter|ShiftRight0~1_combout\ : std_logic;
SIGNAL \transmitter|current_bit~2_combout\ : std_logic;
SIGNAL \transmitter|current_bit~3_combout\ : std_logic;
SIGNAL \transmitter|current_bit~q\ : std_logic;
SIGNAL \receiver|Mux2~0_combout\ : std_logic;
SIGNAL \receiver|counter~3_combout\ : std_logic;
SIGNAL \receiver|counter~1_combout\ : std_logic;
SIGNAL \receiver|counter~2_combout\ : std_logic;
SIGNAL \receiver|Mux1~0_combout\ : std_logic;
SIGNAL \receiver|WideOr0~0_combout\ : std_logic;
SIGNAL \receiver|Ready_internal~0_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[2]~0_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[0]~1_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[0]~2_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[1]~3_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[1]~4_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[2]~5_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[2]~6_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[3]~7_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[4]~8_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[4]~9_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[5]~10_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[5]~11_combout\ : std_logic;
SIGNAL \receiver|Ready_internal~1_combout\ : std_logic;
SIGNAL \receiver|Ready_internal~q\ : std_logic;
SIGNAL \receiver|counter~0_combout\ : std_logic;
SIGNAL \receiver|Selector0~2_combout\ : std_logic;
SIGNAL \receiver|Selector0~3_combout\ : std_logic;
SIGNAL \receiver|Selector0~4_combout\ : std_logic;
SIGNAL \receiver|odd~q\ : std_logic;
SIGNAL \receiver|Error_internal~2_combout\ : std_logic;
SIGNAL \receiver|Error_internal~0_combout\ : std_logic;
SIGNAL \receiver|Error_internal~1_combout\ : std_logic;
SIGNAL \receiver|Error_internal~3_combout\ : std_logic;
SIGNAL \receiver|Error_internal~q\ : std_logic;
SIGNAL \transmitter|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \receiver|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \receiver|Dout_internal\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \transmitter|ALT_INV_current_bit~q\ : std_logic;
SIGNAL \receiver|ALT_INV_Ready_internal~q\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Din <= Din;
ww_Start <= Start;
Dout <= ww_Dout;
Ready <= ww_Ready;
Error <= ww_Error;
D_connect_trans <= ww_D_connect_trans;
ww_D_connect_recv <= D_connect_recv;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\transmitter|ALT_INV_current_bit~q\ <= NOT \transmitter|current_bit~q\;
\receiver|ALT_INV_Ready_internal~q\ <= NOT \receiver|Ready_internal~q\;

-- Location: FF_X1_Y23_N13
\transmitter|odd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \transmitter|odd~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|odd~q\);

-- Location: LCCOMB_X1_Y23_N30
\transmitter|current_bit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|current_bit~0_combout\ = (\transmitter|counter\(2) & (\transmitter|counter\(1) & (\transmitter|counter\(0) & !\transmitter|odd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(2),
	datab => \transmitter|counter\(1),
	datac => \transmitter|counter\(0),
	datad => \transmitter|odd~q\,
	combout => \transmitter|current_bit~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\transmitter|ShiftRight0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|ShiftRight0~4_combout\ = (!\transmitter|counter\(3) & (\transmitter|counter\(2) $ (((\transmitter|counter\(0)) # (\transmitter|counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(2),
	datab => \transmitter|counter\(0),
	datac => \transmitter|counter\(1),
	datad => \transmitter|counter\(3),
	combout => \transmitter|ShiftRight0~4_combout\);

-- Location: LCCOMB_X1_Y23_N18
\transmitter|odd~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|odd~2_combout\ = (\transmitter|ShiftRight0~3_combout\) # ((\transmitter|ShiftRight0~4_combout\ & \transmitter|ShiftRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|ShiftRight0~4_combout\,
	datac => \transmitter|ShiftRight0~3_combout\,
	datad => \transmitter|ShiftRight0~1_combout\,
	combout => \transmitter|odd~2_combout\);

-- Location: LCCOMB_X1_Y23_N28
\transmitter|odd~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|odd~3_combout\ = (\transmitter|counter\(2) & ((\transmitter|counter\(0)) # (!\transmitter|counter\(1)))) # (!\transmitter|counter\(2) & (\transmitter|counter\(0) & !\transmitter|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(2),
	datab => \transmitter|counter\(0),
	datac => \transmitter|counter\(1),
	combout => \transmitter|odd~3_combout\);

-- Location: LCCOMB_X1_Y23_N26
\transmitter|odd~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|odd~4_combout\ = (\transmitter|odd~q\ & ((\transmitter|counter\(3)) # ((\transmitter|counter\(1)) # (\transmitter|odd~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|odd~q\,
	datab => \transmitter|counter\(3),
	datac => \transmitter|counter\(1),
	datad => \transmitter|odd~3_combout\,
	combout => \transmitter|odd~4_combout\);

-- Location: LCCOMB_X1_Y23_N12
\transmitter|odd~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|odd~5_combout\ = (\Start~input_o\ & (\transmitter|odd~4_combout\ $ (((\transmitter|odd~6_combout\ & \transmitter|odd~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|odd~4_combout\,
	datab => \Start~input_o\,
	datac => \transmitter|odd~6_combout\,
	datad => \transmitter|odd~2_combout\,
	combout => \transmitter|odd~5_combout\);

-- Location: LCCOMB_X2_Y23_N12
\transmitter|odd~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|odd~6_combout\ = (\transmitter|counter\(0) & ((\transmitter|counter\(3)) # ((!\transmitter|counter\(1)) # (!\transmitter|counter\(2))))) # (!\transmitter|counter\(0) & (((\transmitter|counter\(2)) # (\transmitter|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(0),
	datab => \transmitter|counter\(3),
	datac => \transmitter|counter\(2),
	datad => \transmitter|counter\(1),
	combout => \transmitter|odd~6_combout\);

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

-- Location: IOOBUF_X0_Y20_N9
\Dout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|Dout_internal\(0),
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\Dout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|Dout_internal\(1),
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\Dout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|Dout_internal\(2),
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\Dout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|Dout_internal\(3),
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\Dout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|Dout_internal\(4),
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\Dout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|Dout_internal\(5),
	devoe => ww_devoe,
	o => \Dout[5]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\Ready~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|ALT_INV_Ready_internal~q\,
	devoe => ww_devoe,
	o => \Ready~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\Error~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|Error_internal~q\,
	devoe => ww_devoe,
	o => \Error~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\D_connect_trans~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmitter|ALT_INV_current_bit~q\,
	devoe => ww_devoe,
	o => \D_connect_trans~output_o\);

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

-- Location: IOIBUF_X0_Y21_N8
\Start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: LCCOMB_X2_Y23_N2
\transmitter|counter[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|counter[0]~2_combout\ = (\transmitter|counter\(0)) # (((\transmitter|counter\(2)) # (\transmitter|counter\(1))) # (!\transmitter|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(0),
	datab => \transmitter|counter\(3),
	datac => \transmitter|counter\(2),
	datad => \transmitter|counter\(1),
	combout => \transmitter|counter[0]~2_combout\);

-- Location: LCCOMB_X1_Y23_N8
\transmitter|counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|counter~6_combout\ = (\Start~input_o\ & (\transmitter|counter[0]~2_combout\ & (\transmitter|counter\(0) $ (\transmitter|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(0),
	datab => \Start~input_o\,
	datac => \transmitter|counter\(1),
	datad => \transmitter|counter[0]~2_combout\,
	combout => \transmitter|counter~6_combout\);

-- Location: FF_X1_Y23_N9
\transmitter|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \transmitter|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|counter\(1));

-- Location: LCCOMB_X2_Y23_N4
\transmitter|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add0~0_combout\ = (\transmitter|counter\(0) & \transmitter|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(0),
	datad => \transmitter|counter\(1),
	combout => \transmitter|Add0~0_combout\);

-- Location: LCCOMB_X1_Y23_N6
\transmitter|counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|counter~3_combout\ = (\transmitter|counter[0]~2_combout\ & (\Start~input_o\ & (\transmitter|counter\(2) $ (\transmitter|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter[0]~2_combout\,
	datab => \Start~input_o\,
	datac => \transmitter|counter\(2),
	datad => \transmitter|Add0~0_combout\,
	combout => \transmitter|counter~3_combout\);

-- Location: FF_X1_Y23_N7
\transmitter|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \transmitter|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|counter\(2));

-- Location: LCCOMB_X2_Y23_N18
\transmitter|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add1~0_combout\ = \transmitter|counter\(3) $ (((\transmitter|counter\(0) & (\transmitter|counter\(2) & \transmitter|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(0),
	datab => \transmitter|counter\(3),
	datac => \transmitter|counter\(2),
	datad => \transmitter|counter\(1),
	combout => \transmitter|Add1~0_combout\);

-- Location: LCCOMB_X2_Y23_N24
\transmitter|counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|counter~5_combout\ = (\transmitter|Add1~0_combout\ & (\Start~input_o\ & \transmitter|counter[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|Add1~0_combout\,
	datac => \Start~input_o\,
	datad => \transmitter|counter[0]~2_combout\,
	combout => \transmitter|counter~5_combout\);

-- Location: FF_X2_Y23_N25
\transmitter|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \transmitter|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|counter\(3));

-- Location: LCCOMB_X1_Y23_N2
\transmitter|counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|counter~4_combout\ = (\Start~input_o\ & (!\transmitter|counter\(0) & \transmitter|counter[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Start~input_o\,
	datac => \transmitter|counter\(0),
	datad => \transmitter|counter[0]~2_combout\,
	combout => \transmitter|counter~4_combout\);

-- Location: FF_X1_Y23_N3
\transmitter|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \transmitter|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|counter\(0));

-- Location: LCCOMB_X1_Y23_N16
\transmitter|current_bit~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|current_bit~1_combout\ = (\transmitter|counter\(2) & ((!\transmitter|counter\(1)) # (!\transmitter|counter\(0)))) # (!\transmitter|counter\(2) & ((\transmitter|counter\(0)) # (\transmitter|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(2),
	datab => \transmitter|counter\(0),
	datac => \transmitter|counter\(1),
	combout => \transmitter|current_bit~1_combout\);

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

-- Location: LCCOMB_X1_Y23_N14
\transmitter|ShiftRight0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|ShiftRight0~2_combout\ = (\transmitter|counter\(1) & (((\Din[5]~input_o\ & !\transmitter|counter\(0))))) # (!\transmitter|counter\(1) & (\Din[4]~input_o\ & ((\transmitter|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[4]~input_o\,
	datab => \Din[5]~input_o\,
	datac => \transmitter|counter\(1),
	datad => \transmitter|counter\(0),
	combout => \transmitter|ShiftRight0~2_combout\);

-- Location: LCCOMB_X1_Y23_N4
\transmitter|ShiftRight0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|ShiftRight0~3_combout\ = (\transmitter|counter\(2) & (\transmitter|ShiftRight0~2_combout\ & !\transmitter|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(2),
	datac => \transmitter|ShiftRight0~2_combout\,
	datad => \transmitter|counter\(3),
	combout => \transmitter|ShiftRight0~3_combout\);

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

-- Location: LCCOMB_X1_Y23_N24
\transmitter|ShiftRight0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|ShiftRight0~0_combout\ = (\transmitter|counter\(1) & (((\transmitter|counter\(0))))) # (!\transmitter|counter\(1) & ((\transmitter|counter\(0) & (\Din[0]~input_o\)) # (!\transmitter|counter\(0) & ((\Din[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[0]~input_o\,
	datab => \Din[3]~input_o\,
	datac => \transmitter|counter\(1),
	datad => \transmitter|counter\(0),
	combout => \transmitter|ShiftRight0~0_combout\);

-- Location: LCCOMB_X1_Y23_N10
\transmitter|ShiftRight0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|ShiftRight0~1_combout\ = (\transmitter|counter\(1) & ((\transmitter|ShiftRight0~0_combout\ & ((\Din[2]~input_o\))) # (!\transmitter|ShiftRight0~0_combout\ & (\Din[1]~input_o\)))) # (!\transmitter|counter\(1) & 
-- (((\transmitter|ShiftRight0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[1]~input_o\,
	datab => \transmitter|counter\(1),
	datac => \Din[2]~input_o\,
	datad => \transmitter|ShiftRight0~0_combout\,
	combout => \transmitter|ShiftRight0~1_combout\);

-- Location: LCCOMB_X1_Y23_N0
\transmitter|current_bit~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|current_bit~2_combout\ = (\transmitter|current_bit~1_combout\ & ((\transmitter|ShiftRight0~3_combout\) # ((\transmitter|ShiftRight0~4_combout\ & \transmitter|ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|ShiftRight0~4_combout\,
	datab => \transmitter|current_bit~1_combout\,
	datac => \transmitter|ShiftRight0~3_combout\,
	datad => \transmitter|ShiftRight0~1_combout\,
	combout => \transmitter|current_bit~2_combout\);

-- Location: LCCOMB_X1_Y23_N20
\transmitter|current_bit~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|current_bit~3_combout\ = (\Start~input_o\ & ((\transmitter|counter\(3)) # ((!\transmitter|current_bit~0_combout\ & !\transmitter|current_bit~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|current_bit~0_combout\,
	datab => \transmitter|counter\(3),
	datac => \Start~input_o\,
	datad => \transmitter|current_bit~2_combout\,
	combout => \transmitter|current_bit~3_combout\);

-- Location: FF_X1_Y23_N21
\transmitter|current_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \transmitter|current_bit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|current_bit~q\);

-- Location: LCCOMB_X1_Y21_N4
\receiver|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Mux2~0_combout\ = \receiver|counter\(1) $ (\receiver|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(0),
	combout => \receiver|Mux2~0_combout\);

-- Location: FF_X1_Y21_N5
\receiver|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|counter\(1));

-- Location: LCCOMB_X1_Y21_N24
\receiver|counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|counter~3_combout\ = (\receiver|counter\(2) & (\receiver|counter\(3) $ (((\receiver|counter\(0) & \receiver|counter\(1)))))) # (!\receiver|counter\(2) & (\receiver|counter\(3) & ((\receiver|counter\(0)) # (\receiver|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(2),
	datab => \receiver|counter\(0),
	datac => \receiver|counter\(3),
	datad => \receiver|counter\(1),
	combout => \receiver|counter~3_combout\);

-- Location: FF_X1_Y21_N25
\receiver|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|counter\(3));

-- Location: LCCOMB_X2_Y21_N22
\receiver|counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|counter~1_combout\ = (\receiver|counter\(2)) # ((\receiver|counter\(1)) # ((!\receiver|counter\(3) & \transmitter|current_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(2),
	datab => \receiver|counter\(3),
	datac => \receiver|counter\(1),
	datad => \transmitter|current_bit~q\,
	combout => \receiver|counter~1_combout\);

-- Location: LCCOMB_X1_Y21_N22
\receiver|counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|counter~2_combout\ = (!\receiver|counter\(0) & \receiver|counter~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|counter\(0),
	datad => \receiver|counter~1_combout\,
	combout => \receiver|counter~2_combout\);

-- Location: FF_X1_Y21_N23
\receiver|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|counter\(0));

-- Location: LCCOMB_X1_Y21_N6
\receiver|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Mux1~0_combout\ = \receiver|counter\(2) $ (((\receiver|counter\(0) & \receiver|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|counter\(0),
	datac => \receiver|counter\(2),
	datad => \receiver|counter\(1),
	combout => \receiver|Mux1~0_combout\);

-- Location: FF_X1_Y21_N7
\receiver|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|counter\(2));

-- Location: LCCOMB_X1_Y21_N26
\receiver|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|WideOr0~0_combout\ = (\receiver|counter\(0) & ((\receiver|counter\(3)) # ((!\receiver|counter\(2)) # (!\receiver|counter\(1))))) # (!\receiver|counter\(0) & (((\receiver|counter\(1)) # (\receiver|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(0),
	datab => \receiver|counter\(3),
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(2),
	combout => \receiver|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y21_N16
\receiver|Ready_internal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Ready_internal~0_combout\ = (!\receiver|counter\(0) & (!\receiver|counter\(1) & !\receiver|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(0),
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(2),
	combout => \receiver|Ready_internal~0_combout\);

-- Location: LCCOMB_X1_Y21_N14
\receiver|Dout_internal[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[2]~0_combout\ = (\receiver|WideOr0~0_combout\ & (\receiver|counter\(3) $ (!\receiver|Ready_internal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|counter\(3),
	datac => \receiver|WideOr0~0_combout\,
	datad => \receiver|Ready_internal~0_combout\,
	combout => \receiver|Dout_internal[2]~0_combout\);

-- Location: LCCOMB_X2_Y21_N6
\receiver|Dout_internal[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[0]~1_combout\ = (!\receiver|counter\(2) & (\receiver|counter\(0) & (!\receiver|counter\(1) & \receiver|Dout_internal[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(2),
	datab => \receiver|counter\(0),
	datac => \receiver|counter\(1),
	datad => \receiver|Dout_internal[2]~0_combout\,
	combout => \receiver|Dout_internal[0]~1_combout\);

-- Location: LCCOMB_X2_Y21_N28
\receiver|Dout_internal[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[0]~2_combout\ = (\receiver|Dout_internal[0]~1_combout\ & (!\transmitter|current_bit~q\)) # (!\receiver|Dout_internal[0]~1_combout\ & ((\receiver|Dout_internal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|current_bit~q\,
	datac => \receiver|Dout_internal\(0),
	datad => \receiver|Dout_internal[0]~1_combout\,
	combout => \receiver|Dout_internal[0]~2_combout\);

-- Location: FF_X2_Y21_N29
\receiver|Dout_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|Dout_internal[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Dout_internal\(0));

-- Location: LCCOMB_X1_Y21_N12
\receiver|Dout_internal[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[1]~3_combout\ = (!\receiver|counter\(2) & (!\receiver|counter\(0) & (\receiver|Dout_internal[2]~0_combout\ & \receiver|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(2),
	datab => \receiver|counter\(0),
	datac => \receiver|Dout_internal[2]~0_combout\,
	datad => \receiver|counter\(1),
	combout => \receiver|Dout_internal[1]~3_combout\);

-- Location: LCCOMB_X1_Y21_N0
\receiver|Dout_internal[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[1]~4_combout\ = (\receiver|Dout_internal[1]~3_combout\ & (!\transmitter|current_bit~q\)) # (!\receiver|Dout_internal[1]~3_combout\ & ((\receiver|Dout_internal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|current_bit~q\,
	datac => \receiver|Dout_internal\(1),
	datad => \receiver|Dout_internal[1]~3_combout\,
	combout => \receiver|Dout_internal[1]~4_combout\);

-- Location: FF_X1_Y21_N1
\receiver|Dout_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|Dout_internal[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Dout_internal\(1));

-- Location: LCCOMB_X1_Y21_N18
\receiver|Dout_internal[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[2]~5_combout\ = (\receiver|Dout_internal[2]~0_combout\ & ((\receiver|counter\(2) & (!\receiver|counter\(0) & !\receiver|counter\(1))) # (!\receiver|counter\(2) & (\receiver|counter\(0) & \receiver|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(2),
	datab => \receiver|counter\(0),
	datac => \receiver|Dout_internal[2]~0_combout\,
	datad => \receiver|counter\(1),
	combout => \receiver|Dout_internal[2]~5_combout\);

-- Location: LCCOMB_X1_Y21_N10
\receiver|Dout_internal[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[2]~6_combout\ = (\receiver|counter\(0) & ((\receiver|Dout_internal[2]~5_combout\ & (!\transmitter|current_bit~q\)) # (!\receiver|Dout_internal[2]~5_combout\ & ((\receiver|Dout_internal\(2)))))) # (!\receiver|counter\(0) & 
-- (((\receiver|Dout_internal\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(0),
	datab => \transmitter|current_bit~q\,
	datac => \receiver|Dout_internal\(2),
	datad => \receiver|Dout_internal[2]~5_combout\,
	combout => \receiver|Dout_internal[2]~6_combout\);

-- Location: FF_X1_Y21_N11
\receiver|Dout_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|Dout_internal[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Dout_internal\(2));

-- Location: LCCOMB_X1_Y21_N28
\receiver|Dout_internal[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[3]~7_combout\ = (\receiver|counter\(0) & (((\receiver|Dout_internal\(3))))) # (!\receiver|counter\(0) & ((\receiver|Dout_internal[2]~5_combout\ & (!\transmitter|current_bit~q\)) # (!\receiver|Dout_internal[2]~5_combout\ & 
-- ((\receiver|Dout_internal\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(0),
	datab => \transmitter|current_bit~q\,
	datac => \receiver|Dout_internal\(3),
	datad => \receiver|Dout_internal[2]~5_combout\,
	combout => \receiver|Dout_internal[3]~7_combout\);

-- Location: FF_X1_Y21_N29
\receiver|Dout_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|Dout_internal[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Dout_internal\(3));

-- Location: LCCOMB_X1_Y21_N20
\receiver|Dout_internal[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[4]~8_combout\ = (\receiver|counter\(2) & (\receiver|counter\(0) & (\receiver|Dout_internal[2]~0_combout\ & !\receiver|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(2),
	datab => \receiver|counter\(0),
	datac => \receiver|Dout_internal[2]~0_combout\,
	datad => \receiver|counter\(1),
	combout => \receiver|Dout_internal[4]~8_combout\);

-- Location: LCCOMB_X1_Y21_N30
\receiver|Dout_internal[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[4]~9_combout\ = (\receiver|Dout_internal[4]~8_combout\ & (!\transmitter|current_bit~q\)) # (!\receiver|Dout_internal[4]~8_combout\ & ((\receiver|Dout_internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|current_bit~q\,
	datac => \receiver|Dout_internal\(4),
	datad => \receiver|Dout_internal[4]~8_combout\,
	combout => \receiver|Dout_internal[4]~9_combout\);

-- Location: FF_X1_Y21_N31
\receiver|Dout_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|Dout_internal[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Dout_internal\(4));

-- Location: LCCOMB_X1_Y21_N2
\receiver|Dout_internal[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[5]~10_combout\ = (\receiver|counter\(2) & (!\receiver|counter\(0) & (\receiver|Dout_internal[2]~0_combout\ & \receiver|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(2),
	datab => \receiver|counter\(0),
	datac => \receiver|Dout_internal[2]~0_combout\,
	datad => \receiver|counter\(1),
	combout => \receiver|Dout_internal[5]~10_combout\);

-- Location: LCCOMB_X1_Y21_N8
\receiver|Dout_internal[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[5]~11_combout\ = (\receiver|Dout_internal[5]~10_combout\ & (!\transmitter|current_bit~q\)) # (!\receiver|Dout_internal[5]~10_combout\ & ((\receiver|Dout_internal\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|current_bit~q\,
	datac => \receiver|Dout_internal\(5),
	datad => \receiver|Dout_internal[5]~10_combout\,
	combout => \receiver|Dout_internal[5]~11_combout\);

-- Location: FF_X1_Y21_N9
\receiver|Dout_internal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|Dout_internal[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Dout_internal\(5));

-- Location: LCCOMB_X2_Y21_N2
\receiver|Ready_internal~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Ready_internal~1_combout\ = (\receiver|Ready_internal~0_combout\ & (!\receiver|counter\(3) & ((\receiver|Ready_internal~q\) # (\transmitter|current_bit~q\)))) # (!\receiver|Ready_internal~0_combout\ & (((\receiver|Ready_internal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Ready_internal~0_combout\,
	datab => \receiver|counter\(3),
	datac => \receiver|Ready_internal~q\,
	datad => \transmitter|current_bit~q\,
	combout => \receiver|Ready_internal~1_combout\);

-- Location: FF_X2_Y21_N3
\receiver|Ready_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|Ready_internal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Ready_internal~q\);

-- Location: LCCOMB_X2_Y21_N16
\receiver|counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|counter~0_combout\ = (\receiver|counter\(2) & (!\receiver|counter\(3) & (\receiver|counter\(1) & \receiver|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(2),
	datab => \receiver|counter\(3),
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(0),
	combout => \receiver|counter~0_combout\);

-- Location: LCCOMB_X2_Y21_N8
\receiver|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Selector0~2_combout\ = (\receiver|counter\(0) & ((\receiver|counter\(1)) # (!\receiver|counter\(2)))) # (!\receiver|counter\(0) & (\receiver|counter\(1) & !\receiver|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|counter\(0),
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(2),
	combout => \receiver|Selector0~2_combout\);

-- Location: LCCOMB_X2_Y21_N10
\receiver|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Selector0~3_combout\ = (\receiver|counter\(2) & (!\transmitter|current_bit~q\ & ((\receiver|counter\(3)) # (!\receiver|Selector0~2_combout\)))) # (!\receiver|counter\(2) & (((\receiver|counter\(3) & !\receiver|Selector0~2_combout\)) # 
-- (!\transmitter|current_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(2),
	datab => \receiver|counter\(3),
	datac => \receiver|Selector0~2_combout\,
	datad => \transmitter|current_bit~q\,
	combout => \receiver|Selector0~3_combout\);

-- Location: LCCOMB_X2_Y21_N26
\receiver|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Selector0~4_combout\ = (\receiver|odd~q\ & (\receiver|Selector0~3_combout\ $ (((\receiver|counter\(2)) # (\receiver|Selector0~2_combout\))))) # (!\receiver|odd~q\ & (\receiver|Selector0~3_combout\ & ((\receiver|counter\(2)) # 
-- (\receiver|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(2),
	datab => \receiver|Selector0~2_combout\,
	datac => \receiver|odd~q\,
	datad => \receiver|Selector0~3_combout\,
	combout => \receiver|Selector0~4_combout\);

-- Location: FF_X2_Y21_N27
\receiver|odd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|Selector0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|odd~q\);

-- Location: LCCOMB_X2_Y21_N4
\receiver|Error_internal~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Error_internal~2_combout\ = \receiver|odd~q\ $ (!\transmitter|current_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|odd~q\,
	datad => \transmitter|current_bit~q\,
	combout => \receiver|Error_internal~2_combout\);

-- Location: LCCOMB_X2_Y21_N24
\receiver|Error_internal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Error_internal~0_combout\ = (\receiver|Error_internal~q\ & ((\receiver|counter\(3)) # ((!\transmitter|current_bit~q\)))) # (!\receiver|Error_internal~q\ & (\receiver|counter\(3) & (!\receiver|WideOr0~0_combout\ & !\transmitter|current_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Error_internal~q\,
	datab => \receiver|counter\(3),
	datac => \receiver|WideOr0~0_combout\,
	datad => \transmitter|current_bit~q\,
	combout => \receiver|Error_internal~0_combout\);

-- Location: LCCOMB_X2_Y21_N18
\receiver|Error_internal~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Error_internal~1_combout\ = (\receiver|Ready_internal~0_combout\ & ((\receiver|Error_internal~0_combout\) # ((\receiver|Error_internal~q\ & \receiver|WideOr0~0_combout\)))) # (!\receiver|Ready_internal~0_combout\ & (\receiver|Error_internal~q\ & 
-- (\receiver|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Ready_internal~0_combout\,
	datab => \receiver|Error_internal~q\,
	datac => \receiver|WideOr0~0_combout\,
	datad => \receiver|Error_internal~0_combout\,
	combout => \receiver|Error_internal~1_combout\);

-- Location: LCCOMB_X2_Y21_N12
\receiver|Error_internal~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Error_internal~3_combout\ = (\receiver|Error_internal~1_combout\) # ((!\receiver|WideOr0~0_combout\ & (\receiver|counter~0_combout\ & !\receiver|Error_internal~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|WideOr0~0_combout\,
	datab => \receiver|counter~0_combout\,
	datac => \receiver|Error_internal~2_combout\,
	datad => \receiver|Error_internal~1_combout\,
	combout => \receiver|Error_internal~3_combout\);

-- Location: FF_X2_Y21_N13
\receiver|Error_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \receiver|Error_internal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Error_internal~q\);

-- Location: IOIBUF_X37_Y0_N22
\D_connect_recv~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_connect_recv,
	o => \D_connect_recv~input_o\);

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;

ww_Dout(5) <= \Dout[5]~output_o\;

ww_Ready <= \Ready~output_o\;

ww_Error <= \Error~output_o\;

ww_D_connect_trans <= \D_connect_trans~output_o\;
END structure;


