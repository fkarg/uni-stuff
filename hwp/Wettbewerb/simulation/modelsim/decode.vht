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
-- Generated on "07/23/2017 22:56:58"
                                                            
-- Vhdl Test Bench template for design  :  decode
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY decode_vhd_tst IS
END decode_vhd_tst;
ARCHITECTURE decode_arch OF decode_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50 : STD_LOGIC;
SIGNAL decoded : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL hamming : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL key : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT decode
	PORT (
	clk_50 : IN STD_LOGIC;
	decoded : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	hamming : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	key : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : decode
	PORT MAP (
-- list connections between master ports and signals
	clk_50 => clk_50,
	decoded => decoded,
	hamming => hamming,
	key => key
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
-- at first we set the key ('aaaa') and an input (the starting-bytes)
key <= "01100001011000100110000101100010";
hamming <= "01110110110110011111111111100100";

wait for 7 us;
-- now the input should be decoded, and we get new input.
hamming <= "11100001100111111011001011000011";

wait for 7 us;
-- now the other input should be decoded, now end.
hamming <= "01110110110011000100001011100100";

WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
-- simple clock
clk_50 <= '0';
wait for 10 ns;
clk_50 <= '1';
wait for 10 ns;		  
END PROCESS always;                                          
END decode_arch;
