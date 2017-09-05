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
-- Generated on "06/18/2017 14:02:21"
                                                            
-- Vhdl Test Bench template for design  :  Counter
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Counter_vhd_tst IS
END Counter_vhd_tst;
ARCHITECTURE Counter_arch OF Counter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL count : STD_LOGIC;
SIGNAL countOut : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT Counter
	PORT (
	count : IN STD_LOGIC;
	countOut : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Counter
	PORT MAP (
-- list connections between master ports and signals
	count => count,
	countOut => countOut,
	reset => reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
	reset <= '0';
	count <= '0';
	wait for 10 ns;
	reset <= '1';
	
	for i in 0 to 10 loop
		count <= '1';
		wait for 20 ns;
		count <= '0';
		end loop;
		
	reset <= '0';
	wait for 40 ns;
		
WAIT;                                                       
END PROCESS init;                                           
                                      
END Counter_arch;
