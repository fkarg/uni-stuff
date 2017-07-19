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
-- Generated on "07/16/2017 16:39:54"
                                                            
-- Vhdl Test Bench template for design  :  CryptoControl
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CryptoControl_vhd_tst IS
END CryptoControl_vhd_tst;
ARCHITECTURE CryptoControl_arch OF CryptoControl_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50 : STD_LOGIC;
SIGNAL correct : STD_LOGIC;
SIGNAL decoded : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL hamming : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL round : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL stepIn : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL stepOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL testing : STD_LOGIC;
COMPONENT CryptoControl
	PORT (
	clk_50 : IN STD_LOGIC;
	correct : OUT STD_LOGIC;
	decoded : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	hamming : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	round : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	stepIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	stepOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	testing : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CryptoControl
	PORT MAP (
-- list connections between master ports and signals
	clk_50 => clk_50,
	correct => correct,
	decoded => decoded,
	hamming => hamming,
	round => round,
	stepIn => stepIn,
	stepOut => stepOut,
	testing => testing
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
hamming <= "01110110110110011111111111100100";
-- wait for 70 ns;
-- stepIn <= "11100001100111111011001011000011";
-- wait for 5 us;
-- stepIn <= "01110110110110011111111111100100";
-- wait for 5 us;
-- stepIn <= "11101100110111101110111000101100";

        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
clk_50 <= '1';
wait for 10 ns;
clk_50 <= '0';
wait for 10 ns;

if round = "000" or round = "100" then
	stepIn <= "11100001100111111011001011000011";
elsif round = "001" or round = "101" then
	stepIn <= "01110110110110011111111111100100";
elsif round = "010" or round = "110" then
	stepIn <= "11101100110111101110111000101100";
else
	stepIn <= "11111111000000001111111100000000";
end if;

        -- code executes for every event on sensitivity list  
END PROCESS always;                                          
END CryptoControl_arch;
