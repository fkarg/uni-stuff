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
-- Generated on "07/11/2017 13:04:49"
                                                            
-- Vhdl Test Bench template for design  :  uart_receiver
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY uart_receiver_vhd_tst IS
END uart_receiver_vhd_tst;
ARCHITECTURE uart_receiver_arch OF uart_receiver_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50 : STD_LOGIC;
SIGNAL serial_in : STD_LOGIC;
SIGNAL data_out : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT uart_receiver
	PORT (
	clk_50 : IN STD_LOGIC;
	serial_in : IN STD_LOGIC;
	data_out : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : uart_receiver
	PORT MAP (
-- list connections between master ports and signals
	clk_50 => clk_50,
	data_out => data_out,
	serial_in => serial_in
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	-- idle
	serial_in <= '1';
	wait for 40000 ns;
	-- 0 starts transmission
	serial_in <= '0';
	wait for 26000 ns;
	-- 8-bit vector, lsb first
	serial_in <= '1';
	wait for 26000 ns;
	serial_in <= '0';
	wait for 26000 ns;
	serial_in <= '0';
	wait for 26000 ns;
	serial_in <= '1';
	wait for 26000 ns;
	serial_in <= '0';
	wait for 26000 ns;
	serial_in <= '1';
	wait for 26000 ns;
	serial_in <= '1';
	wait for 26000 ns;
	serial_in <= '0';
	wait for 26000 ns;
	-- terminating 1
	serial_in <= '1';
	wait for 40000 ns;
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
END PROCESS always;                                          
END uart_receiver_arch;
