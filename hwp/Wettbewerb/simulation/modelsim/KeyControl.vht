-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions
-- and other software and tools, and its AMPP partner logic
-- functions, and any output files from any of the foregoing
-- (including device programming or simulation files), and any
-- associated documentation or information are expressly subject
-- to the terms and conditions of the Intel Program License
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other
-- applicable license agreement, including, without limitation,
-- that your use is for the sole purpose of programming logic
-- devices manufactured by Intel and sold by Intel or its
-- authorized distributors.  Please refer to the applicable
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to
-- suit user's needs .Comments are provided in each section to help the user
-- fill out necessary details.
-- ***************************************************************************
-- Generated on "07/12/2017 15:39:36"

-- Vhdl Test Bench template for design  :  KeyControl
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY KeyControl_vhd_tst IS
END KeyControl_vhd_tst;
ARCHITECTURE KeyControl_arch OF KeyControl_vhd_tst IS
-- constants
-- signals
SIGNAL key : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RKconst : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RKin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RKout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL round : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
COMPONENT KeyControl
	PORT (
	key : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	RKconst : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	RKin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	RKout : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	round : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	clk : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : KeyControl
	PORT MAP (
-- list connections between master ports and signals
	key => key,
	RKconst => RKconst,
	RKin => RKin,
	RKout => RKout,
	round => round,
	clk => clk
	);
init : PROCESS
-- variable declarations
BEGIN
clk <= '1';
key <= "01100001011000100110000101100010";
round <= "001";
wait for 5 ns;
clk <= '0';
round <= "000";
RKin <= "10010101111100001111110000101001";
wait for 1 ns;
clk <= '1';
wait for 50 ns;
clk <= '0';
round <= "001";
RKin <= "00110110101100001000101011000010";
wait for 1 ns;
clk <= '1';
wait for 50 ns;
clk <= '0';
round <= "010";
RKin <= "00001001000101010111010111100010";
wait for 1 ns;
clk <= '1';
wait for 50 ns;
clk <= '0';
round <= "011";
RKin <= "01110010010111101101001011100100";
wait for 1 ns;
clk <= '1';

wait for 50 ns;
clk <= '0';
round <= "000";
RKin <= "10010101111100001111110000101001";
wait for 1 ns;
clk <= '1';
wait for 50 ns;
clk <= '0';
round <= "001";
RKin <= "00110110101100001000101011000010";
wait for 1 ns;
clk <= '1';
wait for 50 ns;
clk <= '0';
round <= "010";
RKin <= "00001001000101010111010111100010";
wait for 1 ns;
clk <= '1';
wait for 50 ns;
clk <= '0';
round <= "011";
RKin <= "01110010010111101101001011100100";
wait for 1 ns;
clk <= '1';

        -- code that executes only once
WAIT;
END PROCESS init;
always : PROCESS
-- optional sensitivity list
-- (        )
-- variable declarations
BEGIN
        -- code executes for every event on sensitivity list
WAIT;
END PROCESS always;
END KeyControl_arch;
