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

-- DATE "12/09/2019 00:05:55"

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

ENTITY 	lab41 IS
    PORT (
	A : IN std_logic_vector(5 DOWNTO 0);
	B : IN std_logic_vector(5 DOWNTO 0);
	clk : IN std_logic;
	q1 : OUT std_logic_vector(2 DOWNTO 0);
	q2 : OUT std_logic_vector(2 DOWNTO 0);
	ind1 : OUT std_logic_vector(7 DOWNTO 0);
	ind2 : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab41;

-- Design Ports Information
-- A[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind1[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind2[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind2[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind2[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind2[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind2[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind2[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind2[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ind2[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab41 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_q1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_q2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ind1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ind2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \q1[0]~output_o\ : std_logic;
SIGNAL \q1[1]~output_o\ : std_logic;
SIGNAL \q1[2]~output_o\ : std_logic;
SIGNAL \q2[0]~output_o\ : std_logic;
SIGNAL \q2[1]~output_o\ : std_logic;
SIGNAL \q2[2]~output_o\ : std_logic;
SIGNAL \ind1[0]~output_o\ : std_logic;
SIGNAL \ind1[1]~output_o\ : std_logic;
SIGNAL \ind1[2]~output_o\ : std_logic;
SIGNAL \ind1[3]~output_o\ : std_logic;
SIGNAL \ind1[4]~output_o\ : std_logic;
SIGNAL \ind1[5]~output_o\ : std_logic;
SIGNAL \ind1[6]~output_o\ : std_logic;
SIGNAL \ind1[7]~output_o\ : std_logic;
SIGNAL \ind2[0]~output_o\ : std_logic;
SIGNAL \ind2[1]~output_o\ : std_logic;
SIGNAL \ind2[2]~output_o\ : std_logic;
SIGNAL \ind2[3]~output_o\ : std_logic;
SIGNAL \ind2[4]~output_o\ : std_logic;
SIGNAL \ind2[5]~output_o\ : std_logic;
SIGNAL \ind2[6]~output_o\ : std_logic;
SIGNAL \ind2[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \q2~0_combout\ : std_logic;
SIGNAL \q2~1_combout\ : std_logic;
SIGNAL \q2~2_combout\ : std_logic;
SIGNAL \inter_ind1~0_combout\ : std_logic;
SIGNAL \inter_ind1~1_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \inter_ind2~12_combout\ : std_logic;
SIGNAL \inter_ind2~13_combout\ : std_logic;
SIGNAL \Decoder1~6_combout\ : std_logic;
SIGNAL \WideOr7~6_combout\ : std_logic;
SIGNAL \WideOr6~6_combout\ : std_logic;
SIGNAL \WideOr5~6_combout\ : std_logic;
SIGNAL \WideOr4~6_combout\ : std_logic;
SIGNAL inter_ind2 : std_logic_vector(7 DOWNTO 0);
SIGNAL inter_ind1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_clk <= clk;
q1 <= ww_q1;
q2 <= ww_q2;
ind1 <= ww_ind1;
ind2 <= ww_ind2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Add0~3_combout\ & \Add0~1_combout\ & \Add0~0_combout\ & \B[2]~input_o\ & \B[1]~input_o\ & \B[0]~input_o\);

\RAM|altsyncram_component|auto_generated|q_a\(0) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RAM|altsyncram_component|auto_generated|q_a\(1) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RAM|altsyncram_component|auto_generated|q_a\(2) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X30_Y29_N9
\q1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \q1[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\q1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \q1[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\q1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \q1[2]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\q2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q2~0_combout\,
	devoe => ww_devoe,
	o => \q2[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\q2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q2~1_combout\,
	devoe => ww_devoe,
	o => \q2[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\q2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q2~2_combout\,
	devoe => ww_devoe,
	o => \q2[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\ind1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind1(0),
	devoe => ww_devoe,
	o => \ind1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\ind1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind1(1),
	devoe => ww_devoe,
	o => \ind1[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\ind1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind1(2),
	devoe => ww_devoe,
	o => \ind1[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\ind1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind1(3),
	devoe => ww_devoe,
	o => \ind1[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\ind1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind1(4),
	devoe => ww_devoe,
	o => \ind1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\ind1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind1(5),
	devoe => ww_devoe,
	o => \ind1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\ind1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind1(6),
	devoe => ww_devoe,
	o => \ind1[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\ind1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ind1[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\ind2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind2(0),
	devoe => ww_devoe,
	o => \ind2[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\ind2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind2(1),
	devoe => ww_devoe,
	o => \ind2[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\ind2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind2(2),
	devoe => ww_devoe,
	o => \ind2[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\ind2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind2(3),
	devoe => ww_devoe,
	o => \ind2[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\ind2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind2(4),
	devoe => ww_devoe,
	o => \ind2[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\ind2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind2(5),
	devoe => ww_devoe,
	o => \ind2[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\ind2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inter_ind2(6),
	devoe => ww_devoe,
	o => \ind2[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\ind2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ind2[7]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y26_N28
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

-- Location: IOIBUF_X0_Y26_N8
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X24_Y26_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \A[0]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X28_Y29_N1
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X24_Y26_N2
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \B[4]~input_o\ $ (\A[1]~input_o\ $ (((\A[0]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X19_Y29_N29
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X24_Y26_N20
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B[4]~input_o\ & ((\A[1]~input_o\) # ((\A[0]~input_o\ & \B[3]~input_o\)))) # (!\B[4]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X24_Y26_N30
\Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \B[5]~input_o\ $ (\A[2]~input_o\ $ (\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \A[2]~input_o\,
	datad => \Add0~2_combout\,
	combout => \Add0~3_combout\);

-- Location: M9K_X25_Y26_N0
\RAM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000070001C00070001C00070001C00070001C00060001C00060001C00060001C00060001C00070001400050001C00070001400050001C00060001400040001C00060001400040001C00070001C00070000C00030000C00030001C00060001C00060000C00020000C00020001C00070001400050000C00030000400010001C00060001400040000C0002000040000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "lab41.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram_dp:RAM|altsyncram:altsyncram_component|altsyncram_ohf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => GND,
	portadatain => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y26_N24
\q2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q2~0_combout\ = (\B[0]~input_o\) # (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \q2~0_combout\);

-- Location: LCCOMB_X24_Y26_N10
\q2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q2~1_combout\ = (\B[1]~input_o\) # (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \q2~1_combout\);

-- Location: LCCOMB_X24_Y26_N8
\q2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q2~2_combout\ = (\B[2]~input_o\) # (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \q2~2_combout\);

-- Location: LCCOMB_X26_Y26_N28
\inter_ind1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inter_ind1~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_a\(1)) # (\RAM|altsyncram_component|auto_generated|q_a\(0) $ (!\RAM|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|altsyncram_component|auto_generated|q_a\(0),
	datac => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datad => \RAM|altsyncram_component|auto_generated|q_a\(1),
	combout => \inter_ind1~0_combout\);

-- Location: FF_X26_Y26_N29
\inter_ind1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inter_ind1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind1(0));

-- Location: LCCOMB_X26_Y26_N30
\inter_ind1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inter_ind1~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_a\(0) $ (!\RAM|altsyncram_component|auto_generated|q_a\(1))) # (!\RAM|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|altsyncram_component|auto_generated|q_a\(0),
	datac => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datad => \RAM|altsyncram_component|auto_generated|q_a\(1),
	combout => \inter_ind1~1_combout\);

-- Location: FF_X26_Y26_N31
\inter_ind1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inter_ind1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind1(1));

-- Location: LCCOMB_X26_Y26_N0
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_a\(2)) # ((\RAM|altsyncram_component|auto_generated|q_a\(0)) # (!\RAM|altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datac => \RAM|altsyncram_component|auto_generated|q_a\(0),
	datad => \RAM|altsyncram_component|auto_generated|q_a\(1),
	combout => \Decoder0~0_combout\);

-- Location: FF_X26_Y26_N1
\inter_ind1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind1(2));

-- Location: LCCOMB_X26_Y26_N6
\WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_a\(2) & (\RAM|altsyncram_component|auto_generated|q_a\(0) $ (\RAM|altsyncram_component|auto_generated|q_a\(1)))) # (!\RAM|altsyncram_component|auto_generated|q_a\(2) & 
-- ((\RAM|altsyncram_component|auto_generated|q_a\(1)) # (!\RAM|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datac => \RAM|altsyncram_component|auto_generated|q_a\(0),
	datad => \RAM|altsyncram_component|auto_generated|q_a\(1),
	combout => \WideOr3~0_combout\);

-- Location: FF_X26_Y26_N7
\inter_ind1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind1(3));

-- Location: LCCOMB_X26_Y26_N12
\WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\RAM|altsyncram_component|auto_generated|q_a\(0) & ((\RAM|altsyncram_component|auto_generated|q_a\(1)) # (!\RAM|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datac => \RAM|altsyncram_component|auto_generated|q_a\(0),
	datad => \RAM|altsyncram_component|auto_generated|q_a\(1),
	combout => \WideOr2~0_combout\);

-- Location: FF_X26_Y26_N13
\inter_ind1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind1(4));

-- Location: LCCOMB_X26_Y26_N10
\WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_a\(0) & (\RAM|altsyncram_component|auto_generated|q_a\(2) & !\RAM|altsyncram_component|auto_generated|q_a\(1))) # (!\RAM|altsyncram_component|auto_generated|q_a\(0) & 
-- ((\RAM|altsyncram_component|auto_generated|q_a\(2)) # (!\RAM|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|altsyncram_component|auto_generated|q_a\(0),
	datac => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datad => \RAM|altsyncram_component|auto_generated|q_a\(1),
	combout => \WideOr1~0_combout\);

-- Location: FF_X26_Y26_N11
\inter_ind1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind1(5));

-- Location: LCCOMB_X26_Y26_N4
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_a\(2) & ((!\RAM|altsyncram_component|auto_generated|q_a\(1)) # (!\RAM|altsyncram_component|auto_generated|q_a\(0)))) # (!\RAM|altsyncram_component|auto_generated|q_a\(2) & 
-- ((\RAM|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|altsyncram_component|auto_generated|q_a\(0),
	datac => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datad => \RAM|altsyncram_component|auto_generated|q_a\(1),
	combout => \WideOr0~0_combout\);

-- Location: FF_X26_Y26_N5
\inter_ind1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind1(6));

-- Location: LCCOMB_X24_Y26_N18
\inter_ind2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inter_ind2~12_combout\ = (\B[1]~input_o\) # ((\A[1]~input_o\) # (\q2~2_combout\ $ (!\q2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \q2~2_combout\,
	datac => \A[1]~input_o\,
	datad => \q2~0_combout\,
	combout => \inter_ind2~12_combout\);

-- Location: FF_X24_Y26_N19
\inter_ind2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inter_ind2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind2(0));

-- Location: LCCOMB_X24_Y26_N4
\inter_ind2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inter_ind2~13_combout\ = (\q2~1_combout\ $ (((!\B[0]~input_o\ & !\A[0]~input_o\)))) # (!\q2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2~1_combout\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \q2~2_combout\,
	combout => \inter_ind2~13_combout\);

-- Location: FF_X24_Y26_N5
\inter_ind2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inter_ind2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind2(1));

-- Location: LCCOMB_X24_Y26_N26
\Decoder1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder1~6_combout\ = (\q2~2_combout\) # ((\q2~0_combout\) # ((!\B[1]~input_o\ & !\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \q2~2_combout\,
	datac => \A[1]~input_o\,
	datad => \q2~0_combout\,
	combout => \Decoder1~6_combout\);

-- Location: FF_X24_Y26_N27
\inter_ind2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind2(2));

-- Location: LCCOMB_X24_Y26_N12
\WideOr7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr7~6_combout\ = (\q2~2_combout\ & (\q2~0_combout\ $ (((\B[1]~input_o\) # (\A[1]~input_o\))))) # (!\q2~2_combout\ & ((\B[1]~input_o\) # ((\A[1]~input_o\) # (!\q2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \q2~2_combout\,
	datac => \A[1]~input_o\,
	datad => \q2~0_combout\,
	combout => \WideOr7~6_combout\);

-- Location: FF_X24_Y26_N13
\inter_ind2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind2(3));

-- Location: LCCOMB_X24_Y26_N6
\WideOr6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr6~6_combout\ = (!\B[0]~input_o\ & (!\A[0]~input_o\ & ((\q2~1_combout\) # (!\q2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2~1_combout\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \q2~2_combout\,
	combout => \WideOr6~6_combout\);

-- Location: FF_X24_Y26_N7
\inter_ind2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind2(4));

-- Location: LCCOMB_X24_Y26_N16
\WideOr5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr5~6_combout\ = (\q2~2_combout\ & (((!\A[0]~input_o\ & !\B[0]~input_o\)) # (!\q2~1_combout\))) # (!\q2~2_combout\ & (!\A[0]~input_o\ & (!\B[0]~input_o\ & !\q2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \q2~2_combout\,
	datad => \q2~1_combout\,
	combout => \WideOr5~6_combout\);

-- Location: FF_X24_Y26_N17
\inter_ind2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind2(5));

-- Location: LCCOMB_X24_Y26_N14
\WideOr4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~6_combout\ = (\q2~2_combout\ & (((!\B[1]~input_o\ & !\A[1]~input_o\)) # (!\q2~0_combout\))) # (!\q2~2_combout\ & ((\B[1]~input_o\) # ((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \q2~2_combout\,
	datac => \A[1]~input_o\,
	datad => \q2~0_combout\,
	combout => \WideOr4~6_combout\);

-- Location: FF_X24_Y26_N15
\inter_ind2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inter_ind2(6));

-- Location: IOIBUF_X1_Y0_N15
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X16_Y29_N29
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X41_Y20_N1
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

ww_q1(0) <= \q1[0]~output_o\;

ww_q1(1) <= \q1[1]~output_o\;

ww_q1(2) <= \q1[2]~output_o\;

ww_q2(0) <= \q2[0]~output_o\;

ww_q2(1) <= \q2[1]~output_o\;

ww_q2(2) <= \q2[2]~output_o\;

ww_ind1(0) <= \ind1[0]~output_o\;

ww_ind1(1) <= \ind1[1]~output_o\;

ww_ind1(2) <= \ind1[2]~output_o\;

ww_ind1(3) <= \ind1[3]~output_o\;

ww_ind1(4) <= \ind1[4]~output_o\;

ww_ind1(5) <= \ind1[5]~output_o\;

ww_ind1(6) <= \ind1[6]~output_o\;

ww_ind1(7) <= \ind1[7]~output_o\;

ww_ind2(0) <= \ind2[0]~output_o\;

ww_ind2(1) <= \ind2[1]~output_o\;

ww_ind2(2) <= \ind2[2]~output_o\;

ww_ind2(3) <= \ind2[3]~output_o\;

ww_ind2(4) <= \ind2[4]~output_o\;

ww_ind2(5) <= \ind2[5]~output_o\;

ww_ind2(6) <= \ind2[6]~output_o\;

ww_ind2(7) <= \ind2[7]~output_o\;
END structure;


