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
-- Generated on "07/26/2017 14:33:40"
                                                            
-- Vhdl Test Bench template for design  :  instruction_processor
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY instruction_processor_vhd_tst IS
END instruction_processor_vhd_tst;
ARCHITECTURE instruction_processor_arch OF instruction_processor_vhd_tst IS
-- constants
	type arr is array(0 to 3) of std_logic_vector(15 downto 0);
	constant test_data : arr  := ("0000000000000001",
											"1100000000000001",
											"1111111111111111",
											"0000000000000000");
-- signals
signal test_data_index : integer := 0;        
SIGNAL buffer_ready : STD_LOGIC := '0';
SIGNAL clk : STD_LOGIC := '1';
SIGNAL heading_in : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL inst_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL motorAdirection : STD_LOGIC;
SIGNAL motorAspeed : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL motorBdirection : STD_LOGIC;
SIGNAL motorBspeed : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL new_inst : STD_LOGIC;
COMPONENT instruction_processor
	PORT (
	buffer_ready : IN STD_LOGIC;
	clk : IN STD_LOGIC ;
	heading_in : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	inst_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	motorAdirection : OUT STD_LOGIC;
	motorAspeed : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	motorBdirection : OUT STD_LOGIC;
	motorBspeed : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	new_inst : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : instruction_processor
	PORT MAP (
-- list connections between master ports and signals
	buffer_ready => buffer_ready,
	clk => clk,
	heading_in => heading_in,
	inst_in => inst_in,
	motorAdirection => motorAdirection,
	motorAspeed => motorAspeed,
	motorBdirection => motorBdirection,
	motorBspeed => motorBspeed,
	new_inst => new_inst
	);
	
	clk <= not clk after 10 ns;
	inst_in <= test_data(test_data_index);
	
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	wait for 3000 ns;
	buffer_ready <= '1';
WAIT;
END PROCESS init;                                           
always : PROCESS (new_inst)
begin
	if rising_edge(new_inst) then
	test_data_index <= test_data_index + 1;
	end if;
        -- code executes for every event on sensitivity list  
END PROCESS always;                                          
END instruction_processor_arch;
