----------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 12.1sp1
-- Quartus II development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2013 Altera Corporation.  All rights reserved.    
-- Your use of  Altera  Corporation's design tools,  logic functions and other 
-- software and tools,  and its AMPP  partner logic functions, and  any output 
-- files  any of the  foregoing  device programming or simulation files),  and 
-- any associated  documentation or information are expressly subject  to  the 
-- terms and conditions  of the Altera Program License Subscription Agreement, 
-- Altera  MegaCore  Function  License  Agreement, or other applicable license 
-- agreement,  including,  without limitation,  that your use  is for the sole 
-- purpose of  programming  logic  devices  manufactured by Altera and sold by 
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable 
-- agreement for further details.
----------------------------------------------------------------------------- 

-- VHDL created from digitalFilter_rtl
-- VHDL created on Sat Nov 16 17:56:21 2019


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

-- Text written from d:/SJ/nightly/12.1sp1/243/w32/p4/ip/aion/src/mip_common/hw_model.cpp:1242
entity digitalFilter_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);
        xIn_c : in std_logic_vector(7 downto 0);
        xIn_0 : in std_logic_vector(13 downto 0);
        xOut_v : out std_logic_vector(0 downto 0);
        xOut_c : out std_logic_vector(7 downto 0);
        xOut_0 : out std_logic_vector(26 downto 0);
        clk : in std_logic;
        areset : in std_logic
        );
end;

