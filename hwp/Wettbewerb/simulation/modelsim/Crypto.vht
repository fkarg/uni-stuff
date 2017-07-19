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
-- Generated on "07/16/2017 18:07:57"
                                                            
-- Vhdl Test Bench template for design  :  Crypto
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Crypto_vhd_tst IS
END Crypto_vhd_tst;
ARCHITECTURE Crypto_arch OF Crypto_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL busy : STD_LOGIC;
SIGNAL clk_50 : STD_LOGIC;
SIGNAL correct : STD_LOGIC;
SIGNAL decoded : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL hamming : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL key : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT Crypto
	PORT (
	busy : OUT STD_LOGIC;
	clk_50 : IN STD_LOGIC;
	correct : OUT STD_LOGIC;
	decoded : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	hamming : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	key : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Crypto
	PORT MAP (
-- list connections between master ports and signals
	busy => busy,
	clk_50 => clk_50,
	correct => correct,
	decoded => decoded,
	hamming => hamming,
	key => key
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
hamming <= "01110110110110011111111111100100";
key <= "01100001011000100110000101100010";
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  

clk_50 <= '1';
wait for 10 ns;
clk_50 <= '0';
wait for 10 ns;
		  
END PROCESS always;                                          
END Crypto_arch;
