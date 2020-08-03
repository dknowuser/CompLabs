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

-- DATE "09/25/2019 22:53:26"

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

ENTITY 	sync_general IS
    PORT (
	Clk : IN std_logic;
	Din : IN std_logic_vector(5 DOWNTO 0);
	Start : IN std_logic;
	Dout : OUT std_logic_vector(5 DOWNTO 0);
	Ready : OUT std_logic;
	Error : OUT std_logic;
	Clk_connect_trans : OUT std_logic;
	D_connect_trans : OUT std_logic;
	FS_connect_trans : OUT std_logic;
	Clk_connect_recv : IN std_logic;
	D_connect_recv : IN std_logic;
	FS_connect_recv : IN std_logic
	);
END sync_general;

-- Design Ports Information
-- Dout[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ready	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk_connect_trans	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_connect_trans	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FS_connect_trans	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_connect_recv	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FS_connect_recv	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk_connect_recv	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sync_general IS
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
SIGNAL ww_Clk_connect_trans : std_logic;
SIGNAL ww_D_connect_trans : std_logic;
SIGNAL ww_FS_connect_trans : std_logic;
SIGNAL ww_Clk_connect_recv : std_logic;
SIGNAL ww_D_connect_recv : std_logic;
SIGNAL ww_FS_connect_recv : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \receiver|odd~q\ : std_logic;
SIGNAL \receiver|LessThan0~0_combout\ : std_logic;
SIGNAL \receiver|odd~1_combout\ : std_logic;
SIGNAL \transmitter|odd~2_combout\ : std_logic;
SIGNAL \transmitter|odd~3_combout\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \Din[5]~input_o\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \Dout[5]~output_o\ : std_logic;
SIGNAL \Ready~output_o\ : std_logic;
SIGNAL \Error~output_o\ : std_logic;
SIGNAL \Clk_connect_trans~output_o\ : std_logic;
SIGNAL \D_connect_trans~output_o\ : std_logic;
SIGNAL \FS_connect_trans~output_o\ : std_logic;
SIGNAL \Clk_connect_recv~input_o\ : std_logic;
SIGNAL \FS_connect_recv~input_o\ : std_logic;
SIGNAL \receiver|Add0~1_combout\ : std_logic;
SIGNAL \receiver|counter~0_combout\ : std_logic;
SIGNAL \receiver|Add0~0_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[0]~0_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[0]~1_combout\ : std_logic;
SIGNAL \D_connect_recv~input_o\ : std_logic;
SIGNAL \receiver|Dout_internal[1]~2_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[1]~3_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[2]~4_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[2]~5_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[3]~6_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[4]~7_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[4]~8_combout\ : std_logic;
SIGNAL \receiver|Dout_internal[5]~9_combout\ : std_logic;
SIGNAL \receiver|Ready_internal~0_combout\ : std_logic;
SIGNAL \receiver|Ready_internal~q\ : std_logic;
SIGNAL \receiver|Error_internal~0_combout\ : std_logic;
SIGNAL \receiver|odd~0_combout\ : std_logic;
SIGNAL \receiver|Error_internal~1_combout\ : std_logic;
SIGNAL \receiver|Error_internal~q\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Din[4]~input_o\ : std_logic;
SIGNAL \transmitter|Add0~0_combout\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \transmitter|counter~1_combout\ : std_logic;
SIGNAL \transmitter|counter[0]~feeder_combout\ : std_logic;
SIGNAL \transmitter|Add0~1_combout\ : std_logic;
SIGNAL \transmitter|odd~5_combout\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \transmitter|counter~0_combout\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \transmitter|ShiftRight0~0_combout\ : std_logic;
SIGNAL \transmitter|ShiftRight0~1_combout\ : std_logic;
SIGNAL \transmitter|odd~4_combout\ : std_logic;
SIGNAL \transmitter|odd~q\ : std_logic;
SIGNAL \transmitter|D_bit~0_combout\ : std_logic;
SIGNAL \transmitter|D_bit~1_combout\ : std_logic;
SIGNAL \transmitter|D_bit~2_combout\ : std_logic;
SIGNAL \transmitter|D_bit~q\ : std_logic;
SIGNAL \transmitter|FS_reg~q\ : std_logic;
SIGNAL \transmitter|counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \receiver|counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \receiver|Dout_internal\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \receiver|ALT_INV_Ready_internal~q\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Din <= Din;
ww_Start <= Start;
Dout <= ww_Dout;
Ready <= ww_Ready;
Error <= ww_Error;
Clk_connect_trans <= ww_Clk_connect_trans;
D_connect_trans <= ww_D_connect_trans;
FS_connect_trans <= ww_FS_connect_trans;
ww_Clk_connect_recv <= Clk_connect_recv;
ww_D_connect_recv <= D_connect_recv;
ww_FS_connect_recv <= FS_connect_recv;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\receiver|ALT_INV_Ready_internal~q\ <= NOT \receiver|Ready_internal~q\;

-- Location: FF_X37_Y1_N9
\receiver|odd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_connect_recv~input_o\,
	d => \receiver|odd~1_combout\,
	ena => \FS_connect_recv~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|odd~q\);

