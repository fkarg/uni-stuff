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
-- Generated on "07/23/2017 14:12:14"
                                                            
-- Vhdl Test Bench template for design  :  buttonToChar
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
	 USE ieee.std_logic_1164.all;                                
	 USE ieee.numeric_std.all;

ENTITY buttonToChar_vhd_tst IS
END buttonToChar_vhd_tst;
ARCHITECTURE buttonToChar_arch OF buttonToChar_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL blocked : STD_LOGIC;
SIGNAL analogIn : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL clk_50 : STD_LOGIC;
SIGNAL keyOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT buttonToChar
	PORT (
	blocked : IN STD_LOGIC;
	analogIn : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	clk_50 : IN STD_LOGIC;
	keyOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : buttonToChar
	PORT MAP (
-- list connections between master ports and signals
	blocked => blocked,
	analogIn => analogIn,
	clk_50 => clk_50,
	keyOut => keyOut
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN
   blocked <= '0';
   analogIn <= std_logic_vector(to_unsigned(2400, 12));
	wait for 400 ns;
   analogIn <= std_logic_vector(to_unsigned(25, 12));
	wait for 200 ns;
   analogIn <= std_logic_vector(to_unsigned(2400, 12));
	wait for 600 ns;
   analogIn <= std_logic_vector(to_unsigned(980, 12));
	wait for 50200 ns;
   analogIn <= std_logic_vector(to_unsigned(2400, 12));
	wait for 2000 ns;
   analogIn <= std_logic_vector(to_unsigned(1900, 12));
	wait for 50200 ns;
   analogIn <= std_logic_vector(to_unsigned(2400, 12));
	wait for 600 ns;

WAIT;                                                       
END PROCESS init;                                           
always : PROCESS
                                      
BEGIN
   clk_50 <= '0';
	wait for 10 ns;
	clk_50 <= '1';
	wait for 10 ns;
	                                                        
END PROCESS always;
                                          
END buttonToChar_arch;