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
-- Generated on "07/23/2017 13:56:39"
                                                            
-- Vhdl Test Bench template for design  :  instruction_buffer
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;                               

ENTITY instruction_buffer_vhd_tst IS
END instruction_buffer_vhd_tst;
ARCHITECTURE instruction_buffer_arch OF instruction_buffer_vhd_tst IS
-- constants
	type arr is array(0 to 3) of std_logic_vector(31 downto 0);
	constant test_data : arr := (
		"00000000000000010000000000000010",
		"00000000000000110000000000000100",
		"00000000000001010000000000000110",
		"11111111111111110000000000000000");
-- signals                                     
	signal data_index : unsigned(2 downto 0) := "000";
	
SIGNAL clk : STD_LOGIC := '0';
SIGNAL data_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL get_Data : STD_LOGIC;
SIGNAL inst_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL keyOK : STD_LOGIC := '0';
SIGNAL put_inst : STD_LOGIC := '0';
COMPONENT instruction_buffer
	PORT (
	clk : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	get_Data : OUT STD_LOGIC;
	inst_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	keyOK : IN STD_LOGIC := '0';
	put_inst : IN STD_LOGIC:= '0'
	);
END COMPONENT;
BEGIN
	i1 : instruction_buffer
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	data_in => data_in,
	get_Data => get_Data,
	inst_out => inst_out,
	keyOK => keyOK,
	put_inst => put_inst
	);
	
	clk <= not clk after 10 ns;
	data_in <= test_data(to_integer(data_index));
	
init : PROCESS                                               
-- variable declarations                                     
BEGIN     
   wait for 150 ns;
	keyOK <= '1';
	wait for 1500 ns;
	put_inst <= '1';
	wait for 60 ns;
	put_inst <= '0';
	wait for 1000 ns;
	put_inst <= '1';
	wait for 60 ns;
	put_inst <= '0';
	wait for 1000 ns;
	put_inst <= '1';
	wait for 60 ns;
	put_inst <= '0';
	wait for 1000 ns;
	put_inst <= '1';
	wait for 60 ns;
	put_inst <= '0';
	wait for 1000 ns;
	put_inst <= '1';
	wait for 60 ns;
	put_inst <= '0';
	wait for 1000 ns;
	put_inst <= '1';
	wait for 60 ns;
	put_inst <= '0';
	wait for 1000 ns;
	put_inst <= '1';
	wait for 60 ns;
	put_inst <= '0';
	wait for 1000 ns;
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS (get_Data)                                     
BEGIN                                                         
   if rising_edge(get_Data) then
		data_index <= data_index + 1;
	end if;
END PROCESS always;                                          
END instruction_buffer_arch;
