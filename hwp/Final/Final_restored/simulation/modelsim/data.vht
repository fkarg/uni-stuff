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
-- Generated on "07/23/2017 14:10:19"
                                                            
-- Vhdl Test Bench template for design  :  data
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY data_vhd_tst IS
END data_vhd_tst;
ARCHITECTURE data_arch OF data_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data_out : STD_LOGIC_VECTOR(37 DOWNTO 0);
SIGNAL fetch : STD_LOGIC;
COMPONENT data
	PORT (
	data_out : OUT STD_LOGIC_VECTOR(37 DOWNTO 0);
	fetch : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : data
	PORT MAP (
-- list connections between master ports and signals
	data_out => data_out,
	fetch => fetch
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        

fetch <= '0';

wait for 2 us;

fetch <= '1';

wait for 1200 ns;

fetch <= '0';

wait for 1200 ns;

fetch <= '1';

wait for 2 us;

fetch <= '0';

wait for 1 us;

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
END data_arch;
