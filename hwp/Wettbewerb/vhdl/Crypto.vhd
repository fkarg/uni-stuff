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
-- CREATED		"Sun Jul 16 18:07:20 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Crypto IS 
	PORT
	(
		clk_50 :  IN  STD_LOGIC;
		hamming :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		key :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		correct :  OUT  STD_LOGIC;
		busy :  OUT  STD_LOGIC;
		decoded :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END Crypto;

ARCHITECTURE bdf_type OF Crypto IS 

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

COMPONENT cryptocontrol
	PORT(clk_50 : IN STD_LOGIC;
		 hamming : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 stepIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 testing : OUT STD_LOGIC;
		 correct : OUT STD_LOGIC;
		 decoded : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 round : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 stepOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT shiftrows
	PORT(input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT substitute
	PORT(input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT keycontrol
	PORT(key : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 RKin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 round : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 RKconst : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 RKout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(2 DOWNTO 0);


BEGIN 



b2v_inst : ownxor
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 B => SYNTHESIZED_WIRE_1,
		 C => SYNTHESIZED_WIRE_10);


b2v_inst1 : rotate
PORT MAP(input => SYNTHESIZED_WIRE_2,
		 output => SYNTHESIZED_WIRE_0);


b2v_inst2 : ownxor
PORT MAP(A => SYNTHESIZED_WIRE_10,
		 B => SYNTHESIZED_WIRE_4,
		 C => SYNTHESIZED_WIRE_5);


b2v_inst3 : cryptocontrol
PORT MAP(clk_50 => clk_50,
		 hamming => hamming,
		 stepIn => SYNTHESIZED_WIRE_5,
		 testing => busy,
		 correct => correct,
		 decoded => decoded,
		 round => SYNTHESIZED_WIRE_9,
		 stepOut => SYNTHESIZED_WIRE_7);


b2v_inst4 : shiftrows
PORT MAP(input => SYNTHESIZED_WIRE_6,
		 output => SYNTHESIZED_WIRE_4);


b2v_inst6 : substitute
PORT MAP(input => SYNTHESIZED_WIRE_7,
		 output => SYNTHESIZED_WIRE_6);


b2v_inst9 : keycontrol
PORT MAP(key => key,
		 RKin => SYNTHESIZED_WIRE_10,
		 round => SYNTHESIZED_WIRE_9,
		 RKconst => SYNTHESIZED_WIRE_1,
		 RKout => SYNTHESIZED_WIRE_2);


END bdf_type;