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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
-- CREATED		"Tue Jul 18 14:28:36 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY KeyTest IS 
	PORT
	(
		enable :  IN  STD_LOGIC;
		key :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		round :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		RKout :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Round_Key :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		TmpOut :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END KeyTest;

ARCHITECTURE bdf_type OF KeyTest IS 

COMPONENT ownxor
	PORT(A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 C : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rotate
	PORT(input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT keycontrol
	PORT(enable : IN STD_LOGIC;
		 key : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 RKin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 round : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 RKconst : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 RKout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 
RKout <= SYNTHESIZED_WIRE_2;
Round_Key <= SYNTHESIZED_WIRE_3;
TmpOut <= SYNTHESIZED_WIRE_0;



b2v_inst : ownxor
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 B => SYNTHESIZED_WIRE_1,
		 C => SYNTHESIZED_WIRE_3);


b2v_inst1 : rotate
PORT MAP(input => SYNTHESIZED_WIRE_2,
		 output => SYNTHESIZED_WIRE_0);


b2v_inst9 : keycontrol
PORT MAP(enable => enable,
		 key => key,
		 RKin => SYNTHESIZED_WIRE_3,
		 round => round,
		 RKconst => SYNTHESIZED_WIRE_1,
		 RKout => SYNTHESIZED_WIRE_2);


END bdf_type;