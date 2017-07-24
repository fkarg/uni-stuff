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
-- Generated on "07/19/2017 14:52:19"
                                                            
-- Vhdl Test Bench template for design  :  KeyControlv2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY KeyControlv2_vhd_tst IS
END KeyControlv2_vhd_tst;
ARCHITECTURE KeyControlv2_arch OF KeyControlv2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL key : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL round : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RoundKey : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT KeyControlv2
	PORT (
	clk : IN STD_LOGIC;
	key : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	round : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	RoundKey : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : KeyControlv2
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	key => key,
	round => round,
	RoundKey => RoundKey
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
		  
clk <= '0';
key <= "01100001011000100110000101100010";
round <= "000";
wait for 3 ns;
clk <= '1';
wait for 50 ns;
clk <= '0';

round <= "001";
wait for 1 ns;
clk <= '1';
wait for 50 ns;
clk <=  '0';

round <= "010";
wait for 1 ns;
clk <= '1';
wait for 50 ns;
clk <= '0';

round <= "011";
wait for 1 ns;
clk <= '1';
wait for 50 ns;
		  
clk <= '0';
round <= "100";
wait for 3 ns;
clk <= '1';
wait for 50 ns;
clk <= '0';

round <= "101";
wait for 1 ns;
clk <= '1';
wait for 50 ns;
clk <=  '0';

round <= "110";
wait for 1 ns;
clk <= '1';
wait for 50 ns;
clk <= '0';

round <= "111";
wait for 1 ns;
clk <= '1';
wait for 50 ns;

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
END KeyControlv2_arch;