architecture normal of digitalFilter_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name NOT_GATE_PUSH_BACK OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410";

    signal GND_q : std_logic_vector (0 downto 0);
    signal VCC_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_11_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_16_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_wi0_phasedelay0_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr1_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr1_q_12_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr2_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr2_q_12_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr3_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr3_q_12_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr4_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr5_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr5_q_11_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr6_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr6_q_11_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr7_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr7_q_11_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr8_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr8_q_11_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr9_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr9_q_11_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr10_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr11_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr12_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr12_q_11_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr13_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr13_q_11_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr14_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr14_q_11_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr15_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr16_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr17_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr17_q_11_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr18_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr18_q_11_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr19_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr20_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr21_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr21_q_12_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr22_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr23_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr24_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr25_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr26_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_add0_1_a : std_logic_vector(18 downto 0);
    signal u0_m0_wo0_mtree_add0_1_b : std_logic_vector(18 downto 0);
    signal u0_m0_wo0_mtree_add0_1_o : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_add0_1_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_add0_3_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_add0_3_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_add0_3_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_add0_3_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_add0_5_a : std_logic_vector(22 downto 0);
    signal u0_m0_wo0_mtree_add0_5_b : std_logic_vector(22 downto 0);
    signal u0_m0_wo0_mtree_add0_5_o : std_logic_vector (22 downto 0);
    signal u0_m0_wo0_mtree_add0_5_q : std_logic_vector (22 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : std_logic_vector(22 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : std_logic_vector(22 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : std_logic_vector (22 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : std_logic_vector (22 downto 0);
    signal u0_m0_wo0_mtree_add0_7_a : std_logic_vector(23 downto 0);
    signal u0_m0_wo0_mtree_add0_7_b : std_logic_vector(23 downto 0);
    signal u0_m0_wo0_mtree_add0_7_o : std_logic_vector (23 downto 0);
    signal u0_m0_wo0_mtree_add0_7_q : std_logic_vector (23 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : std_logic_vector(22 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : std_logic_vector(22 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : std_logic_vector (22 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : std_logic_vector (22 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : std_logic_vector(20 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : std_logic_vector(20 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : std_logic_vector(23 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : std_logic_vector(23 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : std_logic_vector (23 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : std_logic_vector (23 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : std_logic_vector(23 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : std_logic_vector(23 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : std_logic_vector (23 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : std_logic_vector (23 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : std_logic_vector(23 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : std_logic_vector(23 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : std_logic_vector (23 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : std_logic_vector (23 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : std_logic_vector(20 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : std_logic_vector(20 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : std_logic_vector(24 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : std_logic_vector(24 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : std_logic_vector (24 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : std_logic_vector (24 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : std_logic_vector(24 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : std_logic_vector(24 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : std_logic_vector (24 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : std_logic_vector (24 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : std_logic_vector(25 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : std_logic_vector(25 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : std_logic_vector (25 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : std_logic_vector (25 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : std_logic_vector(25 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : std_logic_vector(25 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : std_logic_vector (25 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : std_logic_vector (25 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : std_logic_vector(26 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : std_logic_vector(26 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : std_logic_vector (26 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : std_logic_vector (26 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_1_a : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_1_b : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_1_o : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_1_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_1_a : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_1_b : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_1_o : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_1_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_sub_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_sub_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_sub_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_sub_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_sub_1_a : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_sub_1_b : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_sub_1_o : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_sub_1_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_sub_1_a : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_sub_1_b : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_sub_1_o : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_sub_1_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_3_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_3_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_3_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_3_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_1_a : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_1_b : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_1_o : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_1_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_sub_3_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_sub_3_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_sub_3_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_sub_3_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_sub_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_sub_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_sub_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_sub_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_3_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_3_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_3_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_3_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_sub_5_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_sub_5_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_sub_5_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_sub_5_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_sub_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_sub_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_sub_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_sub_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_sub_3_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_sub_3_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_sub_3_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_sub_3_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_add_5_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_add_5_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_add_5_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_add_5_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_1_a : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_1_b : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_1_o : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_1_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_3_a : std_logic_vector(18 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_3_b : std_logic_vector(18 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_3_o : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_3_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_add_1_a : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_add_1_b : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_add_1_o : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_add_1_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_add_3_a : std_logic_vector(18 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_add_3_b : std_logic_vector(18 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_add_3_o : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_add_3_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_3_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_3_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_3_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_3_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_5_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_5_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_5_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_5_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_sub_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_sub_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_sub_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_sub_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_add_3_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_add_3_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_add_3_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_add_3_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_sub_5_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_sub_5_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_sub_5_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_sub_5_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_add_1_a : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_add_1_b : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_add_1_o : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_add_1_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_sub_3_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_sub_3_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_sub_3_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_sub_3_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_add_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_add_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_add_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_add_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_sub_3_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_sub_3_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_sub_3_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_sub_3_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_add_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_add_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_add_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_add_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_sub_1_a : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_sub_1_b : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_sub_1_o : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_sub_1_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_sub_1_a : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_sub_1_b : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_sub_1_o : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_sub_1_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_sub_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_sub_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_sub_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_sub_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_add_1_a : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_add_1_b : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_add_1_o : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_add_1_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_add_1_a : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_add_1_b : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_add_1_o : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_add_1_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift0_q_int : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift0_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift0_q_int : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift0_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift0_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift0_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift0_q_int : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift0_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift0_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift0_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift0_q_int : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift0_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift0_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift0_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift0_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift0_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift2_q_int : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift2_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift0_q_int : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift0_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift2_q_int : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift2_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift0_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift0_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift2_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift2_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift0_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift0_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift2_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift2_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift0_q_int : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift0_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift2_q_int : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift2_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_shift0_q_int : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_shift0_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift0_q_int : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift0_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift2_q_int : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift2_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift0_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift0_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift2_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift2_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_shift0_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_shift0_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_shift2_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_shift2_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_shift0_q_int : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_shift0_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_shift2_q_int : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_shift2_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift0_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift0_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift2_q_int : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift2_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_shift0_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_shift0_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_shift0_q_int : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_shift0_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_shift0_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_shift0_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_shift0_q_int : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_shift0_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_shift0_q_int : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_shift0_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_shift0_q_int : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_shift0_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_shift0_q_int : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_shift0_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift2_q_int : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift2_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift2_q_int : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift2_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift2_q_int : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift2_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift4_q_int : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift4_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift4_q_int : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift4_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift4_q_int : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift4_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift6_q_int : std_logic_vector (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift6_q : std_logic_vector (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift4_q_int : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift4_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift4_q_int : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift4_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift4_q_int : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift4_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift6_q_int : std_logic_vector (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift6_q : std_logic_vector (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_shift4_q_int : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_shift4_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift4_q_int : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift4_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_shift2_q_int : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_shift2_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_shift2_q_int : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_shift2_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_shift2_q_int : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_shift2_q : std_logic_vector (16 downto 0);
begin


	--VCC(CONSTANT,1)@0
    VCC_q <= "1";

	--u0_m0_wo0_mtree_mult1_26_shift0(BITSHIFT,120)@13
    u0_m0_wo0_mtree_mult1_26_shift0_q_int <= d_u0_m0_wo0_wi0_phasedelay0_q_13_q & "0";
    u0_m0_wo0_mtree_mult1_26_shift0_q <= u0_m0_wo0_mtree_mult1_26_shift0_q_int(14 downto 0);

	--xIn(PORTIN,2)@10

	--d_u0_m0_wo0_wi0_phasedelay0_q_13(DELAY,212)@10
    d_u0_m0_wo0_wi0_phasedelay0_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 3 )
    PORT MAP ( xin => xIn_0, xout => d_u0_m0_wo0_wi0_phasedelay0_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_26_add_1(ADD,121)@13
    u0_m0_wo0_mtree_mult1_26_add_1_a <= STD_LOGIC_VECTOR((15 downto 14 => d_u0_m0_wo0_wi0_phasedelay0_q_13_q(13)) & d_u0_m0_wo0_wi0_phasedelay0_q_13_q);
    u0_m0_wo0_mtree_mult1_26_add_1_b <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_26_shift0_q(14)) & u0_m0_wo0_mtree_mult1_26_shift0_q);
    u0_m0_wo0_mtree_mult1_26_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_26_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_26_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_26_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_26_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_26_add_1_q <= u0_m0_wo0_mtree_mult1_26_add_1_o(15 downto 0);


	--u0_m0_wo0_mtree_mult1_25_shift0(BITSHIFT,122)@12
    u0_m0_wo0_mtree_mult1_25_shift0_q_int <= d_u0_m0_wo0_wi0_delayr1_q_12_q & "0";
    u0_m0_wo0_mtree_mult1_25_shift0_q <= u0_m0_wo0_mtree_mult1_25_shift0_q_int(14 downto 0);

	--u0_m0_wo0_wi0_delayr1(DELAY,8)@10
    u0_m0_wo0_wi0_delayr1 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => xIn_0, xout => u0_m0_wo0_wi0_delayr1_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr1_q_12(DELAY,213)@10
    d_u0_m0_wo0_wi0_delayr1_q_12 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr1_q, xout => d_u0_m0_wo0_wi0_delayr1_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_25_add_1(ADD,123)@12
    u0_m0_wo0_mtree_mult1_25_add_1_a <= STD_LOGIC_VECTOR((15 downto 14 => d_u0_m0_wo0_wi0_delayr1_q_12_q(13)) & d_u0_m0_wo0_wi0_delayr1_q_12_q);
    u0_m0_wo0_mtree_mult1_25_add_1_b <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_25_shift0_q(14)) & u0_m0_wo0_mtree_mult1_25_shift0_q);
    u0_m0_wo0_mtree_mult1_25_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_add_1_q <= u0_m0_wo0_mtree_mult1_25_add_1_o(15 downto 0);


	--u0_m0_wo0_mtree_mult1_25_shift2(BITSHIFT,124)@13
    u0_m0_wo0_mtree_mult1_25_shift2_q_int <= u0_m0_wo0_mtree_mult1_25_add_1_q & "0";
    u0_m0_wo0_mtree_mult1_25_shift2_q <= u0_m0_wo0_mtree_mult1_25_shift2_q_int(16 downto 0);

	--u0_m0_wo0_mtree_mult1_24_shift0(BITSHIFT,125)@12
    u0_m0_wo0_mtree_mult1_24_shift0_q_int <= d_u0_m0_wo0_wi0_delayr2_q_12_q & "00";
    u0_m0_wo0_mtree_mult1_24_shift0_q <= u0_m0_wo0_mtree_mult1_24_shift0_q_int(15 downto 0);

	--u0_m0_wo0_wi0_delayr2(DELAY,9)@10
    u0_m0_wo0_wi0_delayr2 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr1_q, xout => u0_m0_wo0_wi0_delayr2_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr2_q_12(DELAY,214)@10
    d_u0_m0_wo0_wi0_delayr2_q_12 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr2_q, xout => d_u0_m0_wo0_wi0_delayr2_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_24_sub_1(SUB,126)@12
    u0_m0_wo0_mtree_mult1_24_sub_1_a <= STD_LOGIC_VECTOR((16 downto 14 => d_u0_m0_wo0_wi0_delayr2_q_12_q(13)) & d_u0_m0_wo0_wi0_delayr2_q_12_q);
    u0_m0_wo0_mtree_mult1_24_sub_1_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_24_shift0_q(15)) & u0_m0_wo0_mtree_mult1_24_shift0_q);
    u0_m0_wo0_mtree_mult1_24_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_24_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_sub_1_q <= u0_m0_wo0_mtree_mult1_24_sub_1_o(16 downto 0);


	--u0_m0_wo0_mtree_add0_12(ADD,100)@13
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_24_sub_1_q(16)) & u0_m0_wo0_mtree_mult1_24_sub_1_q);
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_25_shift2_q(16)) & u0_m0_wo0_mtree_mult1_25_shift2_q);
    u0_m0_wo0_mtree_add0_12: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(17 downto 0);


	--u0_m0_wo0_mtree_add1_6(ADD,107)@14
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_add0_12_q(17)) & u0_m0_wo0_mtree_add0_12_q);
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR((19 downto 16 => u0_m0_wo0_mtree_mult1_26_add_1_q(15)) & u0_m0_wo0_mtree_mult1_26_add_1_q);
    u0_m0_wo0_mtree_add1_6: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(19 downto 0);


	--u0_m0_wo0_mtree_mult1_23_shift0(BITSHIFT,127)@12
    u0_m0_wo0_mtree_mult1_23_shift0_q_int <= d_u0_m0_wo0_wi0_delayr3_q_12_q & "000";
    u0_m0_wo0_mtree_mult1_23_shift0_q <= u0_m0_wo0_mtree_mult1_23_shift0_q_int(16 downto 0);

	--u0_m0_wo0_wi0_delayr3(DELAY,10)@10
    u0_m0_wo0_wi0_delayr3 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr2_q, xout => u0_m0_wo0_wi0_delayr3_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr3_q_12(DELAY,215)@10
    d_u0_m0_wo0_wi0_delayr3_q_12 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr3_q, xout => d_u0_m0_wo0_wi0_delayr3_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_23_sub_1(SUB,128)@12
    u0_m0_wo0_mtree_mult1_23_sub_1_a <= STD_LOGIC_VECTOR((17 downto 14 => d_u0_m0_wo0_wi0_delayr3_q_12_q(13)) & d_u0_m0_wo0_wi0_delayr3_q_12_q);
    u0_m0_wo0_mtree_mult1_23_sub_1_b <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_23_shift0_q(16)) & u0_m0_wo0_mtree_mult1_23_shift0_q);
    u0_m0_wo0_mtree_mult1_23_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_23_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_sub_1_q <= u0_m0_wo0_mtree_mult1_23_sub_1_o(17 downto 0);


	--u0_m0_wo0_mtree_mult1_21_shift0(BITSHIFT,129)@11
    u0_m0_wo0_mtree_mult1_21_shift0_q_int <= d_u0_m0_wo0_wi0_delayr5_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_21_shift0_q <= u0_m0_wo0_mtree_mult1_21_shift0_q_int(15 downto 0);

	--u0_m0_wo0_wi0_delayr4(DELAY,11)@10
    u0_m0_wo0_wi0_delayr4 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr3_q, xout => u0_m0_wo0_wi0_delayr4_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr5(DELAY,12)@10
    u0_m0_wo0_wi0_delayr5 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr4_q, xout => u0_m0_wo0_wi0_delayr5_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr5_q_11(DELAY,216)@10
    d_u0_m0_wo0_wi0_delayr5_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr5_q, xout => d_u0_m0_wo0_wi0_delayr5_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_21_sub_1(SUB,130)@11
    u0_m0_wo0_mtree_mult1_21_sub_1_a <= STD_LOGIC_VECTOR((16 downto 14 => d_u0_m0_wo0_wi0_delayr5_q_11_q(13)) & d_u0_m0_wo0_wi0_delayr5_q_11_q);
    u0_m0_wo0_mtree_mult1_21_sub_1_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_21_shift0_q(15)) & u0_m0_wo0_mtree_mult1_21_shift0_q);
    u0_m0_wo0_mtree_mult1_21_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_21_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_sub_1_q <= u0_m0_wo0_mtree_mult1_21_sub_1_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_20_shift0(BITSHIFT,131)@11
    u0_m0_wo0_mtree_mult1_20_shift0_q_int <= d_u0_m0_wo0_wi0_delayr6_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_20_shift0_q <= u0_m0_wo0_mtree_mult1_20_shift0_q_int(16 downto 0);

	--u0_m0_wo0_wi0_delayr6(DELAY,13)@10
    u0_m0_wo0_wi0_delayr6 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr5_q, xout => u0_m0_wo0_wi0_delayr6_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr6_q_11(DELAY,217)@10
    d_u0_m0_wo0_wi0_delayr6_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr6_q, xout => d_u0_m0_wo0_wi0_delayr6_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_20_sub_1(SUB,132)@11
    u0_m0_wo0_mtree_mult1_20_sub_1_a <= STD_LOGIC_VECTOR((17 downto 14 => d_u0_m0_wo0_wi0_delayr6_q_11_q(13)) & d_u0_m0_wo0_wi0_delayr6_q_11_q);
    u0_m0_wo0_mtree_mult1_20_sub_1_b <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_20_shift0_q(16)) & u0_m0_wo0_mtree_mult1_20_shift0_q);
    u0_m0_wo0_mtree_mult1_20_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_20_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_sub_1_q <= u0_m0_wo0_mtree_mult1_20_sub_1_o(17 downto 0);


	--u0_m0_wo0_mtree_mult1_20_shift2(BITSHIFT,133)@12
    u0_m0_wo0_mtree_mult1_20_shift2_q_int <= u0_m0_wo0_mtree_mult1_20_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_20_shift2_q <= u0_m0_wo0_mtree_mult1_20_shift2_q_int(18 downto 0);

	--u0_m0_wo0_mtree_add0_10(ADD,98)@12
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_20_shift2_q(18)) & u0_m0_wo0_mtree_mult1_20_shift2_q);
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR((19 downto 17 => u0_m0_wo0_mtree_mult1_21_sub_1_q(16)) & u0_m0_wo0_mtree_mult1_21_sub_1_q);
    u0_m0_wo0_mtree_add0_10: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(19 downto 0);


	--u0_m0_wo0_mtree_add1_5(ADD,106)@13
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_add0_10_q(19)) & u0_m0_wo0_mtree_add0_10_q);
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR((20 downto 18 => u0_m0_wo0_mtree_mult1_23_sub_1_q(17)) & u0_m0_wo0_mtree_mult1_23_sub_1_q);
    u0_m0_wo0_mtree_add1_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(20 downto 0);


	--u0_m0_wo0_mtree_mult1_19_shift0(BITSHIFT,134)@11
    u0_m0_wo0_mtree_mult1_19_shift0_q_int <= d_u0_m0_wo0_wi0_delayr7_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_19_shift0_q <= u0_m0_wo0_mtree_mult1_19_shift0_q_int(15 downto 0);

	--u0_m0_wo0_wi0_delayr7(DELAY,14)@10
    u0_m0_wo0_wi0_delayr7 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr6_q, xout => u0_m0_wo0_wi0_delayr7_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr7_q_11(DELAY,218)@10
    d_u0_m0_wo0_wi0_delayr7_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr7_q, xout => d_u0_m0_wo0_wi0_delayr7_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_19_add_1(ADD,135)@11
    u0_m0_wo0_mtree_mult1_19_add_1_a <= STD_LOGIC_VECTOR((16 downto 14 => d_u0_m0_wo0_wi0_delayr7_q_11_q(13)) & d_u0_m0_wo0_wi0_delayr7_q_11_q);
    u0_m0_wo0_mtree_mult1_19_add_1_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_19_shift0_q(15)) & u0_m0_wo0_mtree_mult1_19_shift0_q);
    u0_m0_wo0_mtree_mult1_19_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_add_1_q <= u0_m0_wo0_mtree_mult1_19_add_1_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_19_shift2(BITSHIFT,136)@12
    u0_m0_wo0_mtree_mult1_19_shift2_q_int <= u0_m0_wo0_mtree_mult1_19_add_1_q & "0";
    u0_m0_wo0_mtree_mult1_19_shift2_q <= u0_m0_wo0_mtree_mult1_19_shift2_q_int(17 downto 0);

	--u0_m0_wo0_mtree_mult1_18_shift0(BITSHIFT,137)@10
    u0_m0_wo0_mtree_mult1_18_shift0_q_int <= u0_m0_wo0_wi0_delayr8_q & "00";
    u0_m0_wo0_mtree_mult1_18_shift0_q <= u0_m0_wo0_mtree_mult1_18_shift0_q_int(15 downto 0);

	--u0_m0_wo0_wi0_delayr8(DELAY,15)@10
    u0_m0_wo0_wi0_delayr8 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr7_q, xout => u0_m0_wo0_wi0_delayr8_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_18_add_1(ADD,138)@10
    u0_m0_wo0_mtree_mult1_18_add_1_a <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_wi0_delayr8_q(13)) & u0_m0_wo0_wi0_delayr8_q);
    u0_m0_wo0_mtree_mult1_18_add_1_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_18_shift0_q(15)) & u0_m0_wo0_mtree_mult1_18_shift0_q);
    u0_m0_wo0_mtree_mult1_18_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_add_1_q <= u0_m0_wo0_mtree_mult1_18_add_1_o(16 downto 0);


	--d_u0_m0_wo0_wi0_delayr8_q_11(DELAY,219)@10
    d_u0_m0_wo0_wi0_delayr8_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr8_q, xout => d_u0_m0_wo0_wi0_delayr8_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_18_shift2(BITSHIFT,139)@11
    u0_m0_wo0_mtree_mult1_18_shift2_q_int <= d_u0_m0_wo0_wi0_delayr8_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_18_shift2_q <= u0_m0_wo0_mtree_mult1_18_shift2_q_int(18 downto 0);

	--u0_m0_wo0_mtree_mult1_18_sub_3(SUB,140)@11
    u0_m0_wo0_mtree_mult1_18_sub_3_a <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_18_shift2_q(18)) & u0_m0_wo0_mtree_mult1_18_shift2_q);
    u0_m0_wo0_mtree_mult1_18_sub_3_b <= STD_LOGIC_VECTOR((19 downto 17 => u0_m0_wo0_mtree_mult1_18_add_1_q(16)) & u0_m0_wo0_mtree_mult1_18_add_1_q);
    u0_m0_wo0_mtree_mult1_18_sub_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_sub_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_18_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_sub_3_q <= u0_m0_wo0_mtree_mult1_18_sub_3_o(19 downto 0);


	--u0_m0_wo0_mtree_mult1_18_shift4(BITSHIFT,141)@12
    u0_m0_wo0_mtree_mult1_18_shift4_q_int <= u0_m0_wo0_mtree_mult1_18_sub_3_q & "0";
    u0_m0_wo0_mtree_mult1_18_shift4_q <= u0_m0_wo0_mtree_mult1_18_shift4_q_int(20 downto 0);

	--u0_m0_wo0_mtree_add0_9(ADD,97)@12
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_18_shift4_q(20)) & u0_m0_wo0_mtree_mult1_18_shift4_q);
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR((21 downto 18 => u0_m0_wo0_mtree_mult1_19_shift2_q(17)) & u0_m0_wo0_mtree_mult1_19_shift2_q);
    u0_m0_wo0_mtree_add0_9: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(21 downto 0);


	--u0_m0_wo0_mtree_mult1_17_shift0(BITSHIFT,142)@10
    u0_m0_wo0_mtree_mult1_17_shift0_q_int <= u0_m0_wo0_wi0_delayr9_q & "000";
    u0_m0_wo0_mtree_mult1_17_shift0_q <= u0_m0_wo0_mtree_mult1_17_shift0_q_int(16 downto 0);

	--u0_m0_wo0_wi0_delayr9(DELAY,16)@10
    u0_m0_wo0_wi0_delayr9 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr8_q, xout => u0_m0_wo0_wi0_delayr9_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_17_add_1(ADD,143)@10
    u0_m0_wo0_mtree_mult1_17_add_1_a <= STD_LOGIC_VECTOR((17 downto 14 => u0_m0_wo0_wi0_delayr9_q(13)) & u0_m0_wo0_wi0_delayr9_q);
    u0_m0_wo0_mtree_mult1_17_add_1_b <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_17_shift0_q(16)) & u0_m0_wo0_mtree_mult1_17_shift0_q);
    u0_m0_wo0_mtree_mult1_17_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_add_1_q <= u0_m0_wo0_mtree_mult1_17_add_1_o(17 downto 0);


	--d_u0_m0_wo0_wi0_delayr9_q_11(DELAY,220)@10
    d_u0_m0_wo0_wi0_delayr9_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr9_q, xout => d_u0_m0_wo0_wi0_delayr9_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_17_shift2(BITSHIFT,144)@11
    u0_m0_wo0_mtree_mult1_17_shift2_q_int <= d_u0_m0_wo0_wi0_delayr9_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_17_shift2_q <= u0_m0_wo0_mtree_mult1_17_shift2_q_int(18 downto 0);

	--u0_m0_wo0_mtree_mult1_17_sub_3(SUB,145)@11
    u0_m0_wo0_mtree_mult1_17_sub_3_a <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_17_shift2_q(18)) & u0_m0_wo0_mtree_mult1_17_shift2_q);
    u0_m0_wo0_mtree_mult1_17_sub_3_b <= STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_mult1_17_add_1_q(17)) & u0_m0_wo0_mtree_mult1_17_add_1_q);
    u0_m0_wo0_mtree_mult1_17_sub_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_sub_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_17_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_sub_3_q <= u0_m0_wo0_mtree_mult1_17_sub_3_o(19 downto 0);


	--u0_m0_wo0_mtree_mult1_16_shift2(BITSHIFT,148)@10
    u0_m0_wo0_mtree_mult1_16_shift2_q_int <= u0_m0_wo0_wi0_delayr10_q & "00";
    u0_m0_wo0_mtree_mult1_16_shift2_q <= u0_m0_wo0_mtree_mult1_16_shift2_q_int(15 downto 0);

	--u0_m0_wo0_wi0_delayr10(DELAY,17)@10
    u0_m0_wo0_wi0_delayr10 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr9_q, xout => u0_m0_wo0_wi0_delayr10_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_16_add_3(ADD,149)@10
    u0_m0_wo0_mtree_mult1_16_add_3_a <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_wi0_delayr10_q(13)) & u0_m0_wo0_wi0_delayr10_q);
    u0_m0_wo0_mtree_mult1_16_add_3_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_16_shift2_q(15)) & u0_m0_wo0_mtree_mult1_16_shift2_q);
    u0_m0_wo0_mtree_mult1_16_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_add_3_q <= u0_m0_wo0_mtree_mult1_16_add_3_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_16_shift4(BITSHIFT,150)@11
    u0_m0_wo0_mtree_mult1_16_shift4_q_int <= u0_m0_wo0_mtree_mult1_16_add_3_q & "0000";
    u0_m0_wo0_mtree_mult1_16_shift4_q <= u0_m0_wo0_mtree_mult1_16_shift4_q_int(20 downto 0);

	--u0_m0_wo0_mtree_mult1_16_shift0(BITSHIFT,146)@10
    u0_m0_wo0_mtree_mult1_16_shift0_q_int <= u0_m0_wo0_wi0_delayr10_q & "00";
    u0_m0_wo0_mtree_mult1_16_shift0_q <= u0_m0_wo0_mtree_mult1_16_shift0_q_int(15 downto 0);

	--u0_m0_wo0_mtree_mult1_16_sub_1(SUB,147)@10
    u0_m0_wo0_mtree_mult1_16_sub_1_a <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_16_shift0_q(15)) & u0_m0_wo0_mtree_mult1_16_shift0_q);
    u0_m0_wo0_mtree_mult1_16_sub_1_b <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_wi0_delayr10_q(13)) & u0_m0_wo0_wi0_delayr10_q);
    u0_m0_wo0_mtree_mult1_16_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_16_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_sub_1_q <= u0_m0_wo0_mtree_mult1_16_sub_1_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_16_sub_5(SUB,151)@11
    u0_m0_wo0_mtree_mult1_16_sub_5_a <= STD_LOGIC_VECTOR((21 downto 17 => u0_m0_wo0_mtree_mult1_16_sub_1_q(16)) & u0_m0_wo0_mtree_mult1_16_sub_1_q);
    u0_m0_wo0_mtree_mult1_16_sub_5_b <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_16_shift4_q(20)) & u0_m0_wo0_mtree_mult1_16_shift4_q);
    u0_m0_wo0_mtree_mult1_16_sub_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_sub_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_sub_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_sub_5_a) - SIGNED(u0_m0_wo0_mtree_mult1_16_sub_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_sub_5_q <= u0_m0_wo0_mtree_mult1_16_sub_5_o(21 downto 0);


	--u0_m0_wo0_mtree_add0_8(ADD,96)@12
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_mult1_16_sub_5_q(21)) & u0_m0_wo0_mtree_mult1_16_sub_5_q);
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR((22 downto 20 => u0_m0_wo0_mtree_mult1_17_sub_3_q(19)) & u0_m0_wo0_mtree_mult1_17_sub_3_q);
    u0_m0_wo0_mtree_add0_8: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(22 downto 0);


	--u0_m0_wo0_mtree_add1_4(ADD,105)@13
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add0_8_q(22)) & u0_m0_wo0_mtree_add0_8_q);
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR((23 downto 22 => u0_m0_wo0_mtree_add0_9_q(21)) & u0_m0_wo0_mtree_add0_9_q);
    u0_m0_wo0_mtree_add1_4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(23 downto 0);


	--u0_m0_wo0_mtree_add2_2(ADD,110)@14
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add1_4_q(23)) & u0_m0_wo0_mtree_add1_4_q);
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR((24 downto 21 => u0_m0_wo0_mtree_add1_5_q(20)) & u0_m0_wo0_mtree_add1_5_q);
    u0_m0_wo0_mtree_add2_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(24 downto 0);


	--u0_m0_wo0_mtree_add3_1(ADD,112)@15
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add2_2_q(24)) & u0_m0_wo0_mtree_add2_2_q);
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR((25 downto 20 => u0_m0_wo0_mtree_add1_6_q(19)) & u0_m0_wo0_mtree_add1_6_q);
    u0_m0_wo0_mtree_add3_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(25 downto 0);


	--u0_m0_wo0_mtree_mult1_15_shift2(BITSHIFT,154)@10
    u0_m0_wo0_mtree_mult1_15_shift2_q_int <= u0_m0_wo0_wi0_delayr11_q & "00";
    u0_m0_wo0_mtree_mult1_15_shift2_q <= u0_m0_wo0_mtree_mult1_15_shift2_q_int(15 downto 0);

	--u0_m0_wo0_wi0_delayr11(DELAY,18)@10
    u0_m0_wo0_wi0_delayr11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr10_q, xout => u0_m0_wo0_wi0_delayr11_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_15_sub_3(SUB,155)@10
    u0_m0_wo0_mtree_mult1_15_sub_3_a <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_wi0_delayr11_q(13)) & u0_m0_wo0_wi0_delayr11_q);
    u0_m0_wo0_mtree_mult1_15_sub_3_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_15_shift2_q(15)) & u0_m0_wo0_mtree_mult1_15_shift2_q);
    u0_m0_wo0_mtree_mult1_15_sub_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_sub_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_15_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_sub_3_q <= u0_m0_wo0_mtree_mult1_15_sub_3_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_15_shift4(BITSHIFT,156)@11
    u0_m0_wo0_mtree_mult1_15_shift4_q_int <= u0_m0_wo0_mtree_mult1_15_sub_3_q & "0000";
    u0_m0_wo0_mtree_mult1_15_shift4_q <= u0_m0_wo0_mtree_mult1_15_shift4_q_int(20 downto 0);

	--u0_m0_wo0_mtree_mult1_15_shift0(BITSHIFT,152)@10
    u0_m0_wo0_mtree_mult1_15_shift0_q_int <= u0_m0_wo0_wi0_delayr11_q & "00";
    u0_m0_wo0_mtree_mult1_15_shift0_q <= u0_m0_wo0_mtree_mult1_15_shift0_q_int(15 downto 0);

	--u0_m0_wo0_mtree_mult1_15_sub_1(SUB,153)@10
    u0_m0_wo0_mtree_mult1_15_sub_1_a <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_15_shift0_q(15)) & u0_m0_wo0_mtree_mult1_15_shift0_q);
    u0_m0_wo0_mtree_mult1_15_sub_1_b <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_wi0_delayr11_q(13)) & u0_m0_wo0_wi0_delayr11_q);
    u0_m0_wo0_mtree_mult1_15_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_15_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_sub_1_q <= u0_m0_wo0_mtree_mult1_15_sub_1_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_15_add_5(ADD,157)@11
    u0_m0_wo0_mtree_mult1_15_add_5_a <= STD_LOGIC_VECTOR((21 downto 17 => u0_m0_wo0_mtree_mult1_15_sub_1_q(16)) & u0_m0_wo0_mtree_mult1_15_sub_1_q);
    u0_m0_wo0_mtree_mult1_15_add_5_b <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_15_shift4_q(20)) & u0_m0_wo0_mtree_mult1_15_shift4_q);
    u0_m0_wo0_mtree_mult1_15_add_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_add_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_add_5_q <= u0_m0_wo0_mtree_mult1_15_add_5_o(21 downto 0);


	--u0_m0_wo0_mtree_mult1_15_shift6(BITSHIFT,158)@12
    u0_m0_wo0_mtree_mult1_15_shift6_q_int <= u0_m0_wo0_mtree_mult1_15_add_5_q & "0";
    u0_m0_wo0_mtree_mult1_15_shift6_q <= u0_m0_wo0_mtree_mult1_15_shift6_q_int(22 downto 0);

	--u0_m0_wo0_wi0_delayr12(DELAY,19)@10
    u0_m0_wo0_wi0_delayr12 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr11_q, xout => u0_m0_wo0_wi0_delayr12_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr12_q_11(DELAY,221)@10
    d_u0_m0_wo0_wi0_delayr12_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr12_q, xout => d_u0_m0_wo0_wi0_delayr12_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_14_shift2(BITSHIFT,161)@11
    u0_m0_wo0_mtree_mult1_14_shift2_q_int <= d_u0_m0_wo0_wi0_delayr12_q_11_q & "0000";
    u0_m0_wo0_mtree_mult1_14_shift2_q <= u0_m0_wo0_mtree_mult1_14_shift2_q_int(17 downto 0);

	--u0_m0_wo0_mtree_mult1_14_shift0(BITSHIFT,159)@10
    u0_m0_wo0_mtree_mult1_14_shift0_q_int <= u0_m0_wo0_wi0_delayr12_q & "0";
    u0_m0_wo0_mtree_mult1_14_shift0_q <= u0_m0_wo0_mtree_mult1_14_shift0_q_int(14 downto 0);

	--u0_m0_wo0_mtree_mult1_14_add_1(ADD,160)@10
    u0_m0_wo0_mtree_mult1_14_add_1_a <= STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_wi0_delayr12_q(13)) & u0_m0_wo0_wi0_delayr12_q);
    u0_m0_wo0_mtree_mult1_14_add_1_b <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_14_shift0_q(14)) & u0_m0_wo0_mtree_mult1_14_shift0_q);
    u0_m0_wo0_mtree_mult1_14_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_14_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_14_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_14_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_14_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_14_add_1_q <= u0_m0_wo0_mtree_mult1_14_add_1_o(15 downto 0);


	--u0_m0_wo0_mtree_mult1_14_add_3(ADD,162)@11
    u0_m0_wo0_mtree_mult1_14_add_3_a <= STD_LOGIC_VECTOR((18 downto 16 => u0_m0_wo0_mtree_mult1_14_add_1_q(15)) & u0_m0_wo0_mtree_mult1_14_add_1_q);
    u0_m0_wo0_mtree_mult1_14_add_3_b <= STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_14_shift2_q(17)) & u0_m0_wo0_mtree_mult1_14_shift2_q);
    u0_m0_wo0_mtree_mult1_14_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_14_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_14_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_14_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_14_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_14_add_3_q <= u0_m0_wo0_mtree_mult1_14_add_3_o(18 downto 0);


	--u0_m0_wo0_mtree_mult1_14_shift4(BITSHIFT,163)@12
    u0_m0_wo0_mtree_mult1_14_shift4_q_int <= u0_m0_wo0_mtree_mult1_14_add_3_q & "0";
    u0_m0_wo0_mtree_mult1_14_shift4_q <= u0_m0_wo0_mtree_mult1_14_shift4_q_int(19 downto 0);

	--u0_m0_wo0_mtree_add0_7(ADD,95)@12
    u0_m0_wo0_mtree_add0_7_a <= STD_LOGIC_VECTOR((23 downto 20 => u0_m0_wo0_mtree_mult1_14_shift4_q(19)) & u0_m0_wo0_mtree_mult1_14_shift4_q);
    u0_m0_wo0_mtree_add0_7_b <= STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_mult1_15_shift6_q(22)) & u0_m0_wo0_mtree_mult1_15_shift6_q);
    u0_m0_wo0_mtree_add0_7: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_7_a) + SIGNED(u0_m0_wo0_mtree_add0_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_7_q <= u0_m0_wo0_mtree_add0_7_o(23 downto 0);


	--u0_m0_wo0_wi0_delayr13(DELAY,20)@10
    u0_m0_wo0_wi0_delayr13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr12_q, xout => u0_m0_wo0_wi0_delayr13_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr13_q_11(DELAY,222)@10
    d_u0_m0_wo0_wi0_delayr13_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr13_q, xout => d_u0_m0_wo0_wi0_delayr13_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_13_shift0(BITSHIFT,164)@11
    u0_m0_wo0_mtree_mult1_13_shift0_q_int <= d_u0_m0_wo0_wi0_delayr13_q_11_q & "0000000";
    u0_m0_wo0_mtree_mult1_13_shift0_q <= u0_m0_wo0_mtree_mult1_13_shift0_q_int(20 downto 0);

	--u0_m0_wo0_mtree_mult1_13_sub_1(SUB,165)@11
    u0_m0_wo0_mtree_mult1_13_sub_1_a <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_13_shift0_q(20)) & u0_m0_wo0_mtree_mult1_13_shift0_q);
    u0_m0_wo0_mtree_mult1_13_sub_1_b <= STD_LOGIC_VECTOR((21 downto 14 => d_u0_m0_wo0_wi0_delayr13_q_11_q(13)) & d_u0_m0_wo0_wi0_delayr13_q_11_q);
    u0_m0_wo0_mtree_mult1_13_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_13_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_sub_1_q <= u0_m0_wo0_mtree_mult1_13_sub_1_o(21 downto 0);


	--u0_m0_wo0_wi0_delayr14(DELAY,21)@10
    u0_m0_wo0_wi0_delayr14 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr13_q, xout => u0_m0_wo0_wi0_delayr14_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr14_q_11(DELAY,223)@10
    d_u0_m0_wo0_wi0_delayr14_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr14_q, xout => d_u0_m0_wo0_wi0_delayr14_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_12_shift2(BITSHIFT,168)@11
    u0_m0_wo0_mtree_mult1_12_shift2_q_int <= d_u0_m0_wo0_wi0_delayr14_q_11_q & "0000";
    u0_m0_wo0_mtree_mult1_12_shift2_q <= u0_m0_wo0_mtree_mult1_12_shift2_q_int(17 downto 0);

	--u0_m0_wo0_mtree_mult1_12_shift0(BITSHIFT,166)@10
    u0_m0_wo0_mtree_mult1_12_shift0_q_int <= u0_m0_wo0_wi0_delayr14_q & "0";
    u0_m0_wo0_mtree_mult1_12_shift0_q <= u0_m0_wo0_mtree_mult1_12_shift0_q_int(14 downto 0);

	--u0_m0_wo0_mtree_mult1_12_add_1(ADD,167)@10
    u0_m0_wo0_mtree_mult1_12_add_1_a <= STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_wi0_delayr14_q(13)) & u0_m0_wo0_wi0_delayr14_q);
    u0_m0_wo0_mtree_mult1_12_add_1_b <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_12_shift0_q(14)) & u0_m0_wo0_mtree_mult1_12_shift0_q);
    u0_m0_wo0_mtree_mult1_12_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_12_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_add_1_q <= u0_m0_wo0_mtree_mult1_12_add_1_o(15 downto 0);


	--u0_m0_wo0_mtree_mult1_12_add_3(ADD,169)@11
    u0_m0_wo0_mtree_mult1_12_add_3_a <= STD_LOGIC_VECTOR((18 downto 16 => u0_m0_wo0_mtree_mult1_12_add_1_q(15)) & u0_m0_wo0_mtree_mult1_12_add_1_q);
    u0_m0_wo0_mtree_mult1_12_add_3_b <= STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_12_shift2_q(17)) & u0_m0_wo0_mtree_mult1_12_shift2_q);
    u0_m0_wo0_mtree_mult1_12_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_12_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_add_3_q <= u0_m0_wo0_mtree_mult1_12_add_3_o(18 downto 0);


	--u0_m0_wo0_mtree_mult1_12_shift4(BITSHIFT,170)@12
    u0_m0_wo0_mtree_mult1_12_shift4_q_int <= u0_m0_wo0_mtree_mult1_12_add_3_q & "0";
    u0_m0_wo0_mtree_mult1_12_shift4_q <= u0_m0_wo0_mtree_mult1_12_shift4_q_int(19 downto 0);

	--u0_m0_wo0_mtree_add0_6(ADD,94)@12
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR((22 downto 20 => u0_m0_wo0_mtree_mult1_12_shift4_q(19)) & u0_m0_wo0_mtree_mult1_12_shift4_q);
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_mult1_13_sub_1_q(21)) & u0_m0_wo0_mtree_mult1_13_sub_1_q);
    u0_m0_wo0_mtree_add0_6: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(22 downto 0);


	--u0_m0_wo0_mtree_add1_3(ADD,104)@13
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add0_6_q(22)) & u0_m0_wo0_mtree_add0_6_q);
    u0_m0_wo0_mtree_add1_3_b <= u0_m0_wo0_mtree_add0_7_q;
    u0_m0_wo0_mtree_add1_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(23 downto 0);


	--u0_m0_wo0_mtree_mult1_11_shift2(BITSHIFT,173)@10
    u0_m0_wo0_mtree_mult1_11_shift2_q_int <= u0_m0_wo0_wi0_delayr15_q & "00";
    u0_m0_wo0_mtree_mult1_11_shift2_q <= u0_m0_wo0_mtree_mult1_11_shift2_q_int(15 downto 0);

	--u0_m0_wo0_wi0_delayr15(DELAY,22)@10
    u0_m0_wo0_wi0_delayr15 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr14_q, xout => u0_m0_wo0_wi0_delayr15_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_11_sub_3(SUB,174)@10
    u0_m0_wo0_mtree_mult1_11_sub_3_a <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_wi0_delayr15_q(13)) & u0_m0_wo0_wi0_delayr15_q);
    u0_m0_wo0_mtree_mult1_11_sub_3_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_11_shift2_q(15)) & u0_m0_wo0_mtree_mult1_11_shift2_q);
    u0_m0_wo0_mtree_mult1_11_sub_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_sub_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_11_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_sub_3_q <= u0_m0_wo0_mtree_mult1_11_sub_3_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_11_shift4(BITSHIFT,175)@11
    u0_m0_wo0_mtree_mult1_11_shift4_q_int <= u0_m0_wo0_mtree_mult1_11_sub_3_q & "0000";
    u0_m0_wo0_mtree_mult1_11_shift4_q <= u0_m0_wo0_mtree_mult1_11_shift4_q_int(20 downto 0);

	--u0_m0_wo0_mtree_mult1_11_shift0(BITSHIFT,171)@10
    u0_m0_wo0_mtree_mult1_11_shift0_q_int <= u0_m0_wo0_wi0_delayr15_q & "00";
    u0_m0_wo0_mtree_mult1_11_shift0_q <= u0_m0_wo0_mtree_mult1_11_shift0_q_int(15 downto 0);

	--u0_m0_wo0_mtree_mult1_11_sub_1(SUB,172)@10
    u0_m0_wo0_mtree_mult1_11_sub_1_a <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_11_shift0_q(15)) & u0_m0_wo0_mtree_mult1_11_shift0_q);
    u0_m0_wo0_mtree_mult1_11_sub_1_b <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_wi0_delayr15_q(13)) & u0_m0_wo0_wi0_delayr15_q);
    u0_m0_wo0_mtree_mult1_11_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_11_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_sub_1_q <= u0_m0_wo0_mtree_mult1_11_sub_1_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_11_add_5(ADD,176)@11
    u0_m0_wo0_mtree_mult1_11_add_5_a <= STD_LOGIC_VECTOR((21 downto 17 => u0_m0_wo0_mtree_mult1_11_sub_1_q(16)) & u0_m0_wo0_mtree_mult1_11_sub_1_q);
    u0_m0_wo0_mtree_mult1_11_add_5_b <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_11_shift4_q(20)) & u0_m0_wo0_mtree_mult1_11_shift4_q);
    u0_m0_wo0_mtree_mult1_11_add_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_add_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_11_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_add_5_q <= u0_m0_wo0_mtree_mult1_11_add_5_o(21 downto 0);


	--u0_m0_wo0_mtree_mult1_11_shift6(BITSHIFT,177)@12
    u0_m0_wo0_mtree_mult1_11_shift6_q_int <= u0_m0_wo0_mtree_mult1_11_add_5_q & "0";
    u0_m0_wo0_mtree_mult1_11_shift6_q <= u0_m0_wo0_mtree_mult1_11_shift6_q_int(22 downto 0);

	--u0_m0_wo0_mtree_mult1_10_shift2(BITSHIFT,180)@10
    u0_m0_wo0_mtree_mult1_10_shift2_q_int <= u0_m0_wo0_wi0_delayr16_q & "00";
    u0_m0_wo0_mtree_mult1_10_shift2_q <= u0_m0_wo0_mtree_mult1_10_shift2_q_int(15 downto 0);

	--u0_m0_wo0_wi0_delayr16(DELAY,23)@10
    u0_m0_wo0_wi0_delayr16 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr15_q, xout => u0_m0_wo0_wi0_delayr16_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_10_add_3(ADD,181)@10
    u0_m0_wo0_mtree_mult1_10_add_3_a <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_wi0_delayr16_q(13)) & u0_m0_wo0_wi0_delayr16_q);
    u0_m0_wo0_mtree_mult1_10_add_3_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_10_shift2_q(15)) & u0_m0_wo0_mtree_mult1_10_shift2_q);
    u0_m0_wo0_mtree_mult1_10_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_10_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_10_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_10_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_10_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_10_add_3_q <= u0_m0_wo0_mtree_mult1_10_add_3_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_10_shift4(BITSHIFT,182)@11
    u0_m0_wo0_mtree_mult1_10_shift4_q_int <= u0_m0_wo0_mtree_mult1_10_add_3_q & "0000";
    u0_m0_wo0_mtree_mult1_10_shift4_q <= u0_m0_wo0_mtree_mult1_10_shift4_q_int(20 downto 0);

	--u0_m0_wo0_mtree_mult1_10_shift0(BITSHIFT,178)@10
    u0_m0_wo0_mtree_mult1_10_shift0_q_int <= u0_m0_wo0_wi0_delayr16_q & "00";
    u0_m0_wo0_mtree_mult1_10_shift0_q <= u0_m0_wo0_mtree_mult1_10_shift0_q_int(15 downto 0);

	--u0_m0_wo0_mtree_mult1_10_sub_1(SUB,179)@10
    u0_m0_wo0_mtree_mult1_10_sub_1_a <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_10_shift0_q(15)) & u0_m0_wo0_mtree_mult1_10_shift0_q);
    u0_m0_wo0_mtree_mult1_10_sub_1_b <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_wi0_delayr16_q(13)) & u0_m0_wo0_wi0_delayr16_q);
    u0_m0_wo0_mtree_mult1_10_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_10_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_10_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_10_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_10_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_10_sub_1_q <= u0_m0_wo0_mtree_mult1_10_sub_1_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_10_sub_5(SUB,183)@11
    u0_m0_wo0_mtree_mult1_10_sub_5_a <= STD_LOGIC_VECTOR((21 downto 17 => u0_m0_wo0_mtree_mult1_10_sub_1_q(16)) & u0_m0_wo0_mtree_mult1_10_sub_1_q);
    u0_m0_wo0_mtree_mult1_10_sub_5_b <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_10_shift4_q(20)) & u0_m0_wo0_mtree_mult1_10_shift4_q);
    u0_m0_wo0_mtree_mult1_10_sub_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_10_sub_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_10_sub_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_10_sub_5_a) - SIGNED(u0_m0_wo0_mtree_mult1_10_sub_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_10_sub_5_q <= u0_m0_wo0_mtree_mult1_10_sub_5_o(21 downto 0);


	--u0_m0_wo0_mtree_add0_5(ADD,93)@12
    u0_m0_wo0_mtree_add0_5_a <= STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_mult1_10_sub_5_q(21)) & u0_m0_wo0_mtree_mult1_10_sub_5_q);
    u0_m0_wo0_mtree_add0_5_b <= u0_m0_wo0_mtree_mult1_11_shift6_q;
    u0_m0_wo0_mtree_add0_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_5_a) + SIGNED(u0_m0_wo0_mtree_add0_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_5_q <= u0_m0_wo0_mtree_add0_5_o(22 downto 0);


	--u0_m0_wo0_mtree_mult1_9_shift0(BITSHIFT,184)@10
    u0_m0_wo0_mtree_mult1_9_shift0_q_int <= u0_m0_wo0_wi0_delayr17_q & "000";
    u0_m0_wo0_mtree_mult1_9_shift0_q <= u0_m0_wo0_mtree_mult1_9_shift0_q_int(16 downto 0);

	--u0_m0_wo0_wi0_delayr17(DELAY,24)@10
    u0_m0_wo0_wi0_delayr17 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr16_q, xout => u0_m0_wo0_wi0_delayr17_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_9_add_1(ADD,185)@10
    u0_m0_wo0_mtree_mult1_9_add_1_a <= STD_LOGIC_VECTOR((17 downto 14 => u0_m0_wo0_wi0_delayr17_q(13)) & u0_m0_wo0_wi0_delayr17_q);
    u0_m0_wo0_mtree_mult1_9_add_1_b <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_9_shift0_q(16)) & u0_m0_wo0_mtree_mult1_9_shift0_q);
    u0_m0_wo0_mtree_mult1_9_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_9_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_add_1_q <= u0_m0_wo0_mtree_mult1_9_add_1_o(17 downto 0);


	--d_u0_m0_wo0_wi0_delayr17_q_11(DELAY,224)@10
    d_u0_m0_wo0_wi0_delayr17_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr17_q, xout => d_u0_m0_wo0_wi0_delayr17_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_9_shift2(BITSHIFT,186)@11
    u0_m0_wo0_mtree_mult1_9_shift2_q_int <= d_u0_m0_wo0_wi0_delayr17_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_9_shift2_q <= u0_m0_wo0_mtree_mult1_9_shift2_q_int(18 downto 0);

	--u0_m0_wo0_mtree_mult1_9_sub_3(SUB,187)@11
    u0_m0_wo0_mtree_mult1_9_sub_3_a <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_9_shift2_q(18)) & u0_m0_wo0_mtree_mult1_9_shift2_q);
    u0_m0_wo0_mtree_mult1_9_sub_3_b <= STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_mult1_9_add_1_q(17)) & u0_m0_wo0_mtree_mult1_9_add_1_q);
    u0_m0_wo0_mtree_mult1_9_sub_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_sub_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_9_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_sub_3_q <= u0_m0_wo0_mtree_mult1_9_sub_3_o(19 downto 0);


	--u0_m0_wo0_mtree_mult1_8_shift0(BITSHIFT,188)@10
    u0_m0_wo0_mtree_mult1_8_shift0_q_int <= u0_m0_wo0_wi0_delayr18_q & "00";
    u0_m0_wo0_mtree_mult1_8_shift0_q <= u0_m0_wo0_mtree_mult1_8_shift0_q_int(15 downto 0);

	--u0_m0_wo0_wi0_delayr18(DELAY,25)@10
    u0_m0_wo0_wi0_delayr18 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr17_q, xout => u0_m0_wo0_wi0_delayr18_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_8_add_1(ADD,189)@10
    u0_m0_wo0_mtree_mult1_8_add_1_a <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_wi0_delayr18_q(13)) & u0_m0_wo0_wi0_delayr18_q);
    u0_m0_wo0_mtree_mult1_8_add_1_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_8_shift0_q(15)) & u0_m0_wo0_mtree_mult1_8_shift0_q);
    u0_m0_wo0_mtree_mult1_8_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_8_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_8_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_8_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_8_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_8_add_1_q <= u0_m0_wo0_mtree_mult1_8_add_1_o(16 downto 0);


	--d_u0_m0_wo0_wi0_delayr18_q_11(DELAY,225)@10
    d_u0_m0_wo0_wi0_delayr18_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr18_q, xout => d_u0_m0_wo0_wi0_delayr18_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_8_shift2(BITSHIFT,190)@11
    u0_m0_wo0_mtree_mult1_8_shift2_q_int <= d_u0_m0_wo0_wi0_delayr18_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_8_shift2_q <= u0_m0_wo0_mtree_mult1_8_shift2_q_int(18 downto 0);

	--u0_m0_wo0_mtree_mult1_8_sub_3(SUB,191)@11
    u0_m0_wo0_mtree_mult1_8_sub_3_a <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_8_shift2_q(18)) & u0_m0_wo0_mtree_mult1_8_shift2_q);
    u0_m0_wo0_mtree_mult1_8_sub_3_b <= STD_LOGIC_VECTOR((19 downto 17 => u0_m0_wo0_mtree_mult1_8_add_1_q(16)) & u0_m0_wo0_mtree_mult1_8_add_1_q);
    u0_m0_wo0_mtree_mult1_8_sub_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_8_sub_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_8_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_8_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_8_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_8_sub_3_q <= u0_m0_wo0_mtree_mult1_8_sub_3_o(19 downto 0);


	--u0_m0_wo0_mtree_mult1_8_shift4(BITSHIFT,192)@12
    u0_m0_wo0_mtree_mult1_8_shift4_q_int <= u0_m0_wo0_mtree_mult1_8_sub_3_q & "0";
    u0_m0_wo0_mtree_mult1_8_shift4_q <= u0_m0_wo0_mtree_mult1_8_shift4_q_int(20 downto 0);

	--u0_m0_wo0_mtree_add0_4(ADD,92)@12
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_8_shift4_q(20)) & u0_m0_wo0_mtree_mult1_8_shift4_q);
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR((21 downto 20 => u0_m0_wo0_mtree_mult1_9_sub_3_q(19)) & u0_m0_wo0_mtree_mult1_9_sub_3_q);
    u0_m0_wo0_mtree_add0_4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(21 downto 0);


	--u0_m0_wo0_mtree_add1_2(ADD,103)@13
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR((23 downto 22 => u0_m0_wo0_mtree_add0_4_q(21)) & u0_m0_wo0_mtree_add0_4_q);
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add0_5_q(22)) & u0_m0_wo0_mtree_add0_5_q);
    u0_m0_wo0_mtree_add1_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(23 downto 0);


	--u0_m0_wo0_mtree_add2_1(ADD,109)@14
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add1_2_q(23)) & u0_m0_wo0_mtree_add1_2_q);
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add1_3_q(23)) & u0_m0_wo0_mtree_add1_3_q);
    u0_m0_wo0_mtree_add2_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(24 downto 0);


	--u0_m0_wo0_mtree_mult1_7_shift0(BITSHIFT,193)@11
    u0_m0_wo0_mtree_mult1_7_shift0_q_int <= u0_m0_wo0_wi0_delayr19_q & "00";
    u0_m0_wo0_mtree_mult1_7_shift0_q <= u0_m0_wo0_mtree_mult1_7_shift0_q_int(15 downto 0);

	--d_u0_m0_wo0_memread_q_11(DELAY,210)@10
    d_u0_m0_wo0_memread_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_memread_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr19(DELAY,26)@11
    u0_m0_wo0_wi0_delayr19 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_delayr18_q_11_q, xout => u0_m0_wo0_wi0_delayr19_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_7_add_1(ADD,194)@11
    u0_m0_wo0_mtree_mult1_7_add_1_a <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_wi0_delayr19_q(13)) & u0_m0_wo0_wi0_delayr19_q);
    u0_m0_wo0_mtree_mult1_7_add_1_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_7_shift0_q(15)) & u0_m0_wo0_mtree_mult1_7_shift0_q);
    u0_m0_wo0_mtree_mult1_7_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_7_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_add_1_q <= u0_m0_wo0_mtree_mult1_7_add_1_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_7_shift2(BITSHIFT,195)@12
    u0_m0_wo0_mtree_mult1_7_shift2_q_int <= u0_m0_wo0_mtree_mult1_7_add_1_q & "0";
    u0_m0_wo0_mtree_mult1_7_shift2_q <= u0_m0_wo0_mtree_mult1_7_shift2_q_int(17 downto 0);

	--u0_m0_wo0_mtree_mult1_6_shift0(BITSHIFT,196)@11
    u0_m0_wo0_mtree_mult1_6_shift0_q_int <= u0_m0_wo0_wi0_delayr20_q & "000";
    u0_m0_wo0_mtree_mult1_6_shift0_q <= u0_m0_wo0_mtree_mult1_6_shift0_q_int(16 downto 0);

	--u0_m0_wo0_wi0_delayr20(DELAY,27)@11
    u0_m0_wo0_wi0_delayr20 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr19_q, xout => u0_m0_wo0_wi0_delayr20_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_6_sub_1(SUB,197)@11
    u0_m0_wo0_mtree_mult1_6_sub_1_a <= STD_LOGIC_VECTOR((17 downto 14 => u0_m0_wo0_wi0_delayr20_q(13)) & u0_m0_wo0_wi0_delayr20_q);
    u0_m0_wo0_mtree_mult1_6_sub_1_b <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_6_shift0_q(16)) & u0_m0_wo0_mtree_mult1_6_shift0_q);
    u0_m0_wo0_mtree_mult1_6_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_6_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_6_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_6_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_6_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_6_sub_1_q <= u0_m0_wo0_mtree_mult1_6_sub_1_o(17 downto 0);


	--u0_m0_wo0_mtree_mult1_6_shift2(BITSHIFT,198)@12
    u0_m0_wo0_mtree_mult1_6_shift2_q_int <= u0_m0_wo0_mtree_mult1_6_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_6_shift2_q <= u0_m0_wo0_mtree_mult1_6_shift2_q_int(18 downto 0);

	--u0_m0_wo0_mtree_add0_3(ADD,91)@12
    u0_m0_wo0_mtree_add0_3_a <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_6_shift2_q(18)) & u0_m0_wo0_mtree_mult1_6_shift2_q);
    u0_m0_wo0_mtree_add0_3_b <= STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_mult1_7_shift2_q(17)) & u0_m0_wo0_mtree_mult1_7_shift2_q);
    u0_m0_wo0_mtree_add0_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_3_a) + SIGNED(u0_m0_wo0_mtree_add0_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_3_q <= u0_m0_wo0_mtree_add0_3_o(19 downto 0);


	--u0_m0_wo0_mtree_mult1_5_shift0(BITSHIFT,199)@12
    u0_m0_wo0_mtree_mult1_5_shift0_q_int <= d_u0_m0_wo0_wi0_delayr21_q_12_q & "00";
    u0_m0_wo0_mtree_mult1_5_shift0_q <= u0_m0_wo0_mtree_mult1_5_shift0_q_int(15 downto 0);

	--u0_m0_wo0_wi0_delayr21(DELAY,28)@11
    u0_m0_wo0_wi0_delayr21 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr20_q, xout => u0_m0_wo0_wi0_delayr21_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr21_q_12(DELAY,226)@11
    d_u0_m0_wo0_wi0_delayr21_q_12 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr21_q, xout => d_u0_m0_wo0_wi0_delayr21_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_5_sub_1(SUB,200)@12
    u0_m0_wo0_mtree_mult1_5_sub_1_a <= STD_LOGIC_VECTOR((16 downto 14 => d_u0_m0_wo0_wi0_delayr21_q_12_q(13)) & d_u0_m0_wo0_wi0_delayr21_q_12_q);
    u0_m0_wo0_mtree_mult1_5_sub_1_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_5_shift0_q(15)) & u0_m0_wo0_mtree_mult1_5_shift0_q);
    u0_m0_wo0_mtree_mult1_5_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_5_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_sub_1_q <= u0_m0_wo0_mtree_mult1_5_sub_1_o(16 downto 0);


	--u0_m0_wo0_mtree_add1_1(ADD,102)@13
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR((20 downto 17 => u0_m0_wo0_mtree_mult1_5_sub_1_q(16)) & u0_m0_wo0_mtree_mult1_5_sub_1_q);
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_add0_3_q(19)) & u0_m0_wo0_mtree_add0_3_q);
    u0_m0_wo0_mtree_add1_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(20 downto 0);


	--u0_m0_wo0_mtree_mult1_3_shift0(BITSHIFT,201)@11
    u0_m0_wo0_mtree_mult1_3_shift0_q_int <= u0_m0_wo0_wi0_delayr23_q & "000";
    u0_m0_wo0_mtree_mult1_3_shift0_q <= u0_m0_wo0_mtree_mult1_3_shift0_q_int(16 downto 0);

	--u0_m0_wo0_wi0_delayr22(DELAY,29)@11
    u0_m0_wo0_wi0_delayr22 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr21_q, xout => u0_m0_wo0_wi0_delayr22_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr23(DELAY,30)@11
    u0_m0_wo0_wi0_delayr23 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr22_q, xout => u0_m0_wo0_wi0_delayr23_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_3_sub_1(SUB,202)@11
    u0_m0_wo0_mtree_mult1_3_sub_1_a <= STD_LOGIC_VECTOR((17 downto 14 => u0_m0_wo0_wi0_delayr23_q(13)) & u0_m0_wo0_wi0_delayr23_q);
    u0_m0_wo0_mtree_mult1_3_sub_1_b <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_3_shift0_q(16)) & u0_m0_wo0_mtree_mult1_3_shift0_q);
    u0_m0_wo0_mtree_mult1_3_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_3_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_sub_1_q <= u0_m0_wo0_mtree_mult1_3_sub_1_o(17 downto 0);


	--u0_m0_wo0_mtree_mult1_2_shift0(BITSHIFT,203)@11
    u0_m0_wo0_mtree_mult1_2_shift0_q_int <= u0_m0_wo0_wi0_delayr24_q & "00";
    u0_m0_wo0_mtree_mult1_2_shift0_q <= u0_m0_wo0_mtree_mult1_2_shift0_q_int(15 downto 0);

	--u0_m0_wo0_wi0_delayr24(DELAY,31)@11
    u0_m0_wo0_wi0_delayr24 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr23_q, xout => u0_m0_wo0_wi0_delayr24_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_2_sub_1(SUB,204)@11
    u0_m0_wo0_mtree_mult1_2_sub_1_a <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_wi0_delayr24_q(13)) & u0_m0_wo0_wi0_delayr24_q);
    u0_m0_wo0_mtree_mult1_2_sub_1_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_2_shift0_q(15)) & u0_m0_wo0_mtree_mult1_2_shift0_q);
    u0_m0_wo0_mtree_mult1_2_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_2_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_2_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_2_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_2_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_2_sub_1_q <= u0_m0_wo0_mtree_mult1_2_sub_1_o(16 downto 0);


	--u0_m0_wo0_mtree_add0_1(ADD,89)@12
    u0_m0_wo0_mtree_add0_1_a <= STD_LOGIC_VECTOR((18 downto 17 => u0_m0_wo0_mtree_mult1_2_sub_1_q(16)) & u0_m0_wo0_mtree_mult1_2_sub_1_q);
    u0_m0_wo0_mtree_add0_1_b <= STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_3_sub_1_q(17)) & u0_m0_wo0_mtree_mult1_3_sub_1_q);
    u0_m0_wo0_mtree_add0_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_1_a) + SIGNED(u0_m0_wo0_mtree_add0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_1_q <= u0_m0_wo0_mtree_add0_1_o(18 downto 0);


	--u0_m0_wo0_mtree_mult1_1_shift0(BITSHIFT,205)@11
    u0_m0_wo0_mtree_mult1_1_shift0_q_int <= u0_m0_wo0_wi0_delayr25_q & "0";
    u0_m0_wo0_mtree_mult1_1_shift0_q <= u0_m0_wo0_mtree_mult1_1_shift0_q_int(14 downto 0);

	--u0_m0_wo0_wi0_delayr25(DELAY,32)@11
    u0_m0_wo0_wi0_delayr25 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr24_q, xout => u0_m0_wo0_wi0_delayr25_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_1_add_1(ADD,206)@11
    u0_m0_wo0_mtree_mult1_1_add_1_a <= STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_wi0_delayr25_q(13)) & u0_m0_wo0_wi0_delayr25_q);
    u0_m0_wo0_mtree_mult1_1_add_1_b <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_1_shift0_q(14)) & u0_m0_wo0_mtree_mult1_1_shift0_q);
    u0_m0_wo0_mtree_mult1_1_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_1_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_1_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_1_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_1_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_1_add_1_q <= u0_m0_wo0_mtree_mult1_1_add_1_o(15 downto 0);


	--u0_m0_wo0_mtree_mult1_1_shift2(BITSHIFT,207)@12
    u0_m0_wo0_mtree_mult1_1_shift2_q_int <= u0_m0_wo0_mtree_mult1_1_add_1_q & "0";
    u0_m0_wo0_mtree_mult1_1_shift2_q <= u0_m0_wo0_mtree_mult1_1_shift2_q_int(16 downto 0);

	--u0_m0_wo0_mtree_mult1_0_shift0(BITSHIFT,208)@11
    u0_m0_wo0_mtree_mult1_0_shift0_q_int <= u0_m0_wo0_wi0_delayr26_q & "0";
    u0_m0_wo0_mtree_mult1_0_shift0_q <= u0_m0_wo0_mtree_mult1_0_shift0_q_int(14 downto 0);

	--u0_m0_wo0_wi0_delayr26(DELAY,33)@11
    u0_m0_wo0_wi0_delayr26 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr25_q, xout => u0_m0_wo0_wi0_delayr26_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_0_add_1(ADD,209)@11
    u0_m0_wo0_mtree_mult1_0_add_1_a <= STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_wi0_delayr26_q(13)) & u0_m0_wo0_wi0_delayr26_q);
    u0_m0_wo0_mtree_mult1_0_add_1_b <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_0_shift0_q(14)) & u0_m0_wo0_mtree_mult1_0_shift0_q);
    u0_m0_wo0_mtree_mult1_0_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_add_1_q <= u0_m0_wo0_mtree_mult1_0_add_1_o(15 downto 0);


	--u0_m0_wo0_mtree_add0_0(ADD,88)@12
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR((17 downto 16 => u0_m0_wo0_mtree_mult1_0_add_1_q(15)) & u0_m0_wo0_mtree_mult1_0_add_1_q);
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_1_shift2_q(16)) & u0_m0_wo0_mtree_mult1_1_shift2_q);
    u0_m0_wo0_mtree_add0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(17 downto 0);


	--u0_m0_wo0_mtree_add1_0(ADD,101)@13
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_add0_0_q(17)) & u0_m0_wo0_mtree_add0_0_q);
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_add0_1_q(18)) & u0_m0_wo0_mtree_add0_1_q);
    u0_m0_wo0_mtree_add1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(19 downto 0);


	--u0_m0_wo0_mtree_add2_0(ADD,108)@14
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR((21 downto 20 => u0_m0_wo0_mtree_add1_0_q(19)) & u0_m0_wo0_mtree_add1_0_q);
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_add1_1_q(20)) & u0_m0_wo0_mtree_add1_1_q);
    u0_m0_wo0_mtree_add2_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(21 downto 0);


	--u0_m0_wo0_mtree_add3_0(ADD,111)@15
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR((25 downto 22 => u0_m0_wo0_mtree_add2_0_q(21)) & u0_m0_wo0_mtree_add2_0_q);
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add2_1_q(24)) & u0_m0_wo0_mtree_add2_1_q);
    u0_m0_wo0_mtree_add3_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(25 downto 0);


	--u0_m0_wo0_mtree_add4_0(ADD,113)@16
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add3_0_q(25)) & u0_m0_wo0_mtree_add3_0_q);
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add3_1_q(25)) & u0_m0_wo0_mtree_add3_1_q);
    u0_m0_wo0_mtree_add4_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(26 downto 0);


	--GND(CONSTANT,0)@0
    GND_q <= "0";

	--d_u0_m0_wo0_memread_q_16(DELAY,211)@11
    d_u0_m0_wo0_memread_q_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5 )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_11_q, xout => d_u0_m0_wo0_memread_q_16_q, clk => clk, aclr => areset );

	--u0_m0_wo0_oseq_gated_reg(REG,114)@16
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= d_u0_m0_wo0_memread_q_16_q;
        END IF;
    END PROCESS;


	--xOut(PORTOUT,117)@17
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add4_0_q;


end normal;