-- Location: LCCOMB_X37_Y1_N6
\receiver|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|LessThan0~0_combout\ = (\receiver|counter\(0)) # ((!\receiver|counter\(2)) # (!\receiver|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(0),
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(2),
	combout => \receiver|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y1_N8
\receiver|odd~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|odd~1_combout\ = \receiver|odd~0_combout\ $ (((\D_connect_recv~input_o\ & \receiver|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_connect_recv~input_o\,
	datac => \receiver|LessThan0~0_combout\,
	datad => \receiver|odd~0_combout\,
	combout => \receiver|odd~1_combout\);

-- Location: LCCOMB_X1_Y23_N30
\transmitter|odd~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|odd~2_combout\ = (\transmitter|counter\(1) & ((\Din[4]~input_o\) # (!\transmitter|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Din[4]~input_o\,
	datac => \transmitter|counter\(1),
	datad => \transmitter|counter\(0),
	combout => \transmitter|odd~2_combout\);

-- Location: LCCOMB_X1_Y23_N12
\transmitter|odd~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|odd~3_combout\ = (\transmitter|counter\(2)) # ((\transmitter|odd~2_combout\ & ((\transmitter|counter\(0)) # (\Din[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(2),
	datab => \transmitter|counter\(0),
	datac => \transmitter|odd~2_combout\,
	datad => \Din[5]~input_o\,
	combout => \transmitter|odd~3_combout\);

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
\Clk_connect_trans~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Clk~input_o\,
	devoe => ww_devoe,
	o => \Clk_connect_trans~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\D_connect_trans~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmitter|D_bit~q\,
	devoe => ww_devoe,
	o => \D_connect_trans~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\FS_connect_trans~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmitter|FS_reg~q\,
	devoe => ww_devoe,
	o => \FS_connect_trans~output_o\);

-- Location: IOIBUF_X37_Y0_N22
\Clk_connect_recv~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk_connect_recv,
	o => \Clk_connect_recv~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\FS_connect_recv~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FS_connect_recv,
	o => \FS_connect_recv~input_o\);

-- Location: LCCOMB_X37_Y1_N24
\receiver|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Add0~1_combout\ = \receiver|counter\(2) $ (((\receiver|counter\(1) & \receiver|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|counter\(1),
	datac => \receiver|counter\(2),
	datad => \receiver|counter\(0),
	combout => \receiver|Add0~1_combout\);

-- Location: FF_X37_Y1_N25
\receiver|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_connect_recv~input_o\,
	d => \receiver|Add0~1_combout\,
	ena => \FS_connect_recv~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|counter\(2));

-- Location: LCCOMB_X37_Y1_N12
\receiver|counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|counter~0_combout\ = ((\receiver|counter\(1) & \receiver|counter\(2))) # (!\receiver|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|counter\(1),
	datac => \receiver|counter\(0),
	datad => \receiver|counter\(2),
	combout => \receiver|counter~0_combout\);

