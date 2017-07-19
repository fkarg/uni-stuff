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
-- Generated on "07/16/2017 20:56:46"
                                                            
-- Vhdl Test Bench template for design  :  KeyTest
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY KeyTest_vhd_tst IS
END KeyTest_vhd_tst;
ARCHITECTURE KeyTest_arch OF KeyTest_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL key : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL round : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Round_Key : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL TmpOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RKout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
COMPONENT KeyTest
	PORT (
	key : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	round : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Round_Key : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	TmpOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	RKout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	enable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : KeyTest
	PORT MAP (
-- list connections between master ports and signals
	key => key,
	round => round,
	Round_Key => Round_Key,
	TmpOut => TmpOut,
	RKout => RKout,
	enable => enable
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN 
                                                       
enable <= '0';
key <= "01100001011000100110000101100010";
round <= "000";
wait for 3 ns;
enable <= '1';
wait for 50 ns;
enable <= '0';

round <= "001";
wait for 1 ns;
enable <= '1';
wait for 50 ns;
enable <=  '0';

round <= "010";
wait for 1 ns;
enable <= '1';
wait for 50 ns;
enable <= '0';

round <= "011";
wait for 1 ns;
enable <= '1';
wait for 50 ns;
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
END KeyTest_arch;
