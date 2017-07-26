-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- Generated on "07/19/2017 22:22:15"
                                                            
-- Vhdl Test Bench template for design  :  hamming_decoder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hamming_decoder_vhd_tst IS
END hamming_decoder_vhd_tst;
ARCHITECTURE hamming_decoder_arch OF hamming_decoder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data_in : STD_LOGIC_VECTOR(37 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL index : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL parity_comp : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL parity_org : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT hamming_decoder
	PORT (
	data_in : IN STD_LOGIC_VECTOR(37 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	index : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	parity_comp : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	parity_org : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : hamming_decoder
	PORT MAP (
-- list connections between master ports and signals
	data_in => data_in,
	data_out => data_out,
	index => index,
	parity_comp => parity_comp,
	parity_org => parity_org
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	data_in <= "01110101011011001111111111111010101010";
	wait for 30 ns;
	data_in <= "01110101011011001111111111101010101010";
	wait for 30 ns;
	data_in <= "11110101011011001111111111111010101010";
	wait for 30 ns;
	data_in <= "01110101011011101111111111111010101010";
	wait for 30 ns;
WAIT;        

END PROCESS init;                                           
                                                       
END hamming_decoder_arch;