-- Location: FF_X37_Y1_N13
\receiver|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_connect_recv~input_o\,
	d => \receiver|counter~0_combout\,
	ena => \FS_connect_recv~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|counter\(0));

-- Location: LCCOMB_X37_Y1_N14
\receiver|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Add0~0_combout\ = \receiver|counter\(1) $ (\receiver|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(0),
	combout => \receiver|Add0~0_combout\);

-- Location: FF_X37_Y1_N15
\receiver|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_connect_recv~input_o\,
	d => \receiver|Add0~0_combout\,
	ena => \FS_connect_recv~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|counter\(1));

-- Location: LCCOMB_X37_Y1_N10
\receiver|Dout_internal[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[0]~0_combout\ = (\FS_connect_recv~input_o\ & ((\receiver|counter\(0) & (\receiver|counter\(1) & \receiver|counter\(2))) # (!\receiver|counter\(0) & (!\receiver|counter\(1) & !\receiver|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(0),
	datab => \FS_connect_recv~input_o\,
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(2),
	combout => \receiver|Dout_internal[0]~0_combout\);

-- Location: LCCOMB_X37_Y1_N4
\receiver|Dout_internal[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[0]~1_combout\ = (\receiver|Dout_internal[0]~0_combout\ & (\D_connect_recv~input_o\)) # (!\receiver|Dout_internal[0]~0_combout\ & ((\receiver|Dout_internal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_connect_recv~input_o\,
	datac => \receiver|Dout_internal\(0),
	datad => \receiver|Dout_internal[0]~0_combout\,
	combout => \receiver|Dout_internal[0]~1_combout\);

-- Location: FF_X37_Y1_N5
\receiver|Dout_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_connect_recv~input_o\,
	d => \receiver|Dout_internal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Dout_internal\(0));

-- Location: IOIBUF_X37_Y0_N15
\D_connect_recv~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_connect_recv,
	o => \D_connect_recv~input_o\);

