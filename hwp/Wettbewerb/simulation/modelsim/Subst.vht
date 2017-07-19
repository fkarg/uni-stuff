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
-- Generated on "07/16/2017 15:42:54"

-- Vhdl Test Bench template for design  :  Subst
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Subst_vhd_tst IS
END Subst_vhd_tst;
ARCHITECTURE Subst_arch OF Subst_vhd_tst IS
-- constants
-- signals
SIGNAL input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Subst
   PORT (
   input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
   output : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
   );
END COMPONENT;
BEGIN
   i1 : Subst
   PORT MAP (
-- list connections between master ports and signals
   input => input,
   output => output
   );
init : PROCESS
-- variable declarations
BEGIN

   input <= "0000";
   wait for 10 ns;
   input <= "0001";
   wait for 10 ns;
   input <= "0010";
   wait for 10 ns;
   input <= "0011";
   wait for 10 ns;
   input <= "0100";
   wait for 10 ns;
   input <= "0101";
   wait for 10 ns;
   input <= "0110";
   wait for 10 ns;
   input <= "0111";
   wait for 10 ns;


   input <= "1000";
   wait for 10 ns;
   input <= "1001";
   wait for 10 ns;
   input <= "1010";
   wait for 10 ns;
   input <= "1011";
   wait for 10 ns;
   input <= "1100";
   wait for 10 ns;
   input <= "1101";
   wait for 10 ns;
   input <= "1110";
   wait for 10 ns;
   input <= "1111";
   wait for 10 ns;

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
END Subst_arch;