-- Location: LCCOMB_X36_Y1_N16
\receiver|Dout_internal[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[1]~2_combout\ = (\FS_connect_recv~input_o\ & (\receiver|counter\(0) & !\receiver|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS_connect_recv~input_o\,
	datab => \receiver|counter\(0),
	datac => \receiver|counter\(1),
	combout => \receiver|Dout_internal[1]~2_combout\);

-- Location: LCCOMB_X36_Y1_N12
\receiver|Dout_internal[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[1]~3_combout\ = (\receiver|counter\(2) & (((\receiver|Dout_internal\(1))))) # (!\receiver|counter\(2) & ((\receiver|Dout_internal[1]~2_combout\ & (\D_connect_recv~input_o\)) # (!\receiver|Dout_internal[1]~2_combout\ & 
-- ((\receiver|Dout_internal\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(2),
	datab => \D_connect_recv~input_o\,
	datac => \receiver|Dout_internal\(1),
	datad => \receiver|Dout_internal[1]~2_combout\,
	combout => \receiver|Dout_internal[1]~3_combout\);

-- Location: FF_X36_Y1_N13
\receiver|Dout_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_connect_recv~input_o\,
	d => \receiver|Dout_internal[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Dout_internal\(1));

-- Location: LCCOMB_X37_Y1_N16
\receiver|Dout_internal[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[2]~4_combout\ = (\FS_connect_recv~input_o\ & (\receiver|counter\(1) & !\receiver|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS_connect_recv~input_o\,
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(2),
	combout => \receiver|Dout_internal[2]~4_combout\);

-- Location: LCCOMB_X37_Y1_N30
\receiver|Dout_internal[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[2]~5_combout\ = (\receiver|counter\(0) & (((\receiver|Dout_internal\(2))))) # (!\receiver|counter\(0) & ((\receiver|Dout_internal[2]~4_combout\ & (\D_connect_recv~input_o\)) # (!\receiver|Dout_internal[2]~4_combout\ & 
-- ((\receiver|Dout_internal\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_connect_recv~input_o\,
	datab => \receiver|counter\(0),
	datac => \receiver|Dout_internal\(2),
	datad => \receiver|Dout_internal[2]~4_combout\,
	combout => \receiver|Dout_internal[2]~5_combout\);

-- Location: FF_X37_Y1_N31
\receiver|Dout_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_connect_recv~input_o\,
	d => \receiver|Dout_internal[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Dout_internal\(2));

-- Location: LCCOMB_X37_Y1_N28
\receiver|Dout_internal[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[3]~6_combout\ = (\receiver|counter\(0) & ((\receiver|Dout_internal[2]~4_combout\ & (\D_connect_recv~input_o\)) # (!\receiver|Dout_internal[2]~4_combout\ & ((\receiver|Dout_internal\(3)))))) # (!\receiver|counter\(0) & 
-- (((\receiver|Dout_internal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_connect_recv~input_o\,
	datab => \receiver|counter\(0),
	datac => \receiver|Dout_internal\(3),
	datad => \receiver|Dout_internal[2]~4_combout\,
	combout => \receiver|Dout_internal[3]~6_combout\);

-- Location: FF_X37_Y1_N29
\receiver|Dout_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_connect_recv~input_o\,
	d => \receiver|Dout_internal[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Dout_internal\(3));

-- Location: LCCOMB_X37_Y1_N2
\receiver|Dout_internal[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[4]~7_combout\ = (!\receiver|counter\(0) & (\FS_connect_recv~input_o\ & (!\receiver|counter\(1) & \receiver|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(0),
	datab => \FS_connect_recv~input_o\,
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(2),
	combout => \receiver|Dout_internal[4]~7_combout\);

-- Location: LCCOMB_X37_Y1_N26
\receiver|Dout_internal[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[4]~8_combout\ = (\receiver|Dout_internal[4]~7_combout\ & (\D_connect_recv~input_o\)) # (!\receiver|Dout_internal[4]~7_combout\ & ((\receiver|Dout_internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_connect_recv~input_o\,
	datac => \receiver|Dout_internal\(4),
	datad => \receiver|Dout_internal[4]~7_combout\,
	combout => \receiver|Dout_internal[4]~8_combout\);

-- Location: FF_X37_Y1_N27
\receiver|Dout_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_connect_recv~input_o\,
	d => \receiver|Dout_internal[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Dout_internal\(4));

-- Location: LCCOMB_X36_Y1_N22
\receiver|Dout_internal[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Dout_internal[5]~9_combout\ = (\receiver|counter\(2) & ((\receiver|Dout_internal[1]~2_combout\ & (\D_connect_recv~input_o\)) # (!\receiver|Dout_internal[1]~2_combout\ & ((\receiver|Dout_internal\(5)))))) # (!\receiver|counter\(2) & 
-- (((\receiver|Dout_internal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|counter\(2),
	datab => \D_connect_recv~input_o\,
	datac => \receiver|Dout_internal\(5),
	datad => \receiver|Dout_internal[1]~2_combout\,
	combout => \receiver|Dout_internal[5]~9_combout\);

-- Location: FF_X36_Y1_N23
\receiver|Dout_internal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_connect_recv~input_o\,
	d => \receiver|Dout_internal[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Dout_internal\(5));

-- Location: LCCOMB_X37_Y1_N0
\receiver|Ready_internal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Ready_internal~0_combout\ = (\receiver|counter\(0)) # ((!\receiver|counter\(2)) # (!\receiver|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|counter\(0),
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(2),
	combout => \receiver|Ready_internal~0_combout\);

-- Location: FF_X37_Y1_N1
\receiver|Ready_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_connect_recv~input_o\,
	d => \receiver|Ready_internal~0_combout\,
	ena => \FS_connect_recv~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Ready_internal~q\);

-- Location: LCCOMB_X37_Y1_N20
\receiver|Error_internal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Error_internal~0_combout\ = (\FS_connect_recv~input_o\ & (\receiver|counter\(2) & (\receiver|counter\(1) & !\receiver|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FS_connect_recv~input_o\,
	datab => \receiver|counter\(2),
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(0),
	combout => \receiver|Error_internal~0_combout\);

-- Location: LCCOMB_X37_Y1_N18
\receiver|odd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|odd~0_combout\ = (\receiver|odd~q\ & (((!\receiver|counter\(0)) # (!\receiver|counter\(1))) # (!\receiver|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|odd~q\,
	datab => \receiver|counter\(2),
	datac => \receiver|counter\(1),
	datad => \receiver|counter\(0),
	combout => \receiver|odd~0_combout\);

-- Location: LCCOMB_X37_Y1_N22
\receiver|Error_internal~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver|Error_internal~1_combout\ = (\receiver|Error_internal~0_combout\ & (\D_connect_recv~input_o\ $ (((!\receiver|odd~0_combout\))))) # (!\receiver|Error_internal~0_combout\ & (((\receiver|Error_internal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_connect_recv~input_o\,
	datab => \receiver|Error_internal~0_combout\,
	datac => \receiver|Error_internal~q\,
	datad => \receiver|odd~0_combout\,
	combout => \receiver|Error_internal~1_combout\);

-- Location: FF_X37_Y1_N23
\receiver|Error_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_connect_recv~input_o\,
	d => \receiver|Error_internal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|Error_internal~q\);

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

-- Location: LCCOMB_X1_Y23_N8
\transmitter|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add0~0_combout\ = \transmitter|counter\(2) $ (((!\transmitter|counter\(1) & !\transmitter|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(1),
	datab => \transmitter|counter\(0),
	datac => \transmitter|counter\(2),
	combout => \transmitter|Add0~0_combout\);

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

-- Location: FF_X1_Y23_N9
\transmitter|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \transmitter|Add0~0_combout\,
	ena => \Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|counter\(2));

-- Location: LCCOMB_X1_Y23_N2
\transmitter|counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|counter~1_combout\ = (!\transmitter|counter\(0) & ((\transmitter|counter\(2)) # (\transmitter|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(0),
	datab => \transmitter|counter\(2),
	datad => \transmitter|counter\(1),
	combout => \transmitter|counter~1_combout\);

-- Location: LCCOMB_X1_Y23_N10
\transmitter|counter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|counter[0]~feeder_combout\ = \transmitter|counter~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \transmitter|counter~1_combout\,
	combout => \transmitter|counter[0]~feeder_combout\);

-- Location: FF_X1_Y23_N11
\transmitter|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \transmitter|counter[0]~feeder_combout\,
	ena => \Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|counter\(0));

-- Location: LCCOMB_X1_Y23_N24
\transmitter|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|Add0~1_combout\ = \transmitter|counter\(0) $ (!\transmitter|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|counter\(0),
	datac => \transmitter|counter\(1),
	combout => \transmitter|Add0~1_combout\);

-- Location: FF_X1_Y23_N25
\transmitter|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \transmitter|Add0~1_combout\,
	ena => \Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|counter\(1));

-- Location: LCCOMB_X1_Y23_N14
\transmitter|odd~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|odd~5_combout\ = (!\transmitter|counter\(2) & ((\transmitter|counter\(0)) # (\transmitter|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(0),
	datab => \transmitter|counter\(1),
	datad => \transmitter|counter\(2),
	combout => \transmitter|odd~5_combout\);

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

-- Location: LCCOMB_X1_Y23_N22
\transmitter|counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|counter~0_combout\ = (!\transmitter|counter\(1) & ((\transmitter|counter\(2)) # (\transmitter|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|counter\(1),
	datac => \transmitter|counter\(2),
	datad => \transmitter|counter\(0),
	combout => \transmitter|counter~0_combout\);

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

-- Location: LCCOMB_X1_Y23_N28
\transmitter|ShiftRight0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|ShiftRight0~0_combout\ = (\transmitter|counter~0_combout\ & (((\transmitter|counter~1_combout\)))) # (!\transmitter|counter~0_combout\ & ((\transmitter|counter~1_combout\ & ((\Din[1]~input_o\))) # (!\transmitter|counter~1_combout\ & 
-- (\Din[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[0]~input_o\,
	datab => \Din[1]~input_o\,
	datac => \transmitter|counter~0_combout\,
	datad => \transmitter|counter~1_combout\,
	combout => \transmitter|ShiftRight0~0_combout\);

-- Location: LCCOMB_X1_Y23_N18
\transmitter|ShiftRight0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|ShiftRight0~1_combout\ = (\transmitter|counter~0_combout\ & ((\transmitter|ShiftRight0~0_combout\ & (\Din[3]~input_o\)) # (!\transmitter|ShiftRight0~0_combout\ & ((\Din[2]~input_o\))))) # (!\transmitter|counter~0_combout\ & 
-- (((\transmitter|ShiftRight0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[3]~input_o\,
	datab => \Din[2]~input_o\,
	datac => \transmitter|counter~0_combout\,
	datad => \transmitter|ShiftRight0~0_combout\,
	combout => \transmitter|ShiftRight0~1_combout\);

-- Location: LCCOMB_X1_Y23_N20
\transmitter|odd~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|odd~4_combout\ = (\transmitter|odd~5_combout\ & (\transmitter|odd~3_combout\ $ ((\transmitter|odd~q\)))) # (!\transmitter|odd~5_combout\ & (\transmitter|ShiftRight0~1_combout\ $ (((\transmitter|odd~3_combout\ & \transmitter|odd~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|odd~3_combout\,
	datab => \transmitter|odd~5_combout\,
	datac => \transmitter|odd~q\,
	datad => \transmitter|ShiftRight0~1_combout\,
	combout => \transmitter|odd~4_combout\);

-- Location: FF_X1_Y23_N21
\transmitter|odd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \transmitter|odd~4_combout\,
	ena => \Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|odd~q\);

-- Location: LCCOMB_X1_Y23_N6
\transmitter|D_bit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|D_bit~0_combout\ = (\transmitter|counter\(0) & ((\transmitter|counter\(1) & (!\Din[4]~input_o\)) # (!\transmitter|counter\(1) & ((\transmitter|odd~q\))))) # (!\transmitter|counter\(0) & (((\transmitter|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(0),
	datab => \Din[4]~input_o\,
	datac => \transmitter|odd~q\,
	datad => \transmitter|counter\(1),
	combout => \transmitter|D_bit~0_combout\);

-- Location: LCCOMB_X1_Y23_N4
\transmitter|D_bit~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|D_bit~1_combout\ = (\transmitter|counter\(0) & ((!\transmitter|D_bit~0_combout\))) # (!\transmitter|counter\(0) & (\Din[5]~input_o\ & \transmitter|D_bit~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[5]~input_o\,
	datab => \transmitter|counter\(0),
	datad => \transmitter|D_bit~0_combout\,
	combout => \transmitter|D_bit~1_combout\);

-- Location: LCCOMB_X1_Y23_N16
\transmitter|D_bit~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \transmitter|D_bit~2_combout\ = (\transmitter|counter\(2) & (((\transmitter|ShiftRight0~1_combout\)))) # (!\transmitter|counter\(2) & ((\transmitter|D_bit~1_combout\) # ((!\transmitter|D_bit~0_combout\ & \transmitter|ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|counter\(2),
	datab => \transmitter|D_bit~0_combout\,
	datac => \transmitter|D_bit~1_combout\,
	datad => \transmitter|ShiftRight0~1_combout\,
	combout => \transmitter|D_bit~2_combout\);

-- Location: FF_X1_Y23_N17
\transmitter|D_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \transmitter|D_bit~2_combout\,
	ena => \Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|D_bit~q\);

-- Location: FF_X1_Y23_N3
\transmitter|FS_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Start~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|FS_reg~q\);

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;

ww_Dout(5) <= \Dout[5]~output_o\;

ww_Ready <= \Ready~output_o\;

ww_Error <= \Error~output_o\;

ww_Clk_connect_trans <= \Clk_connect_trans~output_o\;

ww_D_connect_trans <= \D_connect_trans~output_o\;

ww_FS_connect_trans <= \FS_connect_trans~output_o\;
END structure;


