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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "06/28/2017 13:28:04"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ultrasound_reader IS
    PORT (
	lcd_rs : OUT std_logic;
	clk_50 : IN std_logic;
	us_2 : INOUT std_logic;
	us_3 : INOUT std_logic;
	us_1 : INOUT std_logic;
	lcd_rw : OUT std_logic;
	lcd_e : OUT std_logic;
	motor_A1 : OUT std_logic;
	motor_A2 : OUT std_logic;
	motor_B1 : OUT std_logic;
	motor_B2 : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END ultrasound_reader;

-- Design Ports Information
-- lcd_rs	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_e	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_A1	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_A2	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_B1	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_B2	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- us_2	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- us_3	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- us_1	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ultrasound_reader IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_e : std_logic;
SIGNAL ww_motor_A1 : std_logic;
SIGNAL ww_motor_A2 : std_logic;
SIGNAL ww_motor_B1 : std_logic;
SIGNAL ww_motor_B2 : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \us_2~output_o\ : std_logic;
SIGNAL \us_3~output_o\ : std_logic;
SIGNAL \us_1~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_e~output_o\ : std_logic;
SIGNAL \motor_A1~output_o\ : std_logic;
SIGNAL \motor_A2~output_o\ : std_logic;
SIGNAL \motor_B1~output_o\ : std_logic;
SIGNAL \motor_B2~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|state.activating~0_combout\ : std_logic;
SIGNAL \us_2~input_o\ : std_logic;
SIGNAL \inst2|state.scanning~q\ : std_logic;
SIGNAL \inst2|counter[22]~2_combout\ : std_logic;
SIGNAL \inst2|counter[22]~3_combout\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|Add1~66_combout\ : std_logic;
SIGNAL \inst2|Add1~1\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst2|Add1~65_combout\ : std_logic;
SIGNAL \inst2|Add1~3\ : std_logic;
SIGNAL \inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst2|Add1~53_combout\ : std_logic;
SIGNAL \inst2|Add1~5\ : std_logic;
SIGNAL \inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst2|Add1~54_combout\ : std_logic;
SIGNAL \inst2|Add1~7\ : std_logic;
SIGNAL \inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst2|Add1~52_combout\ : std_logic;
SIGNAL \inst2|Add1~9\ : std_logic;
SIGNAL \inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst2|Add1~51_combout\ : std_logic;
SIGNAL \inst2|Add1~11\ : std_logic;
SIGNAL \inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst2|Add1~55_combout\ : std_logic;
SIGNAL \inst2|Add1~13\ : std_logic;
SIGNAL \inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst2|Add1~56_combout\ : std_logic;
SIGNAL \inst2|Add1~15\ : std_logic;
SIGNAL \inst2|Add1~16_combout\ : std_logic;
SIGNAL \inst2|Add1~57_combout\ : std_logic;
SIGNAL \inst2|Add1~17\ : std_logic;
SIGNAL \inst2|Add1~18_combout\ : std_logic;
SIGNAL \inst2|Add1~58_combout\ : std_logic;
SIGNAL \inst2|Add1~19\ : std_logic;
SIGNAL \inst2|Add1~20_combout\ : std_logic;
SIGNAL \inst2|Add1~59_combout\ : std_logic;
SIGNAL \inst2|Add1~21\ : std_logic;
SIGNAL \inst2|Add1~22_combout\ : std_logic;
SIGNAL \inst2|Add1~60_combout\ : std_logic;
SIGNAL \inst2|Add1~23\ : std_logic;
SIGNAL \inst2|Add1~24_combout\ : std_logic;
SIGNAL \inst2|Add1~26_combout\ : std_logic;
SIGNAL \inst2|Add1~25\ : std_logic;
SIGNAL \inst2|Add1~27_combout\ : std_logic;
SIGNAL \inst2|Add1~29_combout\ : std_logic;
SIGNAL \inst2|Add1~28\ : std_logic;
SIGNAL \inst2|Add1~30_combout\ : std_logic;
SIGNAL \inst2|Add1~32_combout\ : std_logic;
SIGNAL \inst2|Add1~31\ : std_logic;
SIGNAL \inst2|Add1~33_combout\ : std_logic;
SIGNAL \inst2|Add1~35_combout\ : std_logic;
SIGNAL \inst2|Add1~34\ : std_logic;
SIGNAL \inst2|Add1~36_combout\ : std_logic;
SIGNAL \inst2|Add1~38_combout\ : std_logic;
SIGNAL \inst2|Add1~37\ : std_logic;
SIGNAL \inst2|Add1~39_combout\ : std_logic;
SIGNAL \inst2|Add1~41_combout\ : std_logic;
SIGNAL \inst2|Add1~40\ : std_logic;
SIGNAL \inst2|Add1~42_combout\ : std_logic;
SIGNAL \inst2|Add1~44_combout\ : std_logic;
SIGNAL \inst2|Add1~43\ : std_logic;
SIGNAL \inst2|Add1~45_combout\ : std_logic;
SIGNAL \inst2|Add1~47_combout\ : std_logic;
SIGNAL \inst2|Add1~46\ : std_logic;
SIGNAL \inst2|Add1~49\ : std_logic;
SIGNAL \inst2|Add1~61_combout\ : std_logic;
SIGNAL \inst2|counter[21]~4_combout\ : std_logic;
SIGNAL \inst2|Add1~62\ : std_logic;
SIGNAL \inst2|Add1~63_combout\ : std_logic;
SIGNAL \inst2|counter[22]~5_combout\ : std_logic;
SIGNAL \inst2|LessThan2~3_combout\ : std_logic;
SIGNAL \inst2|LessThan3~3_combout\ : std_logic;
SIGNAL \inst2|LessThan3~5_combout\ : std_logic;
SIGNAL \inst2|LessThan3~6_combout\ : std_logic;
SIGNAL \inst2|LessThan3~7_combout\ : std_logic;
SIGNAL \inst2|LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|LessThan2~1_combout\ : std_logic;
SIGNAL \inst2|LessThan2~2_combout\ : std_logic;
SIGNAL \inst2|output[0]~8_combout\ : std_logic;
SIGNAL \inst2|output[7]~24_combout\ : std_logic;
SIGNAL \inst2|output[7]~26_combout\ : std_logic;
SIGNAL \inst2|output[7]~27_combout\ : std_logic;
SIGNAL \inst2|output[0]~9\ : std_logic;
SIGNAL \inst2|output[1]~10_combout\ : std_logic;
SIGNAL \inst2|output[1]~11\ : std_logic;
SIGNAL \inst2|output[2]~12_combout\ : std_logic;
SIGNAL \inst2|output[2]~13\ : std_logic;
SIGNAL \inst2|output[3]~14_combout\ : std_logic;
SIGNAL \inst2|output[3]~15\ : std_logic;
SIGNAL \inst2|output[4]~16_combout\ : std_logic;
SIGNAL \inst2|output[4]~17\ : std_logic;
SIGNAL \inst2|output[5]~18_combout\ : std_logic;
SIGNAL \inst2|output[5]~19\ : std_logic;
SIGNAL \inst2|output[6]~20_combout\ : std_logic;
SIGNAL \inst2|output[6]~21\ : std_logic;
SIGNAL \inst2|output[7]~22_combout\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \inst2|process_0~1_combout\ : std_logic;
SIGNAL \inst2|output[7]~25_combout\ : std_logic;
SIGNAL \inst2|counter[16]~0_combout\ : std_logic;
SIGNAL \inst2|counter[16]~1_combout\ : std_logic;
SIGNAL \inst2|Add1~48_combout\ : std_logic;
SIGNAL \inst2|Add1~50_combout\ : std_logic;
SIGNAL \inst2|LessThan3~1_combout\ : std_logic;
SIGNAL \inst2|LessThan3~0_combout\ : std_logic;
SIGNAL \inst2|LessThan3~2_combout\ : std_logic;
SIGNAL \inst2|LessThan3~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|state~12_combout\ : std_logic;
SIGNAL \inst2|state~13_combout\ : std_logic;
SIGNAL \inst2|state~14_combout\ : std_logic;
SIGNAL \inst2|state~15_combout\ : std_logic;
SIGNAL \inst2|state~16_combout\ : std_logic;
SIGNAL \inst2|state.activating~q\ : std_logic;
SIGNAL \inst2|state.waiting~q\ : std_logic;
SIGNAL \inst2|state~18_combout\ : std_logic;
SIGNAL \inst2|state.final~q\ : std_logic;
SIGNAL \inst|counter1[0]~20_combout\ : std_logic;
SIGNAL \inst|counter1[0]~21\ : std_logic;
SIGNAL \inst|counter1[1]~22_combout\ : std_logic;
SIGNAL \inst|counter1[1]~23\ : std_logic;
SIGNAL \inst|counter1[2]~24_combout\ : std_logic;
SIGNAL \inst|counter1[2]~25\ : std_logic;
SIGNAL \inst|counter1[3]~26_combout\ : std_logic;
SIGNAL \inst|counter1[3]~27\ : std_logic;
SIGNAL \inst|counter1[4]~28_combout\ : std_logic;
SIGNAL \inst|counter1[4]~29\ : std_logic;
SIGNAL \inst|counter1[5]~30_combout\ : std_logic;
SIGNAL \inst|counter1[5]~31\ : std_logic;
SIGNAL \inst|counter1[6]~32_combout\ : std_logic;
SIGNAL \inst|counter1[6]~33\ : std_logic;
SIGNAL \inst|counter1[7]~34_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|counter1[7]~35\ : std_logic;
SIGNAL \inst|counter1[8]~36_combout\ : std_logic;
SIGNAL \inst|counter1[8]~37\ : std_logic;
SIGNAL \inst|counter1[9]~38_combout\ : std_logic;
SIGNAL \inst|counter1[9]~39\ : std_logic;
SIGNAL \inst|counter1[10]~40_combout\ : std_logic;
SIGNAL \inst|counter1[10]~41\ : std_logic;
SIGNAL \inst|counter1[11]~42_combout\ : std_logic;
SIGNAL \inst|counter1[11]~43\ : std_logic;
SIGNAL \inst|counter1[12]~44_combout\ : std_logic;
SIGNAL \inst|counter1[12]~45\ : std_logic;
SIGNAL \inst|counter1[13]~46_combout\ : std_logic;
SIGNAL \inst|counter1[13]~47\ : std_logic;
SIGNAL \inst|counter1[14]~48_combout\ : std_logic;
SIGNAL \inst|counter1[14]~49\ : std_logic;
SIGNAL \inst|counter1[15]~50_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|counter1[15]~51\ : std_logic;
SIGNAL \inst|counter1[16]~52_combout\ : std_logic;
SIGNAL \inst|counter1[16]~53\ : std_logic;
SIGNAL \inst|counter1[17]~54_combout\ : std_logic;
SIGNAL \inst|counter1[17]~55\ : std_logic;
SIGNAL \inst|counter1[18]~56_combout\ : std_logic;
SIGNAL \inst|counter1[18]~57\ : std_logic;
SIGNAL \inst|counter1[19]~58_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|state.wait2~q\ : std_logic;
SIGNAL \inst|process_0~6_combout\ : std_logic;
SIGNAL \inst|state.controller3~q\ : std_logic;
SIGNAL \inst|enable_1~0_combout\ : std_logic;
SIGNAL \inst|enable_1~combout\ : std_logic;
SIGNAL \inst7|Add1~0_combout\ : std_logic;
SIGNAL \inst7|state.activating~0_combout\ : std_logic;
SIGNAL \inst7|LessThan0~0_combout\ : std_logic;
SIGNAL \inst7|LessThan0~1_combout\ : std_logic;
SIGNAL \inst7|LessThan3~4_combout\ : std_logic;
SIGNAL \inst7|Add1~49\ : std_logic;
SIGNAL \inst7|Add1~61_combout\ : std_logic;
SIGNAL \inst7|state.waiting~q\ : std_logic;
SIGNAL \inst7|state.scanning~q\ : std_logic;
SIGNAL \us_1~input_o\ : std_logic;
SIGNAL \inst7|counter[22]~2_combout\ : std_logic;
SIGNAL \inst7|counter[22]~3_combout\ : std_logic;
SIGNAL \inst7|counter[21]~4_combout\ : std_logic;
SIGNAL \inst7|Add1~62\ : std_logic;
SIGNAL \inst7|Add1~63_combout\ : std_logic;
SIGNAL \inst7|counter[22]~5_combout\ : std_logic;
SIGNAL \inst7|LessThan2~3_combout\ : std_logic;
SIGNAL \inst7|LessThan0~2_combout\ : std_logic;
SIGNAL \inst7|state~12_combout\ : std_logic;
SIGNAL \inst7|output[0]~8_combout\ : std_logic;
SIGNAL \inst7|output[7]~24_combout\ : std_logic;
SIGNAL \inst7|LessThan3~3_combout\ : std_logic;
SIGNAL \inst7|LessThan2~0_combout\ : std_logic;
SIGNAL \inst7|LessThan2~1_combout\ : std_logic;
SIGNAL \inst7|LessThan2~2_combout\ : std_logic;
SIGNAL \inst7|output[7]~26_combout\ : std_logic;
SIGNAL \inst7|output[7]~27_combout\ : std_logic;
SIGNAL \inst7|output[0]~9\ : std_logic;
SIGNAL \inst7|output[1]~10_combout\ : std_logic;
SIGNAL \inst7|output[1]~11\ : std_logic;
SIGNAL \inst7|output[2]~12_combout\ : std_logic;
SIGNAL \inst7|output[2]~13\ : std_logic;
SIGNAL \inst7|output[3]~14_combout\ : std_logic;
SIGNAL \inst7|output[3]~15\ : std_logic;
SIGNAL \inst7|output[4]~16_combout\ : std_logic;
SIGNAL \inst7|output[4]~17\ : std_logic;
SIGNAL \inst7|output[5]~18_combout\ : std_logic;
SIGNAL \inst7|output[5]~19\ : std_logic;
SIGNAL \inst7|output[6]~20_combout\ : std_logic;
SIGNAL \inst7|output[6]~21\ : std_logic;
SIGNAL \inst7|output[7]~22_combout\ : std_logic;
SIGNAL \inst7|process_0~0_combout\ : std_logic;
SIGNAL \inst7|process_0~1_combout\ : std_logic;
SIGNAL \inst7|output[7]~25_combout\ : std_logic;
SIGNAL \inst7|state~14_combout\ : std_logic;
SIGNAL \inst7|state~15_combout\ : std_logic;
SIGNAL \inst7|state~16_combout\ : std_logic;
SIGNAL \inst7|state.activating~q\ : std_logic;
SIGNAL \inst7|LessThan3~5_combout\ : std_logic;
SIGNAL \inst7|LessThan3~6_combout\ : std_logic;
SIGNAL \inst7|LessThan3~7_combout\ : std_logic;
SIGNAL \inst7|counter[12]~0_combout\ : std_logic;
SIGNAL \inst7|counter[12]~1_combout\ : std_logic;
SIGNAL \inst7|Add1~66_combout\ : std_logic;
SIGNAL \inst7|Add1~1\ : std_logic;
SIGNAL \inst7|Add1~2_combout\ : std_logic;
SIGNAL \inst7|Add1~65_combout\ : std_logic;
SIGNAL \inst7|Add1~3\ : std_logic;
SIGNAL \inst7|Add1~4_combout\ : std_logic;
SIGNAL \inst7|Add1~53_combout\ : std_logic;
SIGNAL \inst7|Add1~5\ : std_logic;
SIGNAL \inst7|Add1~6_combout\ : std_logic;
SIGNAL \inst7|Add1~54_combout\ : std_logic;
SIGNAL \inst7|Add1~7\ : std_logic;
SIGNAL \inst7|Add1~8_combout\ : std_logic;
SIGNAL \inst7|Add1~52_combout\ : std_logic;
SIGNAL \inst7|Add1~9\ : std_logic;
SIGNAL \inst7|Add1~10_combout\ : std_logic;
SIGNAL \inst7|Add1~51_combout\ : std_logic;
SIGNAL \inst7|Add1~11\ : std_logic;
SIGNAL \inst7|Add1~12_combout\ : std_logic;
SIGNAL \inst7|Add1~55_combout\ : std_logic;
SIGNAL \inst7|Add1~13\ : std_logic;
SIGNAL \inst7|Add1~14_combout\ : std_logic;
SIGNAL \inst7|Add1~56_combout\ : std_logic;
SIGNAL \inst7|Add1~15\ : std_logic;
SIGNAL \inst7|Add1~16_combout\ : std_logic;
SIGNAL \inst7|Add1~57_combout\ : std_logic;
SIGNAL \inst7|Add1~17\ : std_logic;
SIGNAL \inst7|Add1~18_combout\ : std_logic;
SIGNAL \inst7|Add1~58_combout\ : std_logic;
SIGNAL \inst7|Add1~19\ : std_logic;
SIGNAL \inst7|Add1~20_combout\ : std_logic;
SIGNAL \inst7|Add1~59_combout\ : std_logic;
SIGNAL \inst7|Add1~21\ : std_logic;
SIGNAL \inst7|Add1~22_combout\ : std_logic;
SIGNAL \inst7|Add1~60_combout\ : std_logic;
SIGNAL \inst7|Add1~23\ : std_logic;
SIGNAL \inst7|Add1~24_combout\ : std_logic;
SIGNAL \inst7|Add1~26_combout\ : std_logic;
SIGNAL \inst7|Add1~25\ : std_logic;
SIGNAL \inst7|Add1~27_combout\ : std_logic;
SIGNAL \inst7|Add1~29_combout\ : std_logic;
SIGNAL \inst7|Add1~28\ : std_logic;
SIGNAL \inst7|Add1~30_combout\ : std_logic;
SIGNAL \inst7|Add1~32_combout\ : std_logic;
SIGNAL \inst7|Add1~31\ : std_logic;
SIGNAL \inst7|Add1~33_combout\ : std_logic;
SIGNAL \inst7|Add1~35_combout\ : std_logic;
SIGNAL \inst7|Add1~34\ : std_logic;
SIGNAL \inst7|Add1~36_combout\ : std_logic;
SIGNAL \inst7|Add1~38_combout\ : std_logic;
SIGNAL \inst7|Add1~37\ : std_logic;
SIGNAL \inst7|Add1~39_combout\ : std_logic;
SIGNAL \inst7|Add1~41_combout\ : std_logic;
SIGNAL \inst7|Add1~40\ : std_logic;
SIGNAL \inst7|Add1~42_combout\ : std_logic;
SIGNAL \inst7|Add1~44_combout\ : std_logic;
SIGNAL \inst7|Add1~43\ : std_logic;
SIGNAL \inst7|Add1~45_combout\ : std_logic;
SIGNAL \inst7|Add1~47_combout\ : std_logic;
SIGNAL \inst7|Add1~46\ : std_logic;
SIGNAL \inst7|Add1~48_combout\ : std_logic;
SIGNAL \inst7|Add1~50_combout\ : std_logic;
SIGNAL \inst7|LessThan3~0_combout\ : std_logic;
SIGNAL \inst7|LessThan3~1_combout\ : std_logic;
SIGNAL \inst7|LessThan3~2_combout\ : std_logic;
SIGNAL \inst7|state~13_combout\ : std_logic;
SIGNAL \inst7|state~17_combout\ : std_logic;
SIGNAL \inst7|state.init~q\ : std_logic;
SIGNAL \inst7|state~18_combout\ : std_logic;
SIGNAL \inst7|state.final~q\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|process_0~7_combout\ : std_logic;
SIGNAL \inst|enable_3~0_combout\ : std_logic;
SIGNAL \inst|enable_3~combout\ : std_logic;
SIGNAL \inst3|Add1~0_combout\ : std_logic;
SIGNAL \inst3|Add1~66_combout\ : std_logic;
SIGNAL \inst3|state.scanning~q\ : std_logic;
SIGNAL \us_3~input_o\ : std_logic;
SIGNAL \inst3|output[0]~8_combout\ : std_logic;
SIGNAL \inst3|output[7]~24_combout\ : std_logic;
SIGNAL \inst3|LessThan3~3_combout\ : std_logic;
SIGNAL \inst3|LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|LessThan2~1_combout\ : std_logic;
SIGNAL \inst3|LessThan3~1_combout\ : std_logic;
SIGNAL \inst3|LessThan3~0_combout\ : std_logic;
SIGNAL \inst3|LessThan3~2_combout\ : std_logic;
SIGNAL \inst3|LessThan2~2_combout\ : std_logic;
SIGNAL \inst3|output[7]~26_combout\ : std_logic;
SIGNAL \inst3|output[7]~27_combout\ : std_logic;
SIGNAL \inst3|output[0]~9\ : std_logic;
SIGNAL \inst3|output[1]~10_combout\ : std_logic;
SIGNAL \inst3|output[1]~11\ : std_logic;
SIGNAL \inst3|output[2]~12_combout\ : std_logic;
SIGNAL \inst3|output[2]~13\ : std_logic;
SIGNAL \inst3|output[3]~14_combout\ : std_logic;
SIGNAL \inst3|output[3]~15\ : std_logic;
SIGNAL \inst3|output[4]~16_combout\ : std_logic;
SIGNAL \inst3|output[4]~17\ : std_logic;
SIGNAL \inst3|output[5]~18_combout\ : std_logic;
SIGNAL \inst3|output[5]~19\ : std_logic;
SIGNAL \inst3|output[6]~20_combout\ : std_logic;
SIGNAL \inst3|output[6]~21\ : std_logic;
SIGNAL \inst3|output[7]~22_combout\ : std_logic;
SIGNAL \inst3|process_0~0_combout\ : std_logic;
SIGNAL \inst3|process_0~1_combout\ : std_logic;
SIGNAL \inst3|output[7]~25_combout\ : std_logic;
SIGNAL \inst3|state~14_combout\ : std_logic;
SIGNAL \inst3|state~15_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan3~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|state~12_combout\ : std_logic;
SIGNAL \inst3|state~16_combout\ : std_logic;
SIGNAL \inst3|state.waiting~q\ : std_logic;
SIGNAL \inst3|counter[22]~2_combout\ : std_logic;
SIGNAL \inst3|counter[22]~3_combout\ : std_logic;
SIGNAL \inst3|Add1~1\ : std_logic;
SIGNAL \inst3|Add1~2_combout\ : std_logic;
SIGNAL \inst3|Add1~65_combout\ : std_logic;
SIGNAL \inst3|Add1~3\ : std_logic;
SIGNAL \inst3|Add1~4_combout\ : std_logic;
SIGNAL \inst3|Add1~53_combout\ : std_logic;
SIGNAL \inst3|Add1~5\ : std_logic;
SIGNAL \inst3|Add1~6_combout\ : std_logic;
SIGNAL \inst3|Add1~54_combout\ : std_logic;
SIGNAL \inst3|Add1~7\ : std_logic;
SIGNAL \inst3|Add1~8_combout\ : std_logic;
SIGNAL \inst3|Add1~52_combout\ : std_logic;
SIGNAL \inst3|Add1~9\ : std_logic;
SIGNAL \inst3|Add1~11\ : std_logic;
SIGNAL \inst3|Add1~12_combout\ : std_logic;
SIGNAL \inst3|Add1~55_combout\ : std_logic;
SIGNAL \inst3|Add1~13\ : std_logic;
SIGNAL \inst3|Add1~14_combout\ : std_logic;
SIGNAL \inst3|Add1~56_combout\ : std_logic;
SIGNAL \inst3|Add1~15\ : std_logic;
SIGNAL \inst3|Add1~16_combout\ : std_logic;
SIGNAL \inst3|Add1~57_combout\ : std_logic;
SIGNAL \inst3|Add1~17\ : std_logic;
SIGNAL \inst3|Add1~18_combout\ : std_logic;
SIGNAL \inst3|Add1~58_combout\ : std_logic;
SIGNAL \inst3|Add1~19\ : std_logic;
SIGNAL \inst3|Add1~20_combout\ : std_logic;
SIGNAL \inst3|Add1~59_combout\ : std_logic;
SIGNAL \inst3|Add1~21\ : std_logic;
SIGNAL \inst3|Add1~22_combout\ : std_logic;
SIGNAL \inst3|Add1~60_combout\ : std_logic;
SIGNAL \inst3|Add1~23\ : std_logic;
SIGNAL \inst3|Add1~24_combout\ : std_logic;
SIGNAL \inst3|Add1~26_combout\ : std_logic;
SIGNAL \inst3|Add1~25\ : std_logic;
SIGNAL \inst3|Add1~27_combout\ : std_logic;
SIGNAL \inst3|Add1~29_combout\ : std_logic;
SIGNAL \inst3|Add1~28\ : std_logic;
SIGNAL \inst3|Add1~30_combout\ : std_logic;
SIGNAL \inst3|Add1~32_combout\ : std_logic;
SIGNAL \inst3|Add1~31\ : std_logic;
SIGNAL \inst3|Add1~33_combout\ : std_logic;
SIGNAL \inst3|Add1~35_combout\ : std_logic;
SIGNAL \inst3|Add1~34\ : std_logic;
SIGNAL \inst3|Add1~36_combout\ : std_logic;
SIGNAL \inst3|Add1~38_combout\ : std_logic;
SIGNAL \inst3|Add1~37\ : std_logic;
SIGNAL \inst3|Add1~39_combout\ : std_logic;
SIGNAL \inst3|Add1~41_combout\ : std_logic;
SIGNAL \inst3|Add1~40\ : std_logic;
SIGNAL \inst3|Add1~42_combout\ : std_logic;
SIGNAL \inst3|Add1~44_combout\ : std_logic;
SIGNAL \inst3|Add1~43\ : std_logic;
SIGNAL \inst3|Add1~45_combout\ : std_logic;
SIGNAL \inst3|Add1~47_combout\ : std_logic;
SIGNAL \inst3|Add1~46\ : std_logic;
SIGNAL \inst3|Add1~48_combout\ : std_logic;
SIGNAL \inst3|Add1~50_combout\ : std_logic;
SIGNAL \inst3|Add1~49\ : std_logic;
SIGNAL \inst3|Add1~61_combout\ : std_logic;
SIGNAL \inst3|counter[21]~4_combout\ : std_logic;
SIGNAL \inst3|Add1~62\ : std_logic;
SIGNAL \inst3|Add1~63_combout\ : std_logic;
SIGNAL \inst3|counter[22]~5_combout\ : std_logic;
SIGNAL \inst3|LessThan2~3_combout\ : std_logic;
SIGNAL \inst3|LessThan3~7_combout\ : std_logic;
SIGNAL \inst3|counter[12]~0_combout\ : std_logic;
SIGNAL \inst3|counter[12]~1_combout\ : std_logic;
SIGNAL \inst3|Add1~10_combout\ : std_logic;
SIGNAL \inst3|Add1~51_combout\ : std_logic;
SIGNAL \inst3|LessThan3~5_combout\ : std_logic;
SIGNAL \inst3|LessThan3~6_combout\ : std_logic;
SIGNAL \inst3|state~13_combout\ : std_logic;
SIGNAL \inst3|state~17_combout\ : std_logic;
SIGNAL \inst3|state.init~q\ : std_logic;
SIGNAL \inst3|state.activating~0_combout\ : std_logic;
SIGNAL \inst3|state.activating~q\ : std_logic;
SIGNAL \inst3|state~18_combout\ : std_logic;
SIGNAL \inst3|state.final~q\ : std_logic;
SIGNAL \inst|process_0~9_combout\ : std_logic;
SIGNAL \inst|state.wait3~q\ : std_logic;
SIGNAL \inst|state~11_combout\ : std_logic;
SIGNAL \inst|state~10_combout\ : std_logic;
SIGNAL \inst|state~12_combout\ : std_logic;
SIGNAL \inst|state~15_combout\ : std_logic;
SIGNAL \inst|state.wait1~q\ : std_logic;
SIGNAL \inst|process_0~10_combout\ : std_logic;
SIGNAL \inst|state.controller2~q\ : std_logic;
SIGNAL \inst|process_0~8_combout\ : std_logic;
SIGNAL \inst|state~13_combout\ : std_logic;
SIGNAL \inst|state~14_combout\ : std_logic;
SIGNAL \inst|state.controller1~feeder_combout\ : std_logic;
SIGNAL \inst|state.controller1~q\ : std_logic;
SIGNAL \inst|enable_2~0_combout\ : std_logic;
SIGNAL \inst|enable_2~combout\ : std_logic;
SIGNAL \inst2|state~17_combout\ : std_logic;
SIGNAL \inst2|state.init~q\ : std_logic;
SIGNAL \inst2|trigger~1_combout\ : std_logic;
SIGNAL \inst2|trigger~reg0_q\ : std_logic;
SIGNAL \inst2|trigger~2_combout\ : std_logic;
SIGNAL \inst2|trigger~en_q\ : std_logic;
SIGNAL \inst3|trigger~1_combout\ : std_logic;
SIGNAL \inst3|trigger~reg0_q\ : std_logic;
SIGNAL \inst3|trigger~2_combout\ : std_logic;
SIGNAL \inst3|trigger~en_q\ : std_logic;
SIGNAL \inst7|trigger~reg0feeder_combout\ : std_logic;
SIGNAL \inst7|trigger~1_combout\ : std_logic;
SIGNAL \inst7|trigger~reg0_q\ : std_logic;
SIGNAL \inst7|trigger~2_combout\ : std_logic;
SIGNAL \inst7|trigger~en_q\ : std_logic;
SIGNAL \inst5|counter[0]~32_combout\ : std_logic;
SIGNAL \inst5|process_0~16_combout\ : std_logic;
SIGNAL \inst5|process_0~8_combout\ : std_logic;
SIGNAL \inst5|counter[20]~74\ : std_logic;
SIGNAL \inst5|counter[21]~75_combout\ : std_logic;
SIGNAL \inst5|counter[21]~76\ : std_logic;
SIGNAL \inst5|counter[22]~77_combout\ : std_logic;
SIGNAL \inst5|state.init0~feeder_combout\ : std_logic;
SIGNAL \inst5|state.init0~q\ : std_logic;
SIGNAL \inst5|process_0~12_combout\ : std_logic;
SIGNAL \inst5|process_0~13_combout\ : std_logic;
SIGNAL \inst5|process_0~14_combout\ : std_logic;
SIGNAL \inst5|process_0~20_combout\ : std_logic;
SIGNAL \inst5|state~59_combout\ : std_logic;
SIGNAL \inst5|state.init1~q\ : std_logic;
SIGNAL \inst5|Equal4~3_combout\ : std_logic;
SIGNAL \inst5|Equal6~3_combout\ : std_logic;
SIGNAL \inst5|Equal4~0_combout\ : std_logic;
SIGNAL \inst5|Equal6~0_combout\ : std_logic;
SIGNAL \inst5|Equal4~4_combout\ : std_logic;
SIGNAL \inst5|Equal4~5_combout\ : std_logic;
SIGNAL \inst5|process_0~9_combout\ : std_logic;
SIGNAL \inst5|process_0~15_combout\ : std_logic;
SIGNAL \inst5|process_0~17_combout\ : std_logic;
SIGNAL \inst5|Equal6~1_combout\ : std_logic;
SIGNAL \inst5|state~60_combout\ : std_logic;
SIGNAL \inst5|state.init2~q\ : std_logic;
SIGNAL \inst5|process_0~10_combout\ : std_logic;
SIGNAL \inst5|process_0~11_combout\ : std_logic;
SIGNAL \inst5|state~36_combout\ : std_logic;
SIGNAL \inst5|process_0~19_combout\ : std_logic;
SIGNAL \inst5|state~57_combout\ : std_logic;
SIGNAL \inst5|state.init3~q\ : std_logic;
SIGNAL \inst4|counter[0]~31_combout\ : std_logic;
SIGNAL \inst4|lineCount[1]~2_combout\ : std_logic;
SIGNAL \inst4|lcd_data~142_combout\ : std_logic;
SIGNAL \inst4|charCount[0]~5_combout\ : std_logic;
SIGNAL \inst4|charCount[4]~15_combout\ : std_logic;
SIGNAL \inst4|charCount[0]~6\ : std_logic;
SIGNAL \inst4|charCount[1]~7_combout\ : std_logic;
SIGNAL \inst4|charCount[1]~8\ : std_logic;
SIGNAL \inst4|charCount[2]~9_combout\ : std_logic;
SIGNAL \inst4|charCount[2]~10\ : std_logic;
SIGNAL \inst4|charCount[3]~11_combout\ : std_logic;
SIGNAL \inst4|lcd_data~110_combout\ : std_logic;
SIGNAL \inst4|charCount[3]~12\ : std_logic;
SIGNAL \inst4|charCount[4]~13_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|lineCount~0_combout\ : std_logic;
SIGNAL \inst4|lineCount[0]~1_combout\ : std_logic;
SIGNAL \inst4|state~11_combout\ : std_logic;
SIGNAL \inst4|state~10_combout\ : std_logic;
SIGNAL \inst4|state.update~q\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|counter[22]~78\ : std_logic;
SIGNAL \inst4|counter[23]~79_combout\ : std_logic;
SIGNAL \inst4|counter[23]~80\ : std_logic;
SIGNAL \inst4|counter[24]~81_combout\ : std_logic;
SIGNAL \inst4|counter[24]~82\ : std_logic;
SIGNAL \inst4|counter[25]~83_combout\ : std_logic;
SIGNAL \inst4|counter[25]~84\ : std_logic;
SIGNAL \inst4|counter[26]~85_combout\ : std_logic;
SIGNAL \inst4|counter[26]~86\ : std_logic;
SIGNAL \inst4|counter[27]~87_combout\ : std_logic;
SIGNAL \inst4|counter[27]~88\ : std_logic;
SIGNAL \inst4|counter[28]~89_combout\ : std_logic;
SIGNAL \inst4|counter[28]~90\ : std_logic;
SIGNAL \inst4|counter[29]~91_combout\ : std_logic;
SIGNAL \inst4|counter[29]~92\ : std_logic;
SIGNAL \inst4|counter[30]~93_combout\ : std_logic;
SIGNAL \inst4|process_1~0_combout\ : std_logic;
SIGNAL \inst4|process_1~2_combout\ : std_logic;
SIGNAL \inst4|process_1~1_combout\ : std_logic;
SIGNAL \inst4|process_0~4_combout\ : std_logic;
SIGNAL \inst4|process_0~2_combout\ : std_logic;
SIGNAL \inst4|process_0~1_combout\ : std_logic;
SIGNAL \inst4|process_0~3_combout\ : std_logic;
SIGNAL \inst4|process_0~5_combout\ : std_logic;
SIGNAL \inst4|process_1~3_combout\ : std_logic;
SIGNAL \inst4|process_0~6_combout\ : std_logic;
SIGNAL \inst4|counter[14]~41_combout\ : std_logic;
SIGNAL \inst4|counter[14]~42_combout\ : std_logic;
SIGNAL \inst4|counter[0]~32\ : std_logic;
SIGNAL \inst4|counter[1]~33_combout\ : std_logic;
SIGNAL \inst4|counter[1]~34\ : std_logic;
SIGNAL \inst4|counter[2]~35_combout\ : std_logic;
SIGNAL \inst4|counter[2]~36\ : std_logic;
SIGNAL \inst4|counter[3]~37_combout\ : std_logic;
SIGNAL \inst4|counter[3]~38\ : std_logic;
SIGNAL \inst4|counter[4]~39_combout\ : std_logic;
SIGNAL \inst4|counter[4]~40\ : std_logic;
SIGNAL \inst4|counter[5]~43_combout\ : std_logic;
SIGNAL \inst4|counter[5]~44\ : std_logic;
SIGNAL \inst4|counter[6]~45_combout\ : std_logic;
SIGNAL \inst4|counter[6]~46\ : std_logic;
SIGNAL \inst4|counter[7]~47_combout\ : std_logic;
SIGNAL \inst4|counter[7]~48\ : std_logic;
SIGNAL \inst4|counter[8]~49_combout\ : std_logic;
SIGNAL \inst4|counter[8]~50\ : std_logic;
SIGNAL \inst4|counter[9]~51_combout\ : std_logic;
SIGNAL \inst4|counter[9]~52\ : std_logic;
SIGNAL \inst4|counter[10]~53_combout\ : std_logic;
SIGNAL \inst4|counter[10]~54\ : std_logic;
SIGNAL \inst4|counter[11]~55_combout\ : std_logic;
SIGNAL \inst4|counter[11]~56\ : std_logic;
SIGNAL \inst4|counter[12]~57_combout\ : std_logic;
SIGNAL \inst4|counter[12]~58\ : std_logic;
SIGNAL \inst4|counter[13]~59_combout\ : std_logic;
SIGNAL \inst4|counter[13]~60\ : std_logic;
SIGNAL \inst4|counter[14]~61_combout\ : std_logic;
SIGNAL \inst4|counter[14]~62\ : std_logic;
SIGNAL \inst4|counter[15]~63_combout\ : std_logic;
SIGNAL \inst4|counter[15]~64\ : std_logic;
SIGNAL \inst4|counter[16]~65_combout\ : std_logic;
SIGNAL \inst4|counter[16]~66\ : std_logic;
SIGNAL \inst4|counter[17]~67_combout\ : std_logic;
SIGNAL \inst4|counter[17]~68\ : std_logic;
SIGNAL \inst4|counter[18]~69_combout\ : std_logic;
SIGNAL \inst4|counter[18]~70\ : std_logic;
SIGNAL \inst4|counter[19]~71_combout\ : std_logic;
SIGNAL \inst4|counter[19]~72\ : std_logic;
SIGNAL \inst4|counter[20]~73_combout\ : std_logic;
SIGNAL \inst4|counter[20]~74\ : std_logic;
SIGNAL \inst4|counter[21]~75_combout\ : std_logic;
SIGNAL \inst4|counter[21]~76\ : std_logic;
SIGNAL \inst4|counter[22]~77_combout\ : std_logic;
SIGNAL \inst4|process_0~9_combout\ : std_logic;
SIGNAL \inst4|process_0~8_combout\ : std_logic;
SIGNAL \inst4|process_0~10_combout\ : std_logic;
SIGNAL \inst4|process_0~11_combout\ : std_logic;
SIGNAL \inst4|process_0~7_combout\ : std_logic;
SIGNAL \inst4|process_0~12_combout\ : std_logic;
SIGNAL \inst4|state.pause~0_combout\ : std_logic;
SIGNAL \inst4|state.pause~q\ : std_logic;
SIGNAL \inst4|process_1~4_combout\ : std_logic;
SIGNAL \inst4|process_1~5_combout\ : std_logic;
SIGNAL \inst4|lcd_write_n~feeder_combout\ : std_logic;
SIGNAL \inst4|lcd_write_n~q\ : std_logic;
SIGNAL \inst5|Equal6~2_combout\ : std_logic;
SIGNAL \inst5|Equal6~4_combout\ : std_logic;
SIGNAL \inst5|Equal6~5_combout\ : std_logic;
SIGNAL \inst5|state~69_combout\ : std_logic;
SIGNAL \inst5|state~58_combout\ : std_logic;
SIGNAL \inst5|state.init4~q\ : std_logic;
SIGNAL \inst5|state~61_combout\ : std_logic;
SIGNAL \inst5|state.init5~q\ : std_logic;
SIGNAL \inst5|dataOut~38_combout\ : std_logic;
SIGNAL \inst5|state~37_combout\ : std_logic;
SIGNAL \inst5|state~46_combout\ : std_logic;
SIGNAL \inst5|state.createChar1~q\ : std_logic;
SIGNAL \inst5|charCreationCounter[0]~33_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[3]~42\ : std_logic;
SIGNAL \inst5|charCreationCounter[4]~43_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[3]~35_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[3]~36_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[4]~44\ : std_logic;
SIGNAL \inst5|charCreationCounter[5]~45_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[5]~46\ : std_logic;
SIGNAL \inst5|charCreationCounter[6]~47_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[6]~48\ : std_logic;
SIGNAL \inst5|charCreationCounter[7]~49_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[7]~50\ : std_logic;
SIGNAL \inst5|charCreationCounter[8]~51_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[8]~52\ : std_logic;
SIGNAL \inst5|charCreationCounter[9]~53_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[9]~54\ : std_logic;
SIGNAL \inst5|charCreationCounter[10]~55_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[10]~56\ : std_logic;
SIGNAL \inst5|charCreationCounter[11]~57_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[11]~58\ : std_logic;
SIGNAL \inst5|charCreationCounter[12]~59_combout\ : std_logic;
SIGNAL \inst5|Equal8~2_combout\ : std_logic;
SIGNAL \inst5|Equal8~0_combout\ : std_logic;
SIGNAL \inst5|Equal8~1_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[12]~60\ : std_logic;
SIGNAL \inst5|charCreationCounter[13]~61_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[13]~62\ : std_logic;
SIGNAL \inst5|charCreationCounter[14]~63_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[14]~64\ : std_logic;
SIGNAL \inst5|charCreationCounter[15]~65_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[15]~66\ : std_logic;
SIGNAL \inst5|charCreationCounter[16]~67_combout\ : std_logic;
SIGNAL \inst5|Equal8~3_combout\ : std_logic;
SIGNAL \inst5|Equal8~4_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[16]~68\ : std_logic;
SIGNAL \inst5|charCreationCounter[17]~69_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[17]~70\ : std_logic;
SIGNAL \inst5|charCreationCounter[18]~71_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[18]~72\ : std_logic;
SIGNAL \inst5|charCreationCounter[19]~73_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[19]~74\ : std_logic;
SIGNAL \inst5|charCreationCounter[20]~75_combout\ : std_logic;
SIGNAL \inst5|Equal8~5_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[20]~76\ : std_logic;
SIGNAL \inst5|charCreationCounter[21]~77_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[21]~78\ : std_logic;
SIGNAL \inst5|charCreationCounter[22]~79_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[22]~80\ : std_logic;
SIGNAL \inst5|charCreationCounter[23]~81_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[23]~82\ : std_logic;
SIGNAL \inst5|charCreationCounter[24]~83_combout\ : std_logic;
SIGNAL \inst5|Equal8~6_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[24]~84\ : std_logic;
SIGNAL \inst5|charCreationCounter[25]~85_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[25]~86\ : std_logic;
SIGNAL \inst5|charCreationCounter[26]~87_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[26]~88\ : std_logic;
SIGNAL \inst5|charCreationCounter[27]~89_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[27]~90\ : std_logic;
SIGNAL \inst5|charCreationCounter[28]~91_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[28]~92\ : std_logic;
SIGNAL \inst5|charCreationCounter[29]~93_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[29]~94\ : std_logic;
SIGNAL \inst5|charCreationCounter[30]~95_combout\ : std_logic;
SIGNAL \inst5|Equal8~7_combout\ : std_logic;
SIGNAL \inst5|Equal8~8_combout\ : std_logic;
SIGNAL \inst5|Equal8~9_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[12]~97_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[0]~34\ : std_logic;
SIGNAL \inst5|charCreationCounter[1]~37_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[1]~38\ : std_logic;
SIGNAL \inst5|charCreationCounter[2]~39_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[2]~40\ : std_logic;
SIGNAL \inst5|charCreationCounter[3]~41_combout\ : std_logic;
SIGNAL \inst5|Equal7~0_combout\ : std_logic;
SIGNAL \inst5|state~47_combout\ : std_logic;
SIGNAL \inst5|state~70_combout\ : std_logic;
SIGNAL \inst5|state~48_combout\ : std_logic;
SIGNAL \inst5|state.createChar2~q\ : std_logic;
SIGNAL \inst5|state~55_combout\ : std_logic;
SIGNAL \inst5|state~56_combout\ : std_logic;
SIGNAL \inst5|state.createChar3~q\ : std_logic;
SIGNAL \inst5|dataOut[4]~4_combout\ : std_logic;
SIGNAL \inst5|state~53_combout\ : std_logic;
SIGNAL \inst5|state~54_combout\ : std_logic;
SIGNAL \inst5|state.createChar4~q\ : std_logic;
SIGNAL \inst5|state~49_combout\ : std_logic;
SIGNAL \inst5|state~71_combout\ : std_logic;
SIGNAL \inst5|state~50_combout\ : std_logic;
SIGNAL \inst5|state~51_combout\ : std_logic;
SIGNAL \inst5|state~72_combout\ : std_logic;
SIGNAL \inst5|state~52_combout\ : std_logic;
SIGNAL \inst5|state.createChar5~q\ : std_logic;
SIGNAL \inst5|process_1~0_combout\ : std_logic;
SIGNAL \inst5|counter[17]~31_combout\ : std_logic;
SIGNAL \inst5|counter[17]~56_combout\ : std_logic;
SIGNAL \inst5|counter[0]~33\ : std_logic;
SIGNAL \inst5|counter[1]~34_combout\ : std_logic;
SIGNAL \inst5|counter[1]~35\ : std_logic;
SIGNAL \inst5|counter[2]~36_combout\ : std_logic;
SIGNAL \inst5|counter[2]~37\ : std_logic;
SIGNAL \inst5|counter[3]~38_combout\ : std_logic;
SIGNAL \inst5|counter[3]~39\ : std_logic;
SIGNAL \inst5|counter[4]~40_combout\ : std_logic;
SIGNAL \inst5|counter[4]~41\ : std_logic;
SIGNAL \inst5|counter[5]~42_combout\ : std_logic;
SIGNAL \inst5|counter[5]~43\ : std_logic;
SIGNAL \inst5|counter[6]~44_combout\ : std_logic;
SIGNAL \inst5|counter[6]~45\ : std_logic;
SIGNAL \inst5|counter[7]~46_combout\ : std_logic;
SIGNAL \inst5|counter[7]~47\ : std_logic;
SIGNAL \inst5|counter[8]~48_combout\ : std_logic;
SIGNAL \inst5|counter[8]~49\ : std_logic;
SIGNAL \inst5|counter[9]~50_combout\ : std_logic;
SIGNAL \inst5|counter[9]~51\ : std_logic;
SIGNAL \inst5|counter[10]~52_combout\ : std_logic;
SIGNAL \inst5|counter[10]~53\ : std_logic;
SIGNAL \inst5|counter[11]~54_combout\ : std_logic;
SIGNAL \inst5|counter[11]~55\ : std_logic;
SIGNAL \inst5|counter[12]~57_combout\ : std_logic;
SIGNAL \inst5|counter[12]~58\ : std_logic;
SIGNAL \inst5|counter[13]~59_combout\ : std_logic;
SIGNAL \inst5|counter[13]~60\ : std_logic;
SIGNAL \inst5|counter[14]~61_combout\ : std_logic;
SIGNAL \inst5|counter[14]~62\ : std_logic;
SIGNAL \inst5|counter[15]~63_combout\ : std_logic;
SIGNAL \inst5|counter[15]~64\ : std_logic;
SIGNAL \inst5|counter[16]~65_combout\ : std_logic;
SIGNAL \inst5|counter[16]~66\ : std_logic;
SIGNAL \inst5|counter[17]~67_combout\ : std_logic;
SIGNAL \inst5|counter[17]~68\ : std_logic;
SIGNAL \inst5|counter[18]~69_combout\ : std_logic;
SIGNAL \inst5|counter[18]~70\ : std_logic;
SIGNAL \inst5|counter[19]~71_combout\ : std_logic;
SIGNAL \inst5|counter[19]~72\ : std_logic;
SIGNAL \inst5|counter[20]~73_combout\ : std_logic;
SIGNAL \inst5|counter[22]~78\ : std_logic;
SIGNAL \inst5|counter[23]~79_combout\ : std_logic;
SIGNAL \inst5|e~3_combout\ : std_logic;
SIGNAL \inst5|counter[23]~80\ : std_logic;
SIGNAL \inst5|counter[24]~81_combout\ : std_logic;
SIGNAL \inst5|counter[24]~82\ : std_logic;
SIGNAL \inst5|counter[25]~83_combout\ : std_logic;
SIGNAL \inst5|counter[25]~84\ : std_logic;
SIGNAL \inst5|counter[26]~85_combout\ : std_logic;
SIGNAL \inst5|counter[26]~86\ : std_logic;
SIGNAL \inst5|counter[27]~87_combout\ : std_logic;
SIGNAL \inst5|e~4_combout\ : std_logic;
SIGNAL \inst5|counter[27]~88\ : std_logic;
SIGNAL \inst5|counter[28]~89_combout\ : std_logic;
SIGNAL \inst5|counter[28]~90\ : std_logic;
SIGNAL \inst5|counter[29]~91_combout\ : std_logic;
SIGNAL \inst5|counter[29]~92\ : std_logic;
SIGNAL \inst5|counter[30]~93_combout\ : std_logic;
SIGNAL \inst5|e~5_combout\ : std_logic;
SIGNAL \inst5|Equal4~1_combout\ : std_logic;
SIGNAL \inst5|Equal4~2_combout\ : std_logic;
SIGNAL \inst5|state~63_combout\ : std_logic;
SIGNAL \inst5|Equal4~6_combout\ : std_logic;
SIGNAL \inst5|state~62_combout\ : std_logic;
SIGNAL \inst5|state~64_combout\ : std_logic;
SIGNAL \inst5|state~65_combout\ : std_logic;
SIGNAL \inst5|state~66_combout\ : std_logic;
SIGNAL \inst5|state.init6~q\ : std_logic;
SIGNAL \inst5|process_0~21_combout\ : std_logic;
SIGNAL \inst5|state~67_combout\ : std_logic;
SIGNAL \inst5|state.init7~q\ : std_logic;
SIGNAL \inst5|state.sendingAddress~q\ : std_logic;
SIGNAL \inst5|state~38_combout\ : std_logic;
SIGNAL \inst5|state~39_combout\ : std_logic;
SIGNAL \inst5|state~40_combout\ : std_logic;
SIGNAL \inst5|state~41_combout\ : std_logic;
SIGNAL \inst5|state~42_combout\ : std_logic;
SIGNAL \inst5|state~43_combout\ : std_logic;
SIGNAL \inst5|state~68_combout\ : std_logic;
SIGNAL \inst5|state.ready~q\ : std_logic;
SIGNAL \inst5|process_0~18_combout\ : std_logic;
SIGNAL \inst5|state~44_combout\ : std_logic;
SIGNAL \inst5|state~45_combout\ : std_logic;
SIGNAL \inst5|state.sendingData~q\ : std_logic;
SIGNAL \inst5|Equal8~10_combout\ : std_logic;
SIGNAL \inst5|process_1~1_combout\ : std_logic;
SIGNAL \inst5|e~1_combout\ : std_logic;
SIGNAL \inst5|e~2_combout\ : std_logic;
SIGNAL \inst5|e~0_combout\ : std_logic;
SIGNAL \inst5|e~6_combout\ : std_logic;
SIGNAL \inst5|e~7_combout\ : std_logic;
SIGNAL \inst1|LessThan5~0_combout\ : std_logic;
SIGNAL \inst1|LessThan4~0_combout\ : std_logic;
SIGNAL \inst1|LessThan4~1_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan3~0_combout\ : std_logic;
SIGNAL \inst1|LessThan3~1_combout\ : std_logic;
SIGNAL \inst1|LessThan2~0_combout\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|count~0_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|count[7]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~39_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~41_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~43_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~45_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~46_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~47_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~48_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~49_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|Add0~50_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Add0~51_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Add0~52_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|Add0~53_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Add0~54_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Add0~55_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|count[18]~2_combout\ : std_logic;
SIGNAL \inst1|process_0~15_combout\ : std_logic;
SIGNAL \inst1|process_0~14_combout\ : std_logic;
SIGNAL \inst1|process_0~16_combout\ : std_logic;
SIGNAL \inst1|process_0~13_combout\ : std_logic;
SIGNAL \inst1|process_0~17_combout\ : std_logic;
SIGNAL \inst1|process_0~11_combout\ : std_logic;
SIGNAL \inst1|process_0~10_combout\ : std_logic;
SIGNAL \inst1|process_0~9_combout\ : std_logic;
SIGNAL \inst1|process_0~8_combout\ : std_logic;
SIGNAL \inst1|process_0~12_combout\ : std_logic;
SIGNAL \inst1|process_0~18_combout\ : std_logic;
SIGNAL \inst1|process_0~19_combout\ : std_logic;
SIGNAL \inst1|count~1_combout\ : std_logic;
SIGNAL \inst1|state.obstacle_both_sides~q\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|state~9_combout\ : std_logic;
SIGNAL \inst1|state.obstacle_right~q\ : std_logic;
SIGNAL \inst1|state~8_combout\ : std_logic;
SIGNAL \inst1|state.obstacle_left~q\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|state.no_obstacle~q\ : std_logic;
SIGNAL \inst1|state~10_combout\ : std_logic;
SIGNAL \inst1|state.init~q\ : std_logic;
SIGNAL \inst1|motor1_direction~0_combout\ : std_logic;
SIGNAL \inst8|counter[0]~45_combout\ : std_logic;
SIGNAL \inst8|counter[1]~15_combout\ : std_logic;
SIGNAL \inst8|counter[1]~16\ : std_logic;
SIGNAL \inst8|counter[2]~17_combout\ : std_logic;
SIGNAL \inst8|counter[2]~18\ : std_logic;
SIGNAL \inst8|counter[3]~19_combout\ : std_logic;
SIGNAL \inst8|counter[3]~20\ : std_logic;
SIGNAL \inst8|counter[4]~21_combout\ : std_logic;
SIGNAL \inst8|counter[4]~22\ : std_logic;
SIGNAL \inst8|counter[5]~23_combout\ : std_logic;
SIGNAL \inst8|counter[5]~24\ : std_logic;
SIGNAL \inst8|counter[6]~25_combout\ : std_logic;
SIGNAL \inst8|counter[6]~26\ : std_logic;
SIGNAL \inst8|counter[7]~27_combout\ : std_logic;
SIGNAL \inst8|counter[7]~28\ : std_logic;
SIGNAL \inst8|counter[8]~29_combout\ : std_logic;
SIGNAL \inst8|counter[8]~30\ : std_logic;
SIGNAL \inst8|counter[9]~31_combout\ : std_logic;
SIGNAL \inst8|counter[9]~32\ : std_logic;
SIGNAL \inst8|counter[10]~33_combout\ : std_logic;
SIGNAL \inst8|Equal1~1_combout\ : std_logic;
SIGNAL \inst8|Equal1~0_combout\ : std_logic;
SIGNAL \inst8|counter[10]~34\ : std_logic;
SIGNAL \inst8|counter[11]~35_combout\ : std_logic;
SIGNAL \inst8|counter[11]~36\ : std_logic;
SIGNAL \inst8|counter[12]~37_combout\ : std_logic;
SIGNAL \inst8|Equal1~2_combout\ : std_logic;
SIGNAL \inst8|counter[12]~38\ : std_logic;
SIGNAL \inst8|counter[13]~39_combout\ : std_logic;
SIGNAL \inst8|counter[13]~40\ : std_logic;
SIGNAL \inst8|counter[14]~41_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|counter[14]~42\ : std_logic;
SIGNAL \inst8|counter[15]~43_combout\ : std_logic;
SIGNAL \inst8|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|motor1_speed[9]~4_combout\ : std_logic;
SIGNAL \inst8|Equal0~2_combout\ : std_logic;
SIGNAL \inst8|Equal1~3_combout\ : std_logic;
SIGNAL \inst8|Equal1~4_combout\ : std_logic;
SIGNAL \inst8|pwm~0_combout\ : std_logic;
SIGNAL \inst8|pwm~1_combout\ : std_logic;
SIGNAL \inst8|pwm~q\ : std_logic;
SIGNAL \inst8|motor_signal1~0_combout\ : std_logic;
SIGNAL \inst8|motor_signal2~0_combout\ : std_logic;
SIGNAL \inst1|motor2_speed[9]~0_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst9|pwm~0_combout\ : std_logic;
SIGNAL \inst9|pwm~1_combout\ : std_logic;
SIGNAL \inst9|pwm~q\ : std_logic;
SIGNAL \inst5|dataOut[1]~5_combout\ : std_logic;
SIGNAL \inst5|dataOut[7]~6_combout\ : std_logic;
SIGNAL \inst4|lcd_posY[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|display_counter[0]~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst4|display_counter[0]~32\ : std_logic;
SIGNAL \inst4|display_counter[1]~33_combout\ : std_logic;
SIGNAL \inst4|display_counter[1]~34\ : std_logic;
SIGNAL \inst4|display_counter[2]~35_combout\ : std_logic;
SIGNAL \inst4|display_counter[2]~36\ : std_logic;
SIGNAL \inst4|display_counter[3]~37_combout\ : std_logic;
SIGNAL \inst4|display_counter[3]~38\ : std_logic;
SIGNAL \inst4|display_counter[4]~39_combout\ : std_logic;
SIGNAL \inst4|display_counter[4]~40\ : std_logic;
SIGNAL \inst4|display_counter[5]~41_combout\ : std_logic;
SIGNAL \inst4|display_counter[5]~42\ : std_logic;
SIGNAL \inst4|display_counter[6]~43_combout\ : std_logic;
SIGNAL \inst4|display_counter[6]~44\ : std_logic;
SIGNAL \inst4|display_counter[7]~45_combout\ : std_logic;
SIGNAL \inst4|display_counter[7]~46\ : std_logic;
SIGNAL \inst4|display_counter[8]~47_combout\ : std_logic;
SIGNAL \inst4|display_counter[8]~48\ : std_logic;
SIGNAL \inst4|display_counter[9]~49_combout\ : std_logic;
SIGNAL \inst4|display_counter[9]~50\ : std_logic;
SIGNAL \inst4|display_counter[10]~51_combout\ : std_logic;
SIGNAL \inst4|display_counter[10]~52\ : std_logic;
SIGNAL \inst4|display_counter[11]~53_combout\ : std_logic;
SIGNAL \inst4|display_counter[11]~54\ : std_logic;
SIGNAL \inst4|display_counter[12]~55_combout\ : std_logic;
SIGNAL \inst4|display_counter[12]~56\ : std_logic;
SIGNAL \inst4|display_counter[13]~57_combout\ : std_logic;
SIGNAL \inst4|display_counter[13]~58\ : std_logic;
SIGNAL \inst4|display_counter[14]~59_combout\ : std_logic;
SIGNAL \inst4|display_counter[14]~60\ : std_logic;
SIGNAL \inst4|display_counter[15]~61_combout\ : std_logic;
SIGNAL \inst4|display_counter[15]~62\ : std_logic;
SIGNAL \inst4|display_counter[16]~63_combout\ : std_logic;
SIGNAL \inst4|display_counter[16]~64\ : std_logic;
SIGNAL \inst4|display_counter[17]~65_combout\ : std_logic;
SIGNAL \inst4|display_counter[17]~66\ : std_logic;
SIGNAL \inst4|display_counter[18]~67_combout\ : std_logic;
SIGNAL \inst4|display_counter[18]~68\ : std_logic;
SIGNAL \inst4|display_counter[19]~69_combout\ : std_logic;
SIGNAL \inst4|display_counter[19]~70\ : std_logic;
SIGNAL \inst4|display_counter[20]~71_combout\ : std_logic;
SIGNAL \inst4|display_counter[20]~72\ : std_logic;
SIGNAL \inst4|display_counter[21]~73_combout\ : std_logic;
SIGNAL \inst4|display_counter[21]~74\ : std_logic;
SIGNAL \inst4|display_counter[22]~75_combout\ : std_logic;
SIGNAL \inst4|display_counter[22]~76\ : std_logic;
SIGNAL \inst4|display_counter[23]~77_combout\ : std_logic;
SIGNAL \inst4|display_counter[23]~78\ : std_logic;
SIGNAL \inst4|display_counter[24]~79_combout\ : std_logic;
SIGNAL \inst4|display_counter[24]~80\ : std_logic;
SIGNAL \inst4|display_counter[25]~81_combout\ : std_logic;
SIGNAL \inst4|display_counter[25]~82\ : std_logic;
SIGNAL \inst4|display_counter[26]~83_combout\ : std_logic;
SIGNAL \inst4|display_counter[26]~84\ : std_logic;
SIGNAL \inst4|display_counter[27]~85_combout\ : std_logic;
SIGNAL \inst4|display_counter[27]~86\ : std_logic;
SIGNAL \inst4|display_counter[28]~87_combout\ : std_logic;
SIGNAL \inst4|display_counter[28]~88\ : std_logic;
SIGNAL \inst4|display_counter[29]~89_combout\ : std_logic;
SIGNAL \inst4|LessThan5~0_combout\ : std_logic;
SIGNAL \inst4|display_counter[29]~90\ : std_logic;
SIGNAL \inst4|display_counter[30]~91_combout\ : std_logic;
SIGNAL \inst4|LessThan5~5_combout\ : std_logic;
SIGNAL \inst4|LessThan5~2_combout\ : std_logic;
SIGNAL \inst4|LessThan5~1_combout\ : std_logic;
SIGNAL \inst4|LessThan5~3_combout\ : std_logic;
SIGNAL \inst4|LessThan5~4_combout\ : std_logic;
SIGNAL \inst4|LessThan5~6_combout\ : std_logic;
SIGNAL \inst4|LessThan5~7_combout\ : std_logic;
SIGNAL \inst4|display_state~q\ : std_logic;
SIGNAL \inst4|lcd_data~32_combout\ : std_logic;
SIGNAL \inst4|Equal23~0_combout\ : std_logic;
SIGNAL \inst4|Equal23~1_combout\ : std_logic;
SIGNAL \inst4|lcd_data~159_combout\ : std_logic;
SIGNAL \inst4|lcd_data~160_combout\ : std_logic;
SIGNAL \inst4|lcd_data~157_combout\ : std_logic;
SIGNAL \inst4|lcd_data~158_combout\ : std_logic;
SIGNAL \inst4|lcd_data~35_combout\ : std_logic;
SIGNAL \inst4|lcd_data~34_combout\ : std_logic;
SIGNAL \inst4|Equal17~0_combout\ : std_logic;
SIGNAL \inst4|lcd_data~37_combout\ : std_logic;
SIGNAL \inst4|lcd_data~36_combout\ : std_logic;
SIGNAL \inst4|lcd_data~155_combout\ : std_logic;
SIGNAL \inst4|lcd_data~156_combout\ : std_logic;
SIGNAL \inst4|lcd_data~144_combout\ : std_logic;
SIGNAL \inst4|lcd_data~38_combout\ : std_logic;
SIGNAL \inst5|dataStorage[6]~0_combout\ : std_logic;
SIGNAL \inst5|dataOut[6]~12_combout\ : std_logic;
SIGNAL \inst5|dataOut[6]~7_combout\ : std_logic;
SIGNAL \inst5|dataOut[1]~10_combout\ : std_logic;
SIGNAL \inst5|dataOut[5]~39_combout\ : std_logic;
SIGNAL \inst5|dataOut[1]~8_combout\ : std_logic;
SIGNAL \inst5|dataOut[5]~11_combout\ : std_logic;
SIGNAL \inst5|dataOut[6]~13_combout\ : std_logic;
SIGNAL \inst5|dataOut[6]~14_combout\ : std_logic;
SIGNAL \inst4|lcd_data~33_combout\ : std_logic;
SIGNAL \inst4|lcd_data~49_combout\ : std_logic;
SIGNAL \inst4|lcd_data~50_combout\ : std_logic;
SIGNAL \inst4|lcd_data~45_combout\ : std_logic;
SIGNAL \inst4|lcd_data~46_combout\ : std_logic;
SIGNAL \inst4|lcd_data~40_combout\ : std_logic;
SIGNAL \inst4|lcd_data~44_combout\ : std_logic;
SIGNAL \inst4|lcd_data~47_combout\ : std_logic;
SIGNAL \inst4|lcd_data~48_combout\ : std_logic;
SIGNAL \inst4|lcd_data~51_combout\ : std_logic;
SIGNAL \inst4|state~9_combout\ : std_logic;
SIGNAL \inst4|Add3~0_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~12_combout\ : std_logic;
SIGNAL \inst4|LessThan3~0_combout\ : std_logic;
SIGNAL \inst4|data_3_storage~0_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~13_combout\ : std_logic;
SIGNAL \inst4|Add3~1\ : std_logic;
SIGNAL \inst4|Add3~2_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~9_combout\ : std_logic;
SIGNAL \inst4|Add3~3\ : std_logic;
SIGNAL \inst4|Add3~4_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~8_combout\ : std_logic;
SIGNAL \inst4|Add3~5\ : std_logic;
SIGNAL \inst4|Add3~6_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~4_combout\ : std_logic;
SIGNAL \inst4|Add3~7\ : std_logic;
SIGNAL \inst4|Add3~8_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~5_combout\ : std_logic;
SIGNAL \inst4|Add3~9\ : std_logic;
SIGNAL \inst4|Add3~10_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~6_combout\ : std_logic;
SIGNAL \inst4|Add3~11\ : std_logic;
SIGNAL \inst4|Add3~12_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~7_combout\ : std_logic;
SIGNAL \inst4|lcd_data~41_combout\ : std_logic;
SIGNAL \inst4|LessThan1~0_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~10_combout\ : std_logic;
SIGNAL \inst4|data_1_storage[0]~11_combout\ : std_logic;
SIGNAL \inst4|lcd_data~42_combout\ : std_logic;
SIGNAL \inst4|lcd_data~39_combout\ : std_logic;
SIGNAL \inst4|lcd_data~43_combout\ : std_logic;
SIGNAL \inst4|lcd_data~59_combout\ : std_logic;
SIGNAL \inst4|lcd_data~52_combout\ : std_logic;
SIGNAL \inst4|Add4~0_combout\ : std_logic;
SIGNAL \inst4|Add4~1\ : std_logic;
SIGNAL \inst4|Add4~2_combout\ : std_logic;
SIGNAL \inst4|data_2_storage~10_combout\ : std_logic;
SIGNAL \inst4|data_2_storage~4_combout\ : std_logic;
SIGNAL \inst4|data_2_storage~14_combout\ : std_logic;
SIGNAL \inst4|Add4~3\ : std_logic;
SIGNAL \inst4|Add4~4_combout\ : std_logic;
SIGNAL \inst4|data_2_storage~9_combout\ : std_logic;
SIGNAL \inst4|Add4~5\ : std_logic;
SIGNAL \inst4|Add4~6_combout\ : std_logic;
SIGNAL \inst4|data_2_storage~5_combout\ : std_logic;
SIGNAL \inst4|Add4~7\ : std_logic;
SIGNAL \inst4|Add4~8_combout\ : std_logic;
SIGNAL \inst4|data_2_storage~6_combout\ : std_logic;
SIGNAL \inst4|Add4~9\ : std_logic;
SIGNAL \inst4|Add4~10_combout\ : std_logic;
SIGNAL \inst4|data_2_storage~7_combout\ : std_logic;
SIGNAL \inst4|Add4~11\ : std_logic;
SIGNAL \inst4|Add4~12_combout\ : std_logic;
SIGNAL \inst4|data_2_storage~8_combout\ : std_logic;
SIGNAL \inst4|lcd_data~56_combout\ : std_logic;
SIGNAL \inst4|LessThan2~0_combout\ : std_logic;
SIGNAL \inst4|data_2_storage~13_combout\ : std_logic;
SIGNAL \inst4|data_2_storage~11_combout\ : std_logic;
SIGNAL \inst4|data_2_storage[0]~12_combout\ : std_logic;
SIGNAL \inst4|lcd_data~57_combout\ : std_logic;
SIGNAL \inst4|lcd_data~143_combout\ : std_logic;
SIGNAL \inst4|Add5~0_combout\ : std_logic;
SIGNAL \inst4|data_3_storage~7_combout\ : std_logic;
SIGNAL \inst4|data_3_storage~2_combout\ : std_logic;
SIGNAL \inst4|Add5~1\ : std_logic;
SIGNAL \inst4|Add5~2_combout\ : std_logic;
SIGNAL \inst4|data_3_storage~6_combout\ : std_logic;
SIGNAL \inst4|Add5~3\ : std_logic;
SIGNAL \inst4|Add5~4_combout\ : std_logic;
SIGNAL \inst4|data_3_storage~10_combout\ : std_logic;
SIGNAL \inst4|Add5~5\ : std_logic;
SIGNAL \inst4|Add5~6_combout\ : std_logic;
SIGNAL \inst4|data_3_storage~1_combout\ : std_logic;
SIGNAL \inst4|Add5~7\ : std_logic;
SIGNAL \inst4|Add5~8_combout\ : std_logic;
SIGNAL \inst4|data_3_storage~3_combout\ : std_logic;
SIGNAL \inst4|Add5~9\ : std_logic;
SIGNAL \inst4|Add5~10_combout\ : std_logic;
SIGNAL \inst4|data_3_storage~4_combout\ : std_logic;
SIGNAL \inst4|Add5~11\ : std_logic;
SIGNAL \inst4|Add5~12_combout\ : std_logic;
SIGNAL \inst4|data_3_storage~5_combout\ : std_logic;
SIGNAL \inst4|lcd_data~53_combout\ : std_logic;
SIGNAL \inst4|LessThan4~0_combout\ : std_logic;
SIGNAL \inst4|data_3_storage~8_combout\ : std_logic;
SIGNAL \inst4|data_3_storage[0]~9_combout\ : std_logic;
SIGNAL \inst4|lcd_data~54_combout\ : std_logic;
SIGNAL \inst4|lcd_data~55_combout\ : std_logic;
SIGNAL \inst4|lcd_data~58_combout\ : std_logic;
SIGNAL \inst4|lcd_data~60_combout\ : std_logic;
SIGNAL \inst4|lcd_data~61_combout\ : std_logic;
SIGNAL \inst5|dataStorage[5]~1_combout\ : std_logic;
SIGNAL \inst4|lcd_posX[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|lcd_posY[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|addressStorage~0_combout\ : std_logic;
SIGNAL \inst5|dataOut[5]~15_combout\ : std_logic;
SIGNAL \inst5|dataOut[5]~16_combout\ : std_logic;
SIGNAL \inst5|dataOut[5]~17_combout\ : std_logic;
SIGNAL \inst5|dataOut[5]~18_combout\ : std_logic;
SIGNAL \inst5|addressStorage~1_combout\ : std_logic;
SIGNAL \inst4|lcd_data~153_combout\ : std_logic;
SIGNAL \inst4|lcd_data~154_combout\ : std_logic;
SIGNAL \inst4|Equal15~1_combout\ : std_logic;
SIGNAL \inst4|lcd_data~68_combout\ : std_logic;
SIGNAL \inst4|lcd_data~69_combout\ : std_logic;
SIGNAL \inst4|lcd_data~65_combout\ : std_logic;
SIGNAL \inst4|lcd_data~66_combout\ : std_logic;
SIGNAL \inst4|lcd_data~67_combout\ : std_logic;
SIGNAL \inst4|lcd_data~12_combout\ : std_logic;
SIGNAL \inst4|lcd_data~146_combout\ : std_logic;
SIGNAL \inst4|lcd_data~70_combout\ : std_logic;
SIGNAL \inst4|lcd_data~71_combout\ : std_logic;
SIGNAL \inst4|lcd_data~72_combout\ : std_logic;
SIGNAL \inst5|dataOut[4]~19_combout\ : std_logic;
SIGNAL \inst5|dataOut[4]~20_combout\ : std_logic;
SIGNAL \inst5|dataOut[4]~21_combout\ : std_logic;
SIGNAL \inst5|dataOut[4]~22_combout\ : std_logic;
SIGNAL \inst5|addressStorage~2_combout\ : std_logic;
SIGNAL \inst4|Equal15~0_combout\ : std_logic;
SIGNAL \inst4|lcd_data~73_combout\ : std_logic;
SIGNAL \inst4|lcd_data~63_combout\ : std_logic;
SIGNAL \inst4|lcd_data~147_combout\ : std_logic;
SIGNAL \inst4|lcd_data~74_combout\ : std_logic;
SIGNAL \inst4|lcd_data~77_combout\ : std_logic;
SIGNAL \inst4|lcd_data~78_combout\ : std_logic;
SIGNAL \inst4|lcd_data~79_combout\ : std_logic;
SIGNAL \inst4|lcd_data~75_combout\ : std_logic;
SIGNAL \inst4|lcd_data~76_combout\ : std_logic;
SIGNAL \inst4|lcd_data~151_combout\ : std_logic;
SIGNAL \inst4|lcd_data~152_combout\ : std_logic;
SIGNAL \inst4|lcd_data~80_combout\ : std_logic;
SIGNAL \inst4|lcd_data~81_combout\ : std_logic;
SIGNAL \inst4|lcd_data~82_combout\ : std_logic;
SIGNAL \inst5|dataOut[3]~23_combout\ : std_logic;
SIGNAL \inst5|dataOut[3]~24_combout\ : std_logic;
SIGNAL \inst5|dataOut[3]~25_combout\ : std_logic;
SIGNAL \inst5|dataOut[3]~26_combout\ : std_logic;
SIGNAL \inst4|lcd_data~83_combout\ : std_logic;
SIGNAL \inst4|lcd_data~84_combout\ : std_logic;
SIGNAL \inst4|lcd_data~85_combout\ : std_logic;
SIGNAL \inst4|LessThan11~0_combout\ : std_logic;
SIGNAL \inst4|lcd_data~96_combout\ : std_logic;
SIGNAL \inst4|lcd_data~97_combout\ : std_logic;
SIGNAL \inst4|lcd_data~98_combout\ : std_logic;
SIGNAL \inst4|lcd_data~99_combout\ : std_logic;
SIGNAL \inst4|lcd_data~100_combout\ : std_logic;
SIGNAL \inst4|lcd_data~93_combout\ : std_logic;
SIGNAL \inst4|lcd_data~64_combout\ : std_logic;
SIGNAL \inst4|lcd_data~94_combout\ : std_logic;
SIGNAL \inst4|lcd_data~86_combout\ : std_logic;
SIGNAL \inst4|lcd_data~89_combout\ : std_logic;
SIGNAL \inst4|lcd_data~87_combout\ : std_logic;
SIGNAL \inst4|lcd_data~88_combout\ : std_logic;
SIGNAL \inst4|lcd_data~90_combout\ : std_logic;
SIGNAL \inst4|lcd_data~91_combout\ : std_logic;
SIGNAL \inst4|lcd_data~62_combout\ : std_logic;
SIGNAL \inst4|lcd_data~92_combout\ : std_logic;
SIGNAL \inst4|lcd_data~149_combout\ : std_logic;
SIGNAL \inst4|lcd_data~150_combout\ : std_logic;
SIGNAL \inst4|lcd_data~95_combout\ : std_logic;
SIGNAL \inst4|lcd_data~101_combout\ : std_logic;
SIGNAL \inst5|dataStorage[2]~2_combout\ : std_logic;
SIGNAL \inst5|addressStorage~3_combout\ : std_logic;
SIGNAL \inst5|dataOut[2]~27_combout\ : std_logic;
SIGNAL \inst5|dataOut[5]~9_combout\ : std_logic;
SIGNAL \inst5|dataOut[2]~28_combout\ : std_logic;
SIGNAL \inst5|dataOut[2]~29_combout\ : std_logic;
SIGNAL \inst5|dataOut[2]~30_combout\ : std_logic;
SIGNAL \inst5|dataOut[5]~40_combout\ : std_logic;
SIGNAL \inst5|dataOut[1]~32_combout\ : std_logic;
SIGNAL \inst4|lcd_data~102_combout\ : std_logic;
SIGNAL \inst4|lcd_data~103_combout\ : std_logic;
SIGNAL \inst4|lcd_data~116_combout\ : std_logic;
SIGNAL \inst4|lcd_data~117_combout\ : std_logic;
SIGNAL \inst4|lcd_data~118_combout\ : std_logic;
SIGNAL \inst4|lcd_data~114_combout\ : std_logic;
SIGNAL \inst4|lcd_data~115_combout\ : std_logic;
SIGNAL \inst4|lcd_data~113_combout\ : std_logic;
SIGNAL \inst4|lcd_data~119_combout\ : std_logic;
SIGNAL \inst4|lcd_data~145_combout\ : std_logic;
SIGNAL \inst4|lcd_data~111_combout\ : std_logic;
SIGNAL \inst4|lcd_data~104_combout\ : std_logic;
SIGNAL \inst4|lcd_data~105_combout\ : std_logic;
SIGNAL \inst4|lcd_data~31_combout\ : std_logic;
SIGNAL \inst4|lcd_data~148_combout\ : std_logic;
SIGNAL \inst4|lcd_data~106_combout\ : std_logic;
SIGNAL \inst4|lcd_data~107_combout\ : std_logic;
SIGNAL \inst4|lcd_data~108_combout\ : std_logic;
SIGNAL \inst4|lcd_data~109_combout\ : std_logic;
SIGNAL \inst4|lcd_data~112_combout\ : std_logic;
SIGNAL \inst4|lcd_data~120_combout\ : std_logic;
SIGNAL \inst5|dataStorage[1]~3_combout\ : std_logic;
SIGNAL \inst4|lcd_posX[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|dataOut[1]~31_combout\ : std_logic;
SIGNAL \inst5|dataOut[1]~33_combout\ : std_logic;
SIGNAL \inst4|lcd_data~135_combout\ : std_logic;
SIGNAL \inst4|lcd_data~136_combout\ : std_logic;
SIGNAL \inst4|lcd_data~138_combout\ : std_logic;
SIGNAL \inst4|lcd_data~137_combout\ : std_logic;
SIGNAL \inst4|lcd_data~139_combout\ : std_logic;
SIGNAL \inst4|lcd_data~134_combout\ : std_logic;
SIGNAL \inst4|lcd_data~140_combout\ : std_logic;
SIGNAL \inst4|lcd_data~121_combout\ : std_logic;
SIGNAL \inst4|lcd_data~122_combout\ : std_logic;
SIGNAL \inst4|lcd_data~125_combout\ : std_logic;
SIGNAL \inst4|lcd_data~126_combout\ : std_logic;
SIGNAL \inst4|lcd_data~123_combout\ : std_logic;
SIGNAL \inst4|lcd_data~124_combout\ : std_logic;
SIGNAL \inst4|lcd_data~127_combout\ : std_logic;
SIGNAL \inst4|lcd_data~130_combout\ : std_logic;
SIGNAL \inst4|lcd_data~131_combout\ : std_logic;
SIGNAL \inst4|lcd_data~132_combout\ : std_logic;
SIGNAL \inst4|lcd_data~128_combout\ : std_logic;
SIGNAL \inst4|lcd_data~129_combout\ : std_logic;
SIGNAL \inst4|lcd_data~133_combout\ : std_logic;
SIGNAL \inst4|lcd_data~141_combout\ : std_logic;
SIGNAL \inst5|addressStorage[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|dataOut[0]~36_combout\ : std_logic;
SIGNAL \inst5|dataOut[0]~34_combout\ : std_logic;
SIGNAL \inst5|dataOut[0]~35_combout\ : std_logic;
SIGNAL \inst5|dataOut[0]~37_combout\ : std_logic;
SIGNAL \inst4|data_2_storage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|display_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst5|addressStorage\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst5|charCreationCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst7|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst5|dataStorage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|data_3_storage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst2|counter\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst3|counter\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst4|data_1_storage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|counter1\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst8|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|lcd_posY\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|lcd_posX\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst4|charCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst7|counter\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst4|lineCount\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|ALT_INV_process_1~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

lcd_rs <= ww_lcd_rs;
ww_clk_50 <= clk_50;
lcd_rw <= ww_lcd_rw;
lcd_e <= ww_lcd_e;
motor_A1 <= ww_motor_A1;
motor_A2 <= ww_motor_A2;
motor_B1 <= ww_motor_B1;
motor_B2 <= ww_motor_B2;
lcd_data <= ww_lcd_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\inst5|ALT_INV_process_1~1_combout\ <= NOT \inst5|process_1~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y20_N23
\us_2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|trigger~reg0_q\,
	oe => \inst2|trigger~en_q\,
	devoe => ww_devoe,
	o => \us_2~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\us_3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|trigger~reg0_q\,
	oe => \inst3|trigger~en_q\,
	devoe => ww_devoe,
	o => \us_3~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\us_1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|trigger~reg0_q\,
	oe => \inst7|trigger~en_q\,
	devoe => ww_devoe,
	o => \us_1~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_process_1~1_combout\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\lcd_e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|e~7_combout\,
	devoe => ww_devoe,
	o => \lcd_e~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\motor_A1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|motor_signal1~0_combout\,
	devoe => ww_devoe,
	o => \motor_A1~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\motor_A2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|motor_signal2~0_combout\,
	devoe => ww_devoe,
	o => \motor_A2~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\motor_B1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|pwm~q\,
	devoe => ww_devoe,
	o => \motor_B1~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\motor_B2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \motor_B2~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[7]~6_combout\,
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\lcd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[6]~14_combout\,
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\lcd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[5]~18_combout\,
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\lcd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[4]~22_combout\,
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\lcd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[3]~26_combout\,
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\lcd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[2]~30_combout\,
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\lcd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[1]~33_combout\,
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[0]~37_combout\,
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G18
\clk_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X37_Y20_N26
\inst2|state.activating~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state.activating~0_combout\ = !\inst2|state.init~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|state.init~q\,
	combout => \inst2|state.activating~0_combout\);

-- Location: IOIBUF_X53_Y20_N22
\us_2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => us_2,
	o => \us_2~input_o\);

-- Location: FF_X37_Y20_N13
\inst2|state.scanning\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|state.waiting~q\,
	sload => VCC,
	ena => \inst2|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.scanning~q\);

-- Location: LCCOMB_X37_Y20_N12
\inst2|counter[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[22]~2_combout\ = (\inst2|state.waiting~q\ & (!\us_2~input_o\)) # (!\inst2|state.waiting~q\ & (((!\inst2|state.scanning~q\ & !\inst2|state.final~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.waiting~q\,
	datab => \us_2~input_o\,
	datac => \inst2|state.scanning~q\,
	datad => \inst2|state.final~q\,
	combout => \inst2|counter[22]~2_combout\);

-- Location: LCCOMB_X38_Y20_N12
\inst2|counter[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[22]~3_combout\ = (\inst2|state.init~q\ & ((\inst2|state.activating~q\ & ((!\inst2|LessThan0~2_combout\))) # (!\inst2|state.activating~q\ & (!\inst2|counter[22]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter[22]~2_combout\,
	datab => \inst2|state.init~q\,
	datac => \inst2|state.activating~q\,
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|counter[22]~3_combout\);

-- Location: LCCOMB_X39_Y20_N10
\inst2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = \inst2|counter\(0) $ (VCC)
-- \inst2|Add1~1\ = CARRY(\inst2|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(0),
	datad => VCC,
	combout => \inst2|Add1~0_combout\,
	cout => \inst2|Add1~1\);

-- Location: LCCOMB_X40_Y20_N4
\inst2|Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~66_combout\ = (\inst2|Add1~0_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~0_combout\,
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~66_combout\);

-- Location: FF_X40_Y20_N5
\inst2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~66_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(0));

-- Location: LCCOMB_X39_Y20_N12
\inst2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = (\inst2|counter\(1) & (!\inst2|Add1~1\)) # (!\inst2|counter\(1) & ((\inst2|Add1~1\) # (GND)))
-- \inst2|Add1~3\ = CARRY((!\inst2|Add1~1\) # (!\inst2|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(1),
	datad => VCC,
	cin => \inst2|Add1~1\,
	combout => \inst2|Add1~2_combout\,
	cout => \inst2|Add1~3\);

-- Location: LCCOMB_X39_Y20_N8
\inst2|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~65_combout\ = (\inst2|Add1~2_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~2_combout\,
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~65_combout\);

-- Location: FF_X39_Y20_N9
\inst2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~65_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(1));

-- Location: LCCOMB_X39_Y20_N14
\inst2|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~4_combout\ = (\inst2|counter\(2) & (\inst2|Add1~3\ $ (GND))) # (!\inst2|counter\(2) & (!\inst2|Add1~3\ & VCC))
-- \inst2|Add1~5\ = CARRY((\inst2|counter\(2) & !\inst2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datad => VCC,
	cin => \inst2|Add1~3\,
	combout => \inst2|Add1~4_combout\,
	cout => \inst2|Add1~5\);

-- Location: LCCOMB_X39_Y20_N6
\inst2|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~53_combout\ = (\inst2|Add1~4_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~4_combout\,
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~53_combout\);

-- Location: FF_X39_Y20_N7
\inst2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~53_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(2));

-- Location: LCCOMB_X39_Y20_N16
\inst2|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~6_combout\ = (\inst2|counter\(3) & (!\inst2|Add1~5\)) # (!\inst2|counter\(3) & ((\inst2|Add1~5\) # (GND)))
-- \inst2|Add1~7\ = CARRY((!\inst2|Add1~5\) # (!\inst2|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(3),
	datad => VCC,
	cin => \inst2|Add1~5\,
	combout => \inst2|Add1~6_combout\,
	cout => \inst2|Add1~7\);

-- Location: LCCOMB_X39_Y20_N0
\inst2|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~54_combout\ = (\inst2|Add1~6_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add1~6_combout\,
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~54_combout\);

-- Location: FF_X39_Y20_N1
\inst2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~54_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(3));

-- Location: LCCOMB_X39_Y20_N18
\inst2|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~8_combout\ = (\inst2|counter\(4) & (\inst2|Add1~7\ $ (GND))) # (!\inst2|counter\(4) & (!\inst2|Add1~7\ & VCC))
-- \inst2|Add1~9\ = CARRY((\inst2|counter\(4) & !\inst2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(4),
	datad => VCC,
	cin => \inst2|Add1~7\,
	combout => \inst2|Add1~8_combout\,
	cout => \inst2|Add1~9\);

-- Location: LCCOMB_X39_Y20_N4
\inst2|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~52_combout\ = (\inst2|Add1~8_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add1~8_combout\,
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~52_combout\);

-- Location: FF_X39_Y20_N5
\inst2|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~52_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(4));

-- Location: LCCOMB_X39_Y20_N20
\inst2|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~10_combout\ = (\inst2|counter\(5) & (!\inst2|Add1~9\)) # (!\inst2|counter\(5) & ((\inst2|Add1~9\) # (GND)))
-- \inst2|Add1~11\ = CARRY((!\inst2|Add1~9\) # (!\inst2|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(5),
	datad => VCC,
	cin => \inst2|Add1~9\,
	combout => \inst2|Add1~10_combout\,
	cout => \inst2|Add1~11\);

-- Location: LCCOMB_X38_Y20_N4
\inst2|Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~51_combout\ = (\inst2|Add1~10_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~10_combout\,
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~51_combout\);

-- Location: FF_X38_Y20_N5
\inst2|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~51_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(5));

-- Location: LCCOMB_X39_Y20_N22
\inst2|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~12_combout\ = (\inst2|counter\(6) & (\inst2|Add1~11\ $ (GND))) # (!\inst2|counter\(6) & (!\inst2|Add1~11\ & VCC))
-- \inst2|Add1~13\ = CARRY((\inst2|counter\(6) & !\inst2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(6),
	datad => VCC,
	cin => \inst2|Add1~11\,
	combout => \inst2|Add1~12_combout\,
	cout => \inst2|Add1~13\);

-- Location: LCCOMB_X38_Y20_N30
\inst2|Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~55_combout\ = (\inst2|Add1~12_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add1~12_combout\,
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~55_combout\);

-- Location: FF_X38_Y20_N31
\inst2|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~55_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(6));

-- Location: LCCOMB_X39_Y20_N24
\inst2|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~14_combout\ = (\inst2|counter\(7) & (!\inst2|Add1~13\)) # (!\inst2|counter\(7) & ((\inst2|Add1~13\) # (GND)))
-- \inst2|Add1~15\ = CARRY((!\inst2|Add1~13\) # (!\inst2|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(7),
	datad => VCC,
	cin => \inst2|Add1~13\,
	combout => \inst2|Add1~14_combout\,
	cout => \inst2|Add1~15\);

-- Location: LCCOMB_X38_Y20_N24
\inst2|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~56_combout\ = (\inst2|Add1~14_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add1~14_combout\,
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~56_combout\);

-- Location: FF_X38_Y20_N25
\inst2|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~56_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(7));

-- Location: LCCOMB_X39_Y20_N26
\inst2|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~16_combout\ = (\inst2|counter\(8) & (\inst2|Add1~15\ $ (GND))) # (!\inst2|counter\(8) & (!\inst2|Add1~15\ & VCC))
-- \inst2|Add1~17\ = CARRY((\inst2|counter\(8) & !\inst2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(8),
	datad => VCC,
	cin => \inst2|Add1~15\,
	combout => \inst2|Add1~16_combout\,
	cout => \inst2|Add1~17\);

-- Location: LCCOMB_X38_Y20_N8
\inst2|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~57_combout\ = (\inst2|Add1~16_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~16_combout\,
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~57_combout\);

-- Location: FF_X38_Y20_N9
\inst2|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~57_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(8));

-- Location: LCCOMB_X39_Y20_N28
\inst2|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~18_combout\ = (\inst2|counter\(9) & (!\inst2|Add1~17\)) # (!\inst2|counter\(9) & ((\inst2|Add1~17\) # (GND)))
-- \inst2|Add1~19\ = CARRY((!\inst2|Add1~17\) # (!\inst2|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(9),
	datad => VCC,
	cin => \inst2|Add1~17\,
	combout => \inst2|Add1~18_combout\,
	cout => \inst2|Add1~19\);

-- Location: LCCOMB_X38_Y20_N14
\inst2|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~58_combout\ = (\inst2|Add1~18_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add1~18_combout\,
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~58_combout\);

-- Location: FF_X38_Y20_N15
\inst2|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~58_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(9));

-- Location: LCCOMB_X39_Y20_N30
\inst2|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~20_combout\ = (\inst2|counter\(10) & (\inst2|Add1~19\ $ (GND))) # (!\inst2|counter\(10) & (!\inst2|Add1~19\ & VCC))
-- \inst2|Add1~21\ = CARRY((\inst2|counter\(10) & !\inst2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(10),
	datad => VCC,
	cin => \inst2|Add1~19\,
	combout => \inst2|Add1~20_combout\,
	cout => \inst2|Add1~21\);

-- Location: LCCOMB_X38_Y20_N20
\inst2|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~59_combout\ = (\inst2|Add1~20_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~20_combout\,
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~59_combout\);

-- Location: FF_X38_Y20_N21
\inst2|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~59_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(10));

-- Location: LCCOMB_X39_Y19_N0
\inst2|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~22_combout\ = (\inst2|counter\(11) & (!\inst2|Add1~21\)) # (!\inst2|counter\(11) & ((\inst2|Add1~21\) # (GND)))
-- \inst2|Add1~23\ = CARRY((!\inst2|Add1~21\) # (!\inst2|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(11),
	datad => VCC,
	cin => \inst2|Add1~21\,
	combout => \inst2|Add1~22_combout\,
	cout => \inst2|Add1~23\);

-- Location: LCCOMB_X39_Y19_N28
\inst2|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~60_combout\ = (\inst2|Add1~22_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add1~22_combout\,
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~60_combout\);

-- Location: FF_X39_Y19_N29
\inst2|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~60_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(11));

-- Location: LCCOMB_X39_Y19_N2
\inst2|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~24_combout\ = (\inst2|counter\(12) & (\inst2|Add1~23\ $ (GND))) # (!\inst2|counter\(12) & (!\inst2|Add1~23\ & VCC))
-- \inst2|Add1~25\ = CARRY((\inst2|counter\(12) & !\inst2|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(12),
	datad => VCC,
	cin => \inst2|Add1~23\,
	combout => \inst2|Add1~24_combout\,
	cout => \inst2|Add1~25\);

-- Location: LCCOMB_X38_Y19_N4
\inst2|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~26_combout\ = (\inst2|counter[16]~1_combout\ & \inst2|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|counter[16]~1_combout\,
	datad => \inst2|Add1~24_combout\,
	combout => \inst2|Add1~26_combout\);

-- Location: FF_X38_Y19_N5
\inst2|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~26_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(12));

-- Location: LCCOMB_X39_Y19_N4
\inst2|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~27_combout\ = (\inst2|counter\(13) & (!\inst2|Add1~25\)) # (!\inst2|counter\(13) & ((\inst2|Add1~25\) # (GND)))
-- \inst2|Add1~28\ = CARRY((!\inst2|Add1~25\) # (!\inst2|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(13),
	datad => VCC,
	cin => \inst2|Add1~25\,
	combout => \inst2|Add1~27_combout\,
	cout => \inst2|Add1~28\);

-- Location: LCCOMB_X38_Y19_N14
\inst2|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~29_combout\ = (\inst2|counter[16]~1_combout\ & \inst2|Add1~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|counter[16]~1_combout\,
	datad => \inst2|Add1~27_combout\,
	combout => \inst2|Add1~29_combout\);

-- Location: FF_X38_Y19_N15
\inst2|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~29_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(13));

-- Location: LCCOMB_X39_Y19_N6
\inst2|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~30_combout\ = (\inst2|counter\(14) & (\inst2|Add1~28\ $ (GND))) # (!\inst2|counter\(14) & (!\inst2|Add1~28\ & VCC))
-- \inst2|Add1~31\ = CARRY((\inst2|counter\(14) & !\inst2|Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(14),
	datad => VCC,
	cin => \inst2|Add1~28\,
	combout => \inst2|Add1~30_combout\,
	cout => \inst2|Add1~31\);

-- Location: LCCOMB_X38_Y19_N24
\inst2|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~32_combout\ = (\inst2|counter[16]~1_combout\ & \inst2|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|counter[16]~1_combout\,
	datad => \inst2|Add1~30_combout\,
	combout => \inst2|Add1~32_combout\);

-- Location: FF_X38_Y19_N25
\inst2|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~32_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(14));

-- Location: LCCOMB_X39_Y19_N8
\inst2|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~33_combout\ = (\inst2|counter\(15) & (!\inst2|Add1~31\)) # (!\inst2|counter\(15) & ((\inst2|Add1~31\) # (GND)))
-- \inst2|Add1~34\ = CARRY((!\inst2|Add1~31\) # (!\inst2|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(15),
	datad => VCC,
	cin => \inst2|Add1~31\,
	combout => \inst2|Add1~33_combout\,
	cout => \inst2|Add1~34\);

-- Location: LCCOMB_X38_Y19_N22
\inst2|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~35_combout\ = (\inst2|Add1~33_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add1~33_combout\,
	datac => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~35_combout\);

-- Location: FF_X38_Y19_N23
\inst2|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~35_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(15));

-- Location: LCCOMB_X39_Y19_N10
\inst2|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~36_combout\ = (\inst2|counter\(16) & (\inst2|Add1~34\ $ (GND))) # (!\inst2|counter\(16) & (!\inst2|Add1~34\ & VCC))
-- \inst2|Add1~37\ = CARRY((\inst2|counter\(16) & !\inst2|Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(16),
	datad => VCC,
	cin => \inst2|Add1~34\,
	combout => \inst2|Add1~36_combout\,
	cout => \inst2|Add1~37\);

-- Location: LCCOMB_X38_Y19_N26
\inst2|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~38_combout\ = (\inst2|Add1~36_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add1~36_combout\,
	datac => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~38_combout\);

-- Location: FF_X38_Y19_N27
\inst2|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~38_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(16));

-- Location: LCCOMB_X39_Y19_N12
\inst2|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~39_combout\ = (\inst2|counter\(17) & (!\inst2|Add1~37\)) # (!\inst2|counter\(17) & ((\inst2|Add1~37\) # (GND)))
-- \inst2|Add1~40\ = CARRY((!\inst2|Add1~37\) # (!\inst2|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(17),
	datad => VCC,
	cin => \inst2|Add1~37\,
	combout => \inst2|Add1~39_combout\,
	cout => \inst2|Add1~40\);

-- Location: LCCOMB_X38_Y19_N20
\inst2|Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~41_combout\ = (\inst2|Add1~39_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add1~39_combout\,
	datac => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~41_combout\);

-- Location: FF_X38_Y19_N21
\inst2|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~41_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(17));

-- Location: LCCOMB_X39_Y19_N14
\inst2|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~42_combout\ = (\inst2|counter\(18) & (\inst2|Add1~40\ $ (GND))) # (!\inst2|counter\(18) & (!\inst2|Add1~40\ & VCC))
-- \inst2|Add1~43\ = CARRY((\inst2|counter\(18) & !\inst2|Add1~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(18),
	datad => VCC,
	cin => \inst2|Add1~40\,
	combout => \inst2|Add1~42_combout\,
	cout => \inst2|Add1~43\);

-- Location: LCCOMB_X38_Y19_N10
\inst2|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~44_combout\ = (\inst2|Add1~42_combout\ & \inst2|counter[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add1~42_combout\,
	datac => \inst2|counter[16]~1_combout\,
	combout => \inst2|Add1~44_combout\);

-- Location: FF_X38_Y19_N11
\inst2|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~44_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(18));

-- Location: LCCOMB_X39_Y19_N16
\inst2|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~45_combout\ = (\inst2|counter\(19) & (!\inst2|Add1~43\)) # (!\inst2|counter\(19) & ((\inst2|Add1~43\) # (GND)))
-- \inst2|Add1~46\ = CARRY((!\inst2|Add1~43\) # (!\inst2|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(19),
	datad => VCC,
	cin => \inst2|Add1~43\,
	combout => \inst2|Add1~45_combout\,
	cout => \inst2|Add1~46\);

-- Location: LCCOMB_X38_Y19_N8
\inst2|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~47_combout\ = (\inst2|counter[16]~1_combout\ & \inst2|Add1~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|counter[16]~1_combout\,
	datad => \inst2|Add1~45_combout\,
	combout => \inst2|Add1~47_combout\);

-- Location: FF_X38_Y19_N9
\inst2|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~47_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(19));

-- Location: LCCOMB_X39_Y19_N18
\inst2|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~48_combout\ = (\inst2|counter\(20) & (\inst2|Add1~46\ $ (GND))) # (!\inst2|counter\(20) & (!\inst2|Add1~46\ & VCC))
-- \inst2|Add1~49\ = CARRY((\inst2|counter\(20) & !\inst2|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(20),
	datad => VCC,
	cin => \inst2|Add1~46\,
	combout => \inst2|Add1~48_combout\,
	cout => \inst2|Add1~49\);

-- Location: LCCOMB_X39_Y19_N20
\inst2|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~61_combout\ = (\inst2|counter\(21) & (!\inst2|Add1~49\)) # (!\inst2|counter\(21) & ((\inst2|Add1~49\) # (GND)))
-- \inst2|Add1~62\ = CARRY((!\inst2|Add1~49\) # (!\inst2|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(21),
	datad => VCC,
	cin => \inst2|Add1~49\,
	combout => \inst2|Add1~61_combout\,
	cout => \inst2|Add1~62\);

-- Location: LCCOMB_X39_Y19_N26
\inst2|counter[21]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[21]~4_combout\ = (\inst2|counter[22]~3_combout\ & (\inst2|Add1~61_combout\ & ((\inst2|counter[16]~1_combout\)))) # (!\inst2|counter[22]~3_combout\ & (((\inst2|counter\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter[22]~3_combout\,
	datab => \inst2|Add1~61_combout\,
	datac => \inst2|counter\(21),
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|counter[21]~4_combout\);

-- Location: FF_X39_Y19_N27
\inst2|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(21));

-- Location: LCCOMB_X39_Y19_N22
\inst2|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~63_combout\ = \inst2|Add1~62\ $ (!\inst2|counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|counter\(22),
	cin => \inst2|Add1~62\,
	combout => \inst2|Add1~63_combout\);

-- Location: LCCOMB_X39_Y19_N24
\inst2|counter[22]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[22]~5_combout\ = (\inst2|counter[22]~3_combout\ & (\inst2|Add1~63_combout\ & ((\inst2|counter[16]~1_combout\)))) # (!\inst2|counter[22]~3_combout\ & (((\inst2|counter\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~63_combout\,
	datab => \inst2|counter[22]~3_combout\,
	datac => \inst2|counter\(22),
	datad => \inst2|counter[16]~1_combout\,
	combout => \inst2|counter[22]~5_combout\);

-- Location: FF_X39_Y19_N25
\inst2|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(22));

-- Location: LCCOMB_X39_Y19_N30
\inst2|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~3_combout\ = (!\inst2|counter\(21) & !\inst2|counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|counter\(21),
	datad => \inst2|counter\(22),
	combout => \inst2|LessThan2~3_combout\);

-- Location: LCCOMB_X39_Y20_N2
\inst2|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~3_combout\ = (\inst2|counter\(4) & ((\inst2|counter\(3)) # (\inst2|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(3),
	datac => \inst2|counter\(4),
	datad => \inst2|counter\(2),
	combout => \inst2|LessThan3~3_combout\);

-- Location: LCCOMB_X38_Y20_N0
\inst2|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~5_combout\ = ((!\inst2|counter\(7)) # (!\inst2|counter\(6))) # (!\inst2|counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(8),
	datac => \inst2|counter\(6),
	datad => \inst2|counter\(7),
	combout => \inst2|LessThan3~5_combout\);

-- Location: LCCOMB_X38_Y20_N18
\inst2|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~6_combout\ = (!\inst2|counter\(9) & (((\inst2|LessThan3~5_combout\) # (!\inst2|counter\(5))) # (!\inst2|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|counter\(5),
	datac => \inst2|counter\(9),
	datad => \inst2|LessThan3~5_combout\,
	combout => \inst2|LessThan3~6_combout\);

-- Location: LCCOMB_X37_Y20_N24
\inst2|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~7_combout\ = (!\inst2|counter\(10) & (!\inst2|counter\(11) & (\inst2|LessThan3~2_combout\ & \inst2|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(10),
	datab => \inst2|counter\(11),
	datac => \inst2|LessThan3~2_combout\,
	datad => \inst2|LessThan3~6_combout\,
	combout => \inst2|LessThan3~7_combout\);

-- Location: LCCOMB_X38_Y20_N10
\inst2|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~0_combout\ = (!\inst2|counter\(7) & (((!\inst2|counter\(5) & !\inst2|LessThan3~3_combout\)) # (!\inst2|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(6),
	datab => \inst2|counter\(7),
	datac => \inst2|counter\(5),
	datad => \inst2|LessThan3~3_combout\,
	combout => \inst2|LessThan2~0_combout\);

-- Location: LCCOMB_X38_Y20_N26
\inst2|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~1_combout\ = (!\inst2|counter\(10) & (((\inst2|LessThan2~0_combout\) # (!\inst2|counter\(8))) # (!\inst2|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(10),
	datab => \inst2|counter\(9),
	datac => \inst2|counter\(8),
	datad => \inst2|LessThan2~0_combout\,
	combout => \inst2|LessThan2~1_combout\);

-- Location: LCCOMB_X37_Y20_N4
\inst2|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~2_combout\ = (\inst2|LessThan3~2_combout\ & ((\inst2|LessThan2~1_combout\) # (!\inst2|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(11),
	datab => \inst2|LessThan3~2_combout\,
	datad => \inst2|LessThan2~1_combout\,
	combout => \inst2|LessThan2~2_combout\);

-- Location: LCCOMB_X31_Y24_N10
\inst2|output[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[0]~8_combout\ = \inst2|output\(0) $ (VCC)
-- \inst2|output[0]~9\ = CARRY(\inst2|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output\(0),
	datad => VCC,
	combout => \inst2|output[0]~8_combout\,
	cout => \inst2|output[0]~9\);

-- Location: LCCOMB_X37_Y20_N6
\inst2|output[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[7]~24_combout\ = (\us_2~input_o\ & \inst2|state.waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \us_2~input_o\,
	datad => \inst2|state.waiting~q\,
	combout => \inst2|output[7]~24_combout\);

-- Location: LCCOMB_X37_Y20_N28
\inst2|output[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[7]~26_combout\ = (!\inst2|state.waiting~q\ & (\inst2|output[7]~25_combout\ & ((!\inst2|LessThan2~2_combout\) # (!\inst2|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.waiting~q\,
	datab => \inst2|LessThan2~3_combout\,
	datac => \inst2|LessThan2~2_combout\,
	datad => \inst2|output[7]~25_combout\,
	combout => \inst2|output[7]~26_combout\);

-- Location: LCCOMB_X31_Y24_N2
\inst2|output[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[7]~27_combout\ = (!\inst2|state.activating~q\ & (\inst2|state.init~q\ & ((\inst2|output[7]~24_combout\) # (\inst2|output[7]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.activating~q\,
	datab => \inst2|state.init~q\,
	datac => \inst2|output[7]~24_combout\,
	datad => \inst2|output[7]~26_combout\,
	combout => \inst2|output[7]~27_combout\);

-- Location: FF_X31_Y24_N11
\inst2|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|output[0]~8_combout\,
	sclr => \inst2|state.waiting~q\,
	ena => \inst2|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|output\(0));

-- Location: LCCOMB_X31_Y24_N12
\inst2|output[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[1]~10_combout\ = (\inst2|output\(1) & (!\inst2|output[0]~9\)) # (!\inst2|output\(1) & ((\inst2|output[0]~9\) # (GND)))
-- \inst2|output[1]~11\ = CARRY((!\inst2|output[0]~9\) # (!\inst2|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|output\(1),
	datad => VCC,
	cin => \inst2|output[0]~9\,
	combout => \inst2|output[1]~10_combout\,
	cout => \inst2|output[1]~11\);

-- Location: FF_X31_Y24_N13
\inst2|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|output[1]~10_combout\,
	sclr => \inst2|state.waiting~q\,
	ena => \inst2|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|output\(1));

-- Location: LCCOMB_X31_Y24_N14
\inst2|output[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[2]~12_combout\ = (\inst2|output\(2) & (\inst2|output[1]~11\ $ (GND))) # (!\inst2|output\(2) & (!\inst2|output[1]~11\ & VCC))
-- \inst2|output[2]~13\ = CARRY((\inst2|output\(2) & !\inst2|output[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output\(2),
	datad => VCC,
	cin => \inst2|output[1]~11\,
	combout => \inst2|output[2]~12_combout\,
	cout => \inst2|output[2]~13\);

-- Location: FF_X31_Y24_N15
\inst2|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|output[2]~12_combout\,
	sclr => \inst2|state.waiting~q\,
	ena => \inst2|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|output\(2));

-- Location: LCCOMB_X31_Y24_N16
\inst2|output[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[3]~14_combout\ = (\inst2|output\(3) & (!\inst2|output[2]~13\)) # (!\inst2|output\(3) & ((\inst2|output[2]~13\) # (GND)))
-- \inst2|output[3]~15\ = CARRY((!\inst2|output[2]~13\) # (!\inst2|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|output\(3),
	datad => VCC,
	cin => \inst2|output[2]~13\,
	combout => \inst2|output[3]~14_combout\,
	cout => \inst2|output[3]~15\);

-- Location: FF_X31_Y24_N17
\inst2|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|output[3]~14_combout\,
	sclr => \inst2|state.waiting~q\,
	ena => \inst2|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|output\(3));

-- Location: LCCOMB_X31_Y24_N18
\inst2|output[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[4]~16_combout\ = (\inst2|output\(4) & (\inst2|output[3]~15\ $ (GND))) # (!\inst2|output\(4) & (!\inst2|output[3]~15\ & VCC))
-- \inst2|output[4]~17\ = CARRY((\inst2|output\(4) & !\inst2|output[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output\(4),
	datad => VCC,
	cin => \inst2|output[3]~15\,
	combout => \inst2|output[4]~16_combout\,
	cout => \inst2|output[4]~17\);

-- Location: FF_X31_Y24_N19
\inst2|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|output[4]~16_combout\,
	sclr => \inst2|state.waiting~q\,
	ena => \inst2|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|output\(4));

-- Location: LCCOMB_X31_Y24_N20
\inst2|output[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[5]~18_combout\ = (\inst2|output\(5) & (!\inst2|output[4]~17\)) # (!\inst2|output\(5) & ((\inst2|output[4]~17\) # (GND)))
-- \inst2|output[5]~19\ = CARRY((!\inst2|output[4]~17\) # (!\inst2|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|output\(5),
	datad => VCC,
	cin => \inst2|output[4]~17\,
	combout => \inst2|output[5]~18_combout\,
	cout => \inst2|output[5]~19\);

-- Location: FF_X31_Y24_N21
\inst2|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|output[5]~18_combout\,
	sclr => \inst2|state.waiting~q\,
	ena => \inst2|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|output\(5));

-- Location: LCCOMB_X31_Y24_N22
\inst2|output[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[6]~20_combout\ = (\inst2|output\(6) & (\inst2|output[5]~19\ $ (GND))) # (!\inst2|output\(6) & (!\inst2|output[5]~19\ & VCC))
-- \inst2|output[6]~21\ = CARRY((\inst2|output\(6) & !\inst2|output[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|output\(6),
	datad => VCC,
	cin => \inst2|output[5]~19\,
	combout => \inst2|output[6]~20_combout\,
	cout => \inst2|output[6]~21\);

-- Location: FF_X31_Y24_N23
\inst2|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|output[6]~20_combout\,
	sclr => \inst2|state.waiting~q\,
	ena => \inst2|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|output\(6));

-- Location: LCCOMB_X31_Y24_N24
\inst2|output[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[7]~22_combout\ = \inst2|output[6]~21\ $ (\inst2|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|output\(7),
	cin => \inst2|output[6]~21\,
	combout => \inst2|output[7]~22_combout\);

-- Location: FF_X31_Y24_N25
\inst2|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|output[7]~22_combout\,
	sclr => \inst2|state.waiting~q\,
	ena => \inst2|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|output\(7));

-- Location: LCCOMB_X31_Y24_N6
\inst2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~0_combout\ = ((!\inst2|output\(3) & ((!\inst2|output\(2)) # (!\inst2|output\(1))))) # (!\inst2|output\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output\(1),
	datab => \inst2|output\(4),
	datac => \inst2|output\(2),
	datad => \inst2|output\(3),
	combout => \inst2|process_0~0_combout\);

-- Location: LCCOMB_X31_Y24_N8
\inst2|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~1_combout\ = ((!\inst2|output\(6) & (!\inst2|output\(5) & \inst2|process_0~0_combout\))) # (!\inst2|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output\(6),
	datab => \inst2|output\(5),
	datac => \inst2|output\(7),
	datad => \inst2|process_0~0_combout\,
	combout => \inst2|process_0~1_combout\);

-- Location: LCCOMB_X37_Y20_N10
\inst2|output[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[7]~25_combout\ = (\inst2|state.scanning~q\ & (\us_2~input_o\ & \inst2|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.scanning~q\,
	datac => \us_2~input_o\,
	datad => \inst2|process_0~1_combout\,
	combout => \inst2|output[7]~25_combout\);

-- Location: LCCOMB_X37_Y20_N0
\inst2|counter[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[16]~0_combout\ = (\inst2|state.scanning~q\ & (((\inst2|LessThan2~2_combout\ & \inst2|output[7]~25_combout\)))) # (!\inst2|state.scanning~q\ & ((\inst2|LessThan3~7_combout\) # ((\inst2|LessThan2~2_combout\ & \inst2|output[7]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.scanning~q\,
	datab => \inst2|LessThan3~7_combout\,
	datac => \inst2|LessThan2~2_combout\,
	datad => \inst2|output[7]~25_combout\,
	combout => \inst2|counter[16]~0_combout\);

-- Location: LCCOMB_X37_Y20_N30
\inst2|counter[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[16]~1_combout\ = (\inst2|state.activating~q\) # ((!\inst2|state.waiting~q\ & (\inst2|LessThan2~3_combout\ & \inst2|counter[16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.waiting~q\,
	datab => \inst2|LessThan2~3_combout\,
	datac => \inst2|state.activating~q\,
	datad => \inst2|counter[16]~0_combout\,
	combout => \inst2|counter[16]~1_combout\);

-- Location: LCCOMB_X38_Y19_N16
\inst2|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~50_combout\ = (\inst2|counter[16]~1_combout\ & \inst2|Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|counter[16]~1_combout\,
	datad => \inst2|Add1~48_combout\,
	combout => \inst2|Add1~50_combout\);

-- Location: FF_X38_Y19_N17
\inst2|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|Add1~50_combout\,
	ena => \inst2|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(20));

-- Location: LCCOMB_X38_Y19_N30
\inst2|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~1_combout\ = (!\inst2|counter\(18) & (!\inst2|counter\(19) & (!\inst2|counter\(16) & !\inst2|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(18),
	datab => \inst2|counter\(19),
	datac => \inst2|counter\(16),
	datad => \inst2|counter\(17),
	combout => \inst2|LessThan3~1_combout\);

-- Location: LCCOMB_X38_Y19_N28
\inst2|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~0_combout\ = (!\inst2|counter\(15) & (!\inst2|counter\(12) & (!\inst2|counter\(13) & !\inst2|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(15),
	datab => \inst2|counter\(12),
	datac => \inst2|counter\(13),
	datad => \inst2|counter\(14),
	combout => \inst2|LessThan3~0_combout\);

-- Location: LCCOMB_X38_Y19_N18
\inst2|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~2_combout\ = (!\inst2|counter\(20) & (\inst2|LessThan3~1_combout\ & \inst2|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(20),
	datac => \inst2|LessThan3~1_combout\,
	datad => \inst2|LessThan3~0_combout\,
	combout => \inst2|LessThan3~2_combout\);

-- Location: LCCOMB_X38_Y20_N28
\inst2|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~4_combout\ = (!\inst2|counter\(11) & !\inst2|counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|counter\(11),
	datad => \inst2|counter\(10),
	combout => \inst2|LessThan3~4_combout\);

-- Location: LCCOMB_X38_Y20_N22
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = ((!\inst2|counter\(5) & ((!\inst2|counter\(4)) # (!\inst2|counter\(3))))) # (!\inst2|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(6),
	datab => \inst2|counter\(5),
	datac => \inst2|counter\(3),
	datad => \inst2|counter\(4),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y20_N16
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = ((\inst2|LessThan0~0_combout\ & (!\inst2|counter\(8) & !\inst2|counter\(7)))) # (!\inst2|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~0_combout\,
	datab => \inst2|counter\(8),
	datac => \inst2|counter\(9),
	datad => \inst2|counter\(7),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y20_N6
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (((!\inst2|LessThan0~1_combout\) # (!\inst2|LessThan2~3_combout\)) # (!\inst2|LessThan3~4_combout\)) # (!\inst2|LessThan3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~2_combout\,
	datab => \inst2|LessThan3~4_combout\,
	datac => \inst2|LessThan2~3_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y20_N22
\inst2|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~12_combout\ = (\inst2|state.activating~q\ & !\inst2|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.activating~q\,
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|state~12_combout\);

-- Location: LCCOMB_X37_Y20_N14
\inst2|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~13_combout\ = (\inst2|LessThan2~3_combout\ & (\inst2|LessThan3~6_combout\ & (\inst2|LessThan3~2_combout\ & \inst2|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan2~3_combout\,
	datab => \inst2|LessThan3~6_combout\,
	datac => \inst2|LessThan3~2_combout\,
	datad => \inst2|LessThan3~4_combout\,
	combout => \inst2|state~13_combout\);

-- Location: LCCOMB_X37_Y20_N2
\inst2|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~14_combout\ = (\inst2|output[7]~25_combout\) # ((!\inst2|state.scanning~q\ & (\inst2|state.final~q\ & \inst2|state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.scanning~q\,
	datab => \inst2|state.final~q\,
	datac => \inst2|state~13_combout\,
	datad => \inst2|output[7]~25_combout\,
	combout => \inst2|state~14_combout\);

-- Location: LCCOMB_X37_Y20_N8
\inst2|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~15_combout\ = (!\inst2|state.activating~q\ & ((\inst2|state.waiting~q\ & (!\us_2~input_o\)) # (!\inst2|state.waiting~q\ & ((\inst2|state~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.waiting~q\,
	datab => \inst2|state.activating~q\,
	datac => \us_2~input_o\,
	datad => \inst2|state~14_combout\,
	combout => \inst2|state~15_combout\);

-- Location: LCCOMB_X37_Y20_N16
\inst2|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~16_combout\ = (\inst2|state.init~q\ & (!\inst2|state~12_combout\ & (!\inst2|state~15_combout\))) # (!\inst2|state.init~q\ & (((\inst|enable_2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state~12_combout\,
	datab => \inst2|state.init~q\,
	datac => \inst2|state~15_combout\,
	datad => \inst|enable_2~combout\,
	combout => \inst2|state~16_combout\);

-- Location: FF_X37_Y20_N27
\inst2|state.activating\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state.activating~0_combout\,
	ena => \inst2|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.activating~q\);

-- Location: FF_X37_Y20_N5
\inst2|state.waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|state.activating~q\,
	sload => VCC,
	ena => \inst2|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.waiting~q\);

-- Location: LCCOMB_X37_Y20_N18
\inst2|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~18_combout\ = (!\inst2|state.waiting~q\ & (\inst2|state.init~q\ & (!\inst2|state.final~q\ & !\inst2|state.activating~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.waiting~q\,
	datab => \inst2|state.init~q\,
	datac => \inst2|state.final~q\,
	datad => \inst2|state.activating~q\,
	combout => \inst2|state~18_combout\);

-- Location: FF_X37_Y20_N19
\inst2|state.final\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~18_combout\,
	ena => \inst2|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.final~q\);

-- Location: LCCOMB_X35_Y20_N12
\inst|counter1[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[0]~20_combout\ = \inst|counter1\(0) $ (VCC)
-- \inst|counter1[0]~21\ = CARRY(\inst|counter1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(0),
	datad => VCC,
	combout => \inst|counter1[0]~20_combout\,
	cout => \inst|counter1[0]~21\);

-- Location: FF_X35_Y20_N13
\inst|counter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[0]~20_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(0));

-- Location: LCCOMB_X35_Y20_N14
\inst|counter1[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[1]~22_combout\ = (\inst|counter1\(1) & (!\inst|counter1[0]~21\)) # (!\inst|counter1\(1) & ((\inst|counter1[0]~21\) # (GND)))
-- \inst|counter1[1]~23\ = CARRY((!\inst|counter1[0]~21\) # (!\inst|counter1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter1\(1),
	datad => VCC,
	cin => \inst|counter1[0]~21\,
	combout => \inst|counter1[1]~22_combout\,
	cout => \inst|counter1[1]~23\);

-- Location: FF_X35_Y20_N15
\inst|counter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[1]~22_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(1));

-- Location: LCCOMB_X35_Y20_N16
\inst|counter1[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[2]~24_combout\ = (\inst|counter1\(2) & (\inst|counter1[1]~23\ $ (GND))) # (!\inst|counter1\(2) & (!\inst|counter1[1]~23\ & VCC))
-- \inst|counter1[2]~25\ = CARRY((\inst|counter1\(2) & !\inst|counter1[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter1\(2),
	datad => VCC,
	cin => \inst|counter1[1]~23\,
	combout => \inst|counter1[2]~24_combout\,
	cout => \inst|counter1[2]~25\);

-- Location: FF_X35_Y20_N17
\inst|counter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[2]~24_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(2));

-- Location: LCCOMB_X35_Y20_N18
\inst|counter1[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[3]~26_combout\ = (\inst|counter1\(3) & (!\inst|counter1[2]~25\)) # (!\inst|counter1\(3) & ((\inst|counter1[2]~25\) # (GND)))
-- \inst|counter1[3]~27\ = CARRY((!\inst|counter1[2]~25\) # (!\inst|counter1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter1\(3),
	datad => VCC,
	cin => \inst|counter1[2]~25\,
	combout => \inst|counter1[3]~26_combout\,
	cout => \inst|counter1[3]~27\);

-- Location: FF_X35_Y20_N19
\inst|counter1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[3]~26_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(3));

-- Location: LCCOMB_X35_Y20_N20
\inst|counter1[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[4]~28_combout\ = (\inst|counter1\(4) & (\inst|counter1[3]~27\ $ (GND))) # (!\inst|counter1\(4) & (!\inst|counter1[3]~27\ & VCC))
-- \inst|counter1[4]~29\ = CARRY((\inst|counter1\(4) & !\inst|counter1[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter1\(4),
	datad => VCC,
	cin => \inst|counter1[3]~27\,
	combout => \inst|counter1[4]~28_combout\,
	cout => \inst|counter1[4]~29\);

-- Location: FF_X35_Y20_N21
\inst|counter1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[4]~28_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(4));

-- Location: LCCOMB_X35_Y20_N22
\inst|counter1[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[5]~30_combout\ = (\inst|counter1\(5) & (!\inst|counter1[4]~29\)) # (!\inst|counter1\(5) & ((\inst|counter1[4]~29\) # (GND)))
-- \inst|counter1[5]~31\ = CARRY((!\inst|counter1[4]~29\) # (!\inst|counter1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(5),
	datad => VCC,
	cin => \inst|counter1[4]~29\,
	combout => \inst|counter1[5]~30_combout\,
	cout => \inst|counter1[5]~31\);

-- Location: FF_X35_Y20_N23
\inst|counter1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[5]~30_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(5));

-- Location: LCCOMB_X35_Y20_N24
\inst|counter1[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[6]~32_combout\ = (\inst|counter1\(6) & (\inst|counter1[5]~31\ $ (GND))) # (!\inst|counter1\(6) & (!\inst|counter1[5]~31\ & VCC))
-- \inst|counter1[6]~33\ = CARRY((\inst|counter1\(6) & !\inst|counter1[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter1\(6),
	datad => VCC,
	cin => \inst|counter1[5]~31\,
	combout => \inst|counter1[6]~32_combout\,
	cout => \inst|counter1[6]~33\);

-- Location: FF_X35_Y20_N25
\inst|counter1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[6]~32_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(6));

-- Location: LCCOMB_X35_Y20_N26
\inst|counter1[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[7]~34_combout\ = (\inst|counter1\(7) & (!\inst|counter1[6]~33\)) # (!\inst|counter1\(7) & ((\inst|counter1[6]~33\) # (GND)))
-- \inst|counter1[7]~35\ = CARRY((!\inst|counter1[6]~33\) # (!\inst|counter1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(7),
	datad => VCC,
	cin => \inst|counter1[6]~33\,
	combout => \inst|counter1[7]~34_combout\,
	cout => \inst|counter1[7]~35\);

-- Location: FF_X35_Y20_N27
\inst|counter1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[7]~34_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(7));

-- Location: LCCOMB_X35_Y20_N10
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|counter1\(6) & (\inst|counter1\(3) & (!\inst|counter1\(7) & \inst|counter1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(6),
	datab => \inst|counter1\(3),
	datac => \inst|counter1\(7),
	datad => \inst|counter1\(2),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X35_Y20_N28
\inst|counter1[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[8]~36_combout\ = (\inst|counter1\(8) & (\inst|counter1[7]~35\ $ (GND))) # (!\inst|counter1\(8) & (!\inst|counter1[7]~35\ & VCC))
-- \inst|counter1[8]~37\ = CARRY((\inst|counter1\(8) & !\inst|counter1[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter1\(8),
	datad => VCC,
	cin => \inst|counter1[7]~35\,
	combout => \inst|counter1[8]~36_combout\,
	cout => \inst|counter1[8]~37\);

-- Location: FF_X35_Y20_N29
\inst|counter1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[8]~36_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(8));

-- Location: LCCOMB_X35_Y20_N30
\inst|counter1[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[9]~38_combout\ = (\inst|counter1\(9) & (!\inst|counter1[8]~37\)) # (!\inst|counter1\(9) & ((\inst|counter1[8]~37\) # (GND)))
-- \inst|counter1[9]~39\ = CARRY((!\inst|counter1[8]~37\) # (!\inst|counter1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(9),
	datad => VCC,
	cin => \inst|counter1[8]~37\,
	combout => \inst|counter1[9]~38_combout\,
	cout => \inst|counter1[9]~39\);

-- Location: FF_X35_Y20_N31
\inst|counter1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[9]~38_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(9));

-- Location: LCCOMB_X35_Y19_N0
\inst|counter1[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[10]~40_combout\ = (\inst|counter1\(10) & (\inst|counter1[9]~39\ $ (GND))) # (!\inst|counter1\(10) & (!\inst|counter1[9]~39\ & VCC))
-- \inst|counter1[10]~41\ = CARRY((\inst|counter1\(10) & !\inst|counter1[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter1\(10),
	datad => VCC,
	cin => \inst|counter1[9]~39\,
	combout => \inst|counter1[10]~40_combout\,
	cout => \inst|counter1[10]~41\);

-- Location: FF_X35_Y19_N1
\inst|counter1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[10]~40_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(10));

-- Location: LCCOMB_X35_Y19_N2
\inst|counter1[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[11]~42_combout\ = (\inst|counter1\(11) & (!\inst|counter1[10]~41\)) # (!\inst|counter1\(11) & ((\inst|counter1[10]~41\) # (GND)))
-- \inst|counter1[11]~43\ = CARRY((!\inst|counter1[10]~41\) # (!\inst|counter1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter1\(11),
	datad => VCC,
	cin => \inst|counter1[10]~41\,
	combout => \inst|counter1[11]~42_combout\,
	cout => \inst|counter1[11]~43\);

-- Location: FF_X35_Y19_N3
\inst|counter1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[11]~42_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(11));

-- Location: LCCOMB_X35_Y19_N4
\inst|counter1[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[12]~44_combout\ = (\inst|counter1\(12) & (\inst|counter1[11]~43\ $ (GND))) # (!\inst|counter1\(12) & (!\inst|counter1[11]~43\ & VCC))
-- \inst|counter1[12]~45\ = CARRY((\inst|counter1\(12) & !\inst|counter1[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter1\(12),
	datad => VCC,
	cin => \inst|counter1[11]~43\,
	combout => \inst|counter1[12]~44_combout\,
	cout => \inst|counter1[12]~45\);

-- Location: FF_X35_Y19_N5
\inst|counter1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[12]~44_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(12));

-- Location: LCCOMB_X35_Y19_N6
\inst|counter1[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[13]~46_combout\ = (\inst|counter1\(13) & (!\inst|counter1[12]~45\)) # (!\inst|counter1\(13) & ((\inst|counter1[12]~45\) # (GND)))
-- \inst|counter1[13]~47\ = CARRY((!\inst|counter1[12]~45\) # (!\inst|counter1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(13),
	datad => VCC,
	cin => \inst|counter1[12]~45\,
	combout => \inst|counter1[13]~46_combout\,
	cout => \inst|counter1[13]~47\);

-- Location: FF_X35_Y19_N7
\inst|counter1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[13]~46_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(13));

-- Location: LCCOMB_X35_Y19_N8
\inst|counter1[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[14]~48_combout\ = (\inst|counter1\(14) & (\inst|counter1[13]~47\ $ (GND))) # (!\inst|counter1\(14) & (!\inst|counter1[13]~47\ & VCC))
-- \inst|counter1[14]~49\ = CARRY((\inst|counter1\(14) & !\inst|counter1[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter1\(14),
	datad => VCC,
	cin => \inst|counter1[13]~47\,
	combout => \inst|counter1[14]~48_combout\,
	cout => \inst|counter1[14]~49\);

-- Location: FF_X35_Y19_N9
\inst|counter1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[14]~48_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(14));

-- Location: LCCOMB_X35_Y19_N10
\inst|counter1[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[15]~50_combout\ = (\inst|counter1\(15) & (!\inst|counter1[14]~49\)) # (!\inst|counter1\(15) & ((\inst|counter1[14]~49\) # (GND)))
-- \inst|counter1[15]~51\ = CARRY((!\inst|counter1[14]~49\) # (!\inst|counter1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(15),
	datad => VCC,
	cin => \inst|counter1[14]~49\,
	combout => \inst|counter1[15]~50_combout\,
	cout => \inst|counter1[15]~51\);

-- Location: FF_X35_Y19_N11
\inst|counter1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[15]~50_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(15));

-- Location: LCCOMB_X35_Y19_N28
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|counter1\(13) & (!\inst|counter1\(11) & (!\inst|counter1\(12) & !\inst|counter1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(13),
	datab => \inst|counter1\(11),
	datac => \inst|counter1\(12),
	datad => \inst|counter1\(10),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y19_N22
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|counter1\(15) & \inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(15),
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y20_N8
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|counter1\(5) & (\inst|counter1\(4) & (\inst|counter1\(1) & \inst|counter1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(5),
	datab => \inst|counter1\(4),
	datac => \inst|counter1\(1),
	datad => \inst|counter1\(0),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X35_Y19_N12
\inst|counter1[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[16]~52_combout\ = (\inst|counter1\(16) & (\inst|counter1[15]~51\ $ (GND))) # (!\inst|counter1\(16) & (!\inst|counter1[15]~51\ & VCC))
-- \inst|counter1[16]~53\ = CARRY((\inst|counter1\(16) & !\inst|counter1[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(16),
	datad => VCC,
	cin => \inst|counter1[15]~51\,
	combout => \inst|counter1[16]~52_combout\,
	cout => \inst|counter1[16]~53\);

-- Location: FF_X35_Y19_N13
\inst|counter1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[16]~52_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(16));

-- Location: LCCOMB_X35_Y19_N14
\inst|counter1[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[17]~54_combout\ = (\inst|counter1\(17) & (!\inst|counter1[16]~53\)) # (!\inst|counter1\(17) & ((\inst|counter1[16]~53\) # (GND)))
-- \inst|counter1[17]~55\ = CARRY((!\inst|counter1[16]~53\) # (!\inst|counter1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter1\(17),
	datad => VCC,
	cin => \inst|counter1[16]~53\,
	combout => \inst|counter1[17]~54_combout\,
	cout => \inst|counter1[17]~55\);

-- Location: FF_X35_Y19_N15
\inst|counter1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[17]~54_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(17));

-- Location: LCCOMB_X35_Y19_N16
\inst|counter1[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[18]~56_combout\ = (\inst|counter1\(18) & (\inst|counter1[17]~55\ $ (GND))) # (!\inst|counter1\(18) & (!\inst|counter1[17]~55\ & VCC))
-- \inst|counter1[18]~57\ = CARRY((\inst|counter1\(18) & !\inst|counter1[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter1\(18),
	datad => VCC,
	cin => \inst|counter1[17]~55\,
	combout => \inst|counter1[18]~56_combout\,
	cout => \inst|counter1[18]~57\);

-- Location: FF_X35_Y19_N17
\inst|counter1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[18]~56_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(18));

-- Location: LCCOMB_X35_Y19_N18
\inst|counter1[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter1[19]~58_combout\ = \inst|counter1[18]~57\ $ (\inst|counter1\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter1\(19),
	cin => \inst|counter1[18]~57\,
	combout => \inst|counter1[19]~58_combout\);

-- Location: FF_X35_Y19_N19
\inst|counter1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter1[19]~58_combout\,
	sclr => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter1\(19));

-- Location: LCCOMB_X35_Y20_N4
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|counter1\(9) & (!\inst|counter1\(8) & (\inst|counter1\(16) & \inst|counter1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(9),
	datab => \inst|counter1\(8),
	datac => \inst|counter1\(16),
	datad => \inst|counter1\(14),
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X36_Y19_N2
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|counter1\(17) & (\inst|counter1\(19) & (\inst|counter1\(18) & \inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(17),
	datab => \inst|counter1\(19),
	datac => \inst|counter1\(18),
	datad => \inst|Equal0~4_combout\,
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X36_Y19_N18
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (\inst|Equal0~3_combout\ & (\inst|Equal0~1_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|Equal0~6_combout\);

-- Location: FF_X36_Y19_N29
\inst|state.wait2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst|process_0~8_combout\,
	sload => VCC,
	ena => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.wait2~q\);

-- Location: LCCOMB_X36_Y19_N20
\inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~6_combout\ = (\inst|Equal0~6_combout\ & \inst|state.wait2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~6_combout\,
	datad => \inst|state.wait2~q\,
	combout => \inst|process_0~6_combout\);

-- Location: FF_X36_Y19_N21
\inst|state.controller3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst|process_0~6_combout\,
	ena => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.controller3~q\);

-- Location: LCCOMB_X36_Y19_N16
\inst|enable_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable_1~0_combout\ = (\inst|state.controller2~q\) # (\inst|state.controller3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.controller2~q\,
	datad => \inst|state.controller3~q\,
	combout => \inst|enable_1~0_combout\);

-- Location: LCCOMB_X37_Y19_N16
\inst|enable_1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable_1~combout\ = ((\inst|enable_1~0_combout\ & \inst|enable_1~combout\)) # (!\inst|state.controller1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable_1~0_combout\,
	datab => \inst|state.controller1~q\,
	datad => \inst|enable_1~combout\,
	combout => \inst|enable_1~combout\);

-- Location: LCCOMB_X44_Y24_N10
\inst7|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~0_combout\ = \inst7|counter\(0) $ (VCC)
-- \inst7|Add1~1\ = CARRY(\inst7|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(0),
	datad => VCC,
	combout => \inst7|Add1~0_combout\,
	cout => \inst7|Add1~1\);

-- Location: LCCOMB_X40_Y24_N20
\inst7|state.activating~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state.activating~0_combout\ = !\inst7|state.init~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|state.init~q\,
	combout => \inst7|state.activating~0_combout\);

-- Location: LCCOMB_X43_Y24_N26
\inst7|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~0_combout\ = ((!\inst7|counter\(5) & ((!\inst7|counter\(4)) # (!\inst7|counter\(3))))) # (!\inst7|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(3),
	datab => \inst7|counter\(4),
	datac => \inst7|counter\(5),
	datad => \inst7|counter\(6),
	combout => \inst7|LessThan0~0_combout\);

-- Location: LCCOMB_X43_Y24_N12
\inst7|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~1_combout\ = ((!\inst7|counter\(7) & (\inst7|LessThan0~0_combout\ & !\inst7|counter\(8)))) # (!\inst7|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(7),
	datab => \inst7|counter\(9),
	datac => \inst7|LessThan0~0_combout\,
	datad => \inst7|counter\(8),
	combout => \inst7|LessThan0~1_combout\);

-- Location: LCCOMB_X43_Y24_N20
\inst7|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan3~4_combout\ = (!\inst7|counter\(11) & !\inst7|counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|counter\(11),
	datad => \inst7|counter\(10),
	combout => \inst7|LessThan3~4_combout\);

-- Location: LCCOMB_X44_Y23_N18
\inst7|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~48_combout\ = (\inst7|counter\(20) & (\inst7|Add1~46\ $ (GND))) # (!\inst7|counter\(20) & (!\inst7|Add1~46\ & VCC))
-- \inst7|Add1~49\ = CARRY((\inst7|counter\(20) & !\inst7|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(20),
	datad => VCC,
	cin => \inst7|Add1~46\,
	combout => \inst7|Add1~48_combout\,
	cout => \inst7|Add1~49\);

-- Location: LCCOMB_X44_Y23_N20
\inst7|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~61_combout\ = (\inst7|counter\(21) & (!\inst7|Add1~49\)) # (!\inst7|counter\(21) & ((\inst7|Add1~49\) # (GND)))
-- \inst7|Add1~62\ = CARRY((!\inst7|Add1~49\) # (!\inst7|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(21),
	datad => VCC,
	cin => \inst7|Add1~49\,
	combout => \inst7|Add1~61_combout\,
	cout => \inst7|Add1~62\);

-- Location: FF_X40_Y24_N29
\inst7|state.waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst7|state.activating~q\,
	sload => VCC,
	ena => \inst7|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|state.waiting~q\);

-- Location: FF_X40_Y24_N13
\inst7|state.scanning\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst7|state.waiting~q\,
	sload => VCC,
	ena => \inst7|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|state.scanning~q\);

-- Location: IOIBUF_X53_Y20_N15
\us_1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => us_1,
	o => \us_1~input_o\);

-- Location: LCCOMB_X40_Y24_N4
\inst7|counter[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter[22]~2_combout\ = (\inst7|state.waiting~q\ & (((!\us_1~input_o\)))) # (!\inst7|state.waiting~q\ & (!\inst7|state.scanning~q\ & (!\inst7|state.final~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.scanning~q\,
	datab => \inst7|state.waiting~q\,
	datac => \inst7|state.final~q\,
	datad => \us_1~input_o\,
	combout => \inst7|counter[22]~2_combout\);

-- Location: LCCOMB_X40_Y24_N30
\inst7|counter[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter[22]~3_combout\ = (\inst7|state.init~q\ & ((\inst7|state.activating~q\ & ((!\inst7|LessThan0~2_combout\))) # (!\inst7|state.activating~q\ & (!\inst7|counter[22]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter[22]~2_combout\,
	datab => \inst7|state.activating~q\,
	datac => \inst7|state.init~q\,
	datad => \inst7|LessThan0~2_combout\,
	combout => \inst7|counter[22]~3_combout\);

-- Location: LCCOMB_X44_Y23_N26
\inst7|counter[21]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter[21]~4_combout\ = (\inst7|counter[22]~3_combout\ & (\inst7|Add1~61_combout\ & ((\inst7|counter[12]~1_combout\)))) # (!\inst7|counter[22]~3_combout\ & (((\inst7|counter\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~61_combout\,
	datab => \inst7|counter[22]~3_combout\,
	datac => \inst7|counter\(21),
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|counter[21]~4_combout\);

-- Location: FF_X44_Y23_N27
\inst7|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|counter[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(21));

-- Location: LCCOMB_X44_Y23_N22
\inst7|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~63_combout\ = \inst7|Add1~62\ $ (!\inst7|counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|counter\(22),
	cin => \inst7|Add1~62\,
	combout => \inst7|Add1~63_combout\);

-- Location: LCCOMB_X44_Y23_N24
\inst7|counter[22]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter[22]~5_combout\ = (\inst7|counter[22]~3_combout\ & (\inst7|Add1~63_combout\ & ((\inst7|counter[12]~1_combout\)))) # (!\inst7|counter[22]~3_combout\ & (((\inst7|counter\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~63_combout\,
	datab => \inst7|counter[22]~3_combout\,
	datac => \inst7|counter\(22),
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|counter[22]~5_combout\);

-- Location: FF_X44_Y23_N25
\inst7|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|counter[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(22));

-- Location: LCCOMB_X44_Y23_N30
\inst7|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~3_combout\ = (!\inst7|counter\(21) & !\inst7|counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|counter\(21),
	datad => \inst7|counter\(22),
	combout => \inst7|LessThan2~3_combout\);

-- Location: LCCOMB_X43_Y24_N10
\inst7|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~2_combout\ = (((!\inst7|LessThan3~2_combout\) # (!\inst7|LessThan2~3_combout\)) # (!\inst7|LessThan3~4_combout\)) # (!\inst7|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~1_combout\,
	datab => \inst7|LessThan3~4_combout\,
	datac => \inst7|LessThan2~3_combout\,
	datad => \inst7|LessThan3~2_combout\,
	combout => \inst7|LessThan0~2_combout\);

-- Location: LCCOMB_X40_Y24_N14
\inst7|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~12_combout\ = (\inst7|state.activating~q\ & !\inst7|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|state.activating~q\,
	datad => \inst7|LessThan0~2_combout\,
	combout => \inst7|state~12_combout\);

-- Location: LCCOMB_X32_Y24_N2
\inst7|output[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output[0]~8_combout\ = \inst7|output\(0) $ (VCC)
-- \inst7|output[0]~9\ = CARRY(\inst7|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|output\(0),
	datad => VCC,
	combout => \inst7|output[0]~8_combout\,
	cout => \inst7|output[0]~9\);

-- Location: LCCOMB_X40_Y24_N12
\inst7|output[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output[7]~24_combout\ = (\inst7|state.waiting~q\ & \us_1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|state.waiting~q\,
	datad => \us_1~input_o\,
	combout => \inst7|output[7]~24_combout\);

-- Location: LCCOMB_X43_Y24_N14
\inst7|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan3~3_combout\ = (\inst7|counter\(4) & ((\inst7|counter\(3)) # (\inst7|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(4),
	datac => \inst7|counter\(3),
	datad => \inst7|counter\(2),
	combout => \inst7|LessThan3~3_combout\);

-- Location: LCCOMB_X43_Y24_N30
\inst7|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~0_combout\ = (!\inst7|counter\(7) & (((!\inst7|counter\(5) & !\inst7|LessThan3~3_combout\)) # (!\inst7|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(7),
	datab => \inst7|counter\(5),
	datac => \inst7|LessThan3~3_combout\,
	datad => \inst7|counter\(6),
	combout => \inst7|LessThan2~0_combout\);

-- Location: LCCOMB_X43_Y24_N24
\inst7|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~1_combout\ = (!\inst7|counter\(10) & (((\inst7|LessThan2~0_combout\) # (!\inst7|counter\(9))) # (!\inst7|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(8),
	datab => \inst7|counter\(9),
	datac => \inst7|LessThan2~0_combout\,
	datad => \inst7|counter\(10),
	combout => \inst7|LessThan2~1_combout\);

-- Location: LCCOMB_X43_Y24_N18
\inst7|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~2_combout\ = (\inst7|LessThan3~2_combout\ & ((\inst7|LessThan2~1_combout\) # (!\inst7|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(11),
	datac => \inst7|LessThan3~2_combout\,
	datad => \inst7|LessThan2~1_combout\,
	combout => \inst7|LessThan2~2_combout\);

-- Location: LCCOMB_X40_Y24_N28
\inst7|output[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output[7]~26_combout\ = (\inst7|output[7]~25_combout\ & (!\inst7|state.waiting~q\ & ((!\inst7|LessThan2~2_combout\) # (!\inst7|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output[7]~25_combout\,
	datab => \inst7|LessThan2~3_combout\,
	datac => \inst7|state.waiting~q\,
	datad => \inst7|LessThan2~2_combout\,
	combout => \inst7|output[7]~26_combout\);

-- Location: LCCOMB_X32_Y24_N30
\inst7|output[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output[7]~27_combout\ = (\inst7|state.init~q\ & (!\inst7|state.activating~q\ & ((\inst7|output[7]~24_combout\) # (\inst7|output[7]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.init~q\,
	datab => \inst7|state.activating~q\,
	datac => \inst7|output[7]~24_combout\,
	datad => \inst7|output[7]~26_combout\,
	combout => \inst7|output[7]~27_combout\);

-- Location: FF_X32_Y24_N3
\inst7|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|output[0]~8_combout\,
	sclr => \inst7|state.waiting~q\,
	ena => \inst7|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|output\(0));

-- Location: LCCOMB_X32_Y24_N4
\inst7|output[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output[1]~10_combout\ = (\inst7|output\(1) & (!\inst7|output[0]~9\)) # (!\inst7|output\(1) & ((\inst7|output[0]~9\) # (GND)))
-- \inst7|output[1]~11\ = CARRY((!\inst7|output[0]~9\) # (!\inst7|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|output\(1),
	datad => VCC,
	cin => \inst7|output[0]~9\,
	combout => \inst7|output[1]~10_combout\,
	cout => \inst7|output[1]~11\);

-- Location: FF_X32_Y24_N5
\inst7|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|output[1]~10_combout\,
	sclr => \inst7|state.waiting~q\,
	ena => \inst7|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|output\(1));

-- Location: LCCOMB_X32_Y24_N6
\inst7|output[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output[2]~12_combout\ = (\inst7|output\(2) & (\inst7|output[1]~11\ $ (GND))) # (!\inst7|output\(2) & (!\inst7|output[1]~11\ & VCC))
-- \inst7|output[2]~13\ = CARRY((\inst7|output\(2) & !\inst7|output[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output\(2),
	datad => VCC,
	cin => \inst7|output[1]~11\,
	combout => \inst7|output[2]~12_combout\,
	cout => \inst7|output[2]~13\);

-- Location: FF_X32_Y24_N7
\inst7|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|output[2]~12_combout\,
	sclr => \inst7|state.waiting~q\,
	ena => \inst7|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|output\(2));

-- Location: LCCOMB_X32_Y24_N8
\inst7|output[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output[3]~14_combout\ = (\inst7|output\(3) & (!\inst7|output[2]~13\)) # (!\inst7|output\(3) & ((\inst7|output[2]~13\) # (GND)))
-- \inst7|output[3]~15\ = CARRY((!\inst7|output[2]~13\) # (!\inst7|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|output\(3),
	datad => VCC,
	cin => \inst7|output[2]~13\,
	combout => \inst7|output[3]~14_combout\,
	cout => \inst7|output[3]~15\);

-- Location: FF_X32_Y24_N9
\inst7|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|output[3]~14_combout\,
	sclr => \inst7|state.waiting~q\,
	ena => \inst7|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|output\(3));

-- Location: LCCOMB_X32_Y24_N10
\inst7|output[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output[4]~16_combout\ = (\inst7|output\(4) & (\inst7|output[3]~15\ $ (GND))) # (!\inst7|output\(4) & (!\inst7|output[3]~15\ & VCC))
-- \inst7|output[4]~17\ = CARRY((\inst7|output\(4) & !\inst7|output[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output\(4),
	datad => VCC,
	cin => \inst7|output[3]~15\,
	combout => \inst7|output[4]~16_combout\,
	cout => \inst7|output[4]~17\);

-- Location: FF_X32_Y24_N11
\inst7|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|output[4]~16_combout\,
	sclr => \inst7|state.waiting~q\,
	ena => \inst7|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|output\(4));

-- Location: LCCOMB_X32_Y24_N12
\inst7|output[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output[5]~18_combout\ = (\inst7|output\(5) & (!\inst7|output[4]~17\)) # (!\inst7|output\(5) & ((\inst7|output[4]~17\) # (GND)))
-- \inst7|output[5]~19\ = CARRY((!\inst7|output[4]~17\) # (!\inst7|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output\(5),
	datad => VCC,
	cin => \inst7|output[4]~17\,
	combout => \inst7|output[5]~18_combout\,
	cout => \inst7|output[5]~19\);

-- Location: FF_X32_Y24_N13
\inst7|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|output[5]~18_combout\,
	sclr => \inst7|state.waiting~q\,
	ena => \inst7|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|output\(5));

-- Location: LCCOMB_X32_Y24_N14
\inst7|output[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output[6]~20_combout\ = (\inst7|output\(6) & (\inst7|output[5]~19\ $ (GND))) # (!\inst7|output\(6) & (!\inst7|output[5]~19\ & VCC))
-- \inst7|output[6]~21\ = CARRY((\inst7|output\(6) & !\inst7|output[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|output\(6),
	datad => VCC,
	cin => \inst7|output[5]~19\,
	combout => \inst7|output[6]~20_combout\,
	cout => \inst7|output[6]~21\);

-- Location: FF_X32_Y24_N15
\inst7|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|output[6]~20_combout\,
	sclr => \inst7|state.waiting~q\,
	ena => \inst7|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|output\(6));

-- Location: LCCOMB_X32_Y24_N16
\inst7|output[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output[7]~22_combout\ = \inst7|output[6]~21\ $ (\inst7|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|output\(7),
	cin => \inst7|output[6]~21\,
	combout => \inst7|output[7]~22_combout\);

-- Location: FF_X32_Y24_N17
\inst7|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|output[7]~22_combout\,
	sclr => \inst7|state.waiting~q\,
	ena => \inst7|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|output\(7));

-- Location: LCCOMB_X32_Y24_N18
\inst7|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_0~0_combout\ = ((!\inst7|output\(3) & ((!\inst7|output\(1)) # (!\inst7|output\(2))))) # (!\inst7|output\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output\(2),
	datab => \inst7|output\(1),
	datac => \inst7|output\(3),
	datad => \inst7|output\(4),
	combout => \inst7|process_0~0_combout\);

-- Location: LCCOMB_X32_Y24_N24
\inst7|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_0~1_combout\ = ((!\inst7|output\(5) & (!\inst7|output\(6) & \inst7|process_0~0_combout\))) # (!\inst7|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output\(5),
	datab => \inst7|output\(7),
	datac => \inst7|output\(6),
	datad => \inst7|process_0~0_combout\,
	combout => \inst7|process_0~1_combout\);

-- Location: LCCOMB_X40_Y24_N10
\inst7|output[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output[7]~25_combout\ = (\inst7|state.scanning~q\ & (\us_1~input_o\ & \inst7|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.scanning~q\,
	datab => \us_1~input_o\,
	datad => \inst7|process_0~1_combout\,
	combout => \inst7|output[7]~25_combout\);

-- Location: LCCOMB_X40_Y24_N18
\inst7|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~14_combout\ = (\inst7|output[7]~25_combout\) # ((!\inst7|state.scanning~q\ & (\inst7|state.final~q\ & \inst7|state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.scanning~q\,
	datab => \inst7|state.final~q\,
	datac => \inst7|state~13_combout\,
	datad => \inst7|output[7]~25_combout\,
	combout => \inst7|state~14_combout\);

-- Location: LCCOMB_X40_Y24_N16
\inst7|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~15_combout\ = (!\inst7|state.activating~q\ & ((\inst7|state.waiting~q\ & (!\us_1~input_o\)) # (!\inst7|state.waiting~q\ & ((\inst7|state~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.activating~q\,
	datab => \us_1~input_o\,
	datac => \inst7|state.waiting~q\,
	datad => \inst7|state~14_combout\,
	combout => \inst7|state~15_combout\);

-- Location: LCCOMB_X40_Y24_N22
\inst7|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~16_combout\ = (\inst7|state.init~q\ & (((!\inst7|state~12_combout\ & !\inst7|state~15_combout\)))) # (!\inst7|state.init~q\ & (\inst|enable_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.init~q\,
	datab => \inst|enable_1~combout\,
	datac => \inst7|state~12_combout\,
	datad => \inst7|state~15_combout\,
	combout => \inst7|state~16_combout\);

-- Location: FF_X40_Y24_N21
\inst7|state.activating\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|state.activating~0_combout\,
	ena => \inst7|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|state.activating~q\);

-- Location: LCCOMB_X43_Y24_N28
\inst7|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan3~5_combout\ = ((!\inst7|counter\(8)) # (!\inst7|counter\(6))) # (!\inst7|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(7),
	datab => \inst7|counter\(6),
	datad => \inst7|counter\(8),
	combout => \inst7|LessThan3~5_combout\);

-- Location: LCCOMB_X43_Y24_N2
\inst7|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan3~6_combout\ = (!\inst7|counter\(9) & (((\inst7|LessThan3~5_combout\) # (!\inst7|LessThan3~3_combout\)) # (!\inst7|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(9),
	datab => \inst7|counter\(5),
	datac => \inst7|LessThan3~3_combout\,
	datad => \inst7|LessThan3~5_combout\,
	combout => \inst7|LessThan3~6_combout\);

-- Location: LCCOMB_X43_Y24_N22
\inst7|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan3~7_combout\ = (!\inst7|counter\(10) & (!\inst7|counter\(11) & (\inst7|LessThan3~2_combout\ & \inst7|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(10),
	datab => \inst7|counter\(11),
	datac => \inst7|LessThan3~2_combout\,
	datad => \inst7|LessThan3~6_combout\,
	combout => \inst7|LessThan3~7_combout\);

-- Location: LCCOMB_X40_Y24_N24
\inst7|counter[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter[12]~0_combout\ = (\inst7|LessThan2~2_combout\ & ((\inst7|output[7]~25_combout\) # ((!\inst7|state.scanning~q\ & \inst7|LessThan3~7_combout\)))) # (!\inst7|LessThan2~2_combout\ & (!\inst7|state.scanning~q\ & (\inst7|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan2~2_combout\,
	datab => \inst7|state.scanning~q\,
	datac => \inst7|LessThan3~7_combout\,
	datad => \inst7|output[7]~25_combout\,
	combout => \inst7|counter[12]~0_combout\);

-- Location: LCCOMB_X40_Y24_N2
\inst7|counter[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter[12]~1_combout\ = (\inst7|state.activating~q\) # ((\inst7|LessThan2~3_combout\ & (!\inst7|state.waiting~q\ & \inst7|counter[12]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.activating~q\,
	datab => \inst7|LessThan2~3_combout\,
	datac => \inst7|state.waiting~q\,
	datad => \inst7|counter[12]~0_combout\,
	combout => \inst7|counter[12]~1_combout\);

-- Location: LCCOMB_X44_Y24_N0
\inst7|Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~66_combout\ = (\inst7|Add1~0_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~0_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~66_combout\);

-- Location: FF_X44_Y24_N1
\inst7|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~66_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(0));

-- Location: LCCOMB_X44_Y24_N12
\inst7|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~2_combout\ = (\inst7|counter\(1) & (!\inst7|Add1~1\)) # (!\inst7|counter\(1) & ((\inst7|Add1~1\) # (GND)))
-- \inst7|Add1~3\ = CARRY((!\inst7|Add1~1\) # (!\inst7|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(1),
	datad => VCC,
	cin => \inst7|Add1~1\,
	combout => \inst7|Add1~2_combout\,
	cout => \inst7|Add1~3\);

-- Location: LCCOMB_X44_Y24_N2
\inst7|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~65_combout\ = (\inst7|Add1~2_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~2_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~65_combout\);

-- Location: FF_X44_Y24_N3
\inst7|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~65_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(1));

-- Location: LCCOMB_X44_Y24_N14
\inst7|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~4_combout\ = (\inst7|counter\(2) & (\inst7|Add1~3\ $ (GND))) # (!\inst7|counter\(2) & (!\inst7|Add1~3\ & VCC))
-- \inst7|Add1~5\ = CARRY((\inst7|counter\(2) & !\inst7|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(2),
	datad => VCC,
	cin => \inst7|Add1~3\,
	combout => \inst7|Add1~4_combout\,
	cout => \inst7|Add1~5\);

-- Location: LCCOMB_X43_Y24_N6
\inst7|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~53_combout\ = (\inst7|Add1~4_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add1~4_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~53_combout\);

-- Location: FF_X43_Y24_N7
\inst7|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~53_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(2));

-- Location: LCCOMB_X44_Y24_N16
\inst7|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~6_combout\ = (\inst7|counter\(3) & (!\inst7|Add1~5\)) # (!\inst7|counter\(3) & ((\inst7|Add1~5\) # (GND)))
-- \inst7|Add1~7\ = CARRY((!\inst7|Add1~5\) # (!\inst7|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(3),
	datad => VCC,
	cin => \inst7|Add1~5\,
	combout => \inst7|Add1~6_combout\,
	cout => \inst7|Add1~7\);

-- Location: LCCOMB_X43_Y24_N8
\inst7|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~54_combout\ = (\inst7|Add1~6_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add1~6_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~54_combout\);

-- Location: FF_X43_Y24_N9
\inst7|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~54_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(3));

-- Location: LCCOMB_X44_Y24_N18
\inst7|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~8_combout\ = (\inst7|counter\(4) & (\inst7|Add1~7\ $ (GND))) # (!\inst7|counter\(4) & (!\inst7|Add1~7\ & VCC))
-- \inst7|Add1~9\ = CARRY((\inst7|counter\(4) & !\inst7|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(4),
	datad => VCC,
	cin => \inst7|Add1~7\,
	combout => \inst7|Add1~8_combout\,
	cout => \inst7|Add1~9\);

-- Location: LCCOMB_X43_Y24_N0
\inst7|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~52_combout\ = (\inst7|Add1~8_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add1~8_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~52_combout\);

-- Location: FF_X43_Y24_N1
\inst7|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~52_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(4));

-- Location: LCCOMB_X44_Y24_N20
\inst7|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~10_combout\ = (\inst7|counter\(5) & (!\inst7|Add1~9\)) # (!\inst7|counter\(5) & ((\inst7|Add1~9\) # (GND)))
-- \inst7|Add1~11\ = CARRY((!\inst7|Add1~9\) # (!\inst7|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(5),
	datad => VCC,
	cin => \inst7|Add1~9\,
	combout => \inst7|Add1~10_combout\,
	cout => \inst7|Add1~11\);

-- Location: LCCOMB_X44_Y24_N8
\inst7|Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~51_combout\ = (\inst7|Add1~10_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add1~10_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~51_combout\);

-- Location: FF_X44_Y24_N9
\inst7|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~51_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(5));

-- Location: LCCOMB_X44_Y24_N22
\inst7|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~12_combout\ = (\inst7|counter\(6) & (\inst7|Add1~11\ $ (GND))) # (!\inst7|counter\(6) & (!\inst7|Add1~11\ & VCC))
-- \inst7|Add1~13\ = CARRY((\inst7|counter\(6) & !\inst7|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(6),
	datad => VCC,
	cin => \inst7|Add1~11\,
	combout => \inst7|Add1~12_combout\,
	cout => \inst7|Add1~13\);

-- Location: LCCOMB_X43_Y24_N16
\inst7|Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~55_combout\ = (\inst7|Add1~12_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add1~12_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~55_combout\);

-- Location: FF_X43_Y24_N17
\inst7|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~55_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(6));

-- Location: LCCOMB_X44_Y24_N24
\inst7|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~14_combout\ = (\inst7|counter\(7) & (!\inst7|Add1~13\)) # (!\inst7|counter\(7) & ((\inst7|Add1~13\) # (GND)))
-- \inst7|Add1~15\ = CARRY((!\inst7|Add1~13\) # (!\inst7|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(7),
	datad => VCC,
	cin => \inst7|Add1~13\,
	combout => \inst7|Add1~14_combout\,
	cout => \inst7|Add1~15\);

-- Location: LCCOMB_X44_Y24_N6
\inst7|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~56_combout\ = (\inst7|Add1~14_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add1~14_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~56_combout\);

-- Location: FF_X44_Y24_N7
\inst7|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~56_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(7));

-- Location: LCCOMB_X44_Y24_N26
\inst7|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~16_combout\ = (\inst7|counter\(8) & (\inst7|Add1~15\ $ (GND))) # (!\inst7|counter\(8) & (!\inst7|Add1~15\ & VCC))
-- \inst7|Add1~17\ = CARRY((\inst7|counter\(8) & !\inst7|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(8),
	datad => VCC,
	cin => \inst7|Add1~15\,
	combout => \inst7|Add1~16_combout\,
	cout => \inst7|Add1~17\);

-- Location: LCCOMB_X44_Y24_N4
\inst7|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~57_combout\ = (\inst7|Add1~16_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add1~16_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~57_combout\);

-- Location: FF_X44_Y24_N5
\inst7|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~57_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(8));

-- Location: LCCOMB_X44_Y24_N28
\inst7|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~18_combout\ = (\inst7|counter\(9) & (!\inst7|Add1~17\)) # (!\inst7|counter\(9) & ((\inst7|Add1~17\) # (GND)))
-- \inst7|Add1~19\ = CARRY((!\inst7|Add1~17\) # (!\inst7|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(9),
	datad => VCC,
	cin => \inst7|Add1~17\,
	combout => \inst7|Add1~18_combout\,
	cout => \inst7|Add1~19\);

-- Location: LCCOMB_X41_Y24_N20
\inst7|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~58_combout\ = (\inst7|Add1~18_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add1~18_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~58_combout\);

-- Location: FF_X41_Y24_N21
\inst7|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~58_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(9));

-- Location: LCCOMB_X44_Y24_N30
\inst7|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~20_combout\ = (\inst7|counter\(10) & (\inst7|Add1~19\ $ (GND))) # (!\inst7|counter\(10) & (!\inst7|Add1~19\ & VCC))
-- \inst7|Add1~21\ = CARRY((\inst7|counter\(10) & !\inst7|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(10),
	datad => VCC,
	cin => \inst7|Add1~19\,
	combout => \inst7|Add1~20_combout\,
	cout => \inst7|Add1~21\);

-- Location: LCCOMB_X41_Y24_N10
\inst7|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~59_combout\ = (\inst7|Add1~20_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add1~20_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~59_combout\);

-- Location: FF_X41_Y24_N11
\inst7|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~59_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(10));

-- Location: LCCOMB_X44_Y23_N0
\inst7|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~22_combout\ = (\inst7|counter\(11) & (!\inst7|Add1~21\)) # (!\inst7|counter\(11) & ((\inst7|Add1~21\) # (GND)))
-- \inst7|Add1~23\ = CARRY((!\inst7|Add1~21\) # (!\inst7|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(11),
	datad => VCC,
	cin => \inst7|Add1~21\,
	combout => \inst7|Add1~22_combout\,
	cout => \inst7|Add1~23\);

-- Location: LCCOMB_X44_Y23_N28
\inst7|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~60_combout\ = (\inst7|Add1~22_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add1~22_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~60_combout\);

-- Location: FF_X44_Y23_N29
\inst7|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~60_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(11));

-- Location: LCCOMB_X44_Y23_N2
\inst7|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~24_combout\ = (\inst7|counter\(12) & (\inst7|Add1~23\ $ (GND))) # (!\inst7|counter\(12) & (!\inst7|Add1~23\ & VCC))
-- \inst7|Add1~25\ = CARRY((\inst7|counter\(12) & !\inst7|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(12),
	datad => VCC,
	cin => \inst7|Add1~23\,
	combout => \inst7|Add1~24_combout\,
	cout => \inst7|Add1~25\);

-- Location: LCCOMB_X43_Y23_N8
\inst7|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~26_combout\ = (\inst7|Add1~24_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~24_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~26_combout\);

-- Location: FF_X43_Y23_N9
\inst7|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~26_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(12));

-- Location: LCCOMB_X44_Y23_N4
\inst7|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~27_combout\ = (\inst7|counter\(13) & (!\inst7|Add1~25\)) # (!\inst7|counter\(13) & ((\inst7|Add1~25\) # (GND)))
-- \inst7|Add1~28\ = CARRY((!\inst7|Add1~25\) # (!\inst7|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(13),
	datad => VCC,
	cin => \inst7|Add1~25\,
	combout => \inst7|Add1~27_combout\,
	cout => \inst7|Add1~28\);

-- Location: LCCOMB_X43_Y23_N10
\inst7|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~29_combout\ = (\inst7|Add1~27_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~27_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~29_combout\);

-- Location: FF_X43_Y23_N11
\inst7|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~29_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(13));

-- Location: LCCOMB_X44_Y23_N6
\inst7|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~30_combout\ = (\inst7|counter\(14) & (\inst7|Add1~28\ $ (GND))) # (!\inst7|counter\(14) & (!\inst7|Add1~28\ & VCC))
-- \inst7|Add1~31\ = CARRY((\inst7|counter\(14) & !\inst7|Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(14),
	datad => VCC,
	cin => \inst7|Add1~28\,
	combout => \inst7|Add1~30_combout\,
	cout => \inst7|Add1~31\);

-- Location: LCCOMB_X43_Y23_N24
\inst7|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~32_combout\ = (\inst7|Add1~30_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~30_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~32_combout\);

-- Location: FF_X43_Y23_N25
\inst7|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~32_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(14));

-- Location: LCCOMB_X44_Y23_N8
\inst7|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~33_combout\ = (\inst7|counter\(15) & (!\inst7|Add1~31\)) # (!\inst7|counter\(15) & ((\inst7|Add1~31\) # (GND)))
-- \inst7|Add1~34\ = CARRY((!\inst7|Add1~31\) # (!\inst7|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(15),
	datad => VCC,
	cin => \inst7|Add1~31\,
	combout => \inst7|Add1~33_combout\,
	cout => \inst7|Add1~34\);

-- Location: LCCOMB_X43_Y23_N14
\inst7|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~35_combout\ = (\inst7|Add1~33_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add1~33_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~35_combout\);

-- Location: FF_X43_Y23_N15
\inst7|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~35_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(15));

-- Location: LCCOMB_X44_Y23_N10
\inst7|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~36_combout\ = (\inst7|counter\(16) & (\inst7|Add1~34\ $ (GND))) # (!\inst7|counter\(16) & (!\inst7|Add1~34\ & VCC))
-- \inst7|Add1~37\ = CARRY((\inst7|counter\(16) & !\inst7|Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(16),
	datad => VCC,
	cin => \inst7|Add1~34\,
	combout => \inst7|Add1~36_combout\,
	cout => \inst7|Add1~37\);

-- Location: LCCOMB_X43_Y23_N26
\inst7|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~38_combout\ = (\inst7|Add1~36_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add1~36_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~38_combout\);

-- Location: FF_X43_Y23_N27
\inst7|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~38_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(16));

-- Location: LCCOMB_X44_Y23_N12
\inst7|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~39_combout\ = (\inst7|counter\(17) & (!\inst7|Add1~37\)) # (!\inst7|counter\(17) & ((\inst7|Add1~37\) # (GND)))
-- \inst7|Add1~40\ = CARRY((!\inst7|Add1~37\) # (!\inst7|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(17),
	datad => VCC,
	cin => \inst7|Add1~37\,
	combout => \inst7|Add1~39_combout\,
	cout => \inst7|Add1~40\);

-- Location: LCCOMB_X43_Y23_N28
\inst7|Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~41_combout\ = (\inst7|Add1~39_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add1~39_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~41_combout\);

-- Location: FF_X43_Y23_N29
\inst7|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~41_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(17));

-- Location: LCCOMB_X44_Y23_N14
\inst7|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~42_combout\ = (\inst7|counter\(18) & (\inst7|Add1~40\ $ (GND))) # (!\inst7|counter\(18) & (!\inst7|Add1~40\ & VCC))
-- \inst7|Add1~43\ = CARRY((\inst7|counter\(18) & !\inst7|Add1~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(18),
	datad => VCC,
	cin => \inst7|Add1~40\,
	combout => \inst7|Add1~42_combout\,
	cout => \inst7|Add1~43\);

-- Location: LCCOMB_X43_Y23_N22
\inst7|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~44_combout\ = (\inst7|Add1~42_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add1~42_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~44_combout\);

-- Location: FF_X43_Y23_N23
\inst7|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~44_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(18));

-- Location: LCCOMB_X44_Y23_N16
\inst7|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~45_combout\ = (\inst7|counter\(19) & (!\inst7|Add1~43\)) # (!\inst7|counter\(19) & ((\inst7|Add1~43\) # (GND)))
-- \inst7|Add1~46\ = CARRY((!\inst7|Add1~43\) # (!\inst7|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(19),
	datad => VCC,
	cin => \inst7|Add1~43\,
	combout => \inst7|Add1~45_combout\,
	cout => \inst7|Add1~46\);

-- Location: LCCOMB_X43_Y23_N20
\inst7|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~47_combout\ = (\inst7|Add1~45_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add1~45_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~47_combout\);

-- Location: FF_X43_Y23_N21
\inst7|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~47_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(19));

-- Location: LCCOMB_X43_Y23_N16
\inst7|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~50_combout\ = (\inst7|Add1~48_combout\ & \inst7|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add1~48_combout\,
	datad => \inst7|counter[12]~1_combout\,
	combout => \inst7|Add1~50_combout\);

-- Location: FF_X43_Y23_N17
\inst7|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|Add1~50_combout\,
	ena => \inst7|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(20));

-- Location: LCCOMB_X43_Y23_N4
\inst7|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan3~0_combout\ = (!\inst7|counter\(13) & (!\inst7|counter\(15) & (!\inst7|counter\(12) & !\inst7|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(13),
	datab => \inst7|counter\(15),
	datac => \inst7|counter\(12),
	datad => \inst7|counter\(14),
	combout => \inst7|LessThan3~0_combout\);

-- Location: LCCOMB_X43_Y23_N2
\inst7|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan3~1_combout\ = (!\inst7|counter\(16) & (!\inst7|counter\(19) & (!\inst7|counter\(18) & !\inst7|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(16),
	datab => \inst7|counter\(19),
	datac => \inst7|counter\(18),
	datad => \inst7|counter\(17),
	combout => \inst7|LessThan3~1_combout\);

-- Location: LCCOMB_X43_Y23_N30
\inst7|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan3~2_combout\ = (!\inst7|counter\(20) & (\inst7|LessThan3~0_combout\ & \inst7|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(20),
	datac => \inst7|LessThan3~0_combout\,
	datad => \inst7|LessThan3~1_combout\,
	combout => \inst7|LessThan3~2_combout\);

-- Location: LCCOMB_X43_Y24_N4
\inst7|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~13_combout\ = (\inst7|LessThan3~2_combout\ & (\inst7|LessThan3~4_combout\ & (\inst7|LessThan2~3_combout\ & \inst7|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan3~2_combout\,
	datab => \inst7|LessThan3~4_combout\,
	datac => \inst7|LessThan2~3_combout\,
	datad => \inst7|LessThan3~6_combout\,
	combout => \inst7|state~13_combout\);

-- Location: LCCOMB_X40_Y24_N26
\inst7|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~17_combout\ = (\inst7|state.init~q\ & (((\inst7|state~13_combout\)) # (!\inst7|state.final~q\))) # (!\inst7|state.init~q\ & (((\inst|enable_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.final~q\,
	datab => \inst|enable_1~combout\,
	datac => \inst7|state.init~q\,
	datad => \inst7|state~13_combout\,
	combout => \inst7|state~17_combout\);

-- Location: FF_X40_Y24_N27
\inst7|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|state.init~q\);

-- Location: LCCOMB_X40_Y24_N8
\inst7|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~18_combout\ = (\inst7|state.init~q\ & (!\inst7|state.waiting~q\ & (!\inst7|state.final~q\ & !\inst7|state.activating~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.init~q\,
	datab => \inst7|state.waiting~q\,
	datac => \inst7|state.final~q\,
	datad => \inst7|state.activating~q\,
	combout => \inst7|state~18_combout\);

-- Location: FF_X40_Y24_N9
\inst7|state.final\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|state~18_combout\,
	ena => \inst7|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|state.final~q\);

-- Location: LCCOMB_X35_Y19_N20
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|counter1\(9)) # ((\inst|counter1\(17)) # ((\inst|counter1\(14)) # (\inst|counter1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(9),
	datab => \inst|counter1\(17),
	datac => \inst|counter1\(14),
	datad => \inst|counter1\(16),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y20_N6
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|counter1\(3)) # ((\inst|counter1\(2) & ((\inst|counter1\(0)) # (\inst|counter1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(0),
	datab => \inst|counter1\(2),
	datac => \inst|counter1\(1),
	datad => \inst|counter1\(3),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y20_N0
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|counter1\(5) & (\inst|counter1\(4) & (\inst|counter1\(7) & \inst|counter1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(5),
	datab => \inst|counter1\(4),
	datac => \inst|counter1\(7),
	datad => \inst|counter1\(6),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X35_Y19_N26
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|LessThan0~0_combout\) # ((\inst|counter1\(8) & (\inst|LessThan0~1_combout\ & \inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter1\(8),
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X35_Y19_N24
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = ((\inst|counter1\(19)) # ((\inst|LessThan0~3_combout\) # (\inst|counter1\(18)))) # (!\inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|counter1\(19),
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|counter1\(18),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X37_Y19_N14
\inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~7_combout\ = (!\inst|state.controller1~q\ & (\inst|LessThan0~4_combout\ & ((\inst7|state.final~q\) # (!\inst7|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.final~q\,
	datab => \inst|state.controller1~q\,
	datac => \inst7|state.init~q\,
	datad => \inst|LessThan0~4_combout\,
	combout => \inst|process_0~7_combout\);

-- Location: LCCOMB_X36_Y19_N26
\inst|enable_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable_3~0_combout\ = (\inst|state.controller2~q\) # (!\inst|state.controller1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.controller1~q\,
	datad => \inst|state.controller2~q\,
	combout => \inst|enable_3~0_combout\);

-- Location: LCCOMB_X36_Y19_N8
\inst|enable_3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable_3~combout\ = (\inst|enable_3~0_combout\ & (\inst|enable_3~combout\)) # (!\inst|enable_3~0_combout\ & ((\inst|state.controller3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|enable_3~combout\,
	datac => \inst|enable_3~0_combout\,
	datad => \inst|state.controller3~q\,
	combout => \inst|enable_3~combout\);

-- Location: LCCOMB_X38_Y22_N10
\inst3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~0_combout\ = \inst3|counter\(0) $ (VCC)
-- \inst3|Add1~1\ = CARRY(\inst3|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(0),
	datad => VCC,
	combout => \inst3|Add1~0_combout\,
	cout => \inst3|Add1~1\);

-- Location: LCCOMB_X38_Y22_N6
\inst3|Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~66_combout\ = (\inst3|Add1~0_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~0_combout\,
	datac => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~66_combout\);

-- Location: FF_X37_Y23_N23
\inst3|state.scanning\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|state.waiting~q\,
	sload => VCC,
	ena => \inst3|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state.scanning~q\);

-- Location: IOIBUF_X53_Y24_N22
\us_3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => us_3,
	o => \us_3~input_o\);

-- Location: LCCOMB_X34_Y23_N8
\inst3|output[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|output[0]~8_combout\ = \inst3|output\(0) $ (VCC)
-- \inst3|output[0]~9\ = CARRY(\inst3|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|output\(0),
	datad => VCC,
	combout => \inst3|output[0]~8_combout\,
	cout => \inst3|output[0]~9\);

-- Location: LCCOMB_X37_Y23_N6
\inst3|output[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|output[7]~24_combout\ = (\inst3|state.waiting~q\ & \us_3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.waiting~q\,
	datac => \us_3~input_o\,
	combout => \inst3|output[7]~24_combout\);

-- Location: LCCOMB_X37_Y22_N0
\inst3|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~3_combout\ = (\inst3|counter\(4) & ((\inst3|counter\(2)) # (\inst3|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(2),
	datac => \inst3|counter\(4),
	datad => \inst3|counter\(3),
	combout => \inst3|LessThan3~3_combout\);

-- Location: LCCOMB_X37_Y22_N6
\inst3|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~0_combout\ = (!\inst3|counter\(7) & (((!\inst3|counter\(5) & !\inst3|LessThan3~3_combout\)) # (!\inst3|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(6),
	datab => \inst3|counter\(7),
	datac => \inst3|counter\(5),
	datad => \inst3|LessThan3~3_combout\,
	combout => \inst3|LessThan2~0_combout\);

-- Location: LCCOMB_X37_Y22_N18
\inst3|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~1_combout\ = (!\inst3|counter\(10) & (((\inst3|LessThan2~0_combout\) # (!\inst3|counter\(9))) # (!\inst3|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(10),
	datab => \inst3|counter\(8),
	datac => \inst3|counter\(9),
	datad => \inst3|LessThan2~0_combout\,
	combout => \inst3|LessThan2~1_combout\);

-- Location: LCCOMB_X38_Y23_N22
\inst3|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~1_combout\ = (!\inst3|counter\(18) & (!\inst3|counter\(19) & (!\inst3|counter\(16) & !\inst3|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(18),
	datab => \inst3|counter\(19),
	datac => \inst3|counter\(16),
	datad => \inst3|counter\(17),
	combout => \inst3|LessThan3~1_combout\);

-- Location: LCCOMB_X38_Y23_N8
\inst3|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~0_combout\ = (!\inst3|counter\(13) & (!\inst3|counter\(14) & (!\inst3|counter\(15) & !\inst3|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(13),
	datab => \inst3|counter\(14),
	datac => \inst3|counter\(15),
	datad => \inst3|counter\(12),
	combout => \inst3|LessThan3~0_combout\);

-- Location: LCCOMB_X38_Y23_N14
\inst3|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~2_combout\ = (\inst3|LessThan3~1_combout\ & (\inst3|LessThan3~0_combout\ & !\inst3|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan3~1_combout\,
	datac => \inst3|LessThan3~0_combout\,
	datad => \inst3|counter\(20),
	combout => \inst3|LessThan3~2_combout\);

-- Location: LCCOMB_X34_Y23_N6
\inst3|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~2_combout\ = (\inst3|LessThan3~2_combout\ & ((\inst3|LessThan2~1_combout\) # (!\inst3|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(11),
	datac => \inst3|LessThan2~1_combout\,
	datad => \inst3|LessThan3~2_combout\,
	combout => \inst3|LessThan2~2_combout\);

-- Location: LCCOMB_X34_Y23_N28
\inst3|output[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|output[7]~26_combout\ = (!\inst3|state.waiting~q\ & (\inst3|output[7]~25_combout\ & ((!\inst3|LessThan2~2_combout\) # (!\inst3|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan2~3_combout\,
	datab => \inst3|state.waiting~q\,
	datac => \inst3|output[7]~25_combout\,
	datad => \inst3|LessThan2~2_combout\,
	combout => \inst3|output[7]~26_combout\);

-- Location: LCCOMB_X34_Y23_N2
\inst3|output[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|output[7]~27_combout\ = (\inst3|state.init~q\ & (!\inst3|state.activating~q\ & ((\inst3|output[7]~24_combout\) # (\inst3|output[7]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.init~q\,
	datab => \inst3|output[7]~24_combout\,
	datac => \inst3|state.activating~q\,
	datad => \inst3|output[7]~26_combout\,
	combout => \inst3|output[7]~27_combout\);

-- Location: FF_X34_Y23_N9
\inst3|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|output[0]~8_combout\,
	sclr => \inst3|state.waiting~q\,
	ena => \inst3|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|output\(0));

-- Location: LCCOMB_X34_Y23_N10
\inst3|output[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|output[1]~10_combout\ = (\inst3|output\(1) & (!\inst3|output[0]~9\)) # (!\inst3|output\(1) & ((\inst3|output[0]~9\) # (GND)))
-- \inst3|output[1]~11\ = CARRY((!\inst3|output[0]~9\) # (!\inst3|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|output\(1),
	datad => VCC,
	cin => \inst3|output[0]~9\,
	combout => \inst3|output[1]~10_combout\,
	cout => \inst3|output[1]~11\);

-- Location: FF_X34_Y23_N11
\inst3|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|output[1]~10_combout\,
	sclr => \inst3|state.waiting~q\,
	ena => \inst3|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|output\(1));

-- Location: LCCOMB_X34_Y23_N12
\inst3|output[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|output[2]~12_combout\ = (\inst3|output\(2) & (\inst3|output[1]~11\ $ (GND))) # (!\inst3|output\(2) & (!\inst3|output[1]~11\ & VCC))
-- \inst3|output[2]~13\ = CARRY((\inst3|output\(2) & !\inst3|output[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|output\(2),
	datad => VCC,
	cin => \inst3|output[1]~11\,
	combout => \inst3|output[2]~12_combout\,
	cout => \inst3|output[2]~13\);

-- Location: FF_X34_Y23_N13
\inst3|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|output[2]~12_combout\,
	sclr => \inst3|state.waiting~q\,
	ena => \inst3|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|output\(2));

-- Location: LCCOMB_X34_Y23_N14
\inst3|output[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|output[3]~14_combout\ = (\inst3|output\(3) & (!\inst3|output[2]~13\)) # (!\inst3|output\(3) & ((\inst3|output[2]~13\) # (GND)))
-- \inst3|output[3]~15\ = CARRY((!\inst3|output[2]~13\) # (!\inst3|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|output\(3),
	datad => VCC,
	cin => \inst3|output[2]~13\,
	combout => \inst3|output[3]~14_combout\,
	cout => \inst3|output[3]~15\);

-- Location: FF_X34_Y23_N15
\inst3|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|output[3]~14_combout\,
	sclr => \inst3|state.waiting~q\,
	ena => \inst3|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|output\(3));

-- Location: LCCOMB_X34_Y23_N16
\inst3|output[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|output[4]~16_combout\ = (\inst3|output\(4) & (\inst3|output[3]~15\ $ (GND))) # (!\inst3|output\(4) & (!\inst3|output[3]~15\ & VCC))
-- \inst3|output[4]~17\ = CARRY((\inst3|output\(4) & !\inst3|output[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|output\(4),
	datad => VCC,
	cin => \inst3|output[3]~15\,
	combout => \inst3|output[4]~16_combout\,
	cout => \inst3|output[4]~17\);

-- Location: FF_X34_Y23_N17
\inst3|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|output[4]~16_combout\,
	sclr => \inst3|state.waiting~q\,
	ena => \inst3|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|output\(4));

-- Location: LCCOMB_X34_Y23_N18
\inst3|output[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|output[5]~18_combout\ = (\inst3|output\(5) & (!\inst3|output[4]~17\)) # (!\inst3|output\(5) & ((\inst3|output[4]~17\) # (GND)))
-- \inst3|output[5]~19\ = CARRY((!\inst3|output[4]~17\) # (!\inst3|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|output\(5),
	datad => VCC,
	cin => \inst3|output[4]~17\,
	combout => \inst3|output[5]~18_combout\,
	cout => \inst3|output[5]~19\);

-- Location: FF_X34_Y23_N19
\inst3|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|output[5]~18_combout\,
	sclr => \inst3|state.waiting~q\,
	ena => \inst3|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|output\(5));

-- Location: LCCOMB_X34_Y23_N20
\inst3|output[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|output[6]~20_combout\ = (\inst3|output\(6) & (\inst3|output[5]~19\ $ (GND))) # (!\inst3|output\(6) & (!\inst3|output[5]~19\ & VCC))
-- \inst3|output[6]~21\ = CARRY((\inst3|output\(6) & !\inst3|output[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|output\(6),
	datad => VCC,
	cin => \inst3|output[5]~19\,
	combout => \inst3|output[6]~20_combout\,
	cout => \inst3|output[6]~21\);

-- Location: FF_X34_Y23_N21
\inst3|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|output[6]~20_combout\,
	sclr => \inst3|state.waiting~q\,
	ena => \inst3|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|output\(6));

-- Location: LCCOMB_X34_Y23_N22
\inst3|output[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|output[7]~22_combout\ = \inst3|output\(7) $ (\inst3|output[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|output\(7),
	cin => \inst3|output[6]~21\,
	combout => \inst3|output[7]~22_combout\);

-- Location: FF_X34_Y23_N23
\inst3|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|output[7]~22_combout\,
	sclr => \inst3|state.waiting~q\,
	ena => \inst3|output[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|output\(7));

-- Location: LCCOMB_X34_Y23_N26
\inst3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~0_combout\ = ((!\inst3|output\(3) & ((!\inst3|output\(2)) # (!\inst3|output\(1))))) # (!\inst3|output\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|output\(1),
	datab => \inst3|output\(4),
	datac => \inst3|output\(3),
	datad => \inst3|output\(2),
	combout => \inst3|process_0~0_combout\);

-- Location: LCCOMB_X34_Y23_N0
\inst3|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~1_combout\ = ((!\inst3|output\(6) & (\inst3|process_0~0_combout\ & !\inst3|output\(5)))) # (!\inst3|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|output\(7),
	datab => \inst3|output\(6),
	datac => \inst3|process_0~0_combout\,
	datad => \inst3|output\(5),
	combout => \inst3|process_0~1_combout\);

-- Location: LCCOMB_X37_Y23_N28
\inst3|output[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|output[7]~25_combout\ = (\us_3~input_o\ & (\inst3|state.scanning~q\ & \inst3|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \us_3~input_o\,
	datab => \inst3|state.scanning~q\,
	datad => \inst3|process_0~1_combout\,
	combout => \inst3|output[7]~25_combout\);

-- Location: LCCOMB_X37_Y23_N20
\inst3|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state~14_combout\ = (\inst3|output[7]~25_combout\) # ((\inst3|state~13_combout\ & (!\inst3|state.scanning~q\ & \inst3|state.final~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state~13_combout\,
	datab => \inst3|state.scanning~q\,
	datac => \inst3|state.final~q\,
	datad => \inst3|output[7]~25_combout\,
	combout => \inst3|state~14_combout\);

-- Location: LCCOMB_X37_Y23_N16
\inst3|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state~15_combout\ = (!\inst3|state.activating~q\ & ((\inst3|state.waiting~q\ & ((!\us_3~input_o\))) # (!\inst3|state.waiting~q\ & (\inst3|state~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.waiting~q\,
	datab => \inst3|state~14_combout\,
	datac => \us_3~input_o\,
	datad => \inst3|state.activating~q\,
	combout => \inst3|state~15_combout\);

-- Location: LCCOMB_X37_Y22_N12
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = ((!\inst3|counter\(5) & ((!\inst3|counter\(4)) # (!\inst3|counter\(3))))) # (!\inst3|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(6),
	datab => \inst3|counter\(3),
	datac => \inst3|counter\(4),
	datad => \inst3|counter\(5),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y22_N26
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = ((\inst3|LessThan0~0_combout\ & (!\inst3|counter\(7) & !\inst3|counter\(8)))) # (!\inst3|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~0_combout\,
	datab => \inst3|counter\(7),
	datac => \inst3|counter\(9),
	datad => \inst3|counter\(8),
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y23_N2
\inst3|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~4_combout\ = (!\inst3|counter\(10) & !\inst3|counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(10),
	datad => \inst3|counter\(11),
	combout => \inst3|LessThan3~4_combout\);

-- Location: LCCOMB_X37_Y23_N0
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (((!\inst3|LessThan3~4_combout\) # (!\inst3|LessThan3~2_combout\)) # (!\inst3|LessThan2~3_combout\)) # (!\inst3|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~1_combout\,
	datab => \inst3|LessThan2~3_combout\,
	datac => \inst3|LessThan3~2_combout\,
	datad => \inst3|LessThan3~4_combout\,
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y23_N14
\inst3|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state~12_combout\ = (\inst3|state.activating~q\ & !\inst3|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.activating~q\,
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|state~12_combout\);

-- Location: LCCOMB_X37_Y23_N18
\inst3|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state~16_combout\ = (\inst3|state.init~q\ & (!\inst3|state~15_combout\ & (!\inst3|state~12_combout\))) # (!\inst3|state.init~q\ & (((\inst|enable_3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.init~q\,
	datab => \inst3|state~15_combout\,
	datac => \inst3|state~12_combout\,
	datad => \inst|enable_3~combout\,
	combout => \inst3|state~16_combout\);

-- Location: FF_X37_Y23_N29
\inst3|state.waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|state.activating~q\,
	sload => VCC,
	ena => \inst3|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state.waiting~q\);

-- Location: LCCOMB_X37_Y23_N22
\inst3|counter[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[22]~2_combout\ = (\inst3|state.waiting~q\ & (!\us_3~input_o\)) # (!\inst3|state.waiting~q\ & (((!\inst3|state.scanning~q\ & !\inst3|state.final~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.waiting~q\,
	datab => \us_3~input_o\,
	datac => \inst3|state.scanning~q\,
	datad => \inst3|state.final~q\,
	combout => \inst3|counter[22]~2_combout\);

-- Location: LCCOMB_X37_Y23_N4
\inst3|counter[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[22]~3_combout\ = (\inst3|state.init~q\ & ((\inst3|state.activating~q\ & ((!\inst3|LessThan0~2_combout\))) # (!\inst3|state.activating~q\ & (!\inst3|counter[22]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.activating~q\,
	datab => \inst3|state.init~q\,
	datac => \inst3|counter[22]~2_combout\,
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|counter[22]~3_combout\);

-- Location: FF_X38_Y22_N7
\inst3|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~66_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(0));

-- Location: LCCOMB_X38_Y22_N12
\inst3|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~2_combout\ = (\inst3|counter\(1) & (!\inst3|Add1~1\)) # (!\inst3|counter\(1) & ((\inst3|Add1~1\) # (GND)))
-- \inst3|Add1~3\ = CARRY((!\inst3|Add1~1\) # (!\inst3|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(1),
	datad => VCC,
	cin => \inst3|Add1~1\,
	combout => \inst3|Add1~2_combout\,
	cout => \inst3|Add1~3\);

-- Location: LCCOMB_X38_Y22_N4
\inst3|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~65_combout\ = (\inst3|Add1~2_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~2_combout\,
	datac => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~65_combout\);

-- Location: FF_X38_Y22_N5
\inst3|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~65_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(1));

-- Location: LCCOMB_X38_Y22_N14
\inst3|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~4_combout\ = (\inst3|counter\(2) & (\inst3|Add1~3\ $ (GND))) # (!\inst3|counter\(2) & (!\inst3|Add1~3\ & VCC))
-- \inst3|Add1~5\ = CARRY((\inst3|counter\(2) & !\inst3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(2),
	datad => VCC,
	cin => \inst3|Add1~3\,
	combout => \inst3|Add1~4_combout\,
	cout => \inst3|Add1~5\);

-- Location: LCCOMB_X37_Y22_N16
\inst3|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~53_combout\ = (\inst3|counter[12]~1_combout\ & \inst3|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter[12]~1_combout\,
	datac => \inst3|Add1~4_combout\,
	combout => \inst3|Add1~53_combout\);

-- Location: FF_X37_Y22_N17
\inst3|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~53_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(2));

-- Location: LCCOMB_X38_Y22_N16
\inst3|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~6_combout\ = (\inst3|counter\(3) & (!\inst3|Add1~5\)) # (!\inst3|counter\(3) & ((\inst3|Add1~5\) # (GND)))
-- \inst3|Add1~7\ = CARRY((!\inst3|Add1~5\) # (!\inst3|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(3),
	datad => VCC,
	cin => \inst3|Add1~5\,
	combout => \inst3|Add1~6_combout\,
	cout => \inst3|Add1~7\);

-- Location: LCCOMB_X37_Y22_N2
\inst3|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~54_combout\ = (\inst3|counter[12]~1_combout\ & \inst3|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter[12]~1_combout\,
	datac => \inst3|Add1~6_combout\,
	combout => \inst3|Add1~54_combout\);

-- Location: FF_X37_Y22_N3
\inst3|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~54_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(3));

-- Location: LCCOMB_X38_Y22_N18
\inst3|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~8_combout\ = (\inst3|counter\(4) & (\inst3|Add1~7\ $ (GND))) # (!\inst3|counter\(4) & (!\inst3|Add1~7\ & VCC))
-- \inst3|Add1~9\ = CARRY((\inst3|counter\(4) & !\inst3|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(4),
	datad => VCC,
	cin => \inst3|Add1~7\,
	combout => \inst3|Add1~8_combout\,
	cout => \inst3|Add1~9\);

-- Location: LCCOMB_X37_Y22_N22
\inst3|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~52_combout\ = (\inst3|Add1~8_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~8_combout\,
	datac => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~52_combout\);

-- Location: FF_X37_Y22_N23
\inst3|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~52_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(4));

-- Location: LCCOMB_X38_Y22_N20
\inst3|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~10_combout\ = (\inst3|counter\(5) & (!\inst3|Add1~9\)) # (!\inst3|counter\(5) & ((\inst3|Add1~9\) # (GND)))
-- \inst3|Add1~11\ = CARRY((!\inst3|Add1~9\) # (!\inst3|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(5),
	datad => VCC,
	cin => \inst3|Add1~9\,
	combout => \inst3|Add1~10_combout\,
	cout => \inst3|Add1~11\);

-- Location: LCCOMB_X38_Y22_N22
\inst3|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~12_combout\ = (\inst3|counter\(6) & (\inst3|Add1~11\ $ (GND))) # (!\inst3|counter\(6) & (!\inst3|Add1~11\ & VCC))
-- \inst3|Add1~13\ = CARRY((\inst3|counter\(6) & !\inst3|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(6),
	datad => VCC,
	cin => \inst3|Add1~11\,
	combout => \inst3|Add1~12_combout\,
	cout => \inst3|Add1~13\);

-- Location: LCCOMB_X37_Y22_N30
\inst3|Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~55_combout\ = (\inst3|Add1~12_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~12_combout\,
	datac => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~55_combout\);

-- Location: FF_X37_Y22_N31
\inst3|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~55_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(6));

-- Location: LCCOMB_X38_Y22_N24
\inst3|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~14_combout\ = (\inst3|counter\(7) & (!\inst3|Add1~13\)) # (!\inst3|counter\(7) & ((\inst3|Add1~13\) # (GND)))
-- \inst3|Add1~15\ = CARRY((!\inst3|Add1~13\) # (!\inst3|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(7),
	datad => VCC,
	cin => \inst3|Add1~13\,
	combout => \inst3|Add1~14_combout\,
	cout => \inst3|Add1~15\);

-- Location: LCCOMB_X37_Y22_N20
\inst3|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~56_combout\ = (\inst3|Add1~14_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~14_combout\,
	datac => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~56_combout\);

-- Location: FF_X37_Y22_N21
\inst3|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~56_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(7));

-- Location: LCCOMB_X38_Y22_N26
\inst3|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~16_combout\ = (\inst3|counter\(8) & (\inst3|Add1~15\ $ (GND))) # (!\inst3|counter\(8) & (!\inst3|Add1~15\ & VCC))
-- \inst3|Add1~17\ = CARRY((\inst3|counter\(8) & !\inst3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(8),
	datad => VCC,
	cin => \inst3|Add1~15\,
	combout => \inst3|Add1~16_combout\,
	cout => \inst3|Add1~17\);

-- Location: LCCOMB_X37_Y22_N24
\inst3|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~57_combout\ = (\inst3|counter[12]~1_combout\ & \inst3|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter[12]~1_combout\,
	datac => \inst3|Add1~16_combout\,
	combout => \inst3|Add1~57_combout\);

-- Location: FF_X37_Y22_N25
\inst3|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~57_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(8));

-- Location: LCCOMB_X38_Y22_N28
\inst3|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~18_combout\ = (\inst3|counter\(9) & (!\inst3|Add1~17\)) # (!\inst3|counter\(9) & ((\inst3|Add1~17\) # (GND)))
-- \inst3|Add1~19\ = CARRY((!\inst3|Add1~17\) # (!\inst3|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(9),
	datad => VCC,
	cin => \inst3|Add1~17\,
	combout => \inst3|Add1~18_combout\,
	cout => \inst3|Add1~19\);

-- Location: LCCOMB_X37_Y22_N14
\inst3|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~58_combout\ = (\inst3|Add1~18_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~18_combout\,
	datac => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~58_combout\);

-- Location: FF_X37_Y22_N15
\inst3|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~58_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(9));

-- Location: LCCOMB_X38_Y22_N30
\inst3|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~20_combout\ = (\inst3|counter\(10) & (\inst3|Add1~19\ $ (GND))) # (!\inst3|counter\(10) & (!\inst3|Add1~19\ & VCC))
-- \inst3|Add1~21\ = CARRY((\inst3|counter\(10) & !\inst3|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(10),
	datad => VCC,
	cin => \inst3|Add1~19\,
	combout => \inst3|Add1~20_combout\,
	cout => \inst3|Add1~21\);

-- Location: LCCOMB_X37_Y22_N4
\inst3|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~59_combout\ = (\inst3|counter[12]~1_combout\ & \inst3|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter[12]~1_combout\,
	datac => \inst3|Add1~20_combout\,
	combout => \inst3|Add1~59_combout\);

-- Location: FF_X37_Y22_N5
\inst3|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~59_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(10));

-- Location: LCCOMB_X38_Y21_N0
\inst3|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~22_combout\ = (\inst3|counter\(11) & (!\inst3|Add1~21\)) # (!\inst3|counter\(11) & ((\inst3|Add1~21\) # (GND)))
-- \inst3|Add1~23\ = CARRY((!\inst3|Add1~21\) # (!\inst3|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(11),
	datad => VCC,
	cin => \inst3|Add1~21\,
	combout => \inst3|Add1~22_combout\,
	cout => \inst3|Add1~23\);

-- Location: LCCOMB_X38_Y21_N28
\inst3|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~60_combout\ = (\inst3|Add1~22_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~22_combout\,
	datad => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~60_combout\);

-- Location: FF_X38_Y21_N29
\inst3|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~60_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(11));

-- Location: LCCOMB_X38_Y21_N2
\inst3|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~24_combout\ = (\inst3|counter\(12) & (\inst3|Add1~23\ $ (GND))) # (!\inst3|counter\(12) & (!\inst3|Add1~23\ & VCC))
-- \inst3|Add1~25\ = CARRY((\inst3|counter\(12) & !\inst3|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(12),
	datad => VCC,
	cin => \inst3|Add1~23\,
	combout => \inst3|Add1~24_combout\,
	cout => \inst3|Add1~25\);

-- Location: LCCOMB_X38_Y23_N16
\inst3|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~26_combout\ = (\inst3|Add1~24_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add1~24_combout\,
	datad => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~26_combout\);

-- Location: FF_X38_Y23_N17
\inst3|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~26_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(12));

-- Location: LCCOMB_X38_Y21_N4
\inst3|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~27_combout\ = (\inst3|counter\(13) & (!\inst3|Add1~25\)) # (!\inst3|counter\(13) & ((\inst3|Add1~25\) # (GND)))
-- \inst3|Add1~28\ = CARRY((!\inst3|Add1~25\) # (!\inst3|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(13),
	datad => VCC,
	cin => \inst3|Add1~25\,
	combout => \inst3|Add1~27_combout\,
	cout => \inst3|Add1~28\);

-- Location: LCCOMB_X38_Y23_N6
\inst3|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~29_combout\ = (\inst3|Add1~27_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add1~27_combout\,
	datad => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~29_combout\);

-- Location: FF_X38_Y23_N7
\inst3|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~29_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(13));

-- Location: LCCOMB_X38_Y21_N6
\inst3|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~30_combout\ = (\inst3|counter\(14) & (\inst3|Add1~28\ $ (GND))) # (!\inst3|counter\(14) & (!\inst3|Add1~28\ & VCC))
-- \inst3|Add1~31\ = CARRY((\inst3|counter\(14) & !\inst3|Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(14),
	datad => VCC,
	cin => \inst3|Add1~28\,
	combout => \inst3|Add1~30_combout\,
	cout => \inst3|Add1~31\);

-- Location: LCCOMB_X38_Y23_N0
\inst3|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~32_combout\ = (\inst3|Add1~30_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~30_combout\,
	datad => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~32_combout\);

-- Location: FF_X38_Y23_N1
\inst3|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~32_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(14));

-- Location: LCCOMB_X38_Y21_N8
\inst3|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~33_combout\ = (\inst3|counter\(15) & (!\inst3|Add1~31\)) # (!\inst3|counter\(15) & ((\inst3|Add1~31\) # (GND)))
-- \inst3|Add1~34\ = CARRY((!\inst3|Add1~31\) # (!\inst3|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(15),
	datad => VCC,
	cin => \inst3|Add1~31\,
	combout => \inst3|Add1~33_combout\,
	cout => \inst3|Add1~34\);

-- Location: LCCOMB_X38_Y23_N26
\inst3|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~35_combout\ = (\inst3|Add1~33_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add1~33_combout\,
	datad => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~35_combout\);

-- Location: FF_X38_Y23_N27
\inst3|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~35_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(15));

-- Location: LCCOMB_X38_Y21_N10
\inst3|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~36_combout\ = (\inst3|counter\(16) & (\inst3|Add1~34\ $ (GND))) # (!\inst3|counter\(16) & (!\inst3|Add1~34\ & VCC))
-- \inst3|Add1~37\ = CARRY((\inst3|counter\(16) & !\inst3|Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(16),
	datad => VCC,
	cin => \inst3|Add1~34\,
	combout => \inst3|Add1~36_combout\,
	cout => \inst3|Add1~37\);

-- Location: LCCOMB_X38_Y23_N30
\inst3|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~38_combout\ = (\inst3|counter[12]~1_combout\ & \inst3|Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|counter[12]~1_combout\,
	datad => \inst3|Add1~36_combout\,
	combout => \inst3|Add1~38_combout\);

-- Location: FF_X38_Y23_N31
\inst3|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~38_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(16));

-- Location: LCCOMB_X38_Y21_N12
\inst3|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~39_combout\ = (\inst3|counter\(17) & (!\inst3|Add1~37\)) # (!\inst3|counter\(17) & ((\inst3|Add1~37\) # (GND)))
-- \inst3|Add1~40\ = CARRY((!\inst3|Add1~37\) # (!\inst3|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(17),
	datad => VCC,
	cin => \inst3|Add1~37\,
	combout => \inst3|Add1~39_combout\,
	cout => \inst3|Add1~40\);

-- Location: LCCOMB_X38_Y23_N12
\inst3|Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~41_combout\ = (\inst3|Add1~39_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~39_combout\,
	datad => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~41_combout\);

-- Location: FF_X38_Y23_N13
\inst3|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~41_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(17));

-- Location: LCCOMB_X38_Y21_N14
\inst3|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~42_combout\ = (\inst3|counter\(18) & (\inst3|Add1~40\ $ (GND))) # (!\inst3|counter\(18) & (!\inst3|Add1~40\ & VCC))
-- \inst3|Add1~43\ = CARRY((\inst3|counter\(18) & !\inst3|Add1~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(18),
	datad => VCC,
	cin => \inst3|Add1~40\,
	combout => \inst3|Add1~42_combout\,
	cout => \inst3|Add1~43\);

-- Location: LCCOMB_X38_Y23_N10
\inst3|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~44_combout\ = (\inst3|Add1~42_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add1~42_combout\,
	datad => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~44_combout\);

-- Location: FF_X38_Y23_N11
\inst3|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~44_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(18));

-- Location: LCCOMB_X38_Y21_N16
\inst3|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~45_combout\ = (\inst3|counter\(19) & (!\inst3|Add1~43\)) # (!\inst3|counter\(19) & ((\inst3|Add1~43\) # (GND)))
-- \inst3|Add1~46\ = CARRY((!\inst3|Add1~43\) # (!\inst3|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(19),
	datad => VCC,
	cin => \inst3|Add1~43\,
	combout => \inst3|Add1~45_combout\,
	cout => \inst3|Add1~46\);

-- Location: LCCOMB_X38_Y23_N4
\inst3|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~47_combout\ = (\inst3|Add1~45_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add1~45_combout\,
	datad => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~47_combout\);

-- Location: FF_X38_Y23_N5
\inst3|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~47_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(19));

-- Location: LCCOMB_X38_Y21_N18
\inst3|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~48_combout\ = (\inst3|counter\(20) & (\inst3|Add1~46\ $ (GND))) # (!\inst3|counter\(20) & (!\inst3|Add1~46\ & VCC))
-- \inst3|Add1~49\ = CARRY((\inst3|counter\(20) & !\inst3|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(20),
	datad => VCC,
	cin => \inst3|Add1~46\,
	combout => \inst3|Add1~48_combout\,
	cout => \inst3|Add1~49\);

-- Location: LCCOMB_X38_Y23_N24
\inst3|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~50_combout\ = (\inst3|Add1~48_combout\ & \inst3|counter[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add1~48_combout\,
	datad => \inst3|counter[12]~1_combout\,
	combout => \inst3|Add1~50_combout\);

-- Location: FF_X38_Y23_N25
\inst3|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~50_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(20));

-- Location: LCCOMB_X38_Y21_N20
\inst3|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~61_combout\ = (\inst3|counter\(21) & (!\inst3|Add1~49\)) # (!\inst3|counter\(21) & ((\inst3|Add1~49\) # (GND)))
-- \inst3|Add1~62\ = CARRY((!\inst3|Add1~49\) # (!\inst3|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(21),
	datad => VCC,
	cin => \inst3|Add1~49\,
	combout => \inst3|Add1~61_combout\,
	cout => \inst3|Add1~62\);

-- Location: LCCOMB_X38_Y21_N26
\inst3|counter[21]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[21]~4_combout\ = (\inst3|counter[22]~3_combout\ & (\inst3|Add1~61_combout\ & ((\inst3|counter[12]~1_combout\)))) # (!\inst3|counter[22]~3_combout\ & (((\inst3|counter\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~61_combout\,
	datab => \inst3|counter[22]~3_combout\,
	datac => \inst3|counter\(21),
	datad => \inst3|counter[12]~1_combout\,
	combout => \inst3|counter[21]~4_combout\);

-- Location: FF_X38_Y21_N27
\inst3|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(21));

-- Location: LCCOMB_X38_Y21_N22
\inst3|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~63_combout\ = \inst3|Add1~62\ $ (!\inst3|counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|counter\(22),
	cin => \inst3|Add1~62\,
	combout => \inst3|Add1~63_combout\);

-- Location: LCCOMB_X38_Y21_N24
\inst3|counter[22]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[22]~5_combout\ = (\inst3|counter[22]~3_combout\ & (\inst3|Add1~63_combout\ & ((\inst3|counter[12]~1_combout\)))) # (!\inst3|counter[22]~3_combout\ & (((\inst3|counter\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~63_combout\,
	datab => \inst3|counter[22]~3_combout\,
	datac => \inst3|counter\(22),
	datad => \inst3|counter[12]~1_combout\,
	combout => \inst3|counter[22]~5_combout\);

-- Location: FF_X38_Y21_N25
\inst3|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(22));

-- Location: LCCOMB_X38_Y21_N30
\inst3|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~3_combout\ = (!\inst3|counter\(21) & !\inst3|counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|counter\(21),
	datad => \inst3|counter\(22),
	combout => \inst3|LessThan2~3_combout\);

-- Location: LCCOMB_X37_Y23_N24
\inst3|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~7_combout\ = (!\inst3|counter\(11) & (!\inst3|counter\(10) & (\inst3|LessThan3~2_combout\ & \inst3|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(11),
	datab => \inst3|counter\(10),
	datac => \inst3|LessThan3~2_combout\,
	datad => \inst3|LessThan3~6_combout\,
	combout => \inst3|LessThan3~7_combout\);

-- Location: LCCOMB_X34_Y23_N24
\inst3|counter[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[12]~0_combout\ = (\inst3|LessThan3~7_combout\ & (((\inst3|output[7]~25_combout\ & \inst3|LessThan2~2_combout\)) # (!\inst3|state.scanning~q\))) # (!\inst3|LessThan3~7_combout\ & (((\inst3|output[7]~25_combout\ & 
-- \inst3|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan3~7_combout\,
	datab => \inst3|state.scanning~q\,
	datac => \inst3|output[7]~25_combout\,
	datad => \inst3|LessThan2~2_combout\,
	combout => \inst3|counter[12]~0_combout\);

-- Location: LCCOMB_X34_Y23_N30
\inst3|counter[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[12]~1_combout\ = (\inst3|state.activating~q\) # ((\inst3|LessThan2~3_combout\ & (!\inst3|state.waiting~q\ & \inst3|counter[12]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan2~3_combout\,
	datab => \inst3|state.waiting~q\,
	datac => \inst3|state.activating~q\,
	datad => \inst3|counter[12]~0_combout\,
	combout => \inst3|counter[12]~1_combout\);

-- Location: LCCOMB_X37_Y22_N28
\inst3|Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~51_combout\ = (\inst3|counter[12]~1_combout\ & \inst3|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter[12]~1_combout\,
	datac => \inst3|Add1~10_combout\,
	combout => \inst3|Add1~51_combout\);

-- Location: FF_X37_Y22_N29
\inst3|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|Add1~51_combout\,
	ena => \inst3|counter[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(5));

-- Location: LCCOMB_X37_Y22_N8
\inst3|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~5_combout\ = ((!\inst3|counter\(8)) # (!\inst3|counter\(6))) # (!\inst3|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(7),
	datac => \inst3|counter\(6),
	datad => \inst3|counter\(8),
	combout => \inst3|LessThan3~5_combout\);

-- Location: LCCOMB_X37_Y22_N10
\inst3|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~6_combout\ = (!\inst3|counter\(9) & (((\inst3|LessThan3~5_combout\) # (!\inst3|LessThan3~3_combout\)) # (!\inst3|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(5),
	datab => \inst3|counter\(9),
	datac => \inst3|LessThan3~5_combout\,
	datad => \inst3|LessThan3~3_combout\,
	combout => \inst3|LessThan3~6_combout\);

-- Location: LCCOMB_X37_Y23_N26
\inst3|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state~13_combout\ = (\inst3|LessThan3~6_combout\ & (\inst3|LessThan2~3_combout\ & (\inst3|LessThan3~2_combout\ & \inst3|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan3~6_combout\,
	datab => \inst3|LessThan2~3_combout\,
	datac => \inst3|LessThan3~2_combout\,
	datad => \inst3|LessThan3~4_combout\,
	combout => \inst3|state~13_combout\);

-- Location: LCCOMB_X36_Y23_N24
\inst3|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state~17_combout\ = (\inst3|state.init~q\ & (((\inst3|state~13_combout\) # (!\inst3|state.final~q\)))) # (!\inst3|state.init~q\ & (\inst|enable_3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable_3~combout\,
	datab => \inst3|state.final~q\,
	datac => \inst3|state.init~q\,
	datad => \inst3|state~13_combout\,
	combout => \inst3|state~17_combout\);

-- Location: FF_X36_Y23_N25
\inst3|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state.init~q\);

-- Location: LCCOMB_X37_Y23_N10
\inst3|state.activating~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state.activating~0_combout\ = !\inst3|state.init~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|state.init~q\,
	combout => \inst3|state.activating~0_combout\);

-- Location: FF_X37_Y23_N11
\inst3|state.activating\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|state.activating~0_combout\,
	ena => \inst3|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state.activating~q\);

-- Location: LCCOMB_X37_Y23_N12
\inst3|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state~18_combout\ = (!\inst3|state.activating~q\ & (\inst3|state.init~q\ & (!\inst3|state.final~q\ & !\inst3|state.waiting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.activating~q\,
	datab => \inst3|state.init~q\,
	datac => \inst3|state.final~q\,
	datad => \inst3|state.waiting~q\,
	combout => \inst3|state~18_combout\);

-- Location: FF_X37_Y23_N13
\inst3|state.final\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|state~18_combout\,
	ena => \inst3|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state.final~q\);

-- Location: LCCOMB_X36_Y19_N24
\inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~9_combout\ = (\inst|state.controller3~q\ & (\inst|LessThan0~4_combout\ & ((\inst3|state.final~q\) # (!\inst3|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.controller3~q\,
	datab => \inst3|state.final~q\,
	datac => \inst3|state.init~q\,
	datad => \inst|LessThan0~4_combout\,
	combout => \inst|process_0~9_combout\);

-- Location: FF_X36_Y19_N23
\inst|state.wait3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst|process_0~9_combout\,
	sload => VCC,
	ena => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.wait3~q\);

-- Location: LCCOMB_X36_Y19_N22
\inst|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~11_combout\ = (\inst|process_0~9_combout\) # ((\inst|Equal0~6_combout\ & \inst|state.wait3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~6_combout\,
	datac => \inst|state.wait3~q\,
	datad => \inst|process_0~9_combout\,
	combout => \inst|state~11_combout\);

-- Location: LCCOMB_X36_Y19_N28
\inst|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~10_combout\ = ((!\inst|state.wait1~q\ & !\inst|state.wait2~q\)) # (!\inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.wait1~q\,
	datac => \inst|state.wait2~q\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|state~10_combout\);

-- Location: LCCOMB_X36_Y19_N6
\inst|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~12_combout\ = (\inst|process_0~8_combout\) # ((\inst|process_0~7_combout\) # ((\inst|state~11_combout\) # (!\inst|state~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~8_combout\,
	datab => \inst|process_0~7_combout\,
	datac => \inst|state~11_combout\,
	datad => \inst|state~10_combout\,
	combout => \inst|state~12_combout\);

-- Location: LCCOMB_X37_Y19_N28
\inst|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~15_combout\ = (\inst|process_0~7_combout\) # ((!\inst|state~12_combout\ & \inst|state.wait1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state~12_combout\,
	datac => \inst|state.wait1~q\,
	datad => \inst|process_0~7_combout\,
	combout => \inst|state~15_combout\);

-- Location: FF_X37_Y19_N29
\inst|state.wait1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.wait1~q\);

-- Location: LCCOMB_X36_Y19_N10
\inst|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~10_combout\ = (\inst|state.wait1~q\ & \inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.wait1~q\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|process_0~10_combout\);

-- Location: FF_X36_Y19_N11
\inst|state.controller2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst|process_0~10_combout\,
	ena => \inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.controller2~q\);

-- Location: LCCOMB_X36_Y19_N30
\inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~8_combout\ = (\inst|state.controller2~q\ & (\inst|LessThan0~4_combout\ & ((\inst2|state.final~q\) # (!\inst2|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init~q\,
	datab => \inst2|state.final~q\,
	datac => \inst|state.controller2~q\,
	datad => \inst|LessThan0~4_combout\,
	combout => \inst|process_0~8_combout\);

-- Location: LCCOMB_X36_Y19_N4
\inst|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~13_combout\ = (!\inst|process_0~8_combout\ & (!\inst|process_0~9_combout\ & (!\inst|process_0~7_combout\ & \inst|state~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~8_combout\,
	datab => \inst|process_0~9_combout\,
	datac => \inst|process_0~7_combout\,
	datad => \inst|state~10_combout\,
	combout => \inst|state~13_combout\);

-- Location: LCCOMB_X36_Y19_N12
\inst|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~14_combout\ = ((\inst|state.controller1~q\ & ((!\inst|Equal0~6_combout\) # (!\inst|state.wait3~q\)))) # (!\inst|state~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.controller1~q\,
	datab => \inst|state~13_combout\,
	datac => \inst|state.wait3~q\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|state~14_combout\);

-- Location: LCCOMB_X37_Y19_N30
\inst|state.controller1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.controller1~feeder_combout\ = \inst|state~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state~14_combout\,
	combout => \inst|state.controller1~feeder_combout\);

-- Location: FF_X37_Y19_N31
\inst|state.controller1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state.controller1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.controller1~q\);

-- Location: LCCOMB_X36_Y19_N14
\inst|enable_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable_2~0_combout\ = (\inst|state.controller3~q\) # (!\inst|state.controller1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.controller1~q\,
	datad => \inst|state.controller3~q\,
	combout => \inst|enable_2~0_combout\);

-- Location: LCCOMB_X36_Y19_N0
\inst|enable_2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable_2~combout\ = (\inst|enable_2~0_combout\ & (\inst|enable_2~combout\)) # (!\inst|enable_2~0_combout\ & ((\inst|state.controller2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|enable_2~combout\,
	datac => \inst|enable_2~0_combout\,
	datad => \inst|state.controller2~q\,
	combout => \inst|enable_2~combout\);

-- Location: LCCOMB_X37_Y20_N20
\inst2|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~17_combout\ = (\inst2|state.init~q\ & (((\inst2|state~13_combout\) # (!\inst2|state.final~q\)))) # (!\inst2|state.init~q\ & (\inst|enable_2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable_2~combout\,
	datab => \inst2|state~13_combout\,
	datac => \inst2|state.init~q\,
	datad => \inst2|state.final~q\,
	combout => \inst2|state~17_combout\);

-- Location: FF_X37_Y20_N21
\inst2|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init~q\);

-- Location: LCCOMB_X36_Y20_N24
\inst2|trigger~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|trigger~1_combout\ = (\inst2|state.init~q\ & (\inst2|state.activating~q\)) # (!\inst2|state.init~q\ & ((!\inst|enable_2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.activating~q\,
	datac => \inst2|state.init~q\,
	datad => \inst|enable_2~combout\,
	combout => \inst2|trigger~1_combout\);

-- Location: FF_X36_Y20_N25
\inst2|trigger~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|state.init~q\,
	sload => VCC,
	ena => \inst2|trigger~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|trigger~reg0_q\);

-- Location: LCCOMB_X36_Y20_N2
\inst2|trigger~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|trigger~2_combout\ = (!\inst2|state.init~q\) # (!\inst2|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan0~2_combout\,
	datac => \inst2|state.init~q\,
	combout => \inst2|trigger~2_combout\);

-- Location: FF_X36_Y20_N3
\inst2|trigger~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|trigger~2_combout\,
	ena => \inst2|trigger~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|trigger~en_q\);

-- Location: LCCOMB_X37_Y23_N8
\inst3|trigger~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|trigger~1_combout\ = (\inst3|state.init~q\ & (\inst3|state.activating~q\)) # (!\inst3|state.init~q\ & ((!\inst|enable_3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.activating~q\,
	datac => \inst3|state.init~q\,
	datad => \inst|enable_3~combout\,
	combout => \inst3|trigger~1_combout\);

-- Location: FF_X37_Y23_N9
\inst3|trigger~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|state.init~q\,
	sload => VCC,
	ena => \inst3|trigger~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|trigger~reg0_q\);

-- Location: LCCOMB_X37_Y23_N30
\inst3|trigger~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|trigger~2_combout\ = (!\inst3|LessThan0~2_combout\) # (!\inst3|state.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|state.init~q\,
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|trigger~2_combout\);

-- Location: FF_X37_Y23_N31
\inst3|trigger~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|trigger~2_combout\,
	ena => \inst3|trigger~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|trigger~en_q\);

-- Location: LCCOMB_X46_Y20_N28
\inst7|trigger~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|trigger~reg0feeder_combout\ = \inst7|state.init~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|state.init~q\,
	combout => \inst7|trigger~reg0feeder_combout\);

-- Location: LCCOMB_X40_Y24_N0
\inst7|trigger~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|trigger~1_combout\ = (\inst7|state.init~q\ & ((\inst7|state.activating~q\))) # (!\inst7|state.init~q\ & (!\inst|enable_1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.init~q\,
	datac => \inst|enable_1~combout\,
	datad => \inst7|state.activating~q\,
	combout => \inst7|trigger~1_combout\);

-- Location: FF_X46_Y20_N29
\inst7|trigger~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|trigger~reg0feeder_combout\,
	ena => \inst7|trigger~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|trigger~reg0_q\);

-- Location: LCCOMB_X46_Y20_N6
\inst7|trigger~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|trigger~2_combout\ = (!\inst7|LessThan0~2_combout\) # (!\inst7|state.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|state.init~q\,
	datad => \inst7|LessThan0~2_combout\,
	combout => \inst7|trigger~2_combout\);

-- Location: FF_X46_Y20_N7
\inst7|trigger~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|trigger~2_combout\,
	ena => \inst7|trigger~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|trigger~en_q\);

-- Location: LCCOMB_X41_Y27_N2
\inst5|counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[0]~32_combout\ = \inst5|counter\(0) $ (VCC)
-- \inst5|counter[0]~33\ = CARRY(\inst5|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(0),
	datad => VCC,
	combout => \inst5|counter[0]~32_combout\,
	cout => \inst5|counter[0]~33\);

-- Location: LCCOMB_X41_Y30_N4
\inst5|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~16_combout\ = (!\inst5|counter\(7) & (!\inst5|counter\(12) & (\inst5|counter\(6) & !\inst5|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(7),
	datab => \inst5|counter\(12),
	datac => \inst5|counter\(6),
	datad => \inst5|counter\(3),
	combout => \inst5|process_0~16_combout\);

-- Location: LCCOMB_X41_Y30_N14
\inst5|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~8_combout\ = (\inst5|counter\(9) & (!\inst5|counter\(5) & \inst5|Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(9),
	datac => \inst5|counter\(5),
	datad => \inst5|Equal4~2_combout\,
	combout => \inst5|process_0~8_combout\);

-- Location: LCCOMB_X41_Y26_N10
\inst5|counter[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[20]~73_combout\ = (\inst5|counter\(20) & (\inst5|counter[19]~72\ $ (GND))) # (!\inst5|counter\(20) & (!\inst5|counter[19]~72\ & VCC))
-- \inst5|counter[20]~74\ = CARRY((\inst5|counter\(20) & !\inst5|counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(20),
	datad => VCC,
	cin => \inst5|counter[19]~72\,
	combout => \inst5|counter[20]~73_combout\,
	cout => \inst5|counter[20]~74\);

-- Location: LCCOMB_X41_Y26_N12
\inst5|counter[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[21]~75_combout\ = (\inst5|counter\(21) & (!\inst5|counter[20]~74\)) # (!\inst5|counter\(21) & ((\inst5|counter[20]~74\) # (GND)))
-- \inst5|counter[21]~76\ = CARRY((!\inst5|counter[20]~74\) # (!\inst5|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(21),
	datad => VCC,
	cin => \inst5|counter[20]~74\,
	combout => \inst5|counter[21]~75_combout\,
	cout => \inst5|counter[21]~76\);

-- Location: FF_X41_Y26_N13
\inst5|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[21]~75_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(21));

-- Location: LCCOMB_X41_Y26_N14
\inst5|counter[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[22]~77_combout\ = (\inst5|counter\(22) & (\inst5|counter[21]~76\ $ (GND))) # (!\inst5|counter\(22) & (!\inst5|counter[21]~76\ & VCC))
-- \inst5|counter[22]~78\ = CARRY((\inst5|counter\(22) & !\inst5|counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(22),
	datad => VCC,
	cin => \inst5|counter[21]~76\,
	combout => \inst5|counter[22]~77_combout\,
	cout => \inst5|counter[22]~78\);

-- Location: FF_X40_Y26_N9
\inst5|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|counter[22]~77_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(22));

-- Location: LCCOMB_X39_Y30_N26
\inst5|state.init0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state.init0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst5|state.init0~feeder_combout\);

-- Location: FF_X39_Y30_N27
\inst5|state.init0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state.init0~feeder_combout\,
	ena => \inst5|state~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init0~q\);

-- Location: LCCOMB_X40_Y26_N14
\inst5|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~12_combout\ = (!\inst5|counter\(16) & (!\inst5|counter\(17) & (!\inst5|state.init0~q\ & !\inst5|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(16),
	datab => \inst5|counter\(17),
	datac => \inst5|state.init0~q\,
	datad => \inst5|counter\(13),
	combout => \inst5|process_0~12_combout\);

-- Location: LCCOMB_X40_Y26_N20
\inst5|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~13_combout\ = (!\inst5|counter\(15) & (\inst5|counter\(18) & (!\inst5|counter\(4) & \inst5|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(15),
	datab => \inst5|counter\(18),
	datac => \inst5|counter\(4),
	datad => \inst5|counter\(11),
	combout => \inst5|process_0~13_combout\);

-- Location: LCCOMB_X40_Y26_N10
\inst5|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~14_combout\ = (\inst5|counter\(19) & (\inst5|counter\(22) & (\inst5|process_0~12_combout\ & \inst5|process_0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(19),
	datab => \inst5|counter\(22),
	datac => \inst5|process_0~12_combout\,
	datad => \inst5|process_0~13_combout\,
	combout => \inst5|process_0~14_combout\);

-- Location: LCCOMB_X41_Y30_N10
\inst5|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~20_combout\ = (\inst5|counter\(14) & (\inst5|process_0~16_combout\ & (\inst5|process_0~8_combout\ & \inst5|process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(14),
	datab => \inst5|process_0~16_combout\,
	datac => \inst5|process_0~8_combout\,
	datad => \inst5|process_0~14_combout\,
	combout => \inst5|process_0~20_combout\);

-- Location: LCCOMB_X39_Y30_N2
\inst5|state~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~59_combout\ = (\inst5|state~41_combout\ & (!\inst5|process_0~18_combout\ & (\inst5|process_0~20_combout\))) # (!\inst5|state~41_combout\ & (((\inst5|state.init1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~18_combout\,
	datab => \inst5|process_0~20_combout\,
	datac => \inst5|state.init1~q\,
	datad => \inst5|state~41_combout\,
	combout => \inst5|state~59_combout\);

-- Location: FF_X39_Y30_N3
\inst5|state.init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init1~q\);

-- Location: LCCOMB_X40_Y26_N16
\inst5|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~3_combout\ = (\inst5|counter\(16) & (\inst5|counter\(17) & \inst5|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(16),
	datac => \inst5|counter\(17),
	datad => \inst5|counter\(18),
	combout => \inst5|Equal4~3_combout\);

-- Location: LCCOMB_X41_Y30_N24
\inst5|Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal6~3_combout\ = (!\inst5|counter\(14) & !\inst5|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|counter\(14),
	datad => \inst5|counter\(6),
	combout => \inst5|Equal6~3_combout\);

-- Location: LCCOMB_X40_Y30_N12
\inst5|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~0_combout\ = (!\inst5|counter\(12) & (!\inst5|counter\(9) & (!\inst5|counter\(7) & \inst5|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(12),
	datab => \inst5|counter\(9),
	datac => \inst5|counter\(7),
	datad => \inst5|Equal6~3_combout\,
	combout => \inst5|Equal4~0_combout\);

-- Location: LCCOMB_X40_Y26_N6
\inst5|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal6~0_combout\ = (!\inst5|counter\(22) & (!\inst5|counter\(19) & !\inst5|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(22),
	datac => \inst5|counter\(19),
	datad => \inst5|counter\(11),
	combout => \inst5|Equal6~0_combout\);

-- Location: LCCOMB_X40_Y26_N24
\inst5|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~4_combout\ = (\inst5|counter\(15) & (!\inst5|counter\(3) & (!\inst5|counter\(4) & \inst5|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(15),
	datab => \inst5|counter\(3),
	datac => \inst5|counter\(4),
	datad => \inst5|counter\(13),
	combout => \inst5|Equal4~4_combout\);

-- Location: LCCOMB_X40_Y30_N16
\inst5|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~5_combout\ = (\inst5|Equal4~0_combout\ & (\inst5|counter\(5) & (\inst5|Equal6~0_combout\ & \inst5|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal4~0_combout\,
	datab => \inst5|counter\(5),
	datac => \inst5|Equal6~0_combout\,
	datad => \inst5|Equal4~4_combout\,
	combout => \inst5|Equal4~5_combout\);

-- Location: LCCOMB_X40_Y30_N14
\inst5|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~9_combout\ = (\inst5|Equal4~2_combout\ & (\inst5|state.init1~q\ & (\inst5|Equal4~3_combout\ & \inst5|Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal4~2_combout\,
	datab => \inst5|state.init1~q\,
	datac => \inst5|Equal4~3_combout\,
	datad => \inst5|Equal4~5_combout\,
	combout => \inst5|process_0~9_combout\);

-- Location: LCCOMB_X41_Y30_N8
\inst5|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~15_combout\ = (!\inst5|counter\(5) & \inst5|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(5),
	datac => \inst5|counter\(9),
	combout => \inst5|process_0~15_combout\);

-- Location: LCCOMB_X41_Y30_N18
\inst5|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~17_combout\ = (\inst5|counter\(14) & (\inst5|process_0~15_combout\ & (\inst5|process_0~16_combout\ & \inst5|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(14),
	datab => \inst5|process_0~15_combout\,
	datac => \inst5|process_0~16_combout\,
	datad => \inst5|Equal4~2_combout\,
	combout => \inst5|process_0~17_combout\);

-- Location: LCCOMB_X40_Y26_N4
\inst5|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal6~1_combout\ = (!\inst5|counter\(17) & (!\inst5|counter\(16) & !\inst5|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(17),
	datac => \inst5|counter\(16),
	datad => \inst5|counter\(13),
	combout => \inst5|Equal6~1_combout\);

-- Location: LCCOMB_X39_Y30_N0
\inst5|state~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~60_combout\ = (\inst5|state~41_combout\ & (!\inst5|process_0~18_combout\ & (\inst5|process_0~9_combout\))) # (!\inst5|state~41_combout\ & (((\inst5|state.init2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~18_combout\,
	datab => \inst5|process_0~9_combout\,
	datac => \inst5|state.init2~q\,
	datad => \inst5|state~41_combout\,
	combout => \inst5|state~60_combout\);

-- Location: FF_X39_Y30_N1
\inst5|state.init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init2~q\);

-- Location: LCCOMB_X40_Y26_N22
\inst5|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~10_combout\ = (\inst5|counter\(15) & (\inst5|counter\(4) & \inst5|state.init2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(15),
	datac => \inst5|counter\(4),
	datad => \inst5|state.init2~q\,
	combout => \inst5|process_0~10_combout\);

-- Location: LCCOMB_X40_Y26_N0
\inst5|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~11_combout\ = (\inst5|Equal6~0_combout\ & (\inst5|Equal6~1_combout\ & (\inst5|process_0~10_combout\ & !\inst5|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal6~0_combout\,
	datab => \inst5|Equal6~1_combout\,
	datac => \inst5|process_0~10_combout\,
	datad => \inst5|counter\(18),
	combout => \inst5|process_0~11_combout\);

-- Location: LCCOMB_X41_Y30_N12
\inst5|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~36_combout\ = (!\inst5|process_0~18_combout\ & (((!\inst5|process_0~11_combout\ & !\inst5|process_0~14_combout\)) # (!\inst5|process_0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~18_combout\,
	datab => \inst5|process_0~17_combout\,
	datac => \inst5|process_0~11_combout\,
	datad => \inst5|process_0~14_combout\,
	combout => \inst5|state~36_combout\);

-- Location: LCCOMB_X41_Y30_N20
\inst5|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~19_combout\ = (\inst5|counter\(14) & (\inst5|process_0~16_combout\ & (\inst5|process_0~11_combout\ & \inst5|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(14),
	datab => \inst5|process_0~16_combout\,
	datac => \inst5|process_0~11_combout\,
	datad => \inst5|process_0~8_combout\,
	combout => \inst5|process_0~19_combout\);

-- Location: LCCOMB_X39_Y30_N14
\inst5|state~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~57_combout\ = (\inst5|state~41_combout\ & (!\inst5|process_0~18_combout\ & (\inst5|process_0~19_combout\))) # (!\inst5|state~41_combout\ & (((\inst5|state.init3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~18_combout\,
	datab => \inst5|process_0~19_combout\,
	datac => \inst5|state.init3~q\,
	datad => \inst5|state~41_combout\,
	combout => \inst5|state~57_combout\);

-- Location: FF_X39_Y30_N15
\inst5|state.init3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init3~q\);

-- Location: LCCOMB_X28_Y25_N2
\inst4|counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[0]~31_combout\ = \inst4|counter\(0) $ (VCC)
-- \inst4|counter[0]~32\ = CARRY(\inst4|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(0),
	datad => VCC,
	combout => \inst4|counter[0]~31_combout\,
	cout => \inst4|counter[0]~32\);

-- Location: LCCOMB_X30_Y25_N14
\inst4|lineCount[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lineCount[1]~2_combout\ = (\inst4|lineCount~0_combout\ & (!\inst4|state.update~q\ & (\inst4|lineCount\(0) $ (\inst4|lineCount\(1))))) # (!\inst4|lineCount~0_combout\ & (((\inst4|lineCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|state.update~q\,
	datac => \inst4|lineCount\(1),
	datad => \inst4|lineCount~0_combout\,
	combout => \inst4|lineCount[1]~2_combout\);

-- Location: FF_X30_Y25_N15
\inst4|lineCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lineCount[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lineCount\(1));

-- Location: LCCOMB_X30_Y25_N22
\inst4|lcd_data~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~142_combout\ = (\inst4|lineCount\(1) & \inst4|lineCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|lineCount\(1),
	datad => \inst4|lineCount\(0),
	combout => \inst4|lcd_data~142_combout\);

-- Location: LCCOMB_X31_Y29_N0
\inst4|charCount[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|charCount[0]~5_combout\ = \inst4|charCount\(0) $ (VCC)
-- \inst4|charCount[0]~6\ = CARRY(\inst4|charCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(0),
	datad => VCC,
	combout => \inst4|charCount[0]~5_combout\,
	cout => \inst4|charCount[0]~6\);

-- Location: LCCOMB_X30_Y25_N24
\inst4|charCount[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|charCount[4]~15_combout\ = (\inst4|state.update~q\) # (!\inst4|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|state.update~q\,
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|charCount[4]~15_combout\);

-- Location: FF_X31_Y29_N1
\inst4|charCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|charCount[0]~5_combout\,
	sclr => \inst4|charCount[4]~15_combout\,
	ena => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|charCount\(0));

-- Location: LCCOMB_X31_Y29_N2
\inst4|charCount[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|charCount[1]~7_combout\ = (\inst4|charCount\(1) & (!\inst4|charCount[0]~6\)) # (!\inst4|charCount\(1) & ((\inst4|charCount[0]~6\) # (GND)))
-- \inst4|charCount[1]~8\ = CARRY((!\inst4|charCount[0]~6\) # (!\inst4|charCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(1),
	datad => VCC,
	cin => \inst4|charCount[0]~6\,
	combout => \inst4|charCount[1]~7_combout\,
	cout => \inst4|charCount[1]~8\);

-- Location: FF_X31_Y29_N3
\inst4|charCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|charCount[1]~7_combout\,
	sclr => \inst4|charCount[4]~15_combout\,
	ena => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|charCount\(1));

-- Location: LCCOMB_X31_Y29_N4
\inst4|charCount[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|charCount[2]~9_combout\ = (\inst4|charCount\(2) & (\inst4|charCount[1]~8\ $ (GND))) # (!\inst4|charCount\(2) & (!\inst4|charCount[1]~8\ & VCC))
-- \inst4|charCount[2]~10\ = CARRY((\inst4|charCount\(2) & !\inst4|charCount[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(2),
	datad => VCC,
	cin => \inst4|charCount[1]~8\,
	combout => \inst4|charCount[2]~9_combout\,
	cout => \inst4|charCount[2]~10\);

-- Location: FF_X31_Y29_N5
\inst4|charCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|charCount[2]~9_combout\,
	sclr => \inst4|charCount[4]~15_combout\,
	ena => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|charCount\(2));

-- Location: LCCOMB_X31_Y29_N6
\inst4|charCount[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|charCount[3]~11_combout\ = (\inst4|charCount\(3) & (!\inst4|charCount[2]~10\)) # (!\inst4|charCount\(3) & ((\inst4|charCount[2]~10\) # (GND)))
-- \inst4|charCount[3]~12\ = CARRY((!\inst4|charCount[2]~10\) # (!\inst4|charCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datad => VCC,
	cin => \inst4|charCount[2]~10\,
	combout => \inst4|charCount[3]~11_combout\,
	cout => \inst4|charCount[3]~12\);

-- Location: FF_X31_Y29_N7
\inst4|charCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|charCount[3]~11_combout\,
	sclr => \inst4|charCount[4]~15_combout\,
	ena => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|charCount\(3));

-- Location: LCCOMB_X31_Y29_N22
\inst4|lcd_data~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~110_combout\ = (\inst4|charCount\(2) & !\inst4|charCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|charCount\(2),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~110_combout\);

-- Location: LCCOMB_X31_Y29_N8
\inst4|charCount[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|charCount[4]~13_combout\ = \inst4|charCount\(4) $ (!\inst4|charCount[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(4),
	cin => \inst4|charCount[3]~12\,
	combout => \inst4|charCount[4]~13_combout\);

-- Location: FF_X31_Y29_N9
\inst4|charCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|charCount[4]~13_combout\,
	sclr => \inst4|charCount[4]~15_combout\,
	ena => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|charCount\(4));

-- Location: LCCOMB_X31_Y29_N20
\inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = ((\inst4|charCount\(1)) # ((\inst4|charCount\(0)) # (!\inst4|charCount\(4)))) # (!\inst4|lcd_data~110_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~110_combout\,
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(4),
	datad => \inst4|charCount\(0),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y25_N18
\inst4|lineCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lineCount~0_combout\ = (\inst4|state.update~q\ & (((\inst4|process_0~12_combout\)))) # (!\inst4|state.update~q\ & (!\inst4|lcd_data~142_combout\ & (!\inst4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~142_combout\,
	datab => \inst4|Equal0~0_combout\,
	datac => \inst4|state.update~q\,
	datad => \inst4|process_0~12_combout\,
	combout => \inst4|lineCount~0_combout\);

-- Location: LCCOMB_X30_Y25_N12
\inst4|lineCount[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lineCount[0]~1_combout\ = (\inst4|lineCount\(0) & ((!\inst4|lineCount~0_combout\))) # (!\inst4|lineCount\(0) & (!\inst4|state.update~q\ & \inst4|lineCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.update~q\,
	datac => \inst4|lineCount\(0),
	datad => \inst4|lineCount~0_combout\,
	combout => \inst4|lineCount[0]~1_combout\);

-- Location: FF_X30_Y25_N13
\inst4|lineCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lineCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lineCount\(0));

-- Location: LCCOMB_X30_Y25_N26
\inst4|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state~11_combout\ = (\inst4|lineCount\(0) & (\inst4|lineCount\(1) & (!\inst4|state.update~q\ & !\inst4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|lineCount\(1),
	datac => \inst4|state.update~q\,
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|state~11_combout\);

-- Location: LCCOMB_X30_Y25_N8
\inst4|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state~10_combout\ = (\inst4|state~11_combout\) # ((\inst4|state.update~q\ & !\inst4|process_0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state~11_combout\,
	datac => \inst4|state.update~q\,
	datad => \inst4|process_0~12_combout\,
	combout => \inst4|state~10_combout\);

-- Location: FF_X30_Y25_N9
\inst4|state.update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.update~q\);

-- Location: LCCOMB_X29_Y25_N22
\inst4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (\inst4|counter\(3) & ((\inst4|counter\(2)) # ((\inst4|counter\(1) & \inst4|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(3),
	datab => \inst4|counter\(2),
	datac => \inst4|counter\(1),
	datad => \inst4|counter\(0),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y24_N14
\inst4|counter[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[22]~77_combout\ = (\inst4|counter\(22) & (\inst4|counter[21]~76\ $ (GND))) # (!\inst4|counter\(22) & (!\inst4|counter[21]~76\ & VCC))
-- \inst4|counter[22]~78\ = CARRY((\inst4|counter\(22) & !\inst4|counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(22),
	datad => VCC,
	cin => \inst4|counter[21]~76\,
	combout => \inst4|counter[22]~77_combout\,
	cout => \inst4|counter[22]~78\);

-- Location: LCCOMB_X28_Y24_N16
\inst4|counter[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[23]~79_combout\ = (\inst4|counter\(23) & (!\inst4|counter[22]~78\)) # (!\inst4|counter\(23) & ((\inst4|counter[22]~78\) # (GND)))
-- \inst4|counter[23]~80\ = CARRY((!\inst4|counter[22]~78\) # (!\inst4|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(23),
	datad => VCC,
	cin => \inst4|counter[22]~78\,
	combout => \inst4|counter[23]~79_combout\,
	cout => \inst4|counter[23]~80\);

-- Location: FF_X28_Y24_N17
\inst4|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[23]~79_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(23));

-- Location: LCCOMB_X28_Y24_N18
\inst4|counter[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[24]~81_combout\ = (\inst4|counter\(24) & (\inst4|counter[23]~80\ $ (GND))) # (!\inst4|counter\(24) & (!\inst4|counter[23]~80\ & VCC))
-- \inst4|counter[24]~82\ = CARRY((\inst4|counter\(24) & !\inst4|counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(24),
	datad => VCC,
	cin => \inst4|counter[23]~80\,
	combout => \inst4|counter[24]~81_combout\,
	cout => \inst4|counter[24]~82\);

-- Location: FF_X28_Y24_N19
\inst4|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[24]~81_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(24));

-- Location: LCCOMB_X28_Y24_N20
\inst4|counter[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[25]~83_combout\ = (\inst4|counter\(25) & (!\inst4|counter[24]~82\)) # (!\inst4|counter\(25) & ((\inst4|counter[24]~82\) # (GND)))
-- \inst4|counter[25]~84\ = CARRY((!\inst4|counter[24]~82\) # (!\inst4|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(25),
	datad => VCC,
	cin => \inst4|counter[24]~82\,
	combout => \inst4|counter[25]~83_combout\,
	cout => \inst4|counter[25]~84\);

-- Location: FF_X28_Y24_N21
\inst4|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[25]~83_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(25));

-- Location: LCCOMB_X28_Y24_N22
\inst4|counter[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[26]~85_combout\ = (\inst4|counter\(26) & (\inst4|counter[25]~84\ $ (GND))) # (!\inst4|counter\(26) & (!\inst4|counter[25]~84\ & VCC))
-- \inst4|counter[26]~86\ = CARRY((\inst4|counter\(26) & !\inst4|counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(26),
	datad => VCC,
	cin => \inst4|counter[25]~84\,
	combout => \inst4|counter[26]~85_combout\,
	cout => \inst4|counter[26]~86\);

-- Location: FF_X28_Y24_N23
\inst4|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[26]~85_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(26));

-- Location: LCCOMB_X28_Y24_N24
\inst4|counter[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[27]~87_combout\ = (\inst4|counter\(27) & (!\inst4|counter[26]~86\)) # (!\inst4|counter\(27) & ((\inst4|counter[26]~86\) # (GND)))
-- \inst4|counter[27]~88\ = CARRY((!\inst4|counter[26]~86\) # (!\inst4|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(27),
	datad => VCC,
	cin => \inst4|counter[26]~86\,
	combout => \inst4|counter[27]~87_combout\,
	cout => \inst4|counter[27]~88\);

-- Location: FF_X28_Y24_N25
\inst4|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[27]~87_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(27));

-- Location: LCCOMB_X28_Y24_N26
\inst4|counter[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[28]~89_combout\ = (\inst4|counter\(28) & (\inst4|counter[27]~88\ $ (GND))) # (!\inst4|counter\(28) & (!\inst4|counter[27]~88\ & VCC))
-- \inst4|counter[28]~90\ = CARRY((\inst4|counter\(28) & !\inst4|counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(28),
	datad => VCC,
	cin => \inst4|counter[27]~88\,
	combout => \inst4|counter[28]~89_combout\,
	cout => \inst4|counter[28]~90\);

-- Location: FF_X28_Y24_N27
\inst4|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[28]~89_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(28));

-- Location: LCCOMB_X28_Y24_N28
\inst4|counter[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[29]~91_combout\ = (\inst4|counter\(29) & (!\inst4|counter[28]~90\)) # (!\inst4|counter\(29) & ((\inst4|counter[28]~90\) # (GND)))
-- \inst4|counter[29]~92\ = CARRY((!\inst4|counter[28]~90\) # (!\inst4|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(29),
	datad => VCC,
	cin => \inst4|counter[28]~90\,
	combout => \inst4|counter[29]~91_combout\,
	cout => \inst4|counter[29]~92\);

-- Location: FF_X28_Y24_N29
\inst4|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[29]~91_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(29));

-- Location: LCCOMB_X28_Y24_N30
\inst4|counter[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[30]~93_combout\ = \inst4|counter\(30) $ (!\inst4|counter[29]~92\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(30),
	cin => \inst4|counter[29]~92\,
	combout => \inst4|counter[30]~93_combout\);

-- Location: FF_X28_Y24_N31
\inst4|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[30]~93_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(30));

-- Location: LCCOMB_X29_Y25_N28
\inst4|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~0_combout\ = (!\inst4|counter\(6) & (!\inst4|counter\(9) & (!\inst4|counter\(30) & !\inst4|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(6),
	datab => \inst4|counter\(9),
	datac => \inst4|counter\(30),
	datad => \inst4|counter\(19),
	combout => \inst4|process_1~0_combout\);

-- Location: LCCOMB_X29_Y25_N4
\inst4|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~2_combout\ = (!\inst4|counter\(14) & (!\inst4|counter\(29) & !\inst4|counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(14),
	datac => \inst4|counter\(29),
	datad => \inst4|counter\(28),
	combout => \inst4|process_1~2_combout\);

-- Location: LCCOMB_X29_Y25_N14
\inst4|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~1_combout\ = (!\inst4|counter\(22) & (!\inst4|counter\(8) & (!\inst4|counter\(18) & !\inst4|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(22),
	datab => \inst4|counter\(8),
	datac => \inst4|counter\(18),
	datad => \inst4|counter\(11),
	combout => \inst4|process_1~1_combout\);

-- Location: LCCOMB_X29_Y24_N30
\inst4|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~4_combout\ = (!\inst4|counter\(27) & (!\inst4|counter\(25) & (!\inst4|counter\(24) & !\inst4|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(27),
	datab => \inst4|counter\(25),
	datac => \inst4|counter\(24),
	datad => \inst4|counter\(26),
	combout => \inst4|process_0~4_combout\);

-- Location: LCCOMB_X29_Y24_N8
\inst4|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~2_combout\ = (!\inst4|counter\(15) & (!\inst4|counter\(13) & (!\inst4|counter\(12) & !\inst4|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(15),
	datab => \inst4|counter\(13),
	datac => \inst4|counter\(12),
	datad => \inst4|counter\(16),
	combout => \inst4|process_0~2_combout\);

-- Location: LCCOMB_X28_Y25_N0
\inst4|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~1_combout\ = (!\inst4|counter\(5) & (!\inst4|counter\(7) & (!\inst4|counter\(10) & !\inst4|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(5),
	datab => \inst4|counter\(7),
	datac => \inst4|counter\(10),
	datad => \inst4|counter\(4),
	combout => \inst4|process_0~1_combout\);

-- Location: LCCOMB_X29_Y24_N4
\inst4|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~3_combout\ = (!\inst4|counter\(21) & (!\inst4|counter\(17) & (!\inst4|counter\(23) & !\inst4|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(21),
	datab => \inst4|counter\(17),
	datac => \inst4|counter\(23),
	datad => \inst4|counter\(20),
	combout => \inst4|process_0~3_combout\);

-- Location: LCCOMB_X29_Y24_N0
\inst4|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~5_combout\ = (\inst4|process_0~4_combout\ & (\inst4|process_0~2_combout\ & (\inst4|process_0~1_combout\ & \inst4|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_0~4_combout\,
	datab => \inst4|process_0~2_combout\,
	datac => \inst4|process_0~1_combout\,
	datad => \inst4|process_0~3_combout\,
	combout => \inst4|process_0~5_combout\);

-- Location: LCCOMB_X29_Y25_N2
\inst4|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~3_combout\ = (\inst4|process_1~0_combout\ & (\inst4|process_1~2_combout\ & (\inst4|process_1~1_combout\ & \inst4|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1~0_combout\,
	datab => \inst4|process_1~2_combout\,
	datac => \inst4|process_1~1_combout\,
	datad => \inst4|process_0~5_combout\,
	combout => \inst4|process_1~3_combout\);

-- Location: LCCOMB_X29_Y25_N12
\inst4|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~6_combout\ = ((!\inst4|LessThan0~0_combout\ & \inst4|process_1~3_combout\)) # (!\inst5|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~0_combout\,
	datac => \inst5|state.ready~q\,
	datad => \inst4|process_1~3_combout\,
	combout => \inst4|process_0~6_combout\);

-- Location: LCCOMB_X30_Y25_N30
\inst4|counter[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[14]~41_combout\ = (!\inst4|state.update~q\ & ((\inst4|Equal0~0_combout\ & ((\inst4|process_0~6_combout\))) # (!\inst4|Equal0~0_combout\ & (\inst4|lcd_data~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~142_combout\,
	datab => \inst4|Equal0~0_combout\,
	datac => \inst4|state.update~q\,
	datad => \inst4|process_0~6_combout\,
	combout => \inst4|counter[14]~41_combout\);

-- Location: LCCOMB_X30_Y25_N20
\inst4|counter[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[14]~42_combout\ = (!\inst4|counter[14]~41_combout\ & ((\inst4|process_0~12_combout\) # (!\inst4|state.update~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.update~q\,
	datac => \inst4|counter[14]~41_combout\,
	datad => \inst4|process_0~12_combout\,
	combout => \inst4|counter[14]~42_combout\);

-- Location: FF_X28_Y25_N3
\inst4|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[0]~31_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(0));

-- Location: LCCOMB_X28_Y25_N4
\inst4|counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[1]~33_combout\ = (\inst4|counter\(1) & (!\inst4|counter[0]~32\)) # (!\inst4|counter\(1) & ((\inst4|counter[0]~32\) # (GND)))
-- \inst4|counter[1]~34\ = CARRY((!\inst4|counter[0]~32\) # (!\inst4|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(1),
	datad => VCC,
	cin => \inst4|counter[0]~32\,
	combout => \inst4|counter[1]~33_combout\,
	cout => \inst4|counter[1]~34\);

-- Location: FF_X28_Y25_N5
\inst4|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[1]~33_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(1));

-- Location: LCCOMB_X28_Y25_N6
\inst4|counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[2]~35_combout\ = (\inst4|counter\(2) & (\inst4|counter[1]~34\ $ (GND))) # (!\inst4|counter\(2) & (!\inst4|counter[1]~34\ & VCC))
-- \inst4|counter[2]~36\ = CARRY((\inst4|counter\(2) & !\inst4|counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(2),
	datad => VCC,
	cin => \inst4|counter[1]~34\,
	combout => \inst4|counter[2]~35_combout\,
	cout => \inst4|counter[2]~36\);

-- Location: FF_X28_Y25_N7
\inst4|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[2]~35_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(2));

-- Location: LCCOMB_X28_Y25_N8
\inst4|counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[3]~37_combout\ = (\inst4|counter\(3) & (!\inst4|counter[2]~36\)) # (!\inst4|counter\(3) & ((\inst4|counter[2]~36\) # (GND)))
-- \inst4|counter[3]~38\ = CARRY((!\inst4|counter[2]~36\) # (!\inst4|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(3),
	datad => VCC,
	cin => \inst4|counter[2]~36\,
	combout => \inst4|counter[3]~37_combout\,
	cout => \inst4|counter[3]~38\);

-- Location: FF_X28_Y25_N9
\inst4|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[3]~37_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(3));

-- Location: LCCOMB_X28_Y25_N10
\inst4|counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[4]~39_combout\ = (\inst4|counter\(4) & (\inst4|counter[3]~38\ $ (GND))) # (!\inst4|counter\(4) & (!\inst4|counter[3]~38\ & VCC))
-- \inst4|counter[4]~40\ = CARRY((\inst4|counter\(4) & !\inst4|counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(4),
	datad => VCC,
	cin => \inst4|counter[3]~38\,
	combout => \inst4|counter[4]~39_combout\,
	cout => \inst4|counter[4]~40\);

-- Location: FF_X28_Y25_N11
\inst4|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[4]~39_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(4));

-- Location: LCCOMB_X28_Y25_N12
\inst4|counter[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[5]~43_combout\ = (\inst4|counter\(5) & (!\inst4|counter[4]~40\)) # (!\inst4|counter\(5) & ((\inst4|counter[4]~40\) # (GND)))
-- \inst4|counter[5]~44\ = CARRY((!\inst4|counter[4]~40\) # (!\inst4|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(5),
	datad => VCC,
	cin => \inst4|counter[4]~40\,
	combout => \inst4|counter[5]~43_combout\,
	cout => \inst4|counter[5]~44\);

-- Location: FF_X28_Y25_N13
\inst4|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[5]~43_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(5));

-- Location: LCCOMB_X28_Y25_N14
\inst4|counter[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[6]~45_combout\ = (\inst4|counter\(6) & (\inst4|counter[5]~44\ $ (GND))) # (!\inst4|counter\(6) & (!\inst4|counter[5]~44\ & VCC))
-- \inst4|counter[6]~46\ = CARRY((\inst4|counter\(6) & !\inst4|counter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(6),
	datad => VCC,
	cin => \inst4|counter[5]~44\,
	combout => \inst4|counter[6]~45_combout\,
	cout => \inst4|counter[6]~46\);

-- Location: FF_X28_Y25_N15
\inst4|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[6]~45_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(6));

-- Location: LCCOMB_X28_Y25_N16
\inst4|counter[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[7]~47_combout\ = (\inst4|counter\(7) & (!\inst4|counter[6]~46\)) # (!\inst4|counter\(7) & ((\inst4|counter[6]~46\) # (GND)))
-- \inst4|counter[7]~48\ = CARRY((!\inst4|counter[6]~46\) # (!\inst4|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(7),
	datad => VCC,
	cin => \inst4|counter[6]~46\,
	combout => \inst4|counter[7]~47_combout\,
	cout => \inst4|counter[7]~48\);

-- Location: FF_X28_Y25_N17
\inst4|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[7]~47_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(7));

-- Location: LCCOMB_X28_Y25_N18
\inst4|counter[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[8]~49_combout\ = (\inst4|counter\(8) & (\inst4|counter[7]~48\ $ (GND))) # (!\inst4|counter\(8) & (!\inst4|counter[7]~48\ & VCC))
-- \inst4|counter[8]~50\ = CARRY((\inst4|counter\(8) & !\inst4|counter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(8),
	datad => VCC,
	cin => \inst4|counter[7]~48\,
	combout => \inst4|counter[8]~49_combout\,
	cout => \inst4|counter[8]~50\);

-- Location: FF_X28_Y25_N19
\inst4|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[8]~49_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(8));

-- Location: LCCOMB_X28_Y25_N20
\inst4|counter[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[9]~51_combout\ = (\inst4|counter\(9) & (!\inst4|counter[8]~50\)) # (!\inst4|counter\(9) & ((\inst4|counter[8]~50\) # (GND)))
-- \inst4|counter[9]~52\ = CARRY((!\inst4|counter[8]~50\) # (!\inst4|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(9),
	datad => VCC,
	cin => \inst4|counter[8]~50\,
	combout => \inst4|counter[9]~51_combout\,
	cout => \inst4|counter[9]~52\);

-- Location: FF_X28_Y25_N21
\inst4|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[9]~51_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(9));

-- Location: LCCOMB_X28_Y25_N22
\inst4|counter[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[10]~53_combout\ = (\inst4|counter\(10) & (\inst4|counter[9]~52\ $ (GND))) # (!\inst4|counter\(10) & (!\inst4|counter[9]~52\ & VCC))
-- \inst4|counter[10]~54\ = CARRY((\inst4|counter\(10) & !\inst4|counter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(10),
	datad => VCC,
	cin => \inst4|counter[9]~52\,
	combout => \inst4|counter[10]~53_combout\,
	cout => \inst4|counter[10]~54\);

-- Location: FF_X28_Y25_N23
\inst4|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[10]~53_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(10));

-- Location: LCCOMB_X28_Y25_N24
\inst4|counter[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[11]~55_combout\ = (\inst4|counter\(11) & (!\inst4|counter[10]~54\)) # (!\inst4|counter\(11) & ((\inst4|counter[10]~54\) # (GND)))
-- \inst4|counter[11]~56\ = CARRY((!\inst4|counter[10]~54\) # (!\inst4|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(11),
	datad => VCC,
	cin => \inst4|counter[10]~54\,
	combout => \inst4|counter[11]~55_combout\,
	cout => \inst4|counter[11]~56\);

-- Location: FF_X28_Y25_N25
\inst4|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[11]~55_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(11));

-- Location: LCCOMB_X28_Y25_N26
\inst4|counter[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[12]~57_combout\ = (\inst4|counter\(12) & (\inst4|counter[11]~56\ $ (GND))) # (!\inst4|counter\(12) & (!\inst4|counter[11]~56\ & VCC))
-- \inst4|counter[12]~58\ = CARRY((\inst4|counter\(12) & !\inst4|counter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(12),
	datad => VCC,
	cin => \inst4|counter[11]~56\,
	combout => \inst4|counter[12]~57_combout\,
	cout => \inst4|counter[12]~58\);

-- Location: FF_X29_Y24_N9
\inst4|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|counter[12]~57_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(12));

-- Location: LCCOMB_X28_Y25_N28
\inst4|counter[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[13]~59_combout\ = (\inst4|counter\(13) & (!\inst4|counter[12]~58\)) # (!\inst4|counter\(13) & ((\inst4|counter[12]~58\) # (GND)))
-- \inst4|counter[13]~60\ = CARRY((!\inst4|counter[12]~58\) # (!\inst4|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(13),
	datad => VCC,
	cin => \inst4|counter[12]~58\,
	combout => \inst4|counter[13]~59_combout\,
	cout => \inst4|counter[13]~60\);

-- Location: FF_X29_Y24_N11
\inst4|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|counter[13]~59_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(13));

-- Location: LCCOMB_X28_Y25_N30
\inst4|counter[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[14]~61_combout\ = (\inst4|counter\(14) & (\inst4|counter[13]~60\ $ (GND))) # (!\inst4|counter\(14) & (!\inst4|counter[13]~60\ & VCC))
-- \inst4|counter[14]~62\ = CARRY((\inst4|counter\(14) & !\inst4|counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(14),
	datad => VCC,
	cin => \inst4|counter[13]~60\,
	combout => \inst4|counter[14]~61_combout\,
	cout => \inst4|counter[14]~62\);

-- Location: FF_X28_Y25_N31
\inst4|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[14]~61_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(14));

-- Location: LCCOMB_X28_Y24_N0
\inst4|counter[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[15]~63_combout\ = (\inst4|counter\(15) & (!\inst4|counter[14]~62\)) # (!\inst4|counter\(15) & ((\inst4|counter[14]~62\) # (GND)))
-- \inst4|counter[15]~64\ = CARRY((!\inst4|counter[14]~62\) # (!\inst4|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(15),
	datad => VCC,
	cin => \inst4|counter[14]~62\,
	combout => \inst4|counter[15]~63_combout\,
	cout => \inst4|counter[15]~64\);

-- Location: FF_X28_Y24_N1
\inst4|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[15]~63_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(15));

-- Location: LCCOMB_X28_Y24_N2
\inst4|counter[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[16]~65_combout\ = (\inst4|counter\(16) & (\inst4|counter[15]~64\ $ (GND))) # (!\inst4|counter\(16) & (!\inst4|counter[15]~64\ & VCC))
-- \inst4|counter[16]~66\ = CARRY((\inst4|counter\(16) & !\inst4|counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(16),
	datad => VCC,
	cin => \inst4|counter[15]~64\,
	combout => \inst4|counter[16]~65_combout\,
	cout => \inst4|counter[16]~66\);

-- Location: FF_X28_Y24_N3
\inst4|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[16]~65_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(16));

-- Location: LCCOMB_X28_Y24_N4
\inst4|counter[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[17]~67_combout\ = (\inst4|counter\(17) & (!\inst4|counter[16]~66\)) # (!\inst4|counter\(17) & ((\inst4|counter[16]~66\) # (GND)))
-- \inst4|counter[17]~68\ = CARRY((!\inst4|counter[16]~66\) # (!\inst4|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(17),
	datad => VCC,
	cin => \inst4|counter[16]~66\,
	combout => \inst4|counter[17]~67_combout\,
	cout => \inst4|counter[17]~68\);

-- Location: FF_X28_Y24_N5
\inst4|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[17]~67_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(17));

-- Location: LCCOMB_X28_Y24_N6
\inst4|counter[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[18]~69_combout\ = (\inst4|counter\(18) & (\inst4|counter[17]~68\ $ (GND))) # (!\inst4|counter\(18) & (!\inst4|counter[17]~68\ & VCC))
-- \inst4|counter[18]~70\ = CARRY((\inst4|counter\(18) & !\inst4|counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(18),
	datad => VCC,
	cin => \inst4|counter[17]~68\,
	combout => \inst4|counter[18]~69_combout\,
	cout => \inst4|counter[18]~70\);

-- Location: FF_X28_Y24_N7
\inst4|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[18]~69_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(18));

-- Location: LCCOMB_X28_Y24_N8
\inst4|counter[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[19]~71_combout\ = (\inst4|counter\(19) & (!\inst4|counter[18]~70\)) # (!\inst4|counter\(19) & ((\inst4|counter[18]~70\) # (GND)))
-- \inst4|counter[19]~72\ = CARRY((!\inst4|counter[18]~70\) # (!\inst4|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(19),
	datad => VCC,
	cin => \inst4|counter[18]~70\,
	combout => \inst4|counter[19]~71_combout\,
	cout => \inst4|counter[19]~72\);

-- Location: FF_X28_Y24_N9
\inst4|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[19]~71_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(19));

-- Location: LCCOMB_X28_Y24_N10
\inst4|counter[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[20]~73_combout\ = (\inst4|counter\(20) & (\inst4|counter[19]~72\ $ (GND))) # (!\inst4|counter\(20) & (!\inst4|counter[19]~72\ & VCC))
-- \inst4|counter[20]~74\ = CARRY((\inst4|counter\(20) & !\inst4|counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(20),
	datad => VCC,
	cin => \inst4|counter[19]~72\,
	combout => \inst4|counter[20]~73_combout\,
	cout => \inst4|counter[20]~74\);

-- Location: FF_X28_Y24_N11
\inst4|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[20]~73_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(20));

-- Location: LCCOMB_X28_Y24_N12
\inst4|counter[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[21]~75_combout\ = (\inst4|counter\(21) & (!\inst4|counter[20]~74\)) # (!\inst4|counter\(21) & ((\inst4|counter[20]~74\) # (GND)))
-- \inst4|counter[21]~76\ = CARRY((!\inst4|counter[20]~74\) # (!\inst4|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(21),
	datad => VCC,
	cin => \inst4|counter[20]~74\,
	combout => \inst4|counter[21]~75_combout\,
	cout => \inst4|counter[21]~76\);

-- Location: FF_X28_Y24_N13
\inst4|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[21]~75_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(21));

-- Location: FF_X28_Y24_N15
\inst4|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[22]~77_combout\,
	sclr => \inst4|counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(22));

-- Location: LCCOMB_X29_Y25_N6
\inst4|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~9_combout\ = (\inst4|counter\(6) & (\inst4|counter\(8) & (!\inst4|counter\(3) & \inst4|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(6),
	datab => \inst4|counter\(8),
	datac => \inst4|counter\(3),
	datad => \inst4|counter\(9),
	combout => \inst4|process_0~9_combout\);

-- Location: LCCOMB_X29_Y25_N20
\inst4|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~8_combout\ = (\inst4|state.pause~q\ & !\inst4|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.pause~q\,
	datad => \inst4|counter\(0),
	combout => \inst4|process_0~8_combout\);

-- Location: LCCOMB_X29_Y25_N0
\inst4|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~10_combout\ = (\inst4|process_0~9_combout\ & (!\inst4|counter\(2) & (!\inst4|counter\(1) & \inst4|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_0~9_combout\,
	datab => \inst4|counter\(2),
	datac => \inst4|counter\(1),
	datad => \inst4|process_0~8_combout\,
	combout => \inst4|process_0~10_combout\);

-- Location: LCCOMB_X29_Y25_N26
\inst4|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~11_combout\ = (\inst4|counter\(19) & (\inst4|counter\(14) & (\inst4|counter\(18) & \inst4|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(19),
	datab => \inst4|counter\(14),
	datac => \inst4|counter\(18),
	datad => \inst4|counter\(11),
	combout => \inst4|process_0~11_combout\);

-- Location: LCCOMB_X29_Y25_N10
\inst4|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~7_combout\ = (!\inst4|counter\(29) & (!\inst4|counter\(28) & (!\inst4|counter\(30) & \inst4|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(29),
	datab => \inst4|counter\(28),
	datac => \inst4|counter\(30),
	datad => \inst4|process_0~5_combout\,
	combout => \inst4|process_0~7_combout\);

-- Location: LCCOMB_X29_Y25_N24
\inst4|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~12_combout\ = (\inst4|counter\(22) & (\inst4|process_0~10_combout\ & (\inst4|process_0~11_combout\ & \inst4|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(22),
	datab => \inst4|process_0~10_combout\,
	datac => \inst4|process_0~11_combout\,
	datad => \inst4|process_0~7_combout\,
	combout => \inst4|process_0~12_combout\);

-- Location: LCCOMB_X29_Y25_N18
\inst4|state.pause~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state.pause~0_combout\ = (\inst4|state~11_combout\ & (((!\inst4|state.update~q\)))) # (!\inst4|state~11_combout\ & (\inst4|state.pause~q\ & ((!\inst4|state.update~q\) # (!\inst4|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_0~12_combout\,
	datab => \inst4|state.update~q\,
	datac => \inst4|state.pause~q\,
	datad => \inst4|state~11_combout\,
	combout => \inst4|state.pause~0_combout\);

-- Location: FF_X29_Y25_N19
\inst4|state.pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|state.pause~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.pause~q\);

-- Location: LCCOMB_X29_Y25_N8
\inst4|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~4_combout\ = (\inst4|counter\(3) & (!\inst4|counter\(2) & (!\inst4|counter\(1)))) # (!\inst4|counter\(3) & ((\inst4|counter\(2)) # ((\inst4|counter\(1) & \inst4|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(3),
	datab => \inst4|counter\(2),
	datac => \inst4|counter\(1),
	datad => \inst4|counter\(0),
	combout => \inst4|process_1~4_combout\);

-- Location: LCCOMB_X29_Y25_N16
\inst4|process_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~5_combout\ = (\inst4|state.pause~q\) # ((!\inst4|process_1~3_combout\) # (!\inst4|process_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.pause~q\,
	datac => \inst4|process_1~4_combout\,
	datad => \inst4|process_1~3_combout\,
	combout => \inst4|process_1~5_combout\);

-- Location: LCCOMB_X34_Y30_N8
\inst4|lcd_write_n~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_write_n~feeder_combout\ = \inst4|process_1~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|process_1~5_combout\,
	combout => \inst4|lcd_write_n~feeder_combout\);

-- Location: FF_X34_Y30_N9
\inst4|lcd_write_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_write_n~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_write_n~q\);

-- Location: LCCOMB_X40_Y26_N18
\inst5|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal6~2_combout\ = (!\inst5|counter\(15) & (!\inst5|counter\(18) & (\inst5|Equal6~1_combout\ & \inst5|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(15),
	datab => \inst5|counter\(18),
	datac => \inst5|Equal6~1_combout\,
	datad => \inst5|Equal6~0_combout\,
	combout => \inst5|Equal6~2_combout\);

-- Location: LCCOMB_X41_Y30_N28
\inst5|Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal6~4_combout\ = (\inst5|counter\(3) & (\inst5|Equal6~3_combout\ & (!\inst5|counter\(4) & \inst5|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(3),
	datab => \inst5|Equal6~3_combout\,
	datac => \inst5|counter\(4),
	datad => \inst5|Equal6~2_combout\,
	combout => \inst5|Equal6~4_combout\);

-- Location: LCCOMB_X41_Y30_N2
\inst5|Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal6~5_combout\ = (\inst5|counter\(7) & (\inst5|counter\(12) & (\inst5|process_0~8_combout\ & \inst5|Equal6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(7),
	datab => \inst5|counter\(12),
	datac => \inst5|process_0~8_combout\,
	datad => \inst5|Equal6~4_combout\,
	combout => \inst5|Equal6~5_combout\);

-- Location: LCCOMB_X39_Y30_N6
\inst5|state~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~69_combout\ = (\inst5|Equal6~5_combout\ & (\inst5|state~41_combout\ & ((\inst4|lcd_write_n~q\) # (!\inst5|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_write_n~q\,
	datab => \inst5|Equal6~5_combout\,
	datac => \inst5|state.ready~q\,
	datad => \inst5|state~41_combout\,
	combout => \inst5|state~69_combout\);

-- Location: LCCOMB_X39_Y30_N24
\inst5|state~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~58_combout\ = (\inst5|state~41_combout\ & (\inst5|state.init3~q\ & ((\inst5|state~69_combout\)))) # (!\inst5|state~41_combout\ & ((\inst5|state.init4~q\) # ((\inst5|state.init3~q\ & \inst5|state~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~41_combout\,
	datab => \inst5|state.init3~q\,
	datac => \inst5|state.init4~q\,
	datad => \inst5|state~69_combout\,
	combout => \inst5|state~58_combout\);

-- Location: FF_X39_Y30_N25
\inst5|state.init4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init4~q\);

-- Location: LCCOMB_X39_Y30_N22
\inst5|state~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~61_combout\ = (\inst5|state~41_combout\ & (\inst5|state.init4~q\ & ((\inst5|state~69_combout\)))) # (!\inst5|state~41_combout\ & ((\inst5|state.init5~q\) # ((\inst5|state.init4~q\ & \inst5|state~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~41_combout\,
	datab => \inst5|state.init4~q\,
	datac => \inst5|state.init5~q\,
	datad => \inst5|state~69_combout\,
	combout => \inst5|state~61_combout\);

-- Location: FF_X39_Y30_N23
\inst5|state.init5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init5~q\);

-- Location: LCCOMB_X40_Y30_N8
\inst5|dataOut~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut~38_combout\ = (!\inst5|state.init5~q\ & (!\inst5|state.init3~q\ & !\inst5|state.init4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.init5~q\,
	datac => \inst5|state.init3~q\,
	datad => \inst5|state.init4~q\,
	combout => \inst5|dataOut~38_combout\);

-- Location: LCCOMB_X40_Y30_N18
\inst5|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~37_combout\ = (!\inst5|process_0~9_combout\ & (\inst5|state~36_combout\ & ((\inst5|dataOut~38_combout\) # (!\inst5|Equal6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut~38_combout\,
	datab => \inst5|process_0~9_combout\,
	datac => \inst5|state~36_combout\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|state~37_combout\);

-- Location: LCCOMB_X39_Y30_N30
\inst5|state~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~46_combout\ = (\inst5|state~41_combout\ & (\inst5|state.init5~q\ & ((\inst5|state~69_combout\)))) # (!\inst5|state~41_combout\ & ((\inst5|state.createChar1~q\) # ((\inst5|state.init5~q\ & \inst5|state~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~41_combout\,
	datab => \inst5|state.init5~q\,
	datac => \inst5|state.createChar1~q\,
	datad => \inst5|state~69_combout\,
	combout => \inst5|state~46_combout\);

-- Location: FF_X39_Y30_N31
\inst5|state.createChar1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.createChar1~q\);

-- Location: LCCOMB_X37_Y30_N2
\inst5|charCreationCounter[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[0]~33_combout\ = \inst5|charCreationCounter\(0) $ (VCC)
-- \inst5|charCreationCounter[0]~34\ = CARRY(\inst5|charCreationCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(0),
	datad => VCC,
	combout => \inst5|charCreationCounter[0]~33_combout\,
	cout => \inst5|charCreationCounter[0]~34\);

-- Location: LCCOMB_X37_Y30_N8
\inst5|charCreationCounter[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[3]~41_combout\ = (\inst5|charCreationCounter\(3) & (!\inst5|charCreationCounter[2]~40\)) # (!\inst5|charCreationCounter\(3) & ((\inst5|charCreationCounter[2]~40\) # (GND)))
-- \inst5|charCreationCounter[3]~42\ = CARRY((!\inst5|charCreationCounter[2]~40\) # (!\inst5|charCreationCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(3),
	datad => VCC,
	cin => \inst5|charCreationCounter[2]~40\,
	combout => \inst5|charCreationCounter[3]~41_combout\,
	cout => \inst5|charCreationCounter[3]~42\);

-- Location: LCCOMB_X37_Y30_N10
\inst5|charCreationCounter[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[4]~43_combout\ = (\inst5|charCreationCounter\(4) & (\inst5|charCreationCounter[3]~42\ $ (GND))) # (!\inst5|charCreationCounter\(4) & (!\inst5|charCreationCounter[3]~42\ & VCC))
-- \inst5|charCreationCounter[4]~44\ = CARRY((\inst5|charCreationCounter\(4) & !\inst5|charCreationCounter[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(4),
	datad => VCC,
	cin => \inst5|charCreationCounter[3]~42\,
	combout => \inst5|charCreationCounter[4]~43_combout\,
	cout => \inst5|charCreationCounter[4]~44\);

-- Location: LCCOMB_X40_Y29_N24
\inst5|charCreationCounter[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[3]~35_combout\ = (\inst5|state.init4~q\) # ((\inst5|state.init3~q\) # ((!\inst5|state.init5~q\ & \inst5|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init4~q\,
	datab => \inst5|state.init5~q\,
	datac => \inst5|state.init3~q\,
	datad => \inst5|process_1~0_combout\,
	combout => \inst5|charCreationCounter[3]~35_combout\);

-- Location: LCCOMB_X41_Y30_N30
\inst5|charCreationCounter[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[3]~36_combout\ = (\inst5|state~36_combout\ & (\inst5|Equal6~5_combout\ & (!\inst5|charCreationCounter[3]~35_combout\ & !\inst5|process_0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~36_combout\,
	datab => \inst5|Equal6~5_combout\,
	datac => \inst5|charCreationCounter[3]~35_combout\,
	datad => \inst5|process_0~9_combout\,
	combout => \inst5|charCreationCounter[3]~36_combout\);

-- Location: FF_X37_Y30_N11
\inst5|charCreationCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[4]~43_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(4));

-- Location: LCCOMB_X37_Y30_N12
\inst5|charCreationCounter[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[5]~45_combout\ = (\inst5|charCreationCounter\(5) & (!\inst5|charCreationCounter[4]~44\)) # (!\inst5|charCreationCounter\(5) & ((\inst5|charCreationCounter[4]~44\) # (GND)))
-- \inst5|charCreationCounter[5]~46\ = CARRY((!\inst5|charCreationCounter[4]~44\) # (!\inst5|charCreationCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(5),
	datad => VCC,
	cin => \inst5|charCreationCounter[4]~44\,
	combout => \inst5|charCreationCounter[5]~45_combout\,
	cout => \inst5|charCreationCounter[5]~46\);

-- Location: FF_X37_Y30_N13
\inst5|charCreationCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[5]~45_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(5));

-- Location: LCCOMB_X37_Y30_N14
\inst5|charCreationCounter[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[6]~47_combout\ = (\inst5|charCreationCounter\(6) & (\inst5|charCreationCounter[5]~46\ $ (GND))) # (!\inst5|charCreationCounter\(6) & (!\inst5|charCreationCounter[5]~46\ & VCC))
-- \inst5|charCreationCounter[6]~48\ = CARRY((\inst5|charCreationCounter\(6) & !\inst5|charCreationCounter[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(6),
	datad => VCC,
	cin => \inst5|charCreationCounter[5]~46\,
	combout => \inst5|charCreationCounter[6]~47_combout\,
	cout => \inst5|charCreationCounter[6]~48\);

-- Location: FF_X37_Y30_N15
\inst5|charCreationCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[6]~47_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(6));

-- Location: LCCOMB_X37_Y30_N16
\inst5|charCreationCounter[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[7]~49_combout\ = (\inst5|charCreationCounter\(7) & (!\inst5|charCreationCounter[6]~48\)) # (!\inst5|charCreationCounter\(7) & ((\inst5|charCreationCounter[6]~48\) # (GND)))
-- \inst5|charCreationCounter[7]~50\ = CARRY((!\inst5|charCreationCounter[6]~48\) # (!\inst5|charCreationCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(7),
	datad => VCC,
	cin => \inst5|charCreationCounter[6]~48\,
	combout => \inst5|charCreationCounter[7]~49_combout\,
	cout => \inst5|charCreationCounter[7]~50\);

-- Location: FF_X37_Y30_N17
\inst5|charCreationCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[7]~49_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(7));

-- Location: LCCOMB_X37_Y30_N18
\inst5|charCreationCounter[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[8]~51_combout\ = (\inst5|charCreationCounter\(8) & (\inst5|charCreationCounter[7]~50\ $ (GND))) # (!\inst5|charCreationCounter\(8) & (!\inst5|charCreationCounter[7]~50\ & VCC))
-- \inst5|charCreationCounter[8]~52\ = CARRY((\inst5|charCreationCounter\(8) & !\inst5|charCreationCounter[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(8),
	datad => VCC,
	cin => \inst5|charCreationCounter[7]~50\,
	combout => \inst5|charCreationCounter[8]~51_combout\,
	cout => \inst5|charCreationCounter[8]~52\);

-- Location: FF_X37_Y30_N19
\inst5|charCreationCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[8]~51_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(8));

-- Location: LCCOMB_X37_Y30_N20
\inst5|charCreationCounter[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[9]~53_combout\ = (\inst5|charCreationCounter\(9) & (!\inst5|charCreationCounter[8]~52\)) # (!\inst5|charCreationCounter\(9) & ((\inst5|charCreationCounter[8]~52\) # (GND)))
-- \inst5|charCreationCounter[9]~54\ = CARRY((!\inst5|charCreationCounter[8]~52\) # (!\inst5|charCreationCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(9),
	datad => VCC,
	cin => \inst5|charCreationCounter[8]~52\,
	combout => \inst5|charCreationCounter[9]~53_combout\,
	cout => \inst5|charCreationCounter[9]~54\);

-- Location: FF_X37_Y30_N21
\inst5|charCreationCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[9]~53_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(9));

-- Location: LCCOMB_X37_Y30_N22
\inst5|charCreationCounter[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[10]~55_combout\ = (\inst5|charCreationCounter\(10) & (\inst5|charCreationCounter[9]~54\ $ (GND))) # (!\inst5|charCreationCounter\(10) & (!\inst5|charCreationCounter[9]~54\ & VCC))
-- \inst5|charCreationCounter[10]~56\ = CARRY((\inst5|charCreationCounter\(10) & !\inst5|charCreationCounter[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(10),
	datad => VCC,
	cin => \inst5|charCreationCounter[9]~54\,
	combout => \inst5|charCreationCounter[10]~55_combout\,
	cout => \inst5|charCreationCounter[10]~56\);

-- Location: FF_X37_Y30_N23
\inst5|charCreationCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[10]~55_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(10));

-- Location: LCCOMB_X37_Y30_N24
\inst5|charCreationCounter[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[11]~57_combout\ = (\inst5|charCreationCounter\(11) & (!\inst5|charCreationCounter[10]~56\)) # (!\inst5|charCreationCounter\(11) & ((\inst5|charCreationCounter[10]~56\) # (GND)))
-- \inst5|charCreationCounter[11]~58\ = CARRY((!\inst5|charCreationCounter[10]~56\) # (!\inst5|charCreationCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(11),
	datad => VCC,
	cin => \inst5|charCreationCounter[10]~56\,
	combout => \inst5|charCreationCounter[11]~57_combout\,
	cout => \inst5|charCreationCounter[11]~58\);

-- Location: FF_X37_Y30_N25
\inst5|charCreationCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[11]~57_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(11));

-- Location: LCCOMB_X37_Y30_N26
\inst5|charCreationCounter[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[12]~59_combout\ = (\inst5|charCreationCounter\(12) & (\inst5|charCreationCounter[11]~58\ $ (GND))) # (!\inst5|charCreationCounter\(12) & (!\inst5|charCreationCounter[11]~58\ & VCC))
-- \inst5|charCreationCounter[12]~60\ = CARRY((\inst5|charCreationCounter\(12) & !\inst5|charCreationCounter[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(12),
	datad => VCC,
	cin => \inst5|charCreationCounter[11]~58\,
	combout => \inst5|charCreationCounter[12]~59_combout\,
	cout => \inst5|charCreationCounter[12]~60\);

-- Location: FF_X37_Y30_N27
\inst5|charCreationCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[12]~59_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(12));

-- Location: LCCOMB_X37_Y30_N0
\inst5|Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~2_combout\ = (!\inst5|charCreationCounter\(10) & (!\inst5|charCreationCounter\(9) & (!\inst5|charCreationCounter\(12) & !\inst5|charCreationCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(10),
	datab => \inst5|charCreationCounter\(9),
	datac => \inst5|charCreationCounter\(12),
	datad => \inst5|charCreationCounter\(11),
	combout => \inst5|Equal8~2_combout\);

-- Location: LCCOMB_X38_Y30_N24
\inst5|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~0_combout\ = (!\inst5|charCreationCounter\(0) & (!\inst5|charCreationCounter\(1) & (!\inst5|charCreationCounter\(2) & !\inst5|charCreationCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(0),
	datab => \inst5|charCreationCounter\(1),
	datac => \inst5|charCreationCounter\(2),
	datad => \inst5|charCreationCounter\(4),
	combout => \inst5|Equal8~0_combout\);

-- Location: LCCOMB_X38_Y30_N26
\inst5|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~1_combout\ = (!\inst5|charCreationCounter\(6) & (!\inst5|charCreationCounter\(8) & (!\inst5|charCreationCounter\(7) & !\inst5|charCreationCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(6),
	datab => \inst5|charCreationCounter\(8),
	datac => \inst5|charCreationCounter\(7),
	datad => \inst5|charCreationCounter\(5),
	combout => \inst5|Equal8~1_combout\);

-- Location: LCCOMB_X37_Y30_N28
\inst5|charCreationCounter[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[13]~61_combout\ = (\inst5|charCreationCounter\(13) & (!\inst5|charCreationCounter[12]~60\)) # (!\inst5|charCreationCounter\(13) & ((\inst5|charCreationCounter[12]~60\) # (GND)))
-- \inst5|charCreationCounter[13]~62\ = CARRY((!\inst5|charCreationCounter[12]~60\) # (!\inst5|charCreationCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(13),
	datad => VCC,
	cin => \inst5|charCreationCounter[12]~60\,
	combout => \inst5|charCreationCounter[13]~61_combout\,
	cout => \inst5|charCreationCounter[13]~62\);

-- Location: FF_X37_Y30_N29
\inst5|charCreationCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[13]~61_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(13));

-- Location: LCCOMB_X37_Y30_N30
\inst5|charCreationCounter[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[14]~63_combout\ = (\inst5|charCreationCounter\(14) & (\inst5|charCreationCounter[13]~62\ $ (GND))) # (!\inst5|charCreationCounter\(14) & (!\inst5|charCreationCounter[13]~62\ & VCC))
-- \inst5|charCreationCounter[14]~64\ = CARRY((\inst5|charCreationCounter\(14) & !\inst5|charCreationCounter[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(14),
	datad => VCC,
	cin => \inst5|charCreationCounter[13]~62\,
	combout => \inst5|charCreationCounter[14]~63_combout\,
	cout => \inst5|charCreationCounter[14]~64\);

-- Location: FF_X37_Y30_N31
\inst5|charCreationCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[14]~63_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(14));

-- Location: LCCOMB_X37_Y29_N0
\inst5|charCreationCounter[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[15]~65_combout\ = (\inst5|charCreationCounter\(15) & (!\inst5|charCreationCounter[14]~64\)) # (!\inst5|charCreationCounter\(15) & ((\inst5|charCreationCounter[14]~64\) # (GND)))
-- \inst5|charCreationCounter[15]~66\ = CARRY((!\inst5|charCreationCounter[14]~64\) # (!\inst5|charCreationCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(15),
	datad => VCC,
	cin => \inst5|charCreationCounter[14]~64\,
	combout => \inst5|charCreationCounter[15]~65_combout\,
	cout => \inst5|charCreationCounter[15]~66\);

-- Location: FF_X37_Y29_N1
\inst5|charCreationCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[15]~65_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(15));

-- Location: LCCOMB_X37_Y29_N2
\inst5|charCreationCounter[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[16]~67_combout\ = (\inst5|charCreationCounter\(16) & (\inst5|charCreationCounter[15]~66\ $ (GND))) # (!\inst5|charCreationCounter\(16) & (!\inst5|charCreationCounter[15]~66\ & VCC))
-- \inst5|charCreationCounter[16]~68\ = CARRY((\inst5|charCreationCounter\(16) & !\inst5|charCreationCounter[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(16),
	datad => VCC,
	cin => \inst5|charCreationCounter[15]~66\,
	combout => \inst5|charCreationCounter[16]~67_combout\,
	cout => \inst5|charCreationCounter[16]~68\);

-- Location: FF_X37_Y29_N3
\inst5|charCreationCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[16]~67_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(16));

-- Location: LCCOMB_X38_Y30_N12
\inst5|Equal8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~3_combout\ = (!\inst5|charCreationCounter\(14) & (!\inst5|charCreationCounter\(13) & (!\inst5|charCreationCounter\(15) & !\inst5|charCreationCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(14),
	datab => \inst5|charCreationCounter\(13),
	datac => \inst5|charCreationCounter\(15),
	datad => \inst5|charCreationCounter\(16),
	combout => \inst5|Equal8~3_combout\);

-- Location: LCCOMB_X38_Y30_N22
\inst5|Equal8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~4_combout\ = (\inst5|Equal8~2_combout\ & (\inst5|Equal8~0_combout\ & (\inst5|Equal8~1_combout\ & \inst5|Equal8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal8~2_combout\,
	datab => \inst5|Equal8~0_combout\,
	datac => \inst5|Equal8~1_combout\,
	datad => \inst5|Equal8~3_combout\,
	combout => \inst5|Equal8~4_combout\);

-- Location: LCCOMB_X37_Y29_N4
\inst5|charCreationCounter[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[17]~69_combout\ = (\inst5|charCreationCounter\(17) & (!\inst5|charCreationCounter[16]~68\)) # (!\inst5|charCreationCounter\(17) & ((\inst5|charCreationCounter[16]~68\) # (GND)))
-- \inst5|charCreationCounter[17]~70\ = CARRY((!\inst5|charCreationCounter[16]~68\) # (!\inst5|charCreationCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(17),
	datad => VCC,
	cin => \inst5|charCreationCounter[16]~68\,
	combout => \inst5|charCreationCounter[17]~69_combout\,
	cout => \inst5|charCreationCounter[17]~70\);

-- Location: FF_X37_Y29_N5
\inst5|charCreationCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[17]~69_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(17));

-- Location: LCCOMB_X37_Y29_N6
\inst5|charCreationCounter[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[18]~71_combout\ = (\inst5|charCreationCounter\(18) & (\inst5|charCreationCounter[17]~70\ $ (GND))) # (!\inst5|charCreationCounter\(18) & (!\inst5|charCreationCounter[17]~70\ & VCC))
-- \inst5|charCreationCounter[18]~72\ = CARRY((\inst5|charCreationCounter\(18) & !\inst5|charCreationCounter[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(18),
	datad => VCC,
	cin => \inst5|charCreationCounter[17]~70\,
	combout => \inst5|charCreationCounter[18]~71_combout\,
	cout => \inst5|charCreationCounter[18]~72\);

-- Location: FF_X37_Y29_N7
\inst5|charCreationCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[18]~71_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(18));

-- Location: LCCOMB_X37_Y29_N8
\inst5|charCreationCounter[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[19]~73_combout\ = (\inst5|charCreationCounter\(19) & (!\inst5|charCreationCounter[18]~72\)) # (!\inst5|charCreationCounter\(19) & ((\inst5|charCreationCounter[18]~72\) # (GND)))
-- \inst5|charCreationCounter[19]~74\ = CARRY((!\inst5|charCreationCounter[18]~72\) # (!\inst5|charCreationCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(19),
	datad => VCC,
	cin => \inst5|charCreationCounter[18]~72\,
	combout => \inst5|charCreationCounter[19]~73_combout\,
	cout => \inst5|charCreationCounter[19]~74\);

-- Location: FF_X37_Y29_N9
\inst5|charCreationCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[19]~73_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(19));

-- Location: LCCOMB_X37_Y29_N10
\inst5|charCreationCounter[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[20]~75_combout\ = (\inst5|charCreationCounter\(20) & (\inst5|charCreationCounter[19]~74\ $ (GND))) # (!\inst5|charCreationCounter\(20) & (!\inst5|charCreationCounter[19]~74\ & VCC))
-- \inst5|charCreationCounter[20]~76\ = CARRY((\inst5|charCreationCounter\(20) & !\inst5|charCreationCounter[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(20),
	datad => VCC,
	cin => \inst5|charCreationCounter[19]~74\,
	combout => \inst5|charCreationCounter[20]~75_combout\,
	cout => \inst5|charCreationCounter[20]~76\);

-- Location: FF_X37_Y29_N11
\inst5|charCreationCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[20]~75_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(20));

-- Location: LCCOMB_X38_Y29_N0
\inst5|Equal8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~5_combout\ = (!\inst5|charCreationCounter\(20) & (!\inst5|charCreationCounter\(18) & (!\inst5|charCreationCounter\(17) & !\inst5|charCreationCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(20),
	datab => \inst5|charCreationCounter\(18),
	datac => \inst5|charCreationCounter\(17),
	datad => \inst5|charCreationCounter\(19),
	combout => \inst5|Equal8~5_combout\);

-- Location: LCCOMB_X37_Y29_N12
\inst5|charCreationCounter[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[21]~77_combout\ = (\inst5|charCreationCounter\(21) & (!\inst5|charCreationCounter[20]~76\)) # (!\inst5|charCreationCounter\(21) & ((\inst5|charCreationCounter[20]~76\) # (GND)))
-- \inst5|charCreationCounter[21]~78\ = CARRY((!\inst5|charCreationCounter[20]~76\) # (!\inst5|charCreationCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(21),
	datad => VCC,
	cin => \inst5|charCreationCounter[20]~76\,
	combout => \inst5|charCreationCounter[21]~77_combout\,
	cout => \inst5|charCreationCounter[21]~78\);

-- Location: FF_X37_Y29_N13
\inst5|charCreationCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[21]~77_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(21));

-- Location: LCCOMB_X37_Y29_N14
\inst5|charCreationCounter[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[22]~79_combout\ = (\inst5|charCreationCounter\(22) & (\inst5|charCreationCounter[21]~78\ $ (GND))) # (!\inst5|charCreationCounter\(22) & (!\inst5|charCreationCounter[21]~78\ & VCC))
-- \inst5|charCreationCounter[22]~80\ = CARRY((\inst5|charCreationCounter\(22) & !\inst5|charCreationCounter[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(22),
	datad => VCC,
	cin => \inst5|charCreationCounter[21]~78\,
	combout => \inst5|charCreationCounter[22]~79_combout\,
	cout => \inst5|charCreationCounter[22]~80\);

-- Location: FF_X37_Y29_N15
\inst5|charCreationCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[22]~79_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(22));

-- Location: LCCOMB_X37_Y29_N16
\inst5|charCreationCounter[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[23]~81_combout\ = (\inst5|charCreationCounter\(23) & (!\inst5|charCreationCounter[22]~80\)) # (!\inst5|charCreationCounter\(23) & ((\inst5|charCreationCounter[22]~80\) # (GND)))
-- \inst5|charCreationCounter[23]~82\ = CARRY((!\inst5|charCreationCounter[22]~80\) # (!\inst5|charCreationCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(23),
	datad => VCC,
	cin => \inst5|charCreationCounter[22]~80\,
	combout => \inst5|charCreationCounter[23]~81_combout\,
	cout => \inst5|charCreationCounter[23]~82\);

-- Location: FF_X37_Y29_N17
\inst5|charCreationCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[23]~81_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(23));

-- Location: LCCOMB_X37_Y29_N18
\inst5|charCreationCounter[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[24]~83_combout\ = (\inst5|charCreationCounter\(24) & (\inst5|charCreationCounter[23]~82\ $ (GND))) # (!\inst5|charCreationCounter\(24) & (!\inst5|charCreationCounter[23]~82\ & VCC))
-- \inst5|charCreationCounter[24]~84\ = CARRY((\inst5|charCreationCounter\(24) & !\inst5|charCreationCounter[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(24),
	datad => VCC,
	cin => \inst5|charCreationCounter[23]~82\,
	combout => \inst5|charCreationCounter[24]~83_combout\,
	cout => \inst5|charCreationCounter[24]~84\);

-- Location: FF_X37_Y29_N19
\inst5|charCreationCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[24]~83_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(24));

-- Location: LCCOMB_X38_Y29_N2
\inst5|Equal8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~6_combout\ = (!\inst5|charCreationCounter\(22) & (!\inst5|charCreationCounter\(24) & (!\inst5|charCreationCounter\(23) & !\inst5|charCreationCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(22),
	datab => \inst5|charCreationCounter\(24),
	datac => \inst5|charCreationCounter\(23),
	datad => \inst5|charCreationCounter\(21),
	combout => \inst5|Equal8~6_combout\);

-- Location: LCCOMB_X37_Y29_N20
\inst5|charCreationCounter[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[25]~85_combout\ = (\inst5|charCreationCounter\(25) & (!\inst5|charCreationCounter[24]~84\)) # (!\inst5|charCreationCounter\(25) & ((\inst5|charCreationCounter[24]~84\) # (GND)))
-- \inst5|charCreationCounter[25]~86\ = CARRY((!\inst5|charCreationCounter[24]~84\) # (!\inst5|charCreationCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(25),
	datad => VCC,
	cin => \inst5|charCreationCounter[24]~84\,
	combout => \inst5|charCreationCounter[25]~85_combout\,
	cout => \inst5|charCreationCounter[25]~86\);

-- Location: FF_X37_Y29_N21
\inst5|charCreationCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[25]~85_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(25));

-- Location: LCCOMB_X37_Y29_N22
\inst5|charCreationCounter[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[26]~87_combout\ = (\inst5|charCreationCounter\(26) & (\inst5|charCreationCounter[25]~86\ $ (GND))) # (!\inst5|charCreationCounter\(26) & (!\inst5|charCreationCounter[25]~86\ & VCC))
-- \inst5|charCreationCounter[26]~88\ = CARRY((\inst5|charCreationCounter\(26) & !\inst5|charCreationCounter[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(26),
	datad => VCC,
	cin => \inst5|charCreationCounter[25]~86\,
	combout => \inst5|charCreationCounter[26]~87_combout\,
	cout => \inst5|charCreationCounter[26]~88\);

-- Location: FF_X37_Y29_N23
\inst5|charCreationCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[26]~87_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(26));

-- Location: LCCOMB_X37_Y29_N24
\inst5|charCreationCounter[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[27]~89_combout\ = (\inst5|charCreationCounter\(27) & (!\inst5|charCreationCounter[26]~88\)) # (!\inst5|charCreationCounter\(27) & ((\inst5|charCreationCounter[26]~88\) # (GND)))
-- \inst5|charCreationCounter[27]~90\ = CARRY((!\inst5|charCreationCounter[26]~88\) # (!\inst5|charCreationCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(27),
	datad => VCC,
	cin => \inst5|charCreationCounter[26]~88\,
	combout => \inst5|charCreationCounter[27]~89_combout\,
	cout => \inst5|charCreationCounter[27]~90\);

-- Location: FF_X37_Y29_N25
\inst5|charCreationCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[27]~89_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(27));

-- Location: LCCOMB_X37_Y29_N26
\inst5|charCreationCounter[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[28]~91_combout\ = (\inst5|charCreationCounter\(28) & (\inst5|charCreationCounter[27]~90\ $ (GND))) # (!\inst5|charCreationCounter\(28) & (!\inst5|charCreationCounter[27]~90\ & VCC))
-- \inst5|charCreationCounter[28]~92\ = CARRY((\inst5|charCreationCounter\(28) & !\inst5|charCreationCounter[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(28),
	datad => VCC,
	cin => \inst5|charCreationCounter[27]~90\,
	combout => \inst5|charCreationCounter[28]~91_combout\,
	cout => \inst5|charCreationCounter[28]~92\);

-- Location: FF_X37_Y29_N27
\inst5|charCreationCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[28]~91_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(28));

-- Location: LCCOMB_X37_Y29_N28
\inst5|charCreationCounter[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[29]~93_combout\ = (\inst5|charCreationCounter\(29) & (!\inst5|charCreationCounter[28]~92\)) # (!\inst5|charCreationCounter\(29) & ((\inst5|charCreationCounter[28]~92\) # (GND)))
-- \inst5|charCreationCounter[29]~94\ = CARRY((!\inst5|charCreationCounter[28]~92\) # (!\inst5|charCreationCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(29),
	datad => VCC,
	cin => \inst5|charCreationCounter[28]~92\,
	combout => \inst5|charCreationCounter[29]~93_combout\,
	cout => \inst5|charCreationCounter[29]~94\);

-- Location: FF_X37_Y29_N29
\inst5|charCreationCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[29]~93_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(29));

-- Location: LCCOMB_X37_Y29_N30
\inst5|charCreationCounter[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[30]~95_combout\ = \inst5|charCreationCounter\(30) $ (!\inst5|charCreationCounter[29]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(30),
	cin => \inst5|charCreationCounter[29]~94\,
	combout => \inst5|charCreationCounter[30]~95_combout\);

-- Location: FF_X37_Y29_N31
\inst5|charCreationCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[30]~95_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(30));

-- Location: LCCOMB_X38_Y29_N8
\inst5|Equal8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~7_combout\ = (!\inst5|charCreationCounter\(28) & (!\inst5|charCreationCounter\(26) & (!\inst5|charCreationCounter\(27) & !\inst5|charCreationCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(28),
	datab => \inst5|charCreationCounter\(26),
	datac => \inst5|charCreationCounter\(27),
	datad => \inst5|charCreationCounter\(25),
	combout => \inst5|Equal8~7_combout\);

-- Location: LCCOMB_X38_Y29_N18
\inst5|Equal8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~8_combout\ = (!\inst5|charCreationCounter\(30) & (\inst5|Equal8~7_combout\ & !\inst5|charCreationCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(30),
	datac => \inst5|Equal8~7_combout\,
	datad => \inst5|charCreationCounter\(29),
	combout => \inst5|Equal8~8_combout\);

-- Location: LCCOMB_X38_Y30_N28
\inst5|Equal8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~9_combout\ = (\inst5|Equal8~4_combout\ & (\inst5|Equal8~5_combout\ & (\inst5|Equal8~6_combout\ & \inst5|Equal8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal8~4_combout\,
	datab => \inst5|Equal8~5_combout\,
	datac => \inst5|Equal8~6_combout\,
	datad => \inst5|Equal8~8_combout\,
	combout => \inst5|Equal8~9_combout\);

-- Location: LCCOMB_X38_Y30_N16
\inst5|charCreationCounter[12]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[12]~97_combout\ = (\inst5|charCreationCounter\(3) & ((\inst5|Equal8~9_combout\) # ((\inst5|state.init5~q\ & \inst5|Equal6~5_combout\)))) # (!\inst5|charCreationCounter\(3) & (((\inst5|state.init5~q\ & 
-- \inst5|Equal6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(3),
	datab => \inst5|Equal8~9_combout\,
	datac => \inst5|state.init5~q\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|charCreationCounter[12]~97_combout\);

-- Location: FF_X37_Y30_N3
\inst5|charCreationCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[0]~33_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(0));

-- Location: LCCOMB_X37_Y30_N4
\inst5|charCreationCounter[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[1]~37_combout\ = (\inst5|charCreationCounter\(1) & (!\inst5|charCreationCounter[0]~34\)) # (!\inst5|charCreationCounter\(1) & ((\inst5|charCreationCounter[0]~34\) # (GND)))
-- \inst5|charCreationCounter[1]~38\ = CARRY((!\inst5|charCreationCounter[0]~34\) # (!\inst5|charCreationCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(1),
	datad => VCC,
	cin => \inst5|charCreationCounter[0]~34\,
	combout => \inst5|charCreationCounter[1]~37_combout\,
	cout => \inst5|charCreationCounter[1]~38\);

-- Location: FF_X37_Y30_N5
\inst5|charCreationCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[1]~37_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(1));

-- Location: LCCOMB_X37_Y30_N6
\inst5|charCreationCounter[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[2]~39_combout\ = (\inst5|charCreationCounter\(2) & (\inst5|charCreationCounter[1]~38\ $ (GND))) # (!\inst5|charCreationCounter\(2) & (!\inst5|charCreationCounter[1]~38\ & VCC))
-- \inst5|charCreationCounter[2]~40\ = CARRY((\inst5|charCreationCounter\(2) & !\inst5|charCreationCounter[1]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(2),
	datad => VCC,
	cin => \inst5|charCreationCounter[1]~38\,
	combout => \inst5|charCreationCounter[2]~39_combout\,
	cout => \inst5|charCreationCounter[2]~40\);

-- Location: FF_X37_Y30_N7
\inst5|charCreationCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[2]~39_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(2));

-- Location: FF_X37_Y30_N9
\inst5|charCreationCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[3]~41_combout\,
	sclr => \inst5|charCreationCounter[12]~97_combout\,
	ena => \inst5|charCreationCounter[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(3));

-- Location: LCCOMB_X38_Y30_N20
\inst5|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal7~0_combout\ = (!\inst5|Equal8~9_combout\) # (!\inst5|charCreationCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(3),
	datad => \inst5|Equal8~9_combout\,
	combout => \inst5|Equal7~0_combout\);

-- Location: LCCOMB_X40_Y29_N30
\inst5|state~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~47_combout\ = (\inst5|Equal6~5_combout\ & ((\inst5|state.createChar1~q\ & ((!\inst5|Equal7~0_combout\))) # (!\inst5|state.createChar1~q\ & (\inst5|state.createChar2~q\ & \inst5|Equal7~0_combout\)))) # (!\inst5|Equal6~5_combout\ & 
-- (((\inst5|state.createChar2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar1~q\,
	datab => \inst5|state.createChar2~q\,
	datac => \inst5|Equal6~5_combout\,
	datad => \inst5|Equal7~0_combout\,
	combout => \inst5|state~47_combout\);

-- Location: LCCOMB_X39_Y29_N8
\inst5|state~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~70_combout\ = ((!\inst5|state.init5~q\ & (!\inst5|state.init4~q\ & !\inst5|state.init3~q\))) # (!\inst5|Equal6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init5~q\,
	datab => \inst5|state.init4~q\,
	datac => \inst5|state.init3~q\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|state~70_combout\);

-- Location: LCCOMB_X40_Y29_N8
\inst5|state~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~48_combout\ = (\inst5|state~47_combout\ & \inst5|state~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|state~47_combout\,
	datad => \inst5|state~70_combout\,
	combout => \inst5|state~48_combout\);

-- Location: FF_X40_Y29_N9
\inst5|state.createChar2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.createChar2~q\);

-- Location: LCCOMB_X39_Y29_N28
\inst5|state~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~55_combout\ = (\inst5|Equal7~0_combout\ & (\inst5|state.createChar3~q\ & ((\inst5|state.createChar1~q\) # (!\inst5|state.createChar2~q\)))) # (!\inst5|Equal7~0_combout\ & (((!\inst5|state.createChar1~q\ & \inst5|state.createChar2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar3~q\,
	datab => \inst5|state.createChar1~q\,
	datac => \inst5|state.createChar2~q\,
	datad => \inst5|Equal7~0_combout\,
	combout => \inst5|state~55_combout\);

-- Location: LCCOMB_X39_Y29_N30
\inst5|state~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~56_combout\ = (\inst5|state~37_combout\ & ((\inst5|Equal6~5_combout\ & (\inst5|state~55_combout\)) # (!\inst5|Equal6~5_combout\ & ((\inst5|state.createChar3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~37_combout\,
	datab => \inst5|state~55_combout\,
	datac => \inst5|state.createChar3~q\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|state~56_combout\);

-- Location: FF_X39_Y29_N31
\inst5|state.createChar3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.createChar3~q\);

-- Location: LCCOMB_X40_Y29_N10
\inst5|dataOut[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[4]~4_combout\ = (!\inst5|state.createChar2~q\ & !\inst5|state.createChar1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|state.createChar2~q\,
	datad => \inst5|state.createChar1~q\,
	combout => \inst5|dataOut[4]~4_combout\);

-- Location: LCCOMB_X39_Y29_N14
\inst5|state~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~53_combout\ = (\inst5|Equal7~0_combout\ & (\inst5|state.createChar4~q\ & ((!\inst5|dataOut[4]~4_combout\) # (!\inst5|state.createChar3~q\)))) # (!\inst5|Equal7~0_combout\ & (\inst5|state.createChar3~q\ & (\inst5|dataOut[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar3~q\,
	datab => \inst5|dataOut[4]~4_combout\,
	datac => \inst5|Equal7~0_combout\,
	datad => \inst5|state.createChar4~q\,
	combout => \inst5|state~53_combout\);

-- Location: LCCOMB_X39_Y29_N12
\inst5|state~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~54_combout\ = (\inst5|state~37_combout\ & ((\inst5|Equal6~5_combout\ & (\inst5|state~53_combout\)) # (!\inst5|Equal6~5_combout\ & ((\inst5|state.createChar4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~37_combout\,
	datab => \inst5|state~53_combout\,
	datac => \inst5|state.createChar4~q\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|state~54_combout\);

-- Location: FF_X39_Y29_N13
\inst5|state.createChar4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.createChar4~q\);

-- Location: LCCOMB_X38_Y30_N14
\inst5|state~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~49_combout\ = (\inst5|charCreationCounter\(3) & (\inst5|Equal8~9_combout\ & \inst5|Equal6~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(3),
	datab => \inst5|Equal8~9_combout\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|state~49_combout\);

-- Location: LCCOMB_X39_Y29_N6
\inst5|state~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~71_combout\ = (!\inst5|state.createChar1~q\ & (!\inst5|state.createChar2~q\ & !\inst5|state.createChar3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.createChar1~q\,
	datac => \inst5|state.createChar2~q\,
	datad => \inst5|state.createChar3~q\,
	combout => \inst5|state~71_combout\);

-- Location: LCCOMB_X38_Y30_N8
\inst5|state~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~50_combout\ = (\inst5|Equal6~5_combout\ & (\inst5|state~71_combout\ & ((\inst5|state.createChar4~q\) # (\inst5|state~49_combout\)))) # (!\inst5|Equal6~5_combout\ & (((\inst5|state~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal6~5_combout\,
	datab => \inst5|state.createChar4~q\,
	datac => \inst5|state~49_combout\,
	datad => \inst5|state~71_combout\,
	combout => \inst5|state~50_combout\);

-- Location: LCCOMB_X38_Y30_N10
\inst5|state~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~51_combout\ = (\inst5|Equal6~5_combout\ & (((\inst5|state.createChar4~q\ & \inst5|state~49_combout\)) # (!\inst5|state~71_combout\))) # (!\inst5|Equal6~5_combout\ & (\inst5|state.createChar4~q\ & (\inst5|state~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal6~5_combout\,
	datab => \inst5|state.createChar4~q\,
	datac => \inst5|state~49_combout\,
	datad => \inst5|state~71_combout\,
	combout => \inst5|state~51_combout\);

-- Location: LCCOMB_X38_Y30_N18
\inst5|state~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~72_combout\ = (\inst5|state~51_combout\ & ((\inst5|state~50_combout\) # ((\inst5|charCreationCounter\(3) & \inst5|Equal8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(3),
	datab => \inst5|Equal8~9_combout\,
	datac => \inst5|state~50_combout\,
	datad => \inst5|state~51_combout\,
	combout => \inst5|state~72_combout\);

-- Location: LCCOMB_X38_Y30_N30
\inst5|state~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~52_combout\ = (\inst5|state~37_combout\ & ((\inst5|state~50_combout\ & ((\inst5|state~72_combout\))) # (!\inst5|state~50_combout\ & (\inst5|state.createChar5~q\ & !\inst5|state~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~37_combout\,
	datab => \inst5|state~50_combout\,
	datac => \inst5|state.createChar5~q\,
	datad => \inst5|state~72_combout\,
	combout => \inst5|state~52_combout\);

-- Location: FF_X38_Y30_N31
\inst5|state.createChar5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.createChar5~q\);

-- Location: LCCOMB_X40_Y29_N0
\inst5|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~0_combout\ = (!\inst5|state.createChar4~q\ & (!\inst5|state.createChar3~q\ & (!\inst5|state.createChar5~q\ & \inst5|dataOut[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar4~q\,
	datab => \inst5|state.createChar3~q\,
	datac => \inst5|state.createChar5~q\,
	datad => \inst5|dataOut[4]~4_combout\,
	combout => \inst5|process_1~0_combout\);

-- Location: LCCOMB_X40_Y30_N2
\inst5|counter[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[17]~31_combout\ = ((\inst5|process_1~0_combout\ & \inst5|dataOut~38_combout\)) # (!\inst5|Equal6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|process_1~0_combout\,
	datac => \inst5|dataOut~38_combout\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|counter[17]~31_combout\);

-- Location: LCCOMB_X40_Y30_N6
\inst5|counter[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[17]~56_combout\ = (\inst5|process_0~9_combout\) # (((!\inst5|counter[17]~31_combout\) # (!\inst5|state~39_combout\)) # (!\inst5|state~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~9_combout\,
	datab => \inst5|state~36_combout\,
	datac => \inst5|state~39_combout\,
	datad => \inst5|counter[17]~31_combout\,
	combout => \inst5|counter[17]~56_combout\);

-- Location: FF_X41_Y27_N3
\inst5|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[0]~32_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(0));

-- Location: LCCOMB_X41_Y27_N4
\inst5|counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[1]~34_combout\ = (\inst5|counter\(1) & (!\inst5|counter[0]~33\)) # (!\inst5|counter\(1) & ((\inst5|counter[0]~33\) # (GND)))
-- \inst5|counter[1]~35\ = CARRY((!\inst5|counter[0]~33\) # (!\inst5|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(1),
	datad => VCC,
	cin => \inst5|counter[0]~33\,
	combout => \inst5|counter[1]~34_combout\,
	cout => \inst5|counter[1]~35\);

-- Location: FF_X41_Y27_N5
\inst5|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[1]~34_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(1));

-- Location: LCCOMB_X41_Y27_N6
\inst5|counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[2]~36_combout\ = (\inst5|counter\(2) & (\inst5|counter[1]~35\ $ (GND))) # (!\inst5|counter\(2) & (!\inst5|counter[1]~35\ & VCC))
-- \inst5|counter[2]~37\ = CARRY((\inst5|counter\(2) & !\inst5|counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(2),
	datad => VCC,
	cin => \inst5|counter[1]~35\,
	combout => \inst5|counter[2]~36_combout\,
	cout => \inst5|counter[2]~37\);

-- Location: FF_X41_Y27_N7
\inst5|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[2]~36_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(2));

-- Location: LCCOMB_X41_Y27_N8
\inst5|counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[3]~38_combout\ = (\inst5|counter\(3) & (!\inst5|counter[2]~37\)) # (!\inst5|counter\(3) & ((\inst5|counter[2]~37\) # (GND)))
-- \inst5|counter[3]~39\ = CARRY((!\inst5|counter[2]~37\) # (!\inst5|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(3),
	datad => VCC,
	cin => \inst5|counter[2]~37\,
	combout => \inst5|counter[3]~38_combout\,
	cout => \inst5|counter[3]~39\);

-- Location: FF_X41_Y27_N9
\inst5|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[3]~38_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(3));

-- Location: LCCOMB_X41_Y27_N10
\inst5|counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[4]~40_combout\ = (\inst5|counter\(4) & (\inst5|counter[3]~39\ $ (GND))) # (!\inst5|counter\(4) & (!\inst5|counter[3]~39\ & VCC))
-- \inst5|counter[4]~41\ = CARRY((\inst5|counter\(4) & !\inst5|counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(4),
	datad => VCC,
	cin => \inst5|counter[3]~39\,
	combout => \inst5|counter[4]~40_combout\,
	cout => \inst5|counter[4]~41\);

-- Location: FF_X41_Y27_N11
\inst5|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[4]~40_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(4));

-- Location: LCCOMB_X41_Y27_N12
\inst5|counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[5]~42_combout\ = (\inst5|counter\(5) & (!\inst5|counter[4]~41\)) # (!\inst5|counter\(5) & ((\inst5|counter[4]~41\) # (GND)))
-- \inst5|counter[5]~43\ = CARRY((!\inst5|counter[4]~41\) # (!\inst5|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(5),
	datad => VCC,
	cin => \inst5|counter[4]~41\,
	combout => \inst5|counter[5]~42_combout\,
	cout => \inst5|counter[5]~43\);

-- Location: FF_X41_Y27_N13
\inst5|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[5]~42_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(5));

-- Location: LCCOMB_X41_Y27_N14
\inst5|counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[6]~44_combout\ = (\inst5|counter\(6) & (\inst5|counter[5]~43\ $ (GND))) # (!\inst5|counter\(6) & (!\inst5|counter[5]~43\ & VCC))
-- \inst5|counter[6]~45\ = CARRY((\inst5|counter\(6) & !\inst5|counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(6),
	datad => VCC,
	cin => \inst5|counter[5]~43\,
	combout => \inst5|counter[6]~44_combout\,
	cout => \inst5|counter[6]~45\);

-- Location: FF_X41_Y30_N5
\inst5|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|counter[6]~44_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(6));

-- Location: LCCOMB_X41_Y27_N16
\inst5|counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[7]~46_combout\ = (\inst5|counter\(7) & (!\inst5|counter[6]~45\)) # (!\inst5|counter\(7) & ((\inst5|counter[6]~45\) # (GND)))
-- \inst5|counter[7]~47\ = CARRY((!\inst5|counter[6]~45\) # (!\inst5|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(7),
	datad => VCC,
	cin => \inst5|counter[6]~45\,
	combout => \inst5|counter[7]~46_combout\,
	cout => \inst5|counter[7]~47\);

-- Location: FF_X41_Y27_N17
\inst5|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[7]~46_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(7));

-- Location: LCCOMB_X41_Y27_N18
\inst5|counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[8]~48_combout\ = (\inst5|counter\(8) & (\inst5|counter[7]~47\ $ (GND))) # (!\inst5|counter\(8) & (!\inst5|counter[7]~47\ & VCC))
-- \inst5|counter[8]~49\ = CARRY((\inst5|counter\(8) & !\inst5|counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(8),
	datad => VCC,
	cin => \inst5|counter[7]~47\,
	combout => \inst5|counter[8]~48_combout\,
	cout => \inst5|counter[8]~49\);

-- Location: FF_X41_Y27_N19
\inst5|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[8]~48_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(8));

-- Location: LCCOMB_X41_Y27_N20
\inst5|counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[9]~50_combout\ = (\inst5|counter\(9) & (!\inst5|counter[8]~49\)) # (!\inst5|counter\(9) & ((\inst5|counter[8]~49\) # (GND)))
-- \inst5|counter[9]~51\ = CARRY((!\inst5|counter[8]~49\) # (!\inst5|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(9),
	datad => VCC,
	cin => \inst5|counter[8]~49\,
	combout => \inst5|counter[9]~50_combout\,
	cout => \inst5|counter[9]~51\);

-- Location: FF_X41_Y27_N21
\inst5|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[9]~50_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(9));

-- Location: LCCOMB_X41_Y27_N22
\inst5|counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[10]~52_combout\ = (\inst5|counter\(10) & (\inst5|counter[9]~51\ $ (GND))) # (!\inst5|counter\(10) & (!\inst5|counter[9]~51\ & VCC))
-- \inst5|counter[10]~53\ = CARRY((\inst5|counter\(10) & !\inst5|counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(10),
	datad => VCC,
	cin => \inst5|counter[9]~51\,
	combout => \inst5|counter[10]~52_combout\,
	cout => \inst5|counter[10]~53\);

-- Location: FF_X41_Y27_N23
\inst5|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[10]~52_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(10));

-- Location: LCCOMB_X41_Y27_N24
\inst5|counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[11]~54_combout\ = (\inst5|counter\(11) & (!\inst5|counter[10]~53\)) # (!\inst5|counter\(11) & ((\inst5|counter[10]~53\) # (GND)))
-- \inst5|counter[11]~55\ = CARRY((!\inst5|counter[10]~53\) # (!\inst5|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(11),
	datad => VCC,
	cin => \inst5|counter[10]~53\,
	combout => \inst5|counter[11]~54_combout\,
	cout => \inst5|counter[11]~55\);

-- Location: FF_X41_Y27_N25
\inst5|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[11]~54_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(11));

-- Location: LCCOMB_X41_Y27_N26
\inst5|counter[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[12]~57_combout\ = (\inst5|counter\(12) & (\inst5|counter[11]~55\ $ (GND))) # (!\inst5|counter\(12) & (!\inst5|counter[11]~55\ & VCC))
-- \inst5|counter[12]~58\ = CARRY((\inst5|counter\(12) & !\inst5|counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(12),
	datad => VCC,
	cin => \inst5|counter[11]~55\,
	combout => \inst5|counter[12]~57_combout\,
	cout => \inst5|counter[12]~58\);

-- Location: FF_X41_Y27_N27
\inst5|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[12]~57_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(12));

-- Location: LCCOMB_X41_Y27_N28
\inst5|counter[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[13]~59_combout\ = (\inst5|counter\(13) & (!\inst5|counter[12]~58\)) # (!\inst5|counter\(13) & ((\inst5|counter[12]~58\) # (GND)))
-- \inst5|counter[13]~60\ = CARRY((!\inst5|counter[12]~58\) # (!\inst5|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(13),
	datad => VCC,
	cin => \inst5|counter[12]~58\,
	combout => \inst5|counter[13]~59_combout\,
	cout => \inst5|counter[13]~60\);

-- Location: FF_X41_Y27_N29
\inst5|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[13]~59_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(13));

-- Location: LCCOMB_X41_Y27_N30
\inst5|counter[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[14]~61_combout\ = (\inst5|counter\(14) & (\inst5|counter[13]~60\ $ (GND))) # (!\inst5|counter\(14) & (!\inst5|counter[13]~60\ & VCC))
-- \inst5|counter[14]~62\ = CARRY((\inst5|counter\(14) & !\inst5|counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(14),
	datad => VCC,
	cin => \inst5|counter[13]~60\,
	combout => \inst5|counter[14]~61_combout\,
	cout => \inst5|counter[14]~62\);

-- Location: FF_X41_Y30_N27
\inst5|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|counter[14]~61_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(14));

-- Location: LCCOMB_X41_Y26_N0
\inst5|counter[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[15]~63_combout\ = (\inst5|counter\(15) & (!\inst5|counter[14]~62\)) # (!\inst5|counter\(15) & ((\inst5|counter[14]~62\) # (GND)))
-- \inst5|counter[15]~64\ = CARRY((!\inst5|counter[14]~62\) # (!\inst5|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(15),
	datad => VCC,
	cin => \inst5|counter[14]~62\,
	combout => \inst5|counter[15]~63_combout\,
	cout => \inst5|counter[15]~64\);

-- Location: FF_X40_Y26_N27
\inst5|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|counter[15]~63_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(15));

-- Location: LCCOMB_X41_Y26_N2
\inst5|counter[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[16]~65_combout\ = (\inst5|counter\(16) & (\inst5|counter[15]~64\ $ (GND))) # (!\inst5|counter\(16) & (!\inst5|counter[15]~64\ & VCC))
-- \inst5|counter[16]~66\ = CARRY((\inst5|counter\(16) & !\inst5|counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(16),
	datad => VCC,
	cin => \inst5|counter[15]~64\,
	combout => \inst5|counter[16]~65_combout\,
	cout => \inst5|counter[16]~66\);

-- Location: FF_X40_Y26_N31
\inst5|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|counter[16]~65_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(16));

-- Location: LCCOMB_X41_Y26_N4
\inst5|counter[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[17]~67_combout\ = (\inst5|counter\(17) & (!\inst5|counter[16]~66\)) # (!\inst5|counter\(17) & ((\inst5|counter[16]~66\) # (GND)))
-- \inst5|counter[17]~68\ = CARRY((!\inst5|counter[16]~66\) # (!\inst5|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(17),
	datad => VCC,
	cin => \inst5|counter[16]~66\,
	combout => \inst5|counter[17]~67_combout\,
	cout => \inst5|counter[17]~68\);

-- Location: FF_X40_Y26_N17
\inst5|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|counter[17]~67_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(17));

-- Location: LCCOMB_X41_Y26_N6
\inst5|counter[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[18]~69_combout\ = (\inst5|counter\(18) & (\inst5|counter[17]~68\ $ (GND))) # (!\inst5|counter\(18) & (!\inst5|counter[17]~68\ & VCC))
-- \inst5|counter[18]~70\ = CARRY((\inst5|counter\(18) & !\inst5|counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(18),
	datad => VCC,
	cin => \inst5|counter[17]~68\,
	combout => \inst5|counter[18]~69_combout\,
	cout => \inst5|counter[18]~70\);

-- Location: FF_X40_Y26_N29
\inst5|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|counter[18]~69_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(18));

-- Location: LCCOMB_X41_Y26_N8
\inst5|counter[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[19]~71_combout\ = (\inst5|counter\(19) & (!\inst5|counter[18]~70\)) # (!\inst5|counter\(19) & ((\inst5|counter[18]~70\) # (GND)))
-- \inst5|counter[19]~72\ = CARRY((!\inst5|counter[18]~70\) # (!\inst5|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(19),
	datad => VCC,
	cin => \inst5|counter[18]~70\,
	combout => \inst5|counter[19]~71_combout\,
	cout => \inst5|counter[19]~72\);

-- Location: FF_X41_Y26_N9
\inst5|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[19]~71_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(19));

-- Location: FF_X41_Y26_N11
\inst5|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[20]~73_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(20));

-- Location: LCCOMB_X41_Y26_N16
\inst5|counter[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[23]~79_combout\ = (\inst5|counter\(23) & (!\inst5|counter[22]~78\)) # (!\inst5|counter\(23) & ((\inst5|counter[22]~78\) # (GND)))
-- \inst5|counter[23]~80\ = CARRY((!\inst5|counter[22]~78\) # (!\inst5|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(23),
	datad => VCC,
	cin => \inst5|counter[22]~78\,
	combout => \inst5|counter[23]~79_combout\,
	cout => \inst5|counter[23]~80\);

-- Location: FF_X41_Y26_N17
\inst5|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[23]~79_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(23));

-- Location: LCCOMB_X41_Y30_N6
\inst5|e~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~3_combout\ = (!\inst5|counter\(20) & (!\inst5|counter\(21) & (!\inst5|counter\(23) & !\inst5|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(20),
	datab => \inst5|counter\(21),
	datac => \inst5|counter\(23),
	datad => \inst5|counter\(10),
	combout => \inst5|e~3_combout\);

-- Location: LCCOMB_X41_Y26_N18
\inst5|counter[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[24]~81_combout\ = (\inst5|counter\(24) & (\inst5|counter[23]~80\ $ (GND))) # (!\inst5|counter\(24) & (!\inst5|counter[23]~80\ & VCC))
-- \inst5|counter[24]~82\ = CARRY((\inst5|counter\(24) & !\inst5|counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(24),
	datad => VCC,
	cin => \inst5|counter[23]~80\,
	combout => \inst5|counter[24]~81_combout\,
	cout => \inst5|counter[24]~82\);

-- Location: FF_X41_Y26_N19
\inst5|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[24]~81_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(24));

-- Location: LCCOMB_X41_Y26_N20
\inst5|counter[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[25]~83_combout\ = (\inst5|counter\(25) & (!\inst5|counter[24]~82\)) # (!\inst5|counter\(25) & ((\inst5|counter[24]~82\) # (GND)))
-- \inst5|counter[25]~84\ = CARRY((!\inst5|counter[24]~82\) # (!\inst5|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(25),
	datad => VCC,
	cin => \inst5|counter[24]~82\,
	combout => \inst5|counter[25]~83_combout\,
	cout => \inst5|counter[25]~84\);

-- Location: FF_X41_Y26_N21
\inst5|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[25]~83_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(25));

-- Location: LCCOMB_X41_Y26_N22
\inst5|counter[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[26]~85_combout\ = (\inst5|counter\(26) & (\inst5|counter[25]~84\ $ (GND))) # (!\inst5|counter\(26) & (!\inst5|counter[25]~84\ & VCC))
-- \inst5|counter[26]~86\ = CARRY((\inst5|counter\(26) & !\inst5|counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(26),
	datad => VCC,
	cin => \inst5|counter[25]~84\,
	combout => \inst5|counter[26]~85_combout\,
	cout => \inst5|counter[26]~86\);

-- Location: FF_X41_Y26_N23
\inst5|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[26]~85_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(26));

-- Location: LCCOMB_X41_Y26_N24
\inst5|counter[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[27]~87_combout\ = (\inst5|counter\(27) & (!\inst5|counter[26]~86\)) # (!\inst5|counter\(27) & ((\inst5|counter[26]~86\) # (GND)))
-- \inst5|counter[27]~88\ = CARRY((!\inst5|counter[26]~86\) # (!\inst5|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(27),
	datad => VCC,
	cin => \inst5|counter[26]~86\,
	combout => \inst5|counter[27]~87_combout\,
	cout => \inst5|counter[27]~88\);

-- Location: FF_X41_Y26_N25
\inst5|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[27]~87_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(27));

-- Location: LCCOMB_X41_Y30_N0
\inst5|e~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~4_combout\ = (!\inst5|counter\(25) & (!\inst5|counter\(24) & (!\inst5|counter\(27) & !\inst5|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(25),
	datab => \inst5|counter\(24),
	datac => \inst5|counter\(27),
	datad => \inst5|counter\(26),
	combout => \inst5|e~4_combout\);

-- Location: LCCOMB_X41_Y26_N26
\inst5|counter[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[28]~89_combout\ = (\inst5|counter\(28) & (\inst5|counter[27]~88\ $ (GND))) # (!\inst5|counter\(28) & (!\inst5|counter[27]~88\ & VCC))
-- \inst5|counter[28]~90\ = CARRY((\inst5|counter\(28) & !\inst5|counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(28),
	datad => VCC,
	cin => \inst5|counter[27]~88\,
	combout => \inst5|counter[28]~89_combout\,
	cout => \inst5|counter[28]~90\);

-- Location: FF_X41_Y26_N27
\inst5|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[28]~89_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(28));

-- Location: LCCOMB_X41_Y26_N28
\inst5|counter[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[29]~91_combout\ = (\inst5|counter\(29) & (!\inst5|counter[28]~90\)) # (!\inst5|counter\(29) & ((\inst5|counter[28]~90\) # (GND)))
-- \inst5|counter[29]~92\ = CARRY((!\inst5|counter[28]~90\) # (!\inst5|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(29),
	datad => VCC,
	cin => \inst5|counter[28]~90\,
	combout => \inst5|counter[29]~91_combout\,
	cout => \inst5|counter[29]~92\);

-- Location: FF_X41_Y26_N29
\inst5|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[29]~91_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(29));

-- Location: LCCOMB_X41_Y26_N30
\inst5|counter[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[30]~93_combout\ = \inst5|counter\(30) $ (!\inst5|counter[29]~92\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(30),
	cin => \inst5|counter[29]~92\,
	combout => \inst5|counter[30]~93_combout\);

-- Location: FF_X41_Y26_N31
\inst5|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[30]~93_combout\,
	sclr => \inst5|counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(30));

-- Location: LCCOMB_X41_Y30_N22
\inst5|e~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~5_combout\ = (!\inst5|counter\(29) & (!\inst5|counter\(30) & !\inst5|counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(29),
	datac => \inst5|counter\(30),
	datad => \inst5|counter\(28),
	combout => \inst5|e~5_combout\);

-- Location: LCCOMB_X41_Y27_N0
\inst5|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~1_combout\ = (!\inst5|counter\(2) & (\inst5|counter\(8) & (!\inst5|counter\(1) & !\inst5|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(2),
	datab => \inst5|counter\(8),
	datac => \inst5|counter\(1),
	datad => \inst5|counter\(0),
	combout => \inst5|Equal4~1_combout\);

-- Location: LCCOMB_X41_Y30_N16
\inst5|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~2_combout\ = (\inst5|e~3_combout\ & (\inst5|e~4_combout\ & (\inst5|e~5_combout\ & \inst5|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|e~3_combout\,
	datab => \inst5|e~4_combout\,
	datac => \inst5|e~5_combout\,
	datad => \inst5|Equal4~1_combout\,
	combout => \inst5|Equal4~2_combout\);

-- Location: LCCOMB_X39_Y29_N4
\inst5|state~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~63_combout\ = (\inst5|Equal6~5_combout\ & ((\inst5|state.createChar4~q\) # ((\inst5|state.createChar3~q\) # (!\inst5|dataOut[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar4~q\,
	datab => \inst5|dataOut[4]~4_combout\,
	datac => \inst5|state.createChar3~q\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|state~63_combout\);

-- Location: LCCOMB_X40_Y30_N30
\inst5|Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~6_combout\ = (\inst5|Equal4~2_combout\ & (\inst5|Equal4~3_combout\ & \inst5|Equal4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal4~2_combout\,
	datac => \inst5|Equal4~3_combout\,
	datad => \inst5|Equal4~5_combout\,
	combout => \inst5|Equal4~6_combout\);

-- Location: LCCOMB_X39_Y29_N26
\inst5|state~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~62_combout\ = (\inst5|state.init6~q\ & (!\inst5|Equal4~6_combout\ & ((!\inst5|Equal6~5_combout\) # (!\inst5|state.createChar5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init6~q\,
	datab => \inst5|state.createChar5~q\,
	datac => \inst5|Equal4~6_combout\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|state~62_combout\);

-- Location: LCCOMB_X39_Y29_N18
\inst5|state~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~64_combout\ = (!\inst5|state~63_combout\ & ((\inst5|state~62_combout\) # ((\inst5|state.createChar5~q\ & \inst5|state~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~62_combout\,
	datab => \inst5|state.createChar5~q\,
	datac => \inst5|state~63_combout\,
	datad => \inst5|state~49_combout\,
	combout => \inst5|state~64_combout\);

-- Location: LCCOMB_X39_Y29_N20
\inst5|state~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~65_combout\ = (\inst5|state~64_combout\) # ((\inst5|Equal7~0_combout\ & (\inst5|state.init6~q\ & \inst5|state~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal7~0_combout\,
	datab => \inst5|state.init6~q\,
	datac => \inst5|state~63_combout\,
	datad => \inst5|state~64_combout\,
	combout => \inst5|state~65_combout\);

-- Location: LCCOMB_X39_Y29_N2
\inst5|state~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~66_combout\ = (\inst5|state~36_combout\ & (\inst5|state~70_combout\ & \inst5|state~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~36_combout\,
	datac => \inst5|state~70_combout\,
	datad => \inst5|state~65_combout\,
	combout => \inst5|state~66_combout\);

-- Location: FF_X39_Y29_N3
\inst5|state.init6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init6~q\);

-- Location: LCCOMB_X40_Y30_N22
\inst5|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~21_combout\ = (\inst5|Equal4~2_combout\ & (\inst5|state.init6~q\ & (\inst5|Equal4~3_combout\ & \inst5|Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal4~2_combout\,
	datab => \inst5|state.init6~q\,
	datac => \inst5|Equal4~3_combout\,
	datad => \inst5|Equal4~5_combout\,
	combout => \inst5|process_0~21_combout\);

-- Location: LCCOMB_X40_Y30_N26
\inst5|state~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~67_combout\ = (\inst5|state~41_combout\ & (\inst5|process_0~21_combout\ & (!\inst5|process_0~18_combout\))) # (!\inst5|state~41_combout\ & (((\inst5|state.init7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~21_combout\,
	datab => \inst5|process_0~18_combout\,
	datac => \inst5|state.init7~q\,
	datad => \inst5|state~41_combout\,
	combout => \inst5|state~67_combout\);

-- Location: FF_X40_Y30_N27
\inst5|state.init7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init7~q\);

-- Location: FF_X39_Y30_N9
\inst5|state.sendingAddress\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|process_0~18_combout\,
	ena => \inst5|state~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.sendingAddress~q\);

-- Location: LCCOMB_X40_Y30_N28
\inst5|state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~38_combout\ = (!\inst5|state.sendingData~q\ & (!\inst5|state.init7~q\ & !\inst5|state.sendingAddress~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingData~q\,
	datac => \inst5|state.init7~q\,
	datad => \inst5|state.sendingAddress~q\,
	combout => \inst5|state~38_combout\);

-- Location: LCCOMB_X40_Y30_N4
\inst5|state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~39_combout\ = (\inst5|state~38_combout\ & (((!\inst5|Equal4~6_combout\)) # (!\inst5|state.init6~q\))) # (!\inst5|state~38_combout\ & (!\inst5|Equal6~5_combout\ & ((!\inst5|Equal4~6_combout\) # (!\inst5|state.init6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~38_combout\,
	datab => \inst5|state.init6~q\,
	datac => \inst5|Equal4~6_combout\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|state~39_combout\);

-- Location: LCCOMB_X39_Y30_N4
\inst5|state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~40_combout\ = (!\inst5|process_1~0_combout\ & \inst5|Equal6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|process_1~0_combout\,
	datac => \inst5|Equal6~5_combout\,
	combout => \inst5|state~40_combout\);

-- Location: LCCOMB_X39_Y30_N10
\inst5|state~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~41_combout\ = ((\inst5|state~40_combout\ & ((!\inst5|Equal7~0_combout\))) # (!\inst5|state~40_combout\ & (!\inst5|state~39_combout\))) # (!\inst5|state~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~39_combout\,
	datab => \inst5|Equal7~0_combout\,
	datac => \inst5|state~40_combout\,
	datad => \inst5|state~37_combout\,
	combout => \inst5|state~41_combout\);

-- Location: LCCOMB_X40_Y30_N20
\inst5|state~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~42_combout\ = (!\inst5|process_0~9_combout\ & (\inst5|counter[17]~31_combout\ & ((!\inst5|Equal6~5_combout\) # (!\inst5|state.sendingAddress~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingAddress~q\,
	datab => \inst5|process_0~9_combout\,
	datac => \inst5|Equal6~5_combout\,
	datad => \inst5|counter[17]~31_combout\,
	combout => \inst5|state~42_combout\);

-- Location: LCCOMB_X40_Y30_N24
\inst5|state~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~43_combout\ = (!\inst5|process_0~21_combout\ & (!\inst5|process_0~20_combout\ & (!\inst5|process_0~19_combout\ & \inst5|state~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~21_combout\,
	datab => \inst5|process_0~20_combout\,
	datac => \inst5|process_0~19_combout\,
	datad => \inst5|state~42_combout\,
	combout => \inst5|state~43_combout\);

-- Location: LCCOMB_X39_Y30_N18
\inst5|state~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~68_combout\ = (\inst5|state~41_combout\ & (\inst5|state~43_combout\ & ((\inst4|lcd_write_n~q\) # (!\inst5|state.ready~q\)))) # (!\inst5|state~41_combout\ & (((\inst5|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~41_combout\,
	datab => \inst4|lcd_write_n~q\,
	datac => \inst5|state.ready~q\,
	datad => \inst5|state~43_combout\,
	combout => \inst5|state~68_combout\);

-- Location: FF_X39_Y30_N19
\inst5|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.ready~q\);

-- Location: LCCOMB_X39_Y30_N8
\inst5|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~18_combout\ = (\inst5|state.ready~q\ & !\inst4|lcd_write_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|state.ready~q\,
	datad => \inst4|lcd_write_n~q\,
	combout => \inst5|process_0~18_combout\);

-- Location: LCCOMB_X39_Y30_N28
\inst5|state~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~44_combout\ = (\inst5|Equal6~5_combout\ & (\inst5|state.sendingAddress~q\ & \inst5|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal6~5_combout\,
	datab => \inst5|state.sendingAddress~q\,
	datac => \inst5|process_1~0_combout\,
	combout => \inst5|state~44_combout\);

-- Location: LCCOMB_X39_Y30_N12
\inst5|state~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~45_combout\ = (\inst5|state~41_combout\ & (!\inst5|process_0~18_combout\ & (\inst5|state~44_combout\))) # (!\inst5|state~41_combout\ & (((\inst5|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~18_combout\,
	datab => \inst5|state~44_combout\,
	datac => \inst5|state.sendingData~q\,
	datad => \inst5|state~41_combout\,
	combout => \inst5|state~45_combout\);

-- Location: FF_X39_Y30_N13
\inst5|state.sendingData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.sendingData~q\);

-- Location: LCCOMB_X39_Y30_N16
\inst5|Equal8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~10_combout\ = (!\inst5|charCreationCounter\(3) & \inst5|Equal8~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(3),
	datad => \inst5|Equal8~9_combout\,
	combout => \inst5|Equal8~10_combout\);

-- Location: LCCOMB_X39_Y30_N20
\inst5|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~1_combout\ = (\inst5|process_1~0_combout\ & (!\inst5|state.sendingData~q\ & (!\inst5|state.ready~q\))) # (!\inst5|process_1~0_combout\ & (((\inst5|Equal8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingData~q\,
	datab => \inst5|state.ready~q\,
	datac => \inst5|process_1~0_combout\,
	datad => \inst5|Equal8~10_combout\,
	combout => \inst5|process_1~1_combout\);

-- Location: LCCOMB_X40_Y27_N16
\inst5|e~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~1_combout\ = (\inst5|counter\(1) & ((\inst5|counter\(4)) # (\inst5|counter\(2)))) # (!\inst5|counter\(1) & (\inst5|counter\(4) & \inst5|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(1),
	datac => \inst5|counter\(4),
	datad => \inst5|counter\(2),
	combout => \inst5|e~1_combout\);

-- Location: LCCOMB_X40_Y26_N12
\inst5|e~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~2_combout\ = (\inst5|counter\(4) & (((!\inst5|e~1_combout\ & !\inst5|counter\(3))) # (!\inst5|counter\(5)))) # (!\inst5|counter\(4) & ((\inst5|e~1_combout\) # ((\inst5|counter\(3)) # (\inst5|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|e~1_combout\,
	datab => \inst5|counter\(3),
	datac => \inst5|counter\(4),
	datad => \inst5|counter\(5),
	combout => \inst5|e~2_combout\);

-- Location: LCCOMB_X40_Y26_N30
\inst5|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~0_combout\ = (!\inst5|counter\(8) & (!\inst5|state.ready~q\ & \inst5|Equal6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(8),
	datab => \inst5|state.ready~q\,
	datad => \inst5|Equal6~2_combout\,
	combout => \inst5|e~0_combout\);

-- Location: LCCOMB_X41_Y30_N26
\inst5|e~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~6_combout\ = (\inst5|e~3_combout\ & (\inst5|e~5_combout\ & \inst5|e~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|e~3_combout\,
	datab => \inst5|e~5_combout\,
	datad => \inst5|e~4_combout\,
	combout => \inst5|e~6_combout\);

-- Location: LCCOMB_X40_Y26_N2
\inst5|e~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~7_combout\ = (\inst5|e~2_combout\ & (\inst5|e~0_combout\ & (\inst5|Equal4~0_combout\ & \inst5|e~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|e~2_combout\,
	datab => \inst5|e~0_combout\,
	datac => \inst5|Equal4~0_combout\,
	datad => \inst5|e~6_combout\,
	combout => \inst5|e~7_combout\);

-- Location: LCCOMB_X30_Y27_N6
\inst1|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan5~0_combout\ = (!\inst3|output\(7) & (((!\inst3|output\(4) & !\inst3|output\(5))) # (!\inst3|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|output\(4),
	datab => \inst3|output\(6),
	datac => \inst3|output\(5),
	datad => \inst3|output\(7),
	combout => \inst1|LessThan5~0_combout\);

-- Location: LCCOMB_X32_Y24_N28
\inst1|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan4~0_combout\ = (\inst7|output\(2)) # ((\inst7|output\(3)) # ((\inst7|output\(1)) # (\inst7|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output\(2),
	datab => \inst7|output\(3),
	datac => \inst7|output\(1),
	datad => \inst7|output\(0),
	combout => \inst1|LessThan4~0_combout\);

-- Location: LCCOMB_X32_Y24_N26
\inst1|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan4~1_combout\ = (\inst7|output\(6) & ((\inst7|output\(5)) # ((\inst7|output\(4) & \inst1|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output\(5),
	datab => \inst7|output\(4),
	datac => \inst7|output\(6),
	datad => \inst1|LessThan4~0_combout\,
	combout => \inst1|LessThan4~1_combout\);

-- Location: LCCOMB_X29_Y27_N18
\inst1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = (!\inst1|state.obstacle_both_sides~q\ & ((\inst7|output\(7)) # (\inst1|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.obstacle_both_sides~q\,
	datac => \inst7|output\(7),
	datad => \inst1|LessThan4~1_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X34_Y23_N4
\inst1|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~0_combout\ = (\inst3|output\(1)) # ((\inst3|output\(0)) # ((\inst3|output\(3)) # (\inst3|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|output\(1),
	datab => \inst3|output\(0),
	datac => \inst3|output\(3),
	datad => \inst3|output\(2),
	combout => \inst1|LessThan3~0_combout\);

-- Location: LCCOMB_X30_Y27_N26
\inst1|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~1_combout\ = (\inst3|output\(6) & ((\inst3|output\(5)) # ((\inst1|LessThan3~0_combout\ & \inst3|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|output\(5),
	datab => \inst3|output\(6),
	datac => \inst1|LessThan3~0_combout\,
	datad => \inst3|output\(4),
	combout => \inst1|LessThan3~1_combout\);

-- Location: LCCOMB_X32_Y24_N20
\inst1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~0_combout\ = (!\inst7|output\(7) & (((!\inst7|output\(4) & !\inst7|output\(5))) # (!\inst7|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output\(4),
	datab => \inst7|output\(7),
	datac => \inst7|output\(6),
	datad => \inst7|output\(5),
	combout => \inst1|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y27_N20
\inst1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (!\inst1|state.obstacle_both_sides~q\ & (\inst1|LessThan2~0_combout\ & ((\inst3|output\(7)) # (\inst1|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.obstacle_both_sides~q\,
	datab => \inst3|output\(7),
	datac => \inst1|LessThan3~1_combout\,
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|process_0~3_combout\);

-- Location: LCCOMB_X30_Y27_N2
\inst1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = (!\inst1|state.obstacle_both_sides~q\ & (((!\inst2|output\(4) & !\inst2|output\(5))) # (!\inst2|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output\(4),
	datab => \inst2|output\(5),
	datac => \inst1|state.obstacle_both_sides~q\,
	datad => \inst2|output\(6),
	combout => \inst1|process_0~5_combout\);

-- Location: LCCOMB_X30_Y27_N0
\inst1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (!\inst2|output\(7) & \inst1|process_0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|output\(7),
	datad => \inst1|process_0~5_combout\,
	combout => \inst1|process_0~6_combout\);

-- Location: LCCOMB_X31_Y24_N0
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\inst2|output\(0)) # ((\inst2|output\(3)) # ((\inst2|output\(1)) # (\inst2|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output\(0),
	datab => \inst2|output\(3),
	datac => \inst2|output\(1),
	datad => \inst2|output\(2),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y27_N28
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst2|output\(6) & ((\inst2|output\(5)) # ((\inst2|output\(4) & \inst1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output\(4),
	datab => \inst2|output\(6),
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst2|output\(5),
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y27_N10
\inst1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = (\inst2|output\(7) & ((\inst3|output\(7)) # ((\inst1|LessThan3~1_combout\)))) # (!\inst2|output\(7) & (\inst1|LessThan0~1_combout\ & ((\inst3|output\(7)) # (\inst1|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output\(7),
	datab => \inst3|output\(7),
	datac => \inst1|LessThan3~1_combout\,
	datad => \inst1|LessThan0~1_combout\,
	combout => \inst1|process_0~1_combout\);

-- Location: LCCOMB_X29_Y27_N2
\inst1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~0_combout\ = (!\inst1|process_0~3_combout\ & (!\inst1|process_0~6_combout\ & ((!\inst1|process_0~4_combout\) # (!\inst1|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|process_0~6_combout\,
	datac => \inst1|process_0~1_combout\,
	datad => \inst1|process_0~4_combout\,
	combout => \inst1|count~0_combout\);

-- Location: LCCOMB_X28_Y28_N14
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|count\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X29_Y27_N14
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|Add0~0_combout\ & (!\inst1|process_0~7_combout\ & (\inst1|process_0~19_combout\ & \inst1|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datab => \inst1|process_0~7_combout\,
	datac => \inst1|process_0~19_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|Add0~38_combout\);

-- Location: LCCOMB_X29_Y27_N10
\inst1|count[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[7]~3_combout\ = (\inst1|state.obstacle_both_sides~q\) # ((!\inst1|process_0~7_combout\ & (\inst1|process_0~19_combout\ & \inst1|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.obstacle_both_sides~q\,
	datab => \inst1|process_0~7_combout\,
	datac => \inst1|process_0~19_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|count[7]~3_combout\);

-- Location: FF_X29_Y27_N15
\inst1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~38_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(0));

-- Location: LCCOMB_X28_Y28_N16
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|count\(1) & (!\inst1|Add0~1\)) # (!\inst1|count\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X27_Y27_N12
\inst1|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~39_combout\ = (!\inst1|process_0~7_combout\ & (\inst1|Add0~2_combout\ & (\inst1|count~0_combout\ & \inst1|process_0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~7_combout\,
	datab => \inst1|Add0~2_combout\,
	datac => \inst1|count~0_combout\,
	datad => \inst1|process_0~19_combout\,
	combout => \inst1|Add0~39_combout\);

-- Location: FF_X27_Y27_N13
\inst1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~39_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(1));

-- Location: LCCOMB_X28_Y28_N18
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|count\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|count\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|count\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X29_Y27_N16
\inst1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|process_0~19_combout\ & (\inst1|count~0_combout\ & (!\inst1|process_0~7_combout\ & \inst1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~19_combout\,
	datab => \inst1|count~0_combout\,
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|Add0~4_combout\,
	combout => \inst1|Add0~40_combout\);

-- Location: FF_X29_Y27_N17
\inst1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~40_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(2));

-- Location: LCCOMB_X28_Y28_N20
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|count\(3) & (!\inst1|Add0~5\)) # (!\inst1|count\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X29_Y27_N22
\inst1|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~41_combout\ = (\inst1|process_0~19_combout\ & (\inst1|Add0~6_combout\ & (!\inst1|process_0~7_combout\ & \inst1|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~19_combout\,
	datab => \inst1|Add0~6_combout\,
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|Add0~41_combout\);

-- Location: FF_X29_Y27_N23
\inst1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~41_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(3));

-- Location: LCCOMB_X28_Y28_N22
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|count\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|count\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|count\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X27_Y27_N28
\inst1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (!\inst1|process_0~7_combout\ & (\inst1|Add0~8_combout\ & (\inst1|count~0_combout\ & \inst1|process_0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~7_combout\,
	datab => \inst1|Add0~8_combout\,
	datac => \inst1|count~0_combout\,
	datad => \inst1|process_0~19_combout\,
	combout => \inst1|Add0~42_combout\);

-- Location: FF_X27_Y27_N29
\inst1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~42_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(4));

-- Location: LCCOMB_X28_Y28_N24
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|count\(5) & (!\inst1|Add0~9\)) # (!\inst1|count\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X29_Y27_N28
\inst1|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~43_combout\ = (\inst1|process_0~19_combout\ & (\inst1|Add0~10_combout\ & (!\inst1|process_0~7_combout\ & \inst1|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~19_combout\,
	datab => \inst1|Add0~10_combout\,
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|Add0~43_combout\);

-- Location: FF_X29_Y27_N29
\inst1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~43_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(5));

-- Location: LCCOMB_X28_Y28_N26
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|count\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|count\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|count\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X29_Y27_N6
\inst1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|Add0~12_combout\ & (!\inst1|process_0~7_combout\ & (\inst1|process_0~19_combout\ & \inst1|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~12_combout\,
	datab => \inst1|process_0~7_combout\,
	datac => \inst1|process_0~19_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|Add0~44_combout\);

-- Location: FF_X29_Y27_N7
\inst1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~44_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(6));

-- Location: LCCOMB_X28_Y28_N28
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|count\(7) & (!\inst1|Add0~13\)) # (!\inst1|count\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X29_Y27_N0
\inst1|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~45_combout\ = (\inst1|Add0~14_combout\ & (!\inst1|process_0~7_combout\ & (\inst1|process_0~19_combout\ & \inst1|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~14_combout\,
	datab => \inst1|process_0~7_combout\,
	datac => \inst1|process_0~19_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|Add0~45_combout\);

-- Location: FF_X29_Y27_N1
\inst1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~45_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(7));

-- Location: LCCOMB_X28_Y28_N30
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|count\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|count\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|count\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X27_Y27_N24
\inst1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = (!\inst1|process_0~7_combout\ & (\inst1|Add0~16_combout\ & (\inst1|count~0_combout\ & \inst1|process_0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~7_combout\,
	datab => \inst1|Add0~16_combout\,
	datac => \inst1|count~0_combout\,
	datad => \inst1|process_0~19_combout\,
	combout => \inst1|Add0~46_combout\);

-- Location: FF_X27_Y27_N25
\inst1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~46_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(8));

-- Location: LCCOMB_X28_Y27_N0
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|count\(9) & (!\inst1|Add0~17\)) # (!\inst1|count\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X27_Y27_N22
\inst1|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~47_combout\ = (!\inst1|process_0~7_combout\ & (\inst1|Add0~18_combout\ & (\inst1|count~0_combout\ & \inst1|process_0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~7_combout\,
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|count~0_combout\,
	datad => \inst1|process_0~19_combout\,
	combout => \inst1|Add0~47_combout\);

-- Location: FF_X27_Y27_N23
\inst1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~47_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(9));

-- Location: LCCOMB_X28_Y27_N2
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|count\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|count\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|count\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X27_Y27_N16
\inst1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~48_combout\ = (!\inst1|process_0~7_combout\ & (\inst1|count~0_combout\ & (\inst1|process_0~19_combout\ & \inst1|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~7_combout\,
	datab => \inst1|count~0_combout\,
	datac => \inst1|process_0~19_combout\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|Add0~48_combout\);

-- Location: FF_X27_Y27_N17
\inst1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~48_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(10));

-- Location: LCCOMB_X28_Y27_N4
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|count\(11) & (!\inst1|Add0~21\)) # (!\inst1|count\(11) & ((\inst1|Add0~21\) # (GND)))
-- \inst1|Add0~23\ = CARRY((!\inst1|Add0~21\) # (!\inst1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X27_Y27_N30
\inst1|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~49_combout\ = (\inst1|Add0~22_combout\ & (\inst1|count~0_combout\ & (!\inst1|process_0~7_combout\ & \inst1|process_0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~22_combout\,
	datab => \inst1|count~0_combout\,
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|process_0~19_combout\,
	combout => \inst1|Add0~49_combout\);

-- Location: FF_X27_Y27_N31
\inst1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~49_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(11));

-- Location: LCCOMB_X28_Y27_N6
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|count\(12) & (\inst1|Add0~23\ $ (GND))) # (!\inst1|count\(12) & (!\inst1|Add0~23\ & VCC))
-- \inst1|Add0~25\ = CARRY((\inst1|count\(12) & !\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X28_Y27_N24
\inst1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~50_combout\ = (\inst1|Add0~24_combout\ & (!\inst1|process_0~7_combout\ & (\inst1|process_0~19_combout\ & \inst1|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~24_combout\,
	datab => \inst1|process_0~7_combout\,
	datac => \inst1|process_0~19_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|Add0~50_combout\);

-- Location: FF_X28_Y27_N25
\inst1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~50_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(12));

-- Location: LCCOMB_X28_Y27_N8
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|count\(13) & (!\inst1|Add0~25\)) # (!\inst1|count\(13) & ((\inst1|Add0~25\) # (GND)))
-- \inst1|Add0~27\ = CARRY((!\inst1|Add0~25\) # (!\inst1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X28_Y27_N22
\inst1|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~51_combout\ = (\inst1|process_0~19_combout\ & (\inst1|Add0~26_combout\ & (!\inst1|process_0~7_combout\ & \inst1|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~19_combout\,
	datab => \inst1|Add0~26_combout\,
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|Add0~51_combout\);

-- Location: FF_X28_Y27_N23
\inst1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~51_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(13));

-- Location: LCCOMB_X28_Y27_N10
\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|count\(14) & (\inst1|Add0~27\ $ (GND))) # (!\inst1|count\(14) & (!\inst1|Add0~27\ & VCC))
-- \inst1|Add0~29\ = CARRY((\inst1|count\(14) & !\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X28_Y27_N28
\inst1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~52_combout\ = (\inst1|Add0~28_combout\ & (!\inst1|process_0~7_combout\ & (\inst1|process_0~19_combout\ & \inst1|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~28_combout\,
	datab => \inst1|process_0~7_combout\,
	datac => \inst1|process_0~19_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|Add0~52_combout\);

-- Location: FF_X28_Y27_N29
\inst1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~52_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(14));

-- Location: LCCOMB_X28_Y27_N12
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|count\(15) & (!\inst1|Add0~29\)) # (!\inst1|count\(15) & ((\inst1|Add0~29\) # (GND)))
-- \inst1|Add0~31\ = CARRY((!\inst1|Add0~29\) # (!\inst1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X28_Y27_N26
\inst1|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~53_combout\ = (\inst1|Add0~30_combout\ & (!\inst1|process_0~7_combout\ & (\inst1|process_0~19_combout\ & \inst1|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~30_combout\,
	datab => \inst1|process_0~7_combout\,
	datac => \inst1|process_0~19_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|Add0~53_combout\);

-- Location: FF_X28_Y27_N27
\inst1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~53_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(15));

-- Location: LCCOMB_X28_Y27_N14
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|count\(16) & (\inst1|Add0~31\ $ (GND))) # (!\inst1|count\(16) & (!\inst1|Add0~31\ & VCC))
-- \inst1|Add0~33\ = CARRY((\inst1|count\(16) & !\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: LCCOMB_X27_Y27_N0
\inst1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~54_combout\ = (!\inst1|process_0~7_combout\ & (\inst1|Add0~32_combout\ & (\inst1|count~0_combout\ & \inst1|process_0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~7_combout\,
	datab => \inst1|Add0~32_combout\,
	datac => \inst1|count~0_combout\,
	datad => \inst1|process_0~19_combout\,
	combout => \inst1|Add0~54_combout\);

-- Location: FF_X27_Y27_N1
\inst1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~54_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(16));

-- Location: LCCOMB_X28_Y27_N16
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|count\(17) & (!\inst1|Add0~33\)) # (!\inst1|count\(17) & ((\inst1|Add0~33\) # (GND)))
-- \inst1|Add0~35\ = CARRY((!\inst1|Add0~33\) # (!\inst1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X29_Y27_N30
\inst1|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~55_combout\ = (\inst1|Add0~34_combout\ & (!\inst1|process_0~7_combout\ & (\inst1|process_0~19_combout\ & \inst1|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~34_combout\,
	datab => \inst1|process_0~7_combout\,
	datac => \inst1|process_0~19_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|Add0~55_combout\);

-- Location: FF_X29_Y27_N31
\inst1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~55_combout\,
	ena => \inst1|count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(17));

-- Location: LCCOMB_X28_Y27_N18
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = \inst1|count\(18) $ (!\inst1|Add0~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(18),
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\);

-- Location: LCCOMB_X29_Y27_N12
\inst1|count[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[18]~2_combout\ = (\inst1|count~1_combout\ & (((\inst1|Add0~36_combout\)))) # (!\inst1|count~1_combout\ & (!\inst1|state.obstacle_both_sides~q\ & ((\inst1|count\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.obstacle_both_sides~q\,
	datab => \inst1|Add0~36_combout\,
	datac => \inst1|count\(18),
	datad => \inst1|count~1_combout\,
	combout => \inst1|count[18]~2_combout\);

-- Location: FF_X29_Y27_N13
\inst1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|count[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(18));

-- Location: LCCOMB_X27_Y27_N26
\inst1|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~15_combout\ = (!\inst1|count\(11) & (!\inst1|count\(10) & (!\inst1|count\(9) & !\inst1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(11),
	datab => \inst1|count\(10),
	datac => \inst1|count\(9),
	datad => \inst1|count\(8),
	combout => \inst1|process_0~15_combout\);

-- Location: LCCOMB_X27_Y27_N8
\inst1|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~14_combout\ = (!\inst1|count\(5) & (!\inst1|count\(4) & (!\inst1|count\(7) & !\inst1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(5),
	datab => \inst1|count\(4),
	datac => \inst1|count\(7),
	datad => \inst1|count\(6),
	combout => \inst1|process_0~14_combout\);

-- Location: LCCOMB_X28_Y27_N30
\inst1|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~16_combout\ = (!\inst1|count\(13) & (!\inst1|count\(14) & (!\inst1|count\(15) & !\inst1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(13),
	datab => \inst1|count\(14),
	datac => \inst1|count\(15),
	datad => \inst1|count\(12),
	combout => \inst1|process_0~16_combout\);

-- Location: LCCOMB_X27_Y27_N2
\inst1|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~13_combout\ = (!\inst1|count\(1) & (!\inst1|count\(3) & (!\inst1|count\(2) & !\inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(3),
	datac => \inst1|count\(2),
	datad => \inst1|count\(0),
	combout => \inst1|process_0~13_combout\);

-- Location: LCCOMB_X27_Y27_N4
\inst1|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~17_combout\ = (\inst1|process_0~15_combout\ & (\inst1|process_0~14_combout\ & (\inst1|process_0~16_combout\ & \inst1|process_0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~15_combout\,
	datab => \inst1|process_0~14_combout\,
	datac => \inst1|process_0~16_combout\,
	datad => \inst1|process_0~13_combout\,
	combout => \inst1|process_0~17_combout\);

-- Location: LCCOMB_X28_Y27_N20
\inst1|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~11_combout\ = (\inst1|count\(13) & (\inst1|count\(12) & (\inst1|count\(15) & \inst1|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(13),
	datab => \inst1|count\(12),
	datac => \inst1|count\(15),
	datad => \inst1|count\(14),
	combout => \inst1|process_0~11_combout\);

-- Location: LCCOMB_X27_Y27_N20
\inst1|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~10_combout\ = (\inst1|count\(11) & (\inst1|count\(8) & (\inst1|count\(9) & \inst1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(11),
	datab => \inst1|count\(8),
	datac => \inst1|count\(9),
	datad => \inst1|count\(10),
	combout => \inst1|process_0~10_combout\);

-- Location: LCCOMB_X27_Y27_N14
\inst1|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~9_combout\ = (\inst1|count\(5) & (\inst1|count\(4) & (\inst1|count\(7) & \inst1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(5),
	datab => \inst1|count\(4),
	datac => \inst1|count\(7),
	datad => \inst1|count\(6),
	combout => \inst1|process_0~9_combout\);

-- Location: LCCOMB_X27_Y27_N10
\inst1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~8_combout\ = (\inst1|count\(1) & (\inst1|count\(3) & (\inst1|count\(2) & \inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(3),
	datac => \inst1|count\(2),
	datad => \inst1|count\(0),
	combout => \inst1|process_0~8_combout\);

-- Location: LCCOMB_X27_Y27_N18
\inst1|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~12_combout\ = (\inst1|process_0~11_combout\ & (\inst1|process_0~10_combout\ & (\inst1|process_0~9_combout\ & \inst1|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~11_combout\,
	datab => \inst1|process_0~10_combout\,
	datac => \inst1|process_0~9_combout\,
	datad => \inst1|process_0~8_combout\,
	combout => \inst1|process_0~12_combout\);

-- Location: LCCOMB_X27_Y27_N6
\inst1|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~18_combout\ = (\inst1|count\(16) & (\inst1|count\(17) & ((\inst1|process_0~12_combout\)))) # (!\inst1|count\(16) & (!\inst1|count\(17) & (\inst1|process_0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(16),
	datab => \inst1|count\(17),
	datac => \inst1|process_0~17_combout\,
	datad => \inst1|process_0~12_combout\,
	combout => \inst1|process_0~18_combout\);

-- Location: LCCOMB_X29_Y27_N4
\inst1|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~19_combout\ = (\inst1|count\(18) & (\inst1|LessThan2~0_combout\ & ((\inst1|LessThan5~0_combout\)))) # (!\inst1|count\(18) & (((\inst1|LessThan2~0_combout\ & \inst1|LessThan5~0_combout\)) # (!\inst1|process_0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(18),
	datab => \inst1|LessThan2~0_combout\,
	datac => \inst1|process_0~18_combout\,
	datad => \inst1|LessThan5~0_combout\,
	combout => \inst1|process_0~19_combout\);

-- Location: LCCOMB_X29_Y27_N24
\inst1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~1_combout\ = (\inst1|process_0~19_combout\ & (\inst1|count~0_combout\ & ((!\inst1|process_0~4_combout\) # (!\inst1|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan5~0_combout\,
	datab => \inst1|process_0~4_combout\,
	datac => \inst1|process_0~19_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|count~1_combout\);

-- Location: FF_X29_Y27_N25
\inst1|state.obstacle_both_sides\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.obstacle_both_sides~q\);

-- Location: LCCOMB_X29_Y27_N8
\inst1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = (!\inst1|state.obstacle_both_sides~q\ & (\inst1|LessThan5~0_combout\ & ((\inst1|LessThan4~1_combout\) # (\inst7|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.obstacle_both_sides~q\,
	datab => \inst1|LessThan4~1_combout\,
	datac => \inst7|output\(7),
	datad => \inst1|LessThan5~0_combout\,
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X28_Y28_N12
\inst1|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state~9_combout\ = (\inst1|process_0~7_combout\ & \inst1|count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|state~9_combout\);

-- Location: FF_X28_Y28_N13
\inst1|state.obstacle_right\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.obstacle_right~q\);

-- Location: LCCOMB_X29_Y27_N26
\inst1|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state~8_combout\ = (\inst1|process_0~3_combout\ & (!\inst1|process_0~6_combout\ & ((!\inst1|process_0~4_combout\) # (!\inst1|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|process_0~1_combout\,
	datac => \inst1|process_0~6_combout\,
	datad => \inst1|process_0~4_combout\,
	combout => \inst1|state~8_combout\);

-- Location: FF_X29_Y27_N27
\inst1|state.obstacle_left\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.obstacle_left~q\);

-- Location: LCCOMB_X29_Y27_N20
\inst1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (!\inst1|state.obstacle_both_sides~q\ & (\inst1|process_0~1_combout\ & ((\inst7|output\(7)) # (\inst1|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.obstacle_both_sides~q\,
	datab => \inst1|process_0~1_combout\,
	datac => \inst7|output\(7),
	datad => \inst1|LessThan4~1_combout\,
	combout => \inst1|process_0~2_combout\);

-- Location: FF_X29_Y27_N21
\inst1|state.no_obstacle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.no_obstacle~q\);

-- Location: LCCOMB_X30_Y27_N24
\inst1|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state~10_combout\ = (\inst1|process_0~7_combout\) # ((\inst1|process_0~19_combout\) # (!\inst1|count~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~7_combout\,
	datab => \inst1|process_0~19_combout\,
	datad => \inst1|count~0_combout\,
	combout => \inst1|state~10_combout\);

-- Location: FF_X30_Y27_N25
\inst1|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.init~q\);

-- Location: LCCOMB_X28_Y30_N2
\inst1|motor1_direction~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|motor1_direction~0_combout\ = (\inst1|state.obstacle_right~q\) # ((\inst1|state.obstacle_left~q\) # ((\inst1|state.no_obstacle~q\) # (!\inst1|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.obstacle_right~q\,
	datab => \inst1|state.obstacle_left~q\,
	datac => \inst1|state.no_obstacle~q\,
	datad => \inst1|state.init~q\,
	combout => \inst1|motor1_direction~0_combout\);

-- Location: LCCOMB_X28_Y28_N10
\inst8|counter[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[0]~45_combout\ = !\inst8|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|counter\(0),
	combout => \inst8|counter[0]~45_combout\);

-- Location: FF_X28_Y28_N11
\inst8|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(0));

-- Location: LCCOMB_X28_Y29_N2
\inst8|counter[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[1]~15_combout\ = (\inst8|counter\(0) & (\inst8|counter\(1) $ (VCC))) # (!\inst8|counter\(0) & (\inst8|counter\(1) & VCC))
-- \inst8|counter[1]~16\ = CARRY((\inst8|counter\(0) & \inst8|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(0),
	datab => \inst8|counter\(1),
	datad => VCC,
	combout => \inst8|counter[1]~15_combout\,
	cout => \inst8|counter[1]~16\);

-- Location: FF_X28_Y29_N3
\inst8|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(1));

-- Location: LCCOMB_X28_Y29_N4
\inst8|counter[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[2]~17_combout\ = (\inst8|counter\(2) & (!\inst8|counter[1]~16\)) # (!\inst8|counter\(2) & ((\inst8|counter[1]~16\) # (GND)))
-- \inst8|counter[2]~18\ = CARRY((!\inst8|counter[1]~16\) # (!\inst8|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(2),
	datad => VCC,
	cin => \inst8|counter[1]~16\,
	combout => \inst8|counter[2]~17_combout\,
	cout => \inst8|counter[2]~18\);

-- Location: FF_X28_Y29_N5
\inst8|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(2));

-- Location: LCCOMB_X28_Y29_N6
\inst8|counter[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[3]~19_combout\ = (\inst8|counter\(3) & (\inst8|counter[2]~18\ $ (GND))) # (!\inst8|counter\(3) & (!\inst8|counter[2]~18\ & VCC))
-- \inst8|counter[3]~20\ = CARRY((\inst8|counter\(3) & !\inst8|counter[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(3),
	datad => VCC,
	cin => \inst8|counter[2]~18\,
	combout => \inst8|counter[3]~19_combout\,
	cout => \inst8|counter[3]~20\);

-- Location: FF_X28_Y29_N7
\inst8|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(3));

-- Location: LCCOMB_X28_Y29_N8
\inst8|counter[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[4]~21_combout\ = (\inst8|counter\(4) & (!\inst8|counter[3]~20\)) # (!\inst8|counter\(4) & ((\inst8|counter[3]~20\) # (GND)))
-- \inst8|counter[4]~22\ = CARRY((!\inst8|counter[3]~20\) # (!\inst8|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(4),
	datad => VCC,
	cin => \inst8|counter[3]~20\,
	combout => \inst8|counter[4]~21_combout\,
	cout => \inst8|counter[4]~22\);

-- Location: FF_X28_Y29_N9
\inst8|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(4));

-- Location: LCCOMB_X28_Y29_N10
\inst8|counter[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[5]~23_combout\ = (\inst8|counter\(5) & (\inst8|counter[4]~22\ $ (GND))) # (!\inst8|counter\(5) & (!\inst8|counter[4]~22\ & VCC))
-- \inst8|counter[5]~24\ = CARRY((\inst8|counter\(5) & !\inst8|counter[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(5),
	datad => VCC,
	cin => \inst8|counter[4]~22\,
	combout => \inst8|counter[5]~23_combout\,
	cout => \inst8|counter[5]~24\);

-- Location: FF_X28_Y29_N11
\inst8|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[5]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(5));

-- Location: LCCOMB_X28_Y29_N12
\inst8|counter[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[6]~25_combout\ = (\inst8|counter\(6) & (!\inst8|counter[5]~24\)) # (!\inst8|counter\(6) & ((\inst8|counter[5]~24\) # (GND)))
-- \inst8|counter[6]~26\ = CARRY((!\inst8|counter[5]~24\) # (!\inst8|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(6),
	datad => VCC,
	cin => \inst8|counter[5]~24\,
	combout => \inst8|counter[6]~25_combout\,
	cout => \inst8|counter[6]~26\);

-- Location: FF_X28_Y29_N13
\inst8|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(6));

-- Location: LCCOMB_X28_Y29_N14
\inst8|counter[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[7]~27_combout\ = (\inst8|counter\(7) & (\inst8|counter[6]~26\ $ (GND))) # (!\inst8|counter\(7) & (!\inst8|counter[6]~26\ & VCC))
-- \inst8|counter[7]~28\ = CARRY((\inst8|counter\(7) & !\inst8|counter[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(7),
	datad => VCC,
	cin => \inst8|counter[6]~26\,
	combout => \inst8|counter[7]~27_combout\,
	cout => \inst8|counter[7]~28\);

-- Location: FF_X28_Y29_N15
\inst8|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(7));

-- Location: LCCOMB_X28_Y29_N16
\inst8|counter[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[8]~29_combout\ = (\inst8|counter\(8) & (!\inst8|counter[7]~28\)) # (!\inst8|counter\(8) & ((\inst8|counter[7]~28\) # (GND)))
-- \inst8|counter[8]~30\ = CARRY((!\inst8|counter[7]~28\) # (!\inst8|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(8),
	datad => VCC,
	cin => \inst8|counter[7]~28\,
	combout => \inst8|counter[8]~29_combout\,
	cout => \inst8|counter[8]~30\);

-- Location: FF_X28_Y29_N17
\inst8|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(8));

-- Location: LCCOMB_X28_Y29_N18
\inst8|counter[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[9]~31_combout\ = (\inst8|counter\(9) & (\inst8|counter[8]~30\ $ (GND))) # (!\inst8|counter\(9) & (!\inst8|counter[8]~30\ & VCC))
-- \inst8|counter[9]~32\ = CARRY((\inst8|counter\(9) & !\inst8|counter[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(9),
	datad => VCC,
	cin => \inst8|counter[8]~30\,
	combout => \inst8|counter[9]~31_combout\,
	cout => \inst8|counter[9]~32\);

-- Location: FF_X28_Y29_N19
\inst8|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(9));

-- Location: LCCOMB_X28_Y29_N20
\inst8|counter[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[10]~33_combout\ = (\inst8|counter\(10) & (!\inst8|counter[9]~32\)) # (!\inst8|counter\(10) & ((\inst8|counter[9]~32\) # (GND)))
-- \inst8|counter[10]~34\ = CARRY((!\inst8|counter[9]~32\) # (!\inst8|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(10),
	datad => VCC,
	cin => \inst8|counter[9]~32\,
	combout => \inst8|counter[10]~33_combout\,
	cout => \inst8|counter[10]~34\);

-- Location: FF_X28_Y29_N21
\inst8|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(10));

-- Location: LCCOMB_X28_Y29_N0
\inst8|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal1~1_combout\ = (!\inst8|counter\(10) & (!\inst8|counter\(9) & (!\inst8|counter\(7) & !\inst8|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(10),
	datab => \inst8|counter\(9),
	datac => \inst8|counter\(7),
	datad => \inst8|counter\(8),
	combout => \inst8|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y28_N4
\inst8|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal1~0_combout\ = (!\inst8|counter\(0) & (!\inst8|counter\(2) & (!\inst8|counter\(1) & !\inst8|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(0),
	datab => \inst8|counter\(2),
	datac => \inst8|counter\(1),
	datad => \inst8|counter\(6),
	combout => \inst8|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y29_N22
\inst8|counter[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[11]~35_combout\ = (\inst8|counter\(11) & (\inst8|counter[10]~34\ $ (GND))) # (!\inst8|counter\(11) & (!\inst8|counter[10]~34\ & VCC))
-- \inst8|counter[11]~36\ = CARRY((\inst8|counter\(11) & !\inst8|counter[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(11),
	datad => VCC,
	cin => \inst8|counter[10]~34\,
	combout => \inst8|counter[11]~35_combout\,
	cout => \inst8|counter[11]~36\);

-- Location: FF_X28_Y29_N23
\inst8|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(11));

-- Location: LCCOMB_X28_Y29_N24
\inst8|counter[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[12]~37_combout\ = (\inst8|counter\(12) & (!\inst8|counter[11]~36\)) # (!\inst8|counter\(12) & ((\inst8|counter[11]~36\) # (GND)))
-- \inst8|counter[12]~38\ = CARRY((!\inst8|counter[11]~36\) # (!\inst8|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(12),
	datad => VCC,
	cin => \inst8|counter[11]~36\,
	combout => \inst8|counter[12]~37_combout\,
	cout => \inst8|counter[12]~38\);

-- Location: FF_X28_Y29_N25
\inst8|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(12));

-- Location: LCCOMB_X28_Y28_N2
\inst8|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal1~2_combout\ = (\inst8|Equal1~1_combout\ & (\inst8|Equal1~0_combout\ & (!\inst8|counter\(11) & !\inst8|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal1~1_combout\,
	datab => \inst8|Equal1~0_combout\,
	datac => \inst8|counter\(11),
	datad => \inst8|counter\(12),
	combout => \inst8|Equal1~2_combout\);

-- Location: LCCOMB_X28_Y29_N26
\inst8|counter[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[13]~39_combout\ = (\inst8|counter\(13) & (\inst8|counter[12]~38\ $ (GND))) # (!\inst8|counter\(13) & (!\inst8|counter[12]~38\ & VCC))
-- \inst8|counter[13]~40\ = CARRY((\inst8|counter\(13) & !\inst8|counter[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(13),
	datad => VCC,
	cin => \inst8|counter[12]~38\,
	combout => \inst8|counter[13]~39_combout\,
	cout => \inst8|counter[13]~40\);

-- Location: FF_X28_Y29_N27
\inst8|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(13));

-- Location: LCCOMB_X28_Y29_N28
\inst8|counter[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[14]~41_combout\ = (\inst8|counter\(14) & (!\inst8|counter[13]~40\)) # (!\inst8|counter\(14) & ((\inst8|counter[13]~40\) # (GND)))
-- \inst8|counter[14]~42\ = CARRY((!\inst8|counter[13]~40\) # (!\inst8|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(14),
	datad => VCC,
	cin => \inst8|counter[13]~40\,
	combout => \inst8|counter[14]~41_combout\,
	cout => \inst8|counter[14]~42\);

-- Location: FF_X28_Y29_N29
\inst8|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[14]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(14));

-- Location: LCCOMB_X28_Y30_N20
\inst8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = (\inst8|Equal1~2_combout\ & ((\inst8|counter\(4) & (\inst8|counter\(14) & !\inst1|motor1_direction~0_combout\)) # (!\inst8|counter\(4) & (!\inst8|counter\(14) & \inst1|motor1_direction~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal1~2_combout\,
	datab => \inst8|counter\(4),
	datac => \inst8|counter\(14),
	datad => \inst1|motor1_direction~0_combout\,
	combout => \inst8|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y29_N30
\inst8|counter[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[15]~43_combout\ = \inst8|counter\(15) $ (!\inst8|counter[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(15),
	cin => \inst8|counter[14]~42\,
	combout => \inst8|counter[15]~43_combout\);

-- Location: FF_X28_Y29_N31
\inst8|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[15]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(15));

-- Location: LCCOMB_X28_Y30_N30
\inst8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~1_combout\ = (\inst1|state.obstacle_right~q\ & (\inst8|counter\(13) & \inst8|counter\(3))) # (!\inst1|state.obstacle_right~q\ & (!\inst8|counter\(13) & !\inst8|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.obstacle_right~q\,
	datab => \inst8|counter\(13),
	datad => \inst8|counter\(3),
	combout => \inst8|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y30_N0
\inst1|motor1_speed[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|motor1_speed[9]~4_combout\ = (\inst1|state.init~q\ & ((\inst1|state.obstacle_left~q\) # (\inst1|state.no_obstacle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.obstacle_left~q\,
	datac => \inst1|state.no_obstacle~q\,
	datad => \inst1|state.init~q\,
	combout => \inst1|motor1_speed[9]~4_combout\);

-- Location: LCCOMB_X28_Y30_N22
\inst8|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~2_combout\ = (\inst8|Equal0~1_combout\ & ((\inst8|counter\(5) & (\inst8|counter\(15) & \inst1|motor1_speed[9]~4_combout\)) # (!\inst8|counter\(5) & (!\inst8|counter\(15) & !\inst1|motor1_speed[9]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(5),
	datab => \inst8|counter\(15),
	datac => \inst8|Equal0~1_combout\,
	datad => \inst1|motor1_speed[9]~4_combout\,
	combout => \inst8|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y30_N18
\inst8|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal1~3_combout\ = (!\inst8|counter\(5) & (!\inst8|counter\(13) & (!\inst8|counter\(4) & !\inst8|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(5),
	datab => \inst8|counter\(13),
	datac => \inst8|counter\(4),
	datad => \inst8|counter\(3),
	combout => \inst8|Equal1~3_combout\);

-- Location: LCCOMB_X28_Y30_N8
\inst8|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal1~4_combout\ = (!\inst8|counter\(14) & (!\inst8|counter\(15) & (\inst8|Equal1~2_combout\ & \inst8|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(14),
	datab => \inst8|counter\(15),
	datac => \inst8|Equal1~2_combout\,
	datad => \inst8|Equal1~3_combout\,
	combout => \inst8|Equal1~4_combout\);

-- Location: LCCOMB_X28_Y30_N10
\inst8|pwm~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|pwm~0_combout\ = (\inst8|Equal1~4_combout\ & ((\inst1|state.obstacle_right~q\) # ((\inst1|state.init~q\)))) # (!\inst8|Equal1~4_combout\ & (((\inst8|pwm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.obstacle_right~q\,
	datab => \inst8|pwm~q\,
	datac => \inst8|Equal1~4_combout\,
	datad => \inst1|state.init~q\,
	combout => \inst8|pwm~0_combout\);

-- Location: LCCOMB_X28_Y30_N28
\inst8|pwm~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|pwm~1_combout\ = (\inst8|pwm~0_combout\ & ((!\inst8|Equal0~2_combout\) # (!\inst8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Equal0~0_combout\,
	datac => \inst8|Equal0~2_combout\,
	datad => \inst8|pwm~0_combout\,
	combout => \inst8|pwm~1_combout\);

-- Location: FF_X28_Y30_N29
\inst8|pwm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|pwm~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|pwm~q\);

-- Location: LCCOMB_X28_Y30_N24
\inst8|motor_signal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|motor_signal1~0_combout\ = (\inst1|motor1_direction~0_combout\ & \inst8|pwm~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|motor1_direction~0_combout\,
	datad => \inst8|pwm~q\,
	combout => \inst8|motor_signal1~0_combout\);

-- Location: LCCOMB_X28_Y30_N14
\inst8|motor_signal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|motor_signal2~0_combout\ = (!\inst1|motor1_direction~0_combout\ & \inst8|pwm~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|motor1_direction~0_combout\,
	datad => \inst8|pwm~q\,
	combout => \inst8|motor_signal2~0_combout\);

-- Location: LCCOMB_X28_Y30_N4
\inst1|motor2_speed[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|motor2_speed[9]~0_combout\ = (\inst1|state.init~q\ & ((\inst1|state.obstacle_right~q\) # (\inst1|state.no_obstacle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.obstacle_right~q\,
	datac => \inst1|state.no_obstacle~q\,
	datad => \inst1|state.init~q\,
	combout => \inst1|motor2_speed[9]~0_combout\);

-- Location: LCCOMB_X28_Y30_N6
\inst9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (\inst8|counter\(3) & (\inst8|counter\(13) & \inst1|state.obstacle_left~q\)) # (!\inst8|counter\(3) & (!\inst8|counter\(13) & !\inst1|state.obstacle_left~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(3),
	datab => \inst8|counter\(13),
	datad => \inst1|state.obstacle_left~q\,
	combout => \inst9|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y30_N26
\inst9|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~1_combout\ = (\inst9|Equal0~0_combout\ & ((\inst8|counter\(5) & (\inst8|counter\(15) & \inst1|motor2_speed[9]~0_combout\)) # (!\inst8|counter\(5) & (!\inst8|counter\(15) & !\inst1|motor2_speed[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(5),
	datab => \inst8|counter\(15),
	datac => \inst1|motor2_speed[9]~0_combout\,
	datad => \inst9|Equal0~0_combout\,
	combout => \inst9|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y30_N16
\inst9|pwm~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|pwm~0_combout\ = (\inst8|Equal1~4_combout\ & (((\inst1|state.obstacle_left~q\) # (\inst1|state.init~q\)))) # (!\inst8|Equal1~4_combout\ & (\inst9|pwm~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|pwm~q\,
	datab => \inst1|state.obstacle_left~q\,
	datac => \inst8|Equal1~4_combout\,
	datad => \inst1|state.init~q\,
	combout => \inst9|pwm~0_combout\);

-- Location: LCCOMB_X28_Y30_N12
\inst9|pwm~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|pwm~1_combout\ = (\inst9|pwm~0_combout\ & ((!\inst9|Equal0~1_combout\) # (!\inst8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Equal0~0_combout\,
	datac => \inst9|Equal0~1_combout\,
	datad => \inst9|pwm~0_combout\,
	combout => \inst9|pwm~1_combout\);

-- Location: FF_X28_Y30_N13
\inst9|pwm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst9|pwm~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|pwm~q\);

-- Location: LCCOMB_X40_Y30_N10
\inst5|dataOut[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[1]~5_combout\ = (!\inst5|state.init1~q\ & (!\inst5|state.init4~q\ & (!\inst5|state.init3~q\ & !\inst5|state.init2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init1~q\,
	datab => \inst5|state.init4~q\,
	datac => \inst5|state.init3~q\,
	datad => \inst5|state.init2~q\,
	combout => \inst5|dataOut[1]~5_combout\);

-- Location: LCCOMB_X40_Y30_N0
\inst5|dataOut[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[7]~6_combout\ = (\inst5|dataOut[1]~5_combout\ & (!\inst5|state.init5~q\ & (\inst5|state.init0~q\ & \inst5|state.sendingAddress~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[1]~5_combout\,
	datab => \inst5|state.init5~q\,
	datac => \inst5|state.init0~q\,
	datad => \inst5|state.sendingAddress~q\,
	combout => \inst5|dataOut[7]~6_combout\);

-- Location: LCCOMB_X36_Y29_N4
\inst4|lcd_posY[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_posY[0]~feeder_combout\ = \inst4|lineCount\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|lineCount\(0),
	combout => \inst4|lcd_posY[0]~feeder_combout\);

-- Location: FF_X36_Y29_N5
\inst4|lcd_posY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_posY[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posY\(0));

-- Location: FF_X36_Y29_N13
\inst5|addressStorage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|lcd_posY\(0),
	sload => VCC,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(6));

-- Location: LCCOMB_X35_Y28_N2
\inst4|display_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[0]~31_combout\ = \inst4|display_counter\(0) $ (VCC)
-- \inst4|display_counter[0]~32\ = CARRY(\inst4|display_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(0),
	datad => VCC,
	combout => \inst4|display_counter[0]~31_combout\,
	cout => \inst4|display_counter[0]~32\);

-- Location: LCCOMB_X36_Y27_N26
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X35_Y28_N3
\inst4|display_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[0]~31_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(0));

-- Location: LCCOMB_X35_Y28_N4
\inst4|display_counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[1]~33_combout\ = (\inst4|display_counter\(1) & (!\inst4|display_counter[0]~32\)) # (!\inst4|display_counter\(1) & ((\inst4|display_counter[0]~32\) # (GND)))
-- \inst4|display_counter[1]~34\ = CARRY((!\inst4|display_counter[0]~32\) # (!\inst4|display_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(1),
	datad => VCC,
	cin => \inst4|display_counter[0]~32\,
	combout => \inst4|display_counter[1]~33_combout\,
	cout => \inst4|display_counter[1]~34\);

-- Location: FF_X35_Y28_N5
\inst4|display_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[1]~33_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(1));

-- Location: LCCOMB_X35_Y28_N6
\inst4|display_counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[2]~35_combout\ = (\inst4|display_counter\(2) & (\inst4|display_counter[1]~34\ $ (GND))) # (!\inst4|display_counter\(2) & (!\inst4|display_counter[1]~34\ & VCC))
-- \inst4|display_counter[2]~36\ = CARRY((\inst4|display_counter\(2) & !\inst4|display_counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(2),
	datad => VCC,
	cin => \inst4|display_counter[1]~34\,
	combout => \inst4|display_counter[2]~35_combout\,
	cout => \inst4|display_counter[2]~36\);

-- Location: FF_X35_Y28_N7
\inst4|display_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[2]~35_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(2));

-- Location: LCCOMB_X35_Y28_N8
\inst4|display_counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[3]~37_combout\ = (\inst4|display_counter\(3) & (!\inst4|display_counter[2]~36\)) # (!\inst4|display_counter\(3) & ((\inst4|display_counter[2]~36\) # (GND)))
-- \inst4|display_counter[3]~38\ = CARRY((!\inst4|display_counter[2]~36\) # (!\inst4|display_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(3),
	datad => VCC,
	cin => \inst4|display_counter[2]~36\,
	combout => \inst4|display_counter[3]~37_combout\,
	cout => \inst4|display_counter[3]~38\);

-- Location: FF_X35_Y28_N9
\inst4|display_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[3]~37_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(3));

-- Location: LCCOMB_X35_Y28_N10
\inst4|display_counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[4]~39_combout\ = (\inst4|display_counter\(4) & (\inst4|display_counter[3]~38\ $ (GND))) # (!\inst4|display_counter\(4) & (!\inst4|display_counter[3]~38\ & VCC))
-- \inst4|display_counter[4]~40\ = CARRY((\inst4|display_counter\(4) & !\inst4|display_counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(4),
	datad => VCC,
	cin => \inst4|display_counter[3]~38\,
	combout => \inst4|display_counter[4]~39_combout\,
	cout => \inst4|display_counter[4]~40\);

-- Location: FF_X35_Y28_N11
\inst4|display_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[4]~39_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(4));

-- Location: LCCOMB_X35_Y28_N12
\inst4|display_counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[5]~41_combout\ = (\inst4|display_counter\(5) & (!\inst4|display_counter[4]~40\)) # (!\inst4|display_counter\(5) & ((\inst4|display_counter[4]~40\) # (GND)))
-- \inst4|display_counter[5]~42\ = CARRY((!\inst4|display_counter[4]~40\) # (!\inst4|display_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(5),
	datad => VCC,
	cin => \inst4|display_counter[4]~40\,
	combout => \inst4|display_counter[5]~41_combout\,
	cout => \inst4|display_counter[5]~42\);

-- Location: FF_X35_Y28_N13
\inst4|display_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[5]~41_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(5));

-- Location: LCCOMB_X35_Y28_N14
\inst4|display_counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[6]~43_combout\ = (\inst4|display_counter\(6) & (\inst4|display_counter[5]~42\ $ (GND))) # (!\inst4|display_counter\(6) & (!\inst4|display_counter[5]~42\ & VCC))
-- \inst4|display_counter[6]~44\ = CARRY((\inst4|display_counter\(6) & !\inst4|display_counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(6),
	datad => VCC,
	cin => \inst4|display_counter[5]~42\,
	combout => \inst4|display_counter[6]~43_combout\,
	cout => \inst4|display_counter[6]~44\);

-- Location: FF_X35_Y28_N15
\inst4|display_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[6]~43_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(6));

-- Location: LCCOMB_X35_Y28_N16
\inst4|display_counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[7]~45_combout\ = (\inst4|display_counter\(7) & (!\inst4|display_counter[6]~44\)) # (!\inst4|display_counter\(7) & ((\inst4|display_counter[6]~44\) # (GND)))
-- \inst4|display_counter[7]~46\ = CARRY((!\inst4|display_counter[6]~44\) # (!\inst4|display_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(7),
	datad => VCC,
	cin => \inst4|display_counter[6]~44\,
	combout => \inst4|display_counter[7]~45_combout\,
	cout => \inst4|display_counter[7]~46\);

-- Location: FF_X35_Y28_N17
\inst4|display_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[7]~45_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(7));

-- Location: LCCOMB_X35_Y28_N18
\inst4|display_counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[8]~47_combout\ = (\inst4|display_counter\(8) & (\inst4|display_counter[7]~46\ $ (GND))) # (!\inst4|display_counter\(8) & (!\inst4|display_counter[7]~46\ & VCC))
-- \inst4|display_counter[8]~48\ = CARRY((\inst4|display_counter\(8) & !\inst4|display_counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(8),
	datad => VCC,
	cin => \inst4|display_counter[7]~46\,
	combout => \inst4|display_counter[8]~47_combout\,
	cout => \inst4|display_counter[8]~48\);

-- Location: FF_X35_Y28_N19
\inst4|display_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[8]~47_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(8));

-- Location: LCCOMB_X35_Y28_N20
\inst4|display_counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[9]~49_combout\ = (\inst4|display_counter\(9) & (!\inst4|display_counter[8]~48\)) # (!\inst4|display_counter\(9) & ((\inst4|display_counter[8]~48\) # (GND)))
-- \inst4|display_counter[9]~50\ = CARRY((!\inst4|display_counter[8]~48\) # (!\inst4|display_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(9),
	datad => VCC,
	cin => \inst4|display_counter[8]~48\,
	combout => \inst4|display_counter[9]~49_combout\,
	cout => \inst4|display_counter[9]~50\);

-- Location: FF_X35_Y28_N21
\inst4|display_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[9]~49_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(9));

-- Location: LCCOMB_X35_Y28_N22
\inst4|display_counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[10]~51_combout\ = (\inst4|display_counter\(10) & (\inst4|display_counter[9]~50\ $ (GND))) # (!\inst4|display_counter\(10) & (!\inst4|display_counter[9]~50\ & VCC))
-- \inst4|display_counter[10]~52\ = CARRY((\inst4|display_counter\(10) & !\inst4|display_counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(10),
	datad => VCC,
	cin => \inst4|display_counter[9]~50\,
	combout => \inst4|display_counter[10]~51_combout\,
	cout => \inst4|display_counter[10]~52\);

-- Location: FF_X35_Y28_N23
\inst4|display_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[10]~51_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(10));

-- Location: LCCOMB_X35_Y28_N24
\inst4|display_counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[11]~53_combout\ = (\inst4|display_counter\(11) & (!\inst4|display_counter[10]~52\)) # (!\inst4|display_counter\(11) & ((\inst4|display_counter[10]~52\) # (GND)))
-- \inst4|display_counter[11]~54\ = CARRY((!\inst4|display_counter[10]~52\) # (!\inst4|display_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(11),
	datad => VCC,
	cin => \inst4|display_counter[10]~52\,
	combout => \inst4|display_counter[11]~53_combout\,
	cout => \inst4|display_counter[11]~54\);

-- Location: FF_X35_Y28_N25
\inst4|display_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[11]~53_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(11));

-- Location: LCCOMB_X35_Y28_N26
\inst4|display_counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[12]~55_combout\ = (\inst4|display_counter\(12) & (\inst4|display_counter[11]~54\ $ (GND))) # (!\inst4|display_counter\(12) & (!\inst4|display_counter[11]~54\ & VCC))
-- \inst4|display_counter[12]~56\ = CARRY((\inst4|display_counter\(12) & !\inst4|display_counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(12),
	datad => VCC,
	cin => \inst4|display_counter[11]~54\,
	combout => \inst4|display_counter[12]~55_combout\,
	cout => \inst4|display_counter[12]~56\);

-- Location: FF_X35_Y28_N27
\inst4|display_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[12]~55_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(12));

-- Location: LCCOMB_X35_Y28_N28
\inst4|display_counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[13]~57_combout\ = (\inst4|display_counter\(13) & (!\inst4|display_counter[12]~56\)) # (!\inst4|display_counter\(13) & ((\inst4|display_counter[12]~56\) # (GND)))
-- \inst4|display_counter[13]~58\ = CARRY((!\inst4|display_counter[12]~56\) # (!\inst4|display_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(13),
	datad => VCC,
	cin => \inst4|display_counter[12]~56\,
	combout => \inst4|display_counter[13]~57_combout\,
	cout => \inst4|display_counter[13]~58\);

-- Location: FF_X35_Y28_N29
\inst4|display_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[13]~57_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(13));

-- Location: LCCOMB_X35_Y28_N30
\inst4|display_counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[14]~59_combout\ = (\inst4|display_counter\(14) & (\inst4|display_counter[13]~58\ $ (GND))) # (!\inst4|display_counter\(14) & (!\inst4|display_counter[13]~58\ & VCC))
-- \inst4|display_counter[14]~60\ = CARRY((\inst4|display_counter\(14) & !\inst4|display_counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(14),
	datad => VCC,
	cin => \inst4|display_counter[13]~58\,
	combout => \inst4|display_counter[14]~59_combout\,
	cout => \inst4|display_counter[14]~60\);

-- Location: FF_X35_Y28_N31
\inst4|display_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[14]~59_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(14));

-- Location: LCCOMB_X35_Y27_N0
\inst4|display_counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[15]~61_combout\ = (\inst4|display_counter\(15) & (!\inst4|display_counter[14]~60\)) # (!\inst4|display_counter\(15) & ((\inst4|display_counter[14]~60\) # (GND)))
-- \inst4|display_counter[15]~62\ = CARRY((!\inst4|display_counter[14]~60\) # (!\inst4|display_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(15),
	datad => VCC,
	cin => \inst4|display_counter[14]~60\,
	combout => \inst4|display_counter[15]~61_combout\,
	cout => \inst4|display_counter[15]~62\);

-- Location: FF_X35_Y27_N1
\inst4|display_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[15]~61_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(15));

-- Location: LCCOMB_X35_Y27_N2
\inst4|display_counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[16]~63_combout\ = (\inst4|display_counter\(16) & (\inst4|display_counter[15]~62\ $ (GND))) # (!\inst4|display_counter\(16) & (!\inst4|display_counter[15]~62\ & VCC))
-- \inst4|display_counter[16]~64\ = CARRY((\inst4|display_counter\(16) & !\inst4|display_counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(16),
	datad => VCC,
	cin => \inst4|display_counter[15]~62\,
	combout => \inst4|display_counter[16]~63_combout\,
	cout => \inst4|display_counter[16]~64\);

-- Location: FF_X35_Y27_N3
\inst4|display_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[16]~63_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(16));

-- Location: LCCOMB_X35_Y27_N4
\inst4|display_counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[17]~65_combout\ = (\inst4|display_counter\(17) & (!\inst4|display_counter[16]~64\)) # (!\inst4|display_counter\(17) & ((\inst4|display_counter[16]~64\) # (GND)))
-- \inst4|display_counter[17]~66\ = CARRY((!\inst4|display_counter[16]~64\) # (!\inst4|display_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(17),
	datad => VCC,
	cin => \inst4|display_counter[16]~64\,
	combout => \inst4|display_counter[17]~65_combout\,
	cout => \inst4|display_counter[17]~66\);

-- Location: FF_X35_Y27_N5
\inst4|display_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[17]~65_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(17));

-- Location: LCCOMB_X35_Y27_N6
\inst4|display_counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[18]~67_combout\ = (\inst4|display_counter\(18) & (\inst4|display_counter[17]~66\ $ (GND))) # (!\inst4|display_counter\(18) & (!\inst4|display_counter[17]~66\ & VCC))
-- \inst4|display_counter[18]~68\ = CARRY((\inst4|display_counter\(18) & !\inst4|display_counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(18),
	datad => VCC,
	cin => \inst4|display_counter[17]~66\,
	combout => \inst4|display_counter[18]~67_combout\,
	cout => \inst4|display_counter[18]~68\);

-- Location: FF_X35_Y27_N7
\inst4|display_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[18]~67_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(18));

-- Location: LCCOMB_X35_Y27_N8
\inst4|display_counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[19]~69_combout\ = (\inst4|display_counter\(19) & (!\inst4|display_counter[18]~68\)) # (!\inst4|display_counter\(19) & ((\inst4|display_counter[18]~68\) # (GND)))
-- \inst4|display_counter[19]~70\ = CARRY((!\inst4|display_counter[18]~68\) # (!\inst4|display_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(19),
	datad => VCC,
	cin => \inst4|display_counter[18]~68\,
	combout => \inst4|display_counter[19]~69_combout\,
	cout => \inst4|display_counter[19]~70\);

-- Location: FF_X35_Y27_N9
\inst4|display_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[19]~69_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(19));

-- Location: LCCOMB_X35_Y27_N10
\inst4|display_counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[20]~71_combout\ = (\inst4|display_counter\(20) & (\inst4|display_counter[19]~70\ $ (GND))) # (!\inst4|display_counter\(20) & (!\inst4|display_counter[19]~70\ & VCC))
-- \inst4|display_counter[20]~72\ = CARRY((\inst4|display_counter\(20) & !\inst4|display_counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(20),
	datad => VCC,
	cin => \inst4|display_counter[19]~70\,
	combout => \inst4|display_counter[20]~71_combout\,
	cout => \inst4|display_counter[20]~72\);

-- Location: FF_X35_Y27_N11
\inst4|display_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[20]~71_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(20));

-- Location: LCCOMB_X35_Y27_N12
\inst4|display_counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[21]~73_combout\ = (\inst4|display_counter\(21) & (!\inst4|display_counter[20]~72\)) # (!\inst4|display_counter\(21) & ((\inst4|display_counter[20]~72\) # (GND)))
-- \inst4|display_counter[21]~74\ = CARRY((!\inst4|display_counter[20]~72\) # (!\inst4|display_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(21),
	datad => VCC,
	cin => \inst4|display_counter[20]~72\,
	combout => \inst4|display_counter[21]~73_combout\,
	cout => \inst4|display_counter[21]~74\);

-- Location: FF_X35_Y27_N13
\inst4|display_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[21]~73_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(21));

-- Location: LCCOMB_X35_Y27_N14
\inst4|display_counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[22]~75_combout\ = (\inst4|display_counter\(22) & (\inst4|display_counter[21]~74\ $ (GND))) # (!\inst4|display_counter\(22) & (!\inst4|display_counter[21]~74\ & VCC))
-- \inst4|display_counter[22]~76\ = CARRY((\inst4|display_counter\(22) & !\inst4|display_counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(22),
	datad => VCC,
	cin => \inst4|display_counter[21]~74\,
	combout => \inst4|display_counter[22]~75_combout\,
	cout => \inst4|display_counter[22]~76\);

-- Location: FF_X35_Y27_N15
\inst4|display_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[22]~75_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(22));

-- Location: LCCOMB_X35_Y27_N16
\inst4|display_counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[23]~77_combout\ = (\inst4|display_counter\(23) & (!\inst4|display_counter[22]~76\)) # (!\inst4|display_counter\(23) & ((\inst4|display_counter[22]~76\) # (GND)))
-- \inst4|display_counter[23]~78\ = CARRY((!\inst4|display_counter[22]~76\) # (!\inst4|display_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(23),
	datad => VCC,
	cin => \inst4|display_counter[22]~76\,
	combout => \inst4|display_counter[23]~77_combout\,
	cout => \inst4|display_counter[23]~78\);

-- Location: FF_X35_Y27_N17
\inst4|display_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[23]~77_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(23));

-- Location: LCCOMB_X35_Y27_N18
\inst4|display_counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[24]~79_combout\ = (\inst4|display_counter\(24) & (\inst4|display_counter[23]~78\ $ (GND))) # (!\inst4|display_counter\(24) & (!\inst4|display_counter[23]~78\ & VCC))
-- \inst4|display_counter[24]~80\ = CARRY((\inst4|display_counter\(24) & !\inst4|display_counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(24),
	datad => VCC,
	cin => \inst4|display_counter[23]~78\,
	combout => \inst4|display_counter[24]~79_combout\,
	cout => \inst4|display_counter[24]~80\);

-- Location: FF_X35_Y27_N19
\inst4|display_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[24]~79_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(24));

-- Location: LCCOMB_X35_Y27_N20
\inst4|display_counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[25]~81_combout\ = (\inst4|display_counter\(25) & (!\inst4|display_counter[24]~80\)) # (!\inst4|display_counter\(25) & ((\inst4|display_counter[24]~80\) # (GND)))
-- \inst4|display_counter[25]~82\ = CARRY((!\inst4|display_counter[24]~80\) # (!\inst4|display_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(25),
	datad => VCC,
	cin => \inst4|display_counter[24]~80\,
	combout => \inst4|display_counter[25]~81_combout\,
	cout => \inst4|display_counter[25]~82\);

-- Location: FF_X35_Y27_N21
\inst4|display_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[25]~81_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(25));

-- Location: LCCOMB_X35_Y27_N22
\inst4|display_counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[26]~83_combout\ = (\inst4|display_counter\(26) & (\inst4|display_counter[25]~82\ $ (GND))) # (!\inst4|display_counter\(26) & (!\inst4|display_counter[25]~82\ & VCC))
-- \inst4|display_counter[26]~84\ = CARRY((\inst4|display_counter\(26) & !\inst4|display_counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(26),
	datad => VCC,
	cin => \inst4|display_counter[25]~82\,
	combout => \inst4|display_counter[26]~83_combout\,
	cout => \inst4|display_counter[26]~84\);

-- Location: FF_X35_Y27_N23
\inst4|display_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[26]~83_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(26));

-- Location: LCCOMB_X35_Y27_N24
\inst4|display_counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[27]~85_combout\ = (\inst4|display_counter\(27) & (!\inst4|display_counter[26]~84\)) # (!\inst4|display_counter\(27) & ((\inst4|display_counter[26]~84\) # (GND)))
-- \inst4|display_counter[27]~86\ = CARRY((!\inst4|display_counter[26]~84\) # (!\inst4|display_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(27),
	datad => VCC,
	cin => \inst4|display_counter[26]~84\,
	combout => \inst4|display_counter[27]~85_combout\,
	cout => \inst4|display_counter[27]~86\);

-- Location: FF_X35_Y27_N25
\inst4|display_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[27]~85_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(27));

-- Location: LCCOMB_X35_Y27_N26
\inst4|display_counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[28]~87_combout\ = (\inst4|display_counter\(28) & (\inst4|display_counter[27]~86\ $ (GND))) # (!\inst4|display_counter\(28) & (!\inst4|display_counter[27]~86\ & VCC))
-- \inst4|display_counter[28]~88\ = CARRY((\inst4|display_counter\(28) & !\inst4|display_counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(28),
	datad => VCC,
	cin => \inst4|display_counter[27]~86\,
	combout => \inst4|display_counter[28]~87_combout\,
	cout => \inst4|display_counter[28]~88\);

-- Location: FF_X35_Y27_N27
\inst4|display_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[28]~87_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(28));

-- Location: LCCOMB_X35_Y27_N28
\inst4|display_counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[29]~89_combout\ = (\inst4|display_counter\(29) & (!\inst4|display_counter[28]~88\)) # (!\inst4|display_counter\(29) & ((\inst4|display_counter[28]~88\) # (GND)))
-- \inst4|display_counter[29]~90\ = CARRY((!\inst4|display_counter[28]~88\) # (!\inst4|display_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(29),
	datad => VCC,
	cin => \inst4|display_counter[28]~88\,
	combout => \inst4|display_counter[29]~89_combout\,
	cout => \inst4|display_counter[29]~90\);

-- Location: FF_X35_Y27_N29
\inst4|display_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[29]~89_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(29));

-- Location: LCCOMB_X36_Y27_N8
\inst4|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~0_combout\ = (!\inst4|display_counter\(29) & (!\inst4|display_counter\(27) & (!\inst4|display_counter\(28) & !\inst4|display_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(29),
	datab => \inst4|display_counter\(27),
	datac => \inst4|display_counter\(28),
	datad => \inst4|display_counter\(26),
	combout => \inst4|LessThan5~0_combout\);

-- Location: LCCOMB_X35_Y27_N30
\inst4|display_counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[30]~91_combout\ = \inst4|display_counter\(30) $ (!\inst4|display_counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(30),
	cin => \inst4|display_counter[29]~90\,
	combout => \inst4|display_counter[30]~91_combout\);

-- Location: FF_X35_Y27_N31
\inst4|display_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[30]~91_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(30));

-- Location: LCCOMB_X34_Y27_N12
\inst4|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~5_combout\ = (((!\inst4|display_counter\(21)) # (!\inst4|display_counter\(19))) # (!\inst4|display_counter\(20))) # (!\inst4|display_counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(22),
	datab => \inst4|display_counter\(20),
	datac => \inst4|display_counter\(19),
	datad => \inst4|display_counter\(21),
	combout => \inst4|LessThan5~5_combout\);

-- Location: LCCOMB_X35_Y28_N0
\inst4|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~2_combout\ = (!\inst4|display_counter\(10) & (!\inst4|display_counter\(8) & (!\inst4|display_counter\(9) & !\inst4|display_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(10),
	datab => \inst4|display_counter\(8),
	datac => \inst4|display_counter\(9),
	datad => \inst4|display_counter\(7),
	combout => \inst4|LessThan5~2_combout\);

-- Location: LCCOMB_X34_Y27_N6
\inst4|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~1_combout\ = (((!\inst4|display_counter\(12)) # (!\inst4|display_counter\(13))) # (!\inst4|display_counter\(15))) # (!\inst4|display_counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(14),
	datab => \inst4|display_counter\(15),
	datac => \inst4|display_counter\(13),
	datad => \inst4|display_counter\(12),
	combout => \inst4|LessThan5~1_combout\);

-- Location: LCCOMB_X34_Y27_N28
\inst4|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~3_combout\ = (!\inst4|display_counter\(16) & ((\inst4|LessThan5~1_combout\) # ((!\inst4|display_counter\(11) & \inst4|LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(11),
	datab => \inst4|display_counter\(16),
	datac => \inst4|LessThan5~2_combout\,
	datad => \inst4|LessThan5~1_combout\,
	combout => \inst4|LessThan5~3_combout\);

-- Location: LCCOMB_X34_Y27_N30
\inst4|LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~4_combout\ = (!\inst4|display_counter\(18) & ((\inst4|LessThan5~3_combout\) # (!\inst4|display_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(18),
	datab => \inst4|display_counter\(17),
	datad => \inst4|LessThan5~3_combout\,
	combout => \inst4|LessThan5~4_combout\);

-- Location: LCCOMB_X34_Y27_N22
\inst4|LessThan5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~6_combout\ = (!\inst4|display_counter\(24) & ((\inst4|LessThan5~5_combout\) # ((\inst4|LessThan5~4_combout\) # (!\inst4|display_counter\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan5~5_combout\,
	datab => \inst4|display_counter\(24),
	datac => \inst4|LessThan5~4_combout\,
	datad => \inst4|display_counter\(23),
	combout => \inst4|LessThan5~6_combout\);

-- Location: LCCOMB_X34_Y27_N10
\inst4|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~7_combout\ = ((\inst4|display_counter\(30)) # ((!\inst4|LessThan5~6_combout\ & \inst4|display_counter\(25)))) # (!\inst4|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan5~0_combout\,
	datab => \inst4|display_counter\(30),
	datac => \inst4|LessThan5~6_combout\,
	datad => \inst4|display_counter\(25),
	combout => \inst4|LessThan5~7_combout\);

-- Location: FF_X34_Y27_N11
\inst4|display_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_state~q\);

-- Location: LCCOMB_X31_Y26_N22
\inst4|lcd_data~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~32_combout\ = (\inst4|display_state~q\ & ((!\inst4|lineCount\(1)) # (!\inst4|lineCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datac => \inst4|display_state~q\,
	datad => \inst4|lineCount\(1),
	combout => \inst4|lcd_data~32_combout\);

-- Location: LCCOMB_X30_Y29_N28
\inst4|Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal23~0_combout\ = (!\inst4|charCount\(3) & (!\inst4|charCount\(4) & !\inst4|charCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datac => \inst4|charCount\(4),
	datad => \inst4|charCount\(2),
	combout => \inst4|Equal23~0_combout\);

-- Location: LCCOMB_X31_Y26_N20
\inst4|Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal23~1_combout\ = (!\inst4|charCount\(0) & (!\inst4|charCount\(1) & \inst4|Equal23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(0),
	datac => \inst4|charCount\(1),
	datad => \inst4|Equal23~0_combout\,
	combout => \inst4|Equal23~1_combout\);

-- Location: LCCOMB_X32_Y28_N4
\inst4|lcd_data~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~159_combout\ = (\inst4|charCount\(4) & (!\inst4|charCount\(3) & ((!\inst4|charCount\(1)) # (!\inst4|charCount\(0))))) # (!\inst4|charCount\(4) & ((\inst4|charCount\(1)) # (\inst4|charCount\(3) $ (\inst4|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~159_combout\);

-- Location: LCCOMB_X32_Y28_N10
\inst4|lcd_data~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~160_combout\ = (\inst4|charCount\(2) & (((!\inst4|charCount\(4))))) # (!\inst4|charCount\(2) & (\inst4|lcd_data~159_combout\ & ((!\inst4|charCount\(3)) # (!\inst4|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(2),
	datab => \inst4|lcd_data~159_combout\,
	datac => \inst4|charCount\(4),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~160_combout\);

-- Location: LCCOMB_X31_Y28_N10
\inst4|lcd_data~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~157_combout\ = (\inst4|charCount\(0) & ((\inst4|charCount\(1) & (!\inst4|charCount\(4))) # (!\inst4|charCount\(1) & ((!\inst4|charCount\(2)))))) # (!\inst4|charCount\(0) & (!\inst4|charCount\(2) & ((\inst4|charCount\(4)) # 
-- (\inst4|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(4),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~157_combout\);

-- Location: LCCOMB_X31_Y28_N12
\inst4|lcd_data~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~158_combout\ = (\inst4|charCount\(3) & (!\inst4|charCount\(4) & ((\inst4|charCount\(0)) # (!\inst4|lcd_data~157_combout\)))) # (!\inst4|charCount\(3) & (((\inst4|lcd_data~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|lcd_data~157_combout\,
	combout => \inst4|lcd_data~158_combout\);

-- Location: LCCOMB_X32_Y28_N0
\inst4|lcd_data~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~35_combout\ = (\inst4|lineCount\(1) & (\inst4|lineCount\(0))) # (!\inst4|lineCount\(1) & ((\inst4|lineCount\(0) & ((\inst4|lcd_data~158_combout\))) # (!\inst4|lineCount\(0) & (\inst4|lcd_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lineCount\(0),
	datac => \inst4|lcd_data\(6),
	datad => \inst4|lcd_data~158_combout\,
	combout => \inst4|lcd_data~35_combout\);

-- Location: LCCOMB_X31_Y28_N6
\inst4|lcd_data~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~34_combout\ = (\inst4|charCount\(2) & (((\inst4|charCount\(3))))) # (!\inst4|charCount\(2) & ((\inst4|charCount\(1) & ((\inst4|charCount\(3)))) # (!\inst4|charCount\(1) & (\inst4|charCount\(0) & !\inst4|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~34_combout\);

-- Location: LCCOMB_X31_Y28_N8
\inst4|Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal17~0_combout\ = (!\inst4|charCount\(3) & (\inst4|charCount\(4) & !\inst4|charCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(4),
	datad => \inst4|charCount\(2),
	combout => \inst4|Equal17~0_combout\);

-- Location: LCCOMB_X32_Y28_N24
\inst4|lcd_data~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~37_combout\ = ((\inst4|charCount\(1) & \inst4|charCount\(0))) # (!\inst4|Equal17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(0),
	datad => \inst4|Equal17~0_combout\,
	combout => \inst4|lcd_data~37_combout\);

-- Location: LCCOMB_X32_Y28_N30
\inst4|lcd_data~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~36_combout\ = (\inst4|charCount\(3) & (!\inst4|charCount\(0) & (\inst4|charCount\(2) $ (\inst4|charCount\(1))))) # (!\inst4|charCount\(3) & (!\inst4|charCount\(2) & (\inst4|charCount\(0) & !\inst4|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(2),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~36_combout\);

-- Location: LCCOMB_X32_Y28_N12
\inst4|lcd_data~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~155_combout\ = (\inst4|charCount\(4) & (!\inst4|lcd_data~37_combout\ & ((\inst4|lcd_data~35_combout\)))) # (!\inst4|charCount\(4) & (((!\inst4|lcd_data~35_combout\) # (!\inst4|lcd_data~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|lcd_data~37_combout\,
	datac => \inst4|lcd_data~36_combout\,
	datad => \inst4|lcd_data~35_combout\,
	combout => \inst4|lcd_data~155_combout\);

-- Location: LCCOMB_X32_Y28_N6
\inst4|lcd_data~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~156_combout\ = (\inst4|lineCount\(1) & (\inst4|lcd_data~155_combout\ & ((\inst4|lcd_data~35_combout\) # (!\inst4|lcd_data~34_combout\)))) # (!\inst4|lineCount\(1) & (\inst4|lcd_data~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data~35_combout\,
	datac => \inst4|lcd_data~34_combout\,
	datad => \inst4|lcd_data~155_combout\,
	combout => \inst4|lcd_data~156_combout\);

-- Location: LCCOMB_X32_Y28_N14
\inst4|lcd_data~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~144_combout\ = (\inst4|lineCount\(1) & (((\inst4|lcd_data~156_combout\)))) # (!\inst4|lineCount\(1) & ((\inst4|lineCount\(0) & ((\inst4|lcd_data~156_combout\))) # (!\inst4|lineCount\(0) & (\inst4|lcd_data~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~160_combout\,
	datab => \inst4|lineCount\(1),
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~156_combout\,
	combout => \inst4|lcd_data~144_combout\);

-- Location: LCCOMB_X31_Y26_N8
\inst4|lcd_data~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~38_combout\ = (\inst4|lcd_data~32_combout\ & ((\inst4|Equal23~1_combout\) # ((!\inst4|display_state~q\ & \inst4|lcd_data~144_combout\)))) # (!\inst4|lcd_data~32_combout\ & (((!\inst4|display_state~q\ & \inst4|lcd_data~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~32_combout\,
	datab => \inst4|Equal23~1_combout\,
	datac => \inst4|display_state~q\,
	datad => \inst4|lcd_data~144_combout\,
	combout => \inst4|lcd_data~38_combout\);

-- Location: FF_X31_Y26_N9
\inst4|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(6));

-- Location: LCCOMB_X35_Y29_N20
\inst5|dataStorage[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataStorage[6]~0_combout\ = !\inst4|lcd_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|lcd_data\(6),
	combout => \inst5|dataStorage[6]~0_combout\);

-- Location: FF_X35_Y29_N21
\inst5|dataStorage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|dataStorage[6]~0_combout\,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(6));

-- Location: LCCOMB_X36_Y29_N12
\inst5|dataOut[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[6]~12_combout\ = (\inst5|state.sendingAddress~q\ & (((\inst5|addressStorage\(6))))) # (!\inst5|state.sendingAddress~q\ & (\inst5|state.sendingData~q\ & ((!\inst5|dataStorage\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingData~q\,
	datab => \inst5|state.sendingAddress~q\,
	datac => \inst5|addressStorage\(6),
	datad => \inst5|dataStorage\(6),
	combout => \inst5|dataOut[6]~12_combout\);

-- Location: LCCOMB_X40_Y29_N18
\inst5|dataOut[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[6]~7_combout\ = (\inst5|Equal8~9_combout\ & (!\inst5|charCreationCounter\(3) & !\inst5|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal8~9_combout\,
	datac => \inst5|charCreationCounter\(3),
	datad => \inst5|process_1~0_combout\,
	combout => \inst5|dataOut[6]~7_combout\);

-- Location: LCCOMB_X40_Y29_N20
\inst5|dataOut[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[1]~10_combout\ = (!\inst5|state.init6~q\ & (\inst5|dataOut[1]~5_combout\ & !\inst5|state.init5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init6~q\,
	datab => \inst5|dataOut[1]~5_combout\,
	datac => \inst5|state.init5~q\,
	combout => \inst5|dataOut[1]~10_combout\);

-- Location: LCCOMB_X40_Y29_N28
\inst5|dataOut[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[5]~39_combout\ = (!\inst5|state.createChar4~q\ & (!\inst5|state.createChar5~q\ & (\inst5|state.init0~q\ & \inst5|dataOut[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar4~q\,
	datab => \inst5|state.createChar5~q\,
	datac => \inst5|state.init0~q\,
	datad => \inst5|dataOut[1]~10_combout\,
	combout => \inst5|dataOut[5]~39_combout\);

-- Location: LCCOMB_X39_Y29_N24
\inst5|dataOut[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[1]~8_combout\ = (!\inst5|state.createChar1~q\ & (!\inst5|state.createChar2~q\ & !\inst5|state.createChar3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.createChar1~q\,
	datac => \inst5|state.createChar2~q\,
	datad => \inst5|state.createChar3~q\,
	combout => \inst5|dataOut[1]~8_combout\);

-- Location: LCCOMB_X40_Y29_N26
\inst5|dataOut[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[5]~11_combout\ = (!\inst5|state.init7~q\ & (\inst5|dataOut[5]~39_combout\ & \inst5|dataOut[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init7~q\,
	datab => \inst5|dataOut[5]~39_combout\,
	datad => \inst5|dataOut[1]~8_combout\,
	combout => \inst5|dataOut[5]~11_combout\);

-- Location: LCCOMB_X40_Y29_N16
\inst5|dataOut[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[6]~13_combout\ = (!\inst5|dataOut[5]~11_combout\ & (!\inst5|state.init5~q\ & (\inst5|state.init0~q\ & \inst5|dataOut[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[5]~11_combout\,
	datab => \inst5|state.init5~q\,
	datac => \inst5|state.init0~q\,
	datad => \inst5|dataOut[1]~5_combout\,
	combout => \inst5|dataOut[6]~13_combout\);

-- Location: LCCOMB_X40_Y29_N2
\inst5|dataOut[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[6]~14_combout\ = (\inst5|dataOut[6]~12_combout\ & ((\inst5|dataOut[5]~11_combout\) # ((\inst5|dataOut[6]~7_combout\ & \inst5|dataOut[6]~13_combout\)))) # (!\inst5|dataOut[6]~12_combout\ & (\inst5|dataOut[6]~7_combout\ & 
-- ((\inst5|dataOut[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[6]~12_combout\,
	datab => \inst5|dataOut[6]~7_combout\,
	datac => \inst5|dataOut[5]~11_combout\,
	datad => \inst5|dataOut[6]~13_combout\,
	combout => \inst5|dataOut[6]~14_combout\);

-- Location: LCCOMB_X31_Y26_N4
\inst4|lcd_data~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~33_combout\ = (!\inst4|lineCount\(0) & !\inst4|lineCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datad => \inst4|lineCount\(1),
	combout => \inst4|lcd_data~33_combout\);

-- Location: LCCOMB_X30_Y29_N12
\inst4|lcd_data~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~49_combout\ = (!\inst4|charCount\(2) & ((\inst4|charCount\(3) & (!\inst4|charCount\(0) & \inst4|charCount\(1))) # (!\inst4|charCount\(3) & (\inst4|charCount\(0) & !\inst4|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(2),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~49_combout\);

-- Location: LCCOMB_X30_Y29_N22
\inst4|lcd_data~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~50_combout\ = (\inst4|charCount\(4)) # (!\inst4|lcd_data~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|charCount\(4),
	datad => \inst4|lcd_data~49_combout\,
	combout => \inst4|lcd_data~50_combout\);

-- Location: LCCOMB_X31_Y27_N10
\inst4|lcd_data~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~45_combout\ = (\inst4|charCount\(0) & ((\inst4|charCount\(1) $ (!\inst4|charCount\(2))) # (!\inst4|charCount\(3)))) # (!\inst4|charCount\(0) & ((\inst4|charCount\(3)) # ((\inst4|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~45_combout\);

-- Location: LCCOMB_X31_Y27_N4
\inst4|lcd_data~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~46_combout\ = (\inst4|charCount\(0) & (\inst4|charCount\(3) $ (((!\inst4|charCount\(1) & \inst4|charCount\(2)))))) # (!\inst4|charCount\(0) & ((\inst4|charCount\(3)) # ((\inst4|charCount\(1)) # (\inst4|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~46_combout\);

-- Location: LCCOMB_X31_Y27_N22
\inst4|lcd_data~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~40_combout\ = (\inst4|charCount\(2)) # ((\inst4|charCount\(4)) # ((\inst4|charCount\(0)) # (\inst4|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(2),
	datab => \inst4|charCount\(4),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~40_combout\);

-- Location: LCCOMB_X31_Y27_N28
\inst4|lcd_data~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~44_combout\ = (\inst4|lineCount\(0) & (((\inst4|lineCount\(1))))) # (!\inst4|lineCount\(0) & ((\inst4|lineCount\(1) & ((\inst4|lcd_data~40_combout\))) # (!\inst4|lineCount\(1) & (\inst4|lcd_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data\(5),
	datab => \inst4|lineCount\(0),
	datac => \inst4|lcd_data~40_combout\,
	datad => \inst4|lineCount\(1),
	combout => \inst4|lcd_data~44_combout\);

-- Location: LCCOMB_X31_Y27_N6
\inst4|lcd_data~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~47_combout\ = \inst4|lcd_data~45_combout\ $ (((\inst4|lcd_data~46_combout\ & !\inst4|lcd_data~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~45_combout\,
	datac => \inst4|lcd_data~46_combout\,
	datad => \inst4|lcd_data~44_combout\,
	combout => \inst4|lcd_data~47_combout\);

-- Location: LCCOMB_X31_Y27_N12
\inst4|lcd_data~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~48_combout\ = (\inst4|lineCount\(0) & ((\inst4|charCount\(4)) # (\inst4|lcd_data~47_combout\ $ (!\inst4|lcd_data~44_combout\)))) # (!\inst4|lineCount\(0) & (((\inst4|lcd_data~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~47_combout\,
	datab => \inst4|charCount\(4),
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~44_combout\,
	combout => \inst4|lcd_data~48_combout\);

-- Location: LCCOMB_X31_Y27_N26
\inst4|lcd_data~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~51_combout\ = (\inst4|display_state~q\ & (!\inst4|lcd_data~33_combout\)) # (!\inst4|display_state~q\ & ((\inst4|lcd_data~33_combout\ & (\inst4|lcd_data~50_combout\)) # (!\inst4|lcd_data~33_combout\ & ((\inst4|lcd_data~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_state~q\,
	datab => \inst4|lcd_data~33_combout\,
	datac => \inst4|lcd_data~50_combout\,
	datad => \inst4|lcd_data~48_combout\,
	combout => \inst4|lcd_data~51_combout\);

-- Location: LCCOMB_X29_Y24_N10
\inst4|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state~9_combout\ = (\inst4|state.update~q\ & \inst4|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datad => \inst4|process_0~12_combout\,
	combout => \inst4|state~9_combout\);

-- Location: LCCOMB_X30_Y24_N8
\inst4|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~0_combout\ = \inst4|data_1_storage\(1) $ (VCC)
-- \inst4|Add3~1\ = CARRY(\inst4|data_1_storage\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(1),
	datad => VCC,
	combout => \inst4|Add3~0_combout\,
	cout => \inst4|Add3~1\);

-- Location: LCCOMB_X29_Y24_N2
\inst4|data_1_storage~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~12_combout\ = (\inst4|state.update~q\ & (\inst7|output\(1))) # (!\inst4|state.update~q\ & (((\inst4|Add3~0_combout\ & \inst4|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst7|output\(1),
	datac => \inst4|Add3~0_combout\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|data_1_storage~12_combout\);

-- Location: LCCOMB_X30_Y29_N4
\inst4|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~0_combout\ = ((\inst4|charCount\(1) & \inst4|charCount\(0))) # (!\inst4|Equal23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datac => \inst4|charCount\(0),
	datad => \inst4|Equal23~0_combout\,
	combout => \inst4|LessThan3~0_combout\);

-- Location: LCCOMB_X29_Y25_N30
\inst4|data_3_storage~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage~0_combout\ = (\inst4|LessThan3~0_combout\ & (\inst4|Equal0~0_combout\ & (!\inst4|state.update~q\ & !\inst4|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan3~0_combout\,
	datab => \inst4|Equal0~0_combout\,
	datac => \inst4|state.update~q\,
	datad => \inst4|process_0~6_combout\,
	combout => \inst4|data_3_storage~0_combout\);

-- Location: LCCOMB_X29_Y24_N6
\inst4|data_1_storage~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~13_combout\ = (\inst4|state.update~q\ & ((\inst4|process_0~12_combout\) # ((\inst4|lcd_data~33_combout\ & \inst4|data_3_storage~0_combout\)))) # (!\inst4|state.update~q\ & (\inst4|lcd_data~33_combout\ & 
-- (\inst4|data_3_storage~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|lcd_data~33_combout\,
	datac => \inst4|data_3_storage~0_combout\,
	datad => \inst4|process_0~12_combout\,
	combout => \inst4|data_1_storage~13_combout\);

-- Location: FF_X29_Y24_N3
\inst4|data_1_storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~12_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(1));

-- Location: LCCOMB_X30_Y24_N10
\inst4|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~2_combout\ = (\inst4|data_1_storage\(2) & (\inst4|Add3~1\ & VCC)) # (!\inst4|data_1_storage\(2) & (!\inst4|Add3~1\))
-- \inst4|Add3~3\ = CARRY((!\inst4|data_1_storage\(2) & !\inst4|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_1_storage\(2),
	datad => VCC,
	cin => \inst4|Add3~1\,
	combout => \inst4|Add3~2_combout\,
	cout => \inst4|Add3~3\);

-- Location: LCCOMB_X29_Y24_N22
\inst4|data_1_storage~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~9_combout\ = (\inst4|state.update~q\ & (\inst7|output\(2))) # (!\inst4|state.update~q\ & (((\inst4|LessThan1~0_combout\ & \inst4|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output\(2),
	datab => \inst4|LessThan1~0_combout\,
	datac => \inst4|Add3~2_combout\,
	datad => \inst4|state.update~q\,
	combout => \inst4|data_1_storage~9_combout\);

-- Location: FF_X29_Y24_N23
\inst4|data_1_storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~9_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(2));

-- Location: LCCOMB_X30_Y24_N12
\inst4|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~4_combout\ = (\inst4|data_1_storage\(3) & (\inst4|Add3~3\ $ (GND))) # (!\inst4|data_1_storage\(3) & (!\inst4|Add3~3\ & VCC))
-- \inst4|Add3~5\ = CARRY((\inst4|data_1_storage\(3) & !\inst4|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(3),
	datad => VCC,
	cin => \inst4|Add3~3\,
	combout => \inst4|Add3~4_combout\,
	cout => \inst4|Add3~5\);

-- Location: LCCOMB_X30_Y24_N22
\inst4|data_1_storage~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~8_combout\ = (\inst4|state.update~q\ & (((\inst7|output\(3))))) # (!\inst4|state.update~q\ & (\inst4|Add3~4_combout\ & ((\inst4|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add3~4_combout\,
	datab => \inst7|output\(3),
	datac => \inst4|state.update~q\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|data_1_storage~8_combout\);

-- Location: FF_X30_Y24_N23
\inst4|data_1_storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~8_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(3));

-- Location: LCCOMB_X30_Y24_N14
\inst4|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~6_combout\ = (\inst4|data_1_storage\(4) & (\inst4|Add3~5\ & VCC)) # (!\inst4|data_1_storage\(4) & (!\inst4|Add3~5\))
-- \inst4|Add3~7\ = CARRY((!\inst4|data_1_storage\(4) & !\inst4|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(4),
	datad => VCC,
	cin => \inst4|Add3~5\,
	combout => \inst4|Add3~6_combout\,
	cout => \inst4|Add3~7\);

-- Location: LCCOMB_X29_Y24_N14
\inst4|data_1_storage~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~4_combout\ = (\inst4|state.update~q\ & (\inst7|output\(4))) # (!\inst4|state.update~q\ & (((\inst4|LessThan1~0_combout\ & \inst4|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output\(4),
	datab => \inst4|LessThan1~0_combout\,
	datac => \inst4|Add3~6_combout\,
	datad => \inst4|state.update~q\,
	combout => \inst4|data_1_storage~4_combout\);

-- Location: FF_X29_Y24_N15
\inst4|data_1_storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~4_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(4));

-- Location: LCCOMB_X30_Y24_N16
\inst4|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~8_combout\ = (\inst4|data_1_storage\(5) & ((GND) # (!\inst4|Add3~7\))) # (!\inst4|data_1_storage\(5) & (\inst4|Add3~7\ $ (GND)))
-- \inst4|Add3~9\ = CARRY((\inst4|data_1_storage\(5)) # (!\inst4|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(5),
	datad => VCC,
	cin => \inst4|Add3~7\,
	combout => \inst4|Add3~8_combout\,
	cout => \inst4|Add3~9\);

-- Location: LCCOMB_X29_Y24_N12
\inst4|data_1_storage~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~5_combout\ = (\inst4|state.update~q\ & (((\inst7|output\(5))))) # (!\inst4|state.update~q\ & (\inst4|LessThan1~0_combout\ & ((\inst4|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|LessThan1~0_combout\,
	datac => \inst7|output\(5),
	datad => \inst4|Add3~8_combout\,
	combout => \inst4|data_1_storage~5_combout\);

-- Location: FF_X29_Y24_N13
\inst4|data_1_storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~5_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(5));

-- Location: LCCOMB_X30_Y24_N18
\inst4|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~10_combout\ = (\inst4|data_1_storage\(6) & (\inst4|Add3~9\ & VCC)) # (!\inst4|data_1_storage\(6) & (!\inst4|Add3~9\))
-- \inst4|Add3~11\ = CARRY((!\inst4|data_1_storage\(6) & !\inst4|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(6),
	datad => VCC,
	cin => \inst4|Add3~9\,
	combout => \inst4|Add3~10_combout\,
	cout => \inst4|Add3~11\);

-- Location: LCCOMB_X29_Y24_N26
\inst4|data_1_storage~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~6_combout\ = (\inst4|state.update~q\ & (((\inst7|output\(6))))) # (!\inst4|state.update~q\ & (\inst4|Add3~10_combout\ & ((\inst4|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|Add3~10_combout\,
	datac => \inst7|output\(6),
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|data_1_storage~6_combout\);

-- Location: FF_X29_Y24_N27
\inst4|data_1_storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~6_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(6));

-- Location: LCCOMB_X30_Y24_N20
\inst4|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~12_combout\ = \inst4|Add3~11\ $ (\inst4|data_1_storage\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|data_1_storage\(7),
	cin => \inst4|Add3~11\,
	combout => \inst4|Add3~12_combout\);

-- Location: LCCOMB_X29_Y24_N28
\inst4|data_1_storage~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~7_combout\ = (\inst4|state.update~q\ & (((\inst7|output\(7))))) # (!\inst4|state.update~q\ & (\inst4|Add3~12_combout\ & ((\inst4|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|Add3~12_combout\,
	datac => \inst7|output\(7),
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|data_1_storage~7_combout\);

-- Location: FF_X29_Y24_N29
\inst4|data_1_storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~7_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(7));

-- Location: LCCOMB_X30_Y24_N4
\inst4|lcd_data~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~41_combout\ = (!\inst4|data_1_storage\(5) & (!\inst4|data_1_storage\(7) & (!\inst4|data_1_storage\(6) & !\inst4|data_1_storage\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(5),
	datab => \inst4|data_1_storage\(7),
	datac => \inst4|data_1_storage\(6),
	datad => \inst4|data_1_storage\(4),
	combout => \inst4|lcd_data~41_combout\);

-- Location: LCCOMB_X30_Y24_N24
\inst4|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~0_combout\ = ((\inst4|data_1_storage\(3) & ((\inst4|data_1_storage\(1)) # (\inst4|data_1_storage\(2))))) # (!\inst4|lcd_data~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(1),
	datab => \inst4|lcd_data~41_combout\,
	datac => \inst4|data_1_storage\(3),
	datad => \inst4|data_1_storage\(2),
	combout => \inst4|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y24_N18
\inst4|data_1_storage~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~10_combout\ = (\inst4|state~9_combout\) # ((!\inst4|LessThan1~0_combout\ & (\inst4|data_3_storage~0_combout\ & \inst4|lcd_data~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state~9_combout\,
	datab => \inst4|LessThan1~0_combout\,
	datac => \inst4|data_3_storage~0_combout\,
	datad => \inst4|lcd_data~33_combout\,
	combout => \inst4|data_1_storage~10_combout\);

-- Location: LCCOMB_X29_Y24_N16
\inst4|data_1_storage[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage[0]~11_combout\ = (\inst4|data_1_storage~10_combout\ & (\inst7|output\(0) & ((\inst4|state.update~q\)))) # (!\inst4|data_1_storage~10_combout\ & (((\inst4|data_1_storage\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output\(0),
	datab => \inst4|data_1_storage~10_combout\,
	datac => \inst4|data_1_storage\(0),
	datad => \inst4|state.update~q\,
	combout => \inst4|data_1_storage[0]~11_combout\);

-- Location: FF_X29_Y24_N17
\inst4|data_1_storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(0));

-- Location: LCCOMB_X34_Y27_N20
\inst4|lcd_data~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~42_combout\ = (!\inst4|data_1_storage\(0) & (!\inst4|data_1_storage\(1) & (!\inst4|data_1_storage\(2) & !\inst4|data_1_storage\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(0),
	datab => \inst4|data_1_storage\(1),
	datac => \inst4|data_1_storage\(2),
	datad => \inst4|data_1_storage\(3),
	combout => \inst4|lcd_data~42_combout\);

-- Location: LCCOMB_X30_Y29_N14
\inst4|lcd_data~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~39_combout\ = (\inst4|Equal23~0_combout\ & (\inst4|charCount\(1) $ (\inst4|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datac => \inst4|charCount\(0),
	datad => \inst4|Equal23~0_combout\,
	combout => \inst4|lcd_data~39_combout\);

-- Location: LCCOMB_X34_Y27_N14
\inst4|lcd_data~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~43_combout\ = (\inst4|lcd_data~39_combout\) # ((\inst4|lcd_data~40_combout\ & (\inst4|lcd_data~42_combout\ & \inst4|lcd_data~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~40_combout\,
	datab => \inst4|lcd_data~42_combout\,
	datac => \inst4|lcd_data~39_combout\,
	datad => \inst4|lcd_data~41_combout\,
	combout => \inst4|lcd_data~43_combout\);

-- Location: LCCOMB_X32_Y27_N30
\inst4|lcd_data~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~59_combout\ = (!\inst4|charCount\(1) & (!\inst4|charCount\(4) & (!\inst4|charCount\(2) & !\inst4|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(4),
	datac => \inst4|charCount\(2),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~59_combout\);

-- Location: LCCOMB_X34_Y27_N8
\inst4|lcd_data~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~52_combout\ = (\inst4|lineCount\(0) & ((\inst4|lineCount\(1)) # ((\inst4|lcd_data~39_combout\)))) # (!\inst4|lineCount\(0) & ((\inst4|lineCount\(1) & (\inst4|lcd_data~39_combout\)) # (!\inst4|lineCount\(1) & ((\inst4|lcd_data\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|lineCount\(1),
	datac => \inst4|lcd_data~39_combout\,
	datad => \inst4|lcd_data\(5),
	combout => \inst4|lcd_data~52_combout\);

-- Location: LCCOMB_X30_Y26_N16
\inst4|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~0_combout\ = \inst4|data_2_storage\(1) $ (VCC)
-- \inst4|Add4~1\ = CARRY(\inst4|data_2_storage\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(1),
	datad => VCC,
	combout => \inst4|Add4~0_combout\,
	cout => \inst4|Add4~1\);

-- Location: LCCOMB_X30_Y26_N18
\inst4|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~2_combout\ = (\inst4|data_2_storage\(2) & (\inst4|Add4~1\ & VCC)) # (!\inst4|data_2_storage\(2) & (!\inst4|Add4~1\))
-- \inst4|Add4~3\ = CARRY((!\inst4|data_2_storage\(2) & !\inst4|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(2),
	datad => VCC,
	cin => \inst4|Add4~1\,
	combout => \inst4|Add4~2_combout\,
	cout => \inst4|Add4~3\);

-- Location: LCCOMB_X30_Y26_N30
\inst4|data_2_storage~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage~10_combout\ = (\inst4|state.update~q\ & (((\inst2|output\(2))))) # (!\inst4|state.update~q\ & (\inst4|Add4~2_combout\ & ((\inst4|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|Add4~2_combout\,
	datac => \inst2|output\(2),
	datad => \inst4|LessThan2~0_combout\,
	combout => \inst4|data_2_storage~10_combout\);

-- Location: LCCOMB_X31_Y25_N0
\inst4|data_2_storage~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage~4_combout\ = (\inst4|lineCount\(0) & !\inst4|lineCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datad => \inst4|lineCount\(1),
	combout => \inst4|data_2_storage~4_combout\);

-- Location: LCCOMB_X30_Y26_N14
\inst4|data_2_storage~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage~14_combout\ = (\inst4|state.update~q\ & ((\inst4|process_0~12_combout\) # ((\inst4|data_2_storage~4_combout\ & \inst4|data_3_storage~0_combout\)))) # (!\inst4|state.update~q\ & (\inst4|data_2_storage~4_combout\ & 
-- (\inst4|data_3_storage~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|data_2_storage~4_combout\,
	datac => \inst4|data_3_storage~0_combout\,
	datad => \inst4|process_0~12_combout\,
	combout => \inst4|data_2_storage~14_combout\);

-- Location: FF_X30_Y26_N31
\inst4|data_2_storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage~10_combout\,
	ena => \inst4|data_2_storage~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(2));

-- Location: LCCOMB_X30_Y26_N20
\inst4|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~4_combout\ = (\inst4|data_2_storage\(3) & (\inst4|Add4~3\ $ (GND))) # (!\inst4|data_2_storage\(3) & (!\inst4|Add4~3\ & VCC))
-- \inst4|Add4~5\ = CARRY((\inst4|data_2_storage\(3) & !\inst4|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_2_storage\(3),
	datad => VCC,
	cin => \inst4|Add4~3\,
	combout => \inst4|Add4~4_combout\,
	cout => \inst4|Add4~5\);

-- Location: LCCOMB_X30_Y26_N0
\inst4|data_2_storage~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage~9_combout\ = (\inst4|state.update~q\ & (\inst2|output\(3))) # (!\inst4|state.update~q\ & (((\inst4|Add4~4_combout\ & \inst4|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst2|output\(3),
	datac => \inst4|Add4~4_combout\,
	datad => \inst4|LessThan2~0_combout\,
	combout => \inst4|data_2_storage~9_combout\);

-- Location: FF_X30_Y26_N1
\inst4|data_2_storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage~9_combout\,
	ena => \inst4|data_2_storage~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(3));

-- Location: LCCOMB_X30_Y26_N22
\inst4|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~6_combout\ = (\inst4|data_2_storage\(4) & (\inst4|Add4~5\ & VCC)) # (!\inst4|data_2_storage\(4) & (!\inst4|Add4~5\))
-- \inst4|Add4~7\ = CARRY((!\inst4|data_2_storage\(4) & !\inst4|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_2_storage\(4),
	datad => VCC,
	cin => \inst4|Add4~5\,
	combout => \inst4|Add4~6_combout\,
	cout => \inst4|Add4~7\);

-- Location: LCCOMB_X30_Y26_N8
\inst4|data_2_storage~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage~5_combout\ = (\inst4|state.update~q\ & (((\inst2|output\(4))))) # (!\inst4|state.update~q\ & (\inst4|Add4~6_combout\ & (\inst4|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~6_combout\,
	datab => \inst4|LessThan2~0_combout\,
	datac => \inst2|output\(4),
	datad => \inst4|state.update~q\,
	combout => \inst4|data_2_storage~5_combout\);

-- Location: FF_X30_Y26_N9
\inst4|data_2_storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage~5_combout\,
	ena => \inst4|data_2_storage~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(4));

-- Location: LCCOMB_X30_Y26_N24
\inst4|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~8_combout\ = (\inst4|data_2_storage\(5) & ((GND) # (!\inst4|Add4~7\))) # (!\inst4|data_2_storage\(5) & (\inst4|Add4~7\ $ (GND)))
-- \inst4|Add4~9\ = CARRY((\inst4|data_2_storage\(5)) # (!\inst4|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(5),
	datad => VCC,
	cin => \inst4|Add4~7\,
	combout => \inst4|Add4~8_combout\,
	cout => \inst4|Add4~9\);

-- Location: LCCOMB_X30_Y26_N6
\inst4|data_2_storage~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage~6_combout\ = (\inst4|state.update~q\ & (((\inst2|output\(5))))) # (!\inst4|state.update~q\ & (\inst4|LessThan2~0_combout\ & ((\inst4|Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|LessThan2~0_combout\,
	datac => \inst2|output\(5),
	datad => \inst4|Add4~8_combout\,
	combout => \inst4|data_2_storage~6_combout\);

-- Location: FF_X30_Y26_N7
\inst4|data_2_storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage~6_combout\,
	ena => \inst4|data_2_storage~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(5));

-- Location: LCCOMB_X30_Y26_N26
\inst4|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~10_combout\ = (\inst4|data_2_storage\(6) & (\inst4|Add4~9\ & VCC)) # (!\inst4|data_2_storage\(6) & (!\inst4|Add4~9\))
-- \inst4|Add4~11\ = CARRY((!\inst4|data_2_storage\(6) & !\inst4|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_2_storage\(6),
	datad => VCC,
	cin => \inst4|Add4~9\,
	combout => \inst4|Add4~10_combout\,
	cout => \inst4|Add4~11\);

-- Location: LCCOMB_X30_Y26_N4
\inst4|data_2_storage~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage~7_combout\ = (\inst4|state.update~q\ & (((\inst2|output\(6))))) # (!\inst4|state.update~q\ & (\inst4|Add4~10_combout\ & ((\inst4|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~10_combout\,
	datab => \inst2|output\(6),
	datac => \inst4|LessThan2~0_combout\,
	datad => \inst4|state.update~q\,
	combout => \inst4|data_2_storage~7_combout\);

-- Location: FF_X30_Y26_N5
\inst4|data_2_storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage~7_combout\,
	ena => \inst4|data_2_storage~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(6));

-- Location: LCCOMB_X30_Y26_N28
\inst4|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~12_combout\ = \inst4|Add4~11\ $ (\inst4|data_2_storage\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|data_2_storage\(7),
	cin => \inst4|Add4~11\,
	combout => \inst4|Add4~12_combout\);

-- Location: LCCOMB_X30_Y26_N10
\inst4|data_2_storage~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage~8_combout\ = (\inst4|state.update~q\ & (((\inst2|output\(7))))) # (!\inst4|state.update~q\ & (\inst4|LessThan2~0_combout\ & ((\inst4|Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|LessThan2~0_combout\,
	datac => \inst2|output\(7),
	datad => \inst4|Add4~12_combout\,
	combout => \inst4|data_2_storage~8_combout\);

-- Location: FF_X30_Y26_N11
\inst4|data_2_storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage~8_combout\,
	ena => \inst4|data_2_storage~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(7));

-- Location: LCCOMB_X29_Y26_N20
\inst4|lcd_data~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~56_combout\ = (!\inst4|data_2_storage\(6) & (!\inst4|data_2_storage\(7) & (!\inst4|data_2_storage\(4) & !\inst4|data_2_storage\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(6),
	datab => \inst4|data_2_storage\(7),
	datac => \inst4|data_2_storage\(4),
	datad => \inst4|data_2_storage\(5),
	combout => \inst4|lcd_data~56_combout\);

-- Location: LCCOMB_X30_Y26_N2
\inst4|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~0_combout\ = ((\inst4|data_2_storage\(3) & ((\inst4|data_2_storage\(1)) # (\inst4|data_2_storage\(2))))) # (!\inst4|lcd_data~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(1),
	datab => \inst4|data_2_storage\(3),
	datac => \inst4|data_2_storage\(2),
	datad => \inst4|lcd_data~56_combout\,
	combout => \inst4|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y26_N12
\inst4|data_2_storage~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage~13_combout\ = (\inst4|state.update~q\ & (((\inst2|output\(1))))) # (!\inst4|state.update~q\ & (\inst4|Add4~0_combout\ & ((\inst4|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|Add4~0_combout\,
	datac => \inst2|output\(1),
	datad => \inst4|LessThan2~0_combout\,
	combout => \inst4|data_2_storage~13_combout\);

-- Location: FF_X30_Y26_N13
\inst4|data_2_storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage~13_combout\,
	ena => \inst4|data_2_storage~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(1));

-- Location: LCCOMB_X29_Y24_N24
\inst4|data_2_storage~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage~11_combout\ = (\inst4|state~9_combout\) # ((\inst4|data_2_storage~4_combout\ & (!\inst4|LessThan2~0_combout\ & \inst4|data_3_storage~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage~4_combout\,
	datab => \inst4|LessThan2~0_combout\,
	datac => \inst4|data_3_storage~0_combout\,
	datad => \inst4|state~9_combout\,
	combout => \inst4|data_2_storage~11_combout\);

-- Location: LCCOMB_X29_Y24_N20
\inst4|data_2_storage[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage[0]~12_combout\ = (\inst4|data_2_storage~11_combout\ & (\inst4|state.update~q\ & (\inst2|output\(0)))) # (!\inst4|data_2_storage~11_combout\ & (((\inst4|data_2_storage\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst2|output\(0),
	datac => \inst4|data_2_storage\(0),
	datad => \inst4|data_2_storage~11_combout\,
	combout => \inst4|data_2_storage[0]~12_combout\);

-- Location: FF_X29_Y24_N21
\inst4|data_2_storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(0));

-- Location: LCCOMB_X30_Y27_N12
\inst4|lcd_data~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~57_combout\ = (!\inst4|data_2_storage\(1) & (!\inst4|data_2_storage\(3) & (!\inst4|data_2_storage\(0) & !\inst4|data_2_storage\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(1),
	datab => \inst4|data_2_storage\(3),
	datac => \inst4|data_2_storage\(0),
	datad => \inst4|data_2_storage\(2),
	combout => \inst4|lcd_data~57_combout\);

-- Location: LCCOMB_X30_Y25_N6
\inst4|lcd_data~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~143_combout\ = (\inst4|lineCount\(1) & !\inst4|lineCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|lineCount\(1),
	datad => \inst4|lineCount\(0),
	combout => \inst4|lcd_data~143_combout\);

-- Location: LCCOMB_X32_Y25_N16
\inst4|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~0_combout\ = \inst4|data_3_storage\(1) $ (VCC)
-- \inst4|Add5~1\ = CARRY(\inst4|data_3_storage\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_3_storage\(1),
	datad => VCC,
	combout => \inst4|Add5~0_combout\,
	cout => \inst4|Add5~1\);

-- Location: LCCOMB_X32_Y25_N4
\inst4|data_3_storage~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage~7_combout\ = (\inst4|state.update~q\ & (((\inst3|output\(1))))) # (!\inst4|state.update~q\ & (\inst4|Add5~0_combout\ & ((\inst4|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|Add5~0_combout\,
	datac => \inst3|output\(1),
	datad => \inst4|LessThan4~0_combout\,
	combout => \inst4|data_3_storage~7_combout\);

-- Location: LCCOMB_X32_Y25_N14
\inst4|data_3_storage~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage~2_combout\ = (\inst4|lcd_data~143_combout\ & ((\inst4|data_3_storage~0_combout\) # ((\inst4|state.update~q\ & \inst4|process_0~12_combout\)))) # (!\inst4|lcd_data~143_combout\ & (\inst4|state.update~q\ & 
-- ((\inst4|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~143_combout\,
	datab => \inst4|state.update~q\,
	datac => \inst4|data_3_storage~0_combout\,
	datad => \inst4|process_0~12_combout\,
	combout => \inst4|data_3_storage~2_combout\);

-- Location: FF_X32_Y25_N5
\inst4|data_3_storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage~7_combout\,
	ena => \inst4|data_3_storage~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(1));

-- Location: LCCOMB_X32_Y25_N18
\inst4|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~2_combout\ = (\inst4|data_3_storage\(2) & (\inst4|Add5~1\ & VCC)) # (!\inst4|data_3_storage\(2) & (!\inst4|Add5~1\))
-- \inst4|Add5~3\ = CARRY((!\inst4|data_3_storage\(2) & !\inst4|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(2),
	datad => VCC,
	cin => \inst4|Add5~1\,
	combout => \inst4|Add5~2_combout\,
	cout => \inst4|Add5~3\);

-- Location: LCCOMB_X32_Y25_N30
\inst4|data_3_storage~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage~6_combout\ = (\inst4|state.update~q\ & (((\inst3|output\(2))))) # (!\inst4|state.update~q\ & (\inst4|Add5~2_combout\ & ((\inst4|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|Add5~2_combout\,
	datac => \inst3|output\(2),
	datad => \inst4|LessThan4~0_combout\,
	combout => \inst4|data_3_storage~6_combout\);

-- Location: FF_X32_Y25_N31
\inst4|data_3_storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage~6_combout\,
	ena => \inst4|data_3_storage~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(2));

-- Location: LCCOMB_X32_Y25_N20
\inst4|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~4_combout\ = (\inst4|data_3_storage\(3) & (\inst4|Add5~3\ $ (GND))) # (!\inst4|data_3_storage\(3) & (!\inst4|Add5~3\ & VCC))
-- \inst4|Add5~5\ = CARRY((\inst4|data_3_storage\(3) & !\inst4|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_3_storage\(3),
	datad => VCC,
	cin => \inst4|Add5~3\,
	combout => \inst4|Add5~4_combout\,
	cout => \inst4|Add5~5\);

-- Location: LCCOMB_X32_Y25_N2
\inst4|data_3_storage~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage~10_combout\ = (\inst4|state.update~q\ & (((\inst3|output\(3))))) # (!\inst4|state.update~q\ & (\inst4|LessThan4~0_combout\ & ((\inst4|Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|LessThan4~0_combout\,
	datac => \inst3|output\(3),
	datad => \inst4|Add5~4_combout\,
	combout => \inst4|data_3_storage~10_combout\);

-- Location: FF_X32_Y25_N3
\inst4|data_3_storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage~10_combout\,
	ena => \inst4|data_3_storage~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(3));

-- Location: LCCOMB_X32_Y25_N22
\inst4|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~6_combout\ = (\inst4|data_3_storage\(4) & (\inst4|Add5~5\ & VCC)) # (!\inst4|data_3_storage\(4) & (!\inst4|Add5~5\))
-- \inst4|Add5~7\ = CARRY((!\inst4|data_3_storage\(4) & !\inst4|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_3_storage\(4),
	datad => VCC,
	cin => \inst4|Add5~5\,
	combout => \inst4|Add5~6_combout\,
	cout => \inst4|Add5~7\);

-- Location: LCCOMB_X32_Y25_N8
\inst4|data_3_storage~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage~1_combout\ = (\inst4|state.update~q\ & (\inst3|output\(4))) # (!\inst4|state.update~q\ & (((\inst4|Add5~6_combout\ & \inst4|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst3|output\(4),
	datac => \inst4|Add5~6_combout\,
	datad => \inst4|LessThan4~0_combout\,
	combout => \inst4|data_3_storage~1_combout\);

-- Location: FF_X32_Y25_N9
\inst4|data_3_storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage~1_combout\,
	ena => \inst4|data_3_storage~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(4));

-- Location: LCCOMB_X32_Y25_N24
\inst4|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~8_combout\ = (\inst4|data_3_storage\(5) & ((GND) # (!\inst4|Add5~7\))) # (!\inst4|data_3_storage\(5) & (\inst4|Add5~7\ $ (GND)))
-- \inst4|Add5~9\ = CARRY((\inst4|data_3_storage\(5)) # (!\inst4|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(5),
	datad => VCC,
	cin => \inst4|Add5~7\,
	combout => \inst4|Add5~8_combout\,
	cout => \inst4|Add5~9\);

-- Location: LCCOMB_X32_Y25_N6
\inst4|data_3_storage~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage~3_combout\ = (\inst4|state.update~q\ & (\inst3|output\(5))) # (!\inst4|state.update~q\ & (((\inst4|LessThan4~0_combout\ & \inst4|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|output\(5),
	datab => \inst4|LessThan4~0_combout\,
	datac => \inst4|state.update~q\,
	datad => \inst4|Add5~8_combout\,
	combout => \inst4|data_3_storage~3_combout\);

-- Location: FF_X32_Y25_N7
\inst4|data_3_storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage~3_combout\,
	ena => \inst4|data_3_storage~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(5));

-- Location: LCCOMB_X32_Y25_N26
\inst4|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~10_combout\ = (\inst4|data_3_storage\(6) & (\inst4|Add5~9\ & VCC)) # (!\inst4|data_3_storage\(6) & (!\inst4|Add5~9\))
-- \inst4|Add5~11\ = CARRY((!\inst4|data_3_storage\(6) & !\inst4|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_3_storage\(6),
	datad => VCC,
	cin => \inst4|Add5~9\,
	combout => \inst4|Add5~10_combout\,
	cout => \inst4|Add5~11\);

-- Location: LCCOMB_X32_Y25_N0
\inst4|data_3_storage~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage~4_combout\ = (\inst4|state.update~q\ & (\inst3|output\(6))) # (!\inst4|state.update~q\ & (((\inst4|Add5~10_combout\ & \inst4|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst3|output\(6),
	datac => \inst4|Add5~10_combout\,
	datad => \inst4|LessThan4~0_combout\,
	combout => \inst4|data_3_storage~4_combout\);

-- Location: FF_X32_Y25_N1
\inst4|data_3_storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage~4_combout\,
	ena => \inst4|data_3_storage~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(6));

-- Location: LCCOMB_X32_Y25_N28
\inst4|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~12_combout\ = \inst4|Add5~11\ $ (\inst4|data_3_storage\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|data_3_storage\(7),
	cin => \inst4|Add5~11\,
	combout => \inst4|Add5~12_combout\);

-- Location: LCCOMB_X32_Y25_N10
\inst4|data_3_storage~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage~5_combout\ = (\inst4|state.update~q\ & (((\inst3|output\(7))))) # (!\inst4|state.update~q\ & (\inst4|LessThan4~0_combout\ & ((\inst4|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|LessThan4~0_combout\,
	datac => \inst3|output\(7),
	datad => \inst4|Add5~12_combout\,
	combout => \inst4|data_3_storage~5_combout\);

-- Location: FF_X32_Y25_N11
\inst4|data_3_storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage~5_combout\,
	ena => \inst4|data_3_storage~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(7));

-- Location: LCCOMB_X32_Y25_N12
\inst4|lcd_data~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~53_combout\ = (!\inst4|data_3_storage\(7) & (!\inst4|data_3_storage\(6) & (!\inst4|data_3_storage\(4) & !\inst4|data_3_storage\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(7),
	datab => \inst4|data_3_storage\(6),
	datac => \inst4|data_3_storage\(4),
	datad => \inst4|data_3_storage\(5),
	combout => \inst4|lcd_data~53_combout\);

-- Location: LCCOMB_X31_Y25_N24
\inst4|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan4~0_combout\ = ((\inst4|data_3_storage\(3) & ((\inst4|data_3_storage\(2)) # (\inst4|data_3_storage\(1))))) # (!\inst4|lcd_data~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(3),
	datab => \inst4|lcd_data~53_combout\,
	datac => \inst4|data_3_storage\(2),
	datad => \inst4|data_3_storage\(1),
	combout => \inst4|LessThan4~0_combout\);

-- Location: LCCOMB_X30_Y25_N28
\inst4|data_3_storage~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage~8_combout\ = (\inst4|state~9_combout\) # ((\inst4|lcd_data~143_combout\ & (!\inst4|LessThan4~0_combout\ & \inst4|data_3_storage~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~143_combout\,
	datab => \inst4|LessThan4~0_combout\,
	datac => \inst4|data_3_storage~0_combout\,
	datad => \inst4|state~9_combout\,
	combout => \inst4|data_3_storage~8_combout\);

-- Location: LCCOMB_X30_Y25_N16
\inst4|data_3_storage[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage[0]~9_combout\ = (\inst4|data_3_storage~8_combout\ & (\inst3|output\(0) & (\inst4|state.update~q\))) # (!\inst4|data_3_storage~8_combout\ & (((\inst4|data_3_storage\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|output\(0),
	datab => \inst4|state.update~q\,
	datac => \inst4|data_3_storage\(0),
	datad => \inst4|data_3_storage~8_combout\,
	combout => \inst4|data_3_storage[0]~9_combout\);

-- Location: FF_X30_Y25_N17
\inst4|data_3_storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(0));

-- Location: LCCOMB_X31_Y25_N20
\inst4|lcd_data~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~54_combout\ = (!\inst4|data_3_storage\(0) & (!\inst4|data_3_storage\(2) & !\inst4|data_3_storage\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(0),
	datac => \inst4|data_3_storage\(2),
	datad => \inst4|data_3_storage\(1),
	combout => \inst4|lcd_data~54_combout\);

-- Location: LCCOMB_X31_Y25_N6
\inst4|lcd_data~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~55_combout\ = (\inst4|lineCount\(1) & (\inst4|lcd_data~54_combout\ & (\inst4|lcd_data~53_combout\ & !\inst4|data_3_storage\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data~54_combout\,
	datac => \inst4|lcd_data~53_combout\,
	datad => \inst4|data_3_storage\(3),
	combout => \inst4|lcd_data~55_combout\);

-- Location: LCCOMB_X30_Y27_N18
\inst4|lcd_data~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~58_combout\ = (\inst4|lcd_data~55_combout\) # ((\inst4|lcd_data~57_combout\ & (\inst4|lineCount\(0) & \inst4|lcd_data~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~57_combout\,
	datab => \inst4|lineCount\(0),
	datac => \inst4|lcd_data~55_combout\,
	datad => \inst4|lcd_data~56_combout\,
	combout => \inst4|lcd_data~58_combout\);

-- Location: LCCOMB_X34_Y27_N2
\inst4|lcd_data~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~60_combout\ = (\inst4|lcd_data~52_combout\) # ((!\inst4|lcd_data~59_combout\ & \inst4|lcd_data~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|lcd_data~59_combout\,
	datac => \inst4|lcd_data~52_combout\,
	datad => \inst4|lcd_data~58_combout\,
	combout => \inst4|lcd_data~60_combout\);

-- Location: LCCOMB_X34_Y27_N24
\inst4|lcd_data~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~61_combout\ = (\inst4|display_state~q\ & ((\inst4|lcd_data~51_combout\ & ((\inst4|lcd_data~60_combout\))) # (!\inst4|lcd_data~51_combout\ & (\inst4|lcd_data~43_combout\)))) # (!\inst4|display_state~q\ & (\inst4|lcd_data~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_state~q\,
	datab => \inst4|lcd_data~51_combout\,
	datac => \inst4|lcd_data~43_combout\,
	datad => \inst4|lcd_data~60_combout\,
	combout => \inst4|lcd_data~61_combout\);

-- Location: FF_X34_Y27_N25
\inst4|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(5));

-- Location: LCCOMB_X35_Y29_N14
\inst5|dataStorage[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataStorage[5]~1_combout\ = !\inst4|lcd_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|lcd_data\(5),
	combout => \inst5|dataStorage[5]~1_combout\);

-- Location: FF_X35_Y29_N15
\inst5|dataStorage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|dataStorage[5]~1_combout\,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(5));

-- Location: FF_X32_Y29_N11
\inst4|lcd_posX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|charCount\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posX\(3));

-- Location: LCCOMB_X32_Y29_N24
\inst4|lcd_posX[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_posX[4]~feeder_combout\ = \inst4|charCount\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_posX[4]~feeder_combout\);

-- Location: FF_X32_Y29_N25
\inst4|lcd_posX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_posX[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posX\(4));

-- Location: FF_X32_Y29_N29
\inst4|lcd_posX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|charCount\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posX\(2));

-- Location: LCCOMB_X35_Y29_N24
\inst4|lcd_posY[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_posY[1]~feeder_combout\ = \inst4|lineCount\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|lineCount\(1),
	combout => \inst4|lcd_posY[1]~feeder_combout\);

-- Location: FF_X35_Y29_N25
\inst4|lcd_posY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_posY[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posY\(1));

-- Location: LCCOMB_X36_Y29_N14
\inst5|addressStorage~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|addressStorage~0_combout\ = (\inst4|lcd_posY\(1) & ((\inst4|lcd_posX\(4)) # ((\inst4|lcd_posX\(3) & \inst4|lcd_posX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_posX\(3),
	datab => \inst4|lcd_posX\(4),
	datac => \inst4|lcd_posX\(2),
	datad => \inst4|lcd_posY\(1),
	combout => \inst5|addressStorage~0_combout\);

-- Location: FF_X36_Y29_N15
\inst5|addressStorage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|addressStorage~0_combout\,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(5));

-- Location: LCCOMB_X36_Y29_N16
\inst5|dataOut[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[5]~15_combout\ = (\inst5|state.sendingAddress~q\ & (((\inst5|addressStorage\(5))))) # (!\inst5|state.sendingAddress~q\ & (!\inst5|dataStorage\(5) & ((\inst5|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataStorage\(5),
	datab => \inst5|state.sendingAddress~q\,
	datac => \inst5|addressStorage\(5),
	datad => \inst5|state.sendingData~q\,
	combout => \inst5|dataOut[5]~15_combout\);

-- Location: LCCOMB_X40_Y32_N26
\inst5|dataOut[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[5]~16_combout\ = (!\inst5|state.init6~q\ & !\inst5|state.init5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|state.init6~q\,
	datad => \inst5|state.init5~q\,
	combout => \inst5|dataOut[5]~16_combout\);

-- Location: LCCOMB_X40_Y32_N12
\inst5|dataOut[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[5]~17_combout\ = ((\inst5|Equal8~10_combout\ & (\inst5|dataOut[5]~16_combout\ & \inst5|state.createChar5~q\))) # (!\inst5|dataOut[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[1]~5_combout\,
	datab => \inst5|Equal8~10_combout\,
	datac => \inst5|dataOut[5]~16_combout\,
	datad => \inst5|state.createChar5~q\,
	combout => \inst5|dataOut[5]~17_combout\);

-- Location: LCCOMB_X40_Y32_N6
\inst5|dataOut[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[5]~18_combout\ = (\inst5|dataOut[5]~11_combout\ & (\inst5|dataOut[5]~15_combout\)) # (!\inst5|dataOut[5]~11_combout\ & (((\inst5|state.init0~q\ & \inst5|dataOut[5]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[5]~15_combout\,
	datab => \inst5|state.init0~q\,
	datac => \inst5|dataOut[5]~11_combout\,
	datad => \inst5|dataOut[5]~17_combout\,
	combout => \inst5|dataOut[5]~18_combout\);

-- Location: LCCOMB_X36_Y29_N22
\inst5|addressStorage~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|addressStorage~1_combout\ = \inst4|lcd_posX\(4) $ (((\inst4|lcd_posY\(1) & ((!\inst4|lcd_posX\(2)) # (!\inst4|lcd_posX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_posX\(3),
	datab => \inst4|lcd_posX\(4),
	datac => \inst4|lcd_posX\(2),
	datad => \inst4|lcd_posY\(1),
	combout => \inst5|addressStorage~1_combout\);

-- Location: FF_X36_Y29_N23
\inst5|addressStorage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|addressStorage~1_combout\,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(4));

-- Location: LCCOMB_X31_Y29_N16
\inst4|lcd_data~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~153_combout\ = (\inst4|charCount\(0) & ((\inst4|charCount\(2) & (!\inst4|charCount\(3))) # (!\inst4|charCount\(2) & ((\inst4|charCount\(1)))))) # (!\inst4|charCount\(0) & (\inst4|charCount\(3) & (\inst4|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(2),
	datad => \inst4|charCount\(0),
	combout => \inst4|lcd_data~153_combout\);

-- Location: LCCOMB_X31_Y29_N14
\inst4|lcd_data~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~154_combout\ = (\inst4|charCount\(3) & (\inst4|lcd_data~153_combout\ & (!\inst4|charCount\(4)))) # (!\inst4|charCount\(3) & (\inst4|charCount\(0) & (\inst4|lcd_data~153_combout\ $ (\inst4|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|lcd_data~153_combout\,
	datac => \inst4|charCount\(4),
	datad => \inst4|charCount\(0),
	combout => \inst4|lcd_data~154_combout\);

-- Location: LCCOMB_X31_Y28_N2
\inst4|Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal15~1_combout\ = (!\inst4|charCount\(0) & \inst4|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datac => \inst4|charCount\(1),
	combout => \inst4|Equal15~1_combout\);

-- Location: LCCOMB_X31_Y28_N24
\inst4|lcd_data~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~68_combout\ = (\inst4|charCount\(0) & ((\inst4|charCount\(1)) # (\inst4|charCount\(2) $ (!\inst4|charCount\(3))))) # (!\inst4|charCount\(0) & ((\inst4|charCount\(2)) # ((\inst4|charCount\(1) & \inst4|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~68_combout\);

-- Location: LCCOMB_X31_Y28_N18
\inst4|lcd_data~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~69_combout\ = (\inst4|charCount\(4) & (\inst4|Equal15~1_combout\ & (\inst4|Equal17~0_combout\))) # (!\inst4|charCount\(4) & (((\inst4|Equal15~1_combout\ & \inst4|Equal17~0_combout\)) # (!\inst4|lcd_data~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|Equal15~1_combout\,
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|lcd_data~68_combout\,
	combout => \inst4|lcd_data~69_combout\);

-- Location: LCCOMB_X32_Y26_N26
\inst4|lcd_data~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~65_combout\ = (\inst4|charCount\(3) & (\inst4|charCount\(2) & (!\inst4|charCount\(1) & !\inst4|charCount\(0)))) # (!\inst4|charCount\(3) & (\inst4|charCount\(1) & (\inst4|charCount\(2) $ (!\inst4|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(0),
	combout => \inst4|lcd_data~65_combout\);

-- Location: LCCOMB_X32_Y26_N24
\inst4|lcd_data~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~66_combout\ = (\inst4|lcd_data~65_combout\ & (((!\inst4|charCount\(1) & \inst4|Equal17~0_combout\)) # (!\inst4|charCount\(4)))) # (!\inst4|lcd_data~65_combout\ & (!\inst4|charCount\(1) & ((\inst4|Equal17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~65_combout\,
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(4),
	datad => \inst4|Equal17~0_combout\,
	combout => \inst4|lcd_data~66_combout\);

-- Location: LCCOMB_X31_Y26_N30
\inst4|lcd_data~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~67_combout\ = (\inst4|lineCount\(0) & (((\inst4|lineCount\(1)) # (\inst4|lcd_data~66_combout\)))) # (!\inst4|lineCount\(0) & (\inst4|lcd_data\(4) & (!\inst4|lineCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|lcd_data\(4),
	datac => \inst4|lineCount\(1),
	datad => \inst4|lcd_data~66_combout\,
	combout => \inst4|lcd_data~67_combout\);

-- Location: LCCOMB_X30_Y29_N10
\inst4|lcd_data~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~12_combout\ = (\inst4|charCount\(0) & (!\inst4|charCount\(2) & (!\inst4|charCount\(3) & \inst4|charCount\(1)))) # (!\inst4|charCount\(0) & (!\inst4|charCount\(1) & (\inst4|charCount\(2) $ (\inst4|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(2),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~12_combout\);

-- Location: LCCOMB_X30_Y29_N20
\inst4|lcd_data~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~146_combout\ = (!\inst4|charCount\(4) & \inst4|lcd_data~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|charCount\(4),
	datad => \inst4|lcd_data~12_combout\,
	combout => \inst4|lcd_data~146_combout\);

-- Location: LCCOMB_X31_Y26_N28
\inst4|lcd_data~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~70_combout\ = (\inst4|lineCount\(1) & ((\inst4|lcd_data~67_combout\ & (\inst4|lcd_data~69_combout\)) # (!\inst4|lcd_data~67_combout\ & ((\inst4|lcd_data~146_combout\))))) # (!\inst4|lineCount\(1) & (((\inst4|lcd_data~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data~69_combout\,
	datac => \inst4|lcd_data~67_combout\,
	datad => \inst4|lcd_data~146_combout\,
	combout => \inst4|lcd_data~70_combout\);

-- Location: LCCOMB_X31_Y26_N14
\inst4|lcd_data~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~71_combout\ = (!\inst4|display_state~q\ & ((\inst4|lcd_data~33_combout\ & (\inst4|lcd_data~154_combout\)) # (!\inst4|lcd_data~33_combout\ & ((\inst4|lcd_data~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_state~q\,
	datab => \inst4|lcd_data~154_combout\,
	datac => \inst4|lcd_data~33_combout\,
	datad => \inst4|lcd_data~70_combout\,
	combout => \inst4|lcd_data~71_combout\);

-- Location: LCCOMB_X31_Y26_N2
\inst4|lcd_data~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~72_combout\ = (\inst4|lcd_data~71_combout\) # ((\inst4|lcd_data~32_combout\ & ((\inst4|Equal23~1_combout\) # (\inst4|lcd_data~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~32_combout\,
	datab => \inst4|Equal23~1_combout\,
	datac => \inst4|lcd_data~71_combout\,
	datad => \inst4|lcd_data~39_combout\,
	combout => \inst4|lcd_data~72_combout\);

-- Location: FF_X31_Y26_N3
\inst4|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(4));

-- Location: FF_X36_Y29_N29
\inst5|dataStorage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|lcd_data\(4),
	sload => VCC,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(4));

-- Location: LCCOMB_X36_Y29_N28
\inst5|dataOut[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[4]~19_combout\ = (\inst5|state.sendingAddress~q\ & (\inst5|addressStorage\(4))) # (!\inst5|state.sendingAddress~q\ & (((\inst5|dataStorage\(4) & \inst5|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|addressStorage\(4),
	datab => \inst5|state.sendingAddress~q\,
	datac => \inst5|dataStorage\(4),
	datad => \inst5|state.sendingData~q\,
	combout => \inst5|dataOut[4]~19_combout\);

-- Location: LCCOMB_X38_Y29_N28
\inst5|dataOut[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[4]~20_combout\ = (\inst5|Equal8~9_combout\ & (!\inst5|charCreationCounter\(3) & ((\inst5|state.createChar5~q\) # (!\inst5|dataOut[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar5~q\,
	datab => \inst5|Equal8~9_combout\,
	datac => \inst5|dataOut[4]~4_combout\,
	datad => \inst5|charCreationCounter\(3),
	combout => \inst5|dataOut[4]~20_combout\);

-- Location: LCCOMB_X40_Y32_N28
\inst5|dataOut[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[4]~21_combout\ = ((!\inst5|state.init7~q\ & (\inst5|dataOut[5]~16_combout\ & !\inst5|dataOut[4]~20_combout\))) # (!\inst5|dataOut[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[1]~5_combout\,
	datab => \inst5|state.init7~q\,
	datac => \inst5|dataOut[5]~16_combout\,
	datad => \inst5|dataOut[4]~20_combout\,
	combout => \inst5|dataOut[4]~21_combout\);

-- Location: LCCOMB_X40_Y32_N2
\inst5|dataOut[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[4]~22_combout\ = (\inst5|dataOut[5]~11_combout\ & (\inst5|dataOut[4]~19_combout\)) # (!\inst5|dataOut[5]~11_combout\ & (((\inst5|state.init0~q\ & \inst5|dataOut[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[5]~11_combout\,
	datab => \inst5|dataOut[4]~19_combout\,
	datac => \inst5|state.init0~q\,
	datad => \inst5|dataOut[4]~21_combout\,
	combout => \inst5|dataOut[4]~22_combout\);

-- Location: LCCOMB_X36_Y29_N10
\inst5|addressStorage~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|addressStorage~2_combout\ = \inst4|lcd_posX\(3) $ (((\inst4|lcd_posX\(2) & \inst4|lcd_posY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_posX\(3),
	datac => \inst4|lcd_posX\(2),
	datad => \inst4|lcd_posY\(1),
	combout => \inst5|addressStorage~2_combout\);

-- Location: FF_X36_Y29_N11
\inst5|addressStorage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|addressStorage~2_combout\,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(3));

-- Location: LCCOMB_X32_Y26_N28
\inst4|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal15~0_combout\ = (!\inst4|charCount\(4) & (\inst4|charCount\(2) & \inst4|charCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(4),
	datac => \inst4|charCount\(2),
	datad => \inst4|charCount\(3),
	combout => \inst4|Equal15~0_combout\);

-- Location: LCCOMB_X32_Y26_N30
\inst4|lcd_data~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~73_combout\ = (\inst4|charCount\(0) & (\inst4|Equal15~0_combout\)) # (!\inst4|charCount\(0) & ((\inst4|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|Equal15~0_combout\,
	datad => \inst4|Equal17~0_combout\,
	combout => \inst4|lcd_data~73_combout\);

-- Location: LCCOMB_X32_Y26_N8
\inst4|lcd_data~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~63_combout\ = (\inst4|charCount\(3) & (\inst4|charCount\(2) & ((\inst4|charCount\(1)) # (\inst4|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(2),
	datad => \inst4|charCount\(0),
	combout => \inst4|lcd_data~63_combout\);

-- Location: LCCOMB_X32_Y26_N20
\inst4|lcd_data~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~147_combout\ = (!\inst4|charCount\(4) & (!\inst4|charCount\(2) & (!\inst4|charCount\(1) & \inst4|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(0),
	combout => \inst4|lcd_data~147_combout\);

-- Location: LCCOMB_X32_Y26_N12
\inst4|lcd_data~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~74_combout\ = (\inst4|lcd_data~147_combout\) # ((\inst4|lcd_data~73_combout\ & ((\inst4|lcd_data~63_combout\) # (\inst4|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~73_combout\,
	datab => \inst4|lcd_data~63_combout\,
	datac => \inst4|charCount\(4),
	datad => \inst4|lcd_data~147_combout\,
	combout => \inst4|lcd_data~74_combout\);

-- Location: LCCOMB_X32_Y28_N26
\inst4|lcd_data~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~77_combout\ = (\inst4|charCount\(1) & (!\inst4|charCount\(0) & (\inst4|charCount\(2) $ (\inst4|charCount\(3))))) # (!\inst4|charCount\(1) & (!\inst4|charCount\(2) & (!\inst4|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(2),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~77_combout\);

-- Location: LCCOMB_X32_Y28_N28
\inst4|lcd_data~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~78_combout\ = (\inst4|lcd_data~77_combout\ & !\inst4|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|lcd_data~77_combout\,
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~78_combout\);

-- Location: LCCOMB_X32_Y28_N22
\inst4|lcd_data~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~79_combout\ = (\inst4|lineCount\(1) & ((\inst4|lineCount\(0)) # ((\inst4|lcd_data~78_combout\)))) # (!\inst4|lineCount\(1) & (!\inst4|lineCount\(0) & (\inst4|lcd_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lineCount\(0),
	datac => \inst4|lcd_data\(3),
	datad => \inst4|lcd_data~78_combout\,
	combout => \inst4|lcd_data~79_combout\);

-- Location: LCCOMB_X32_Y28_N2
\inst4|lcd_data~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~75_combout\ = (\inst4|charCount\(3) & ((\inst4|charCount\(1) & ((!\inst4|charCount\(0)))) # (!\inst4|charCount\(1) & (!\inst4|charCount\(2))))) # (!\inst4|charCount\(3) & (((\inst4|charCount\(0) & !\inst4|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(2),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~75_combout\);

-- Location: LCCOMB_X32_Y28_N16
\inst4|lcd_data~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~76_combout\ = (!\inst4|charCount\(4) & \inst4|lcd_data~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|charCount\(4),
	datad => \inst4|lcd_data~75_combout\,
	combout => \inst4|lcd_data~76_combout\);

-- Location: LCCOMB_X32_Y28_N20
\inst4|lcd_data~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~151_combout\ = (\inst4|charCount\(0) & (!\inst4|charCount\(2) & (!\inst4|charCount\(3) & !\inst4|charCount\(4)))) # (!\inst4|charCount\(0) & (\inst4|charCount\(4) $ (((\inst4|charCount\(2)) # (\inst4|charCount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(2),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~151_combout\);

-- Location: LCCOMB_X32_Y28_N18
\inst4|lcd_data~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~152_combout\ = (\inst4|lcd_data~151_combout\ & (\inst4|charCount\(1) $ (((\inst4|charCount\(2)) # (!\inst4|charCount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(2),
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(3),
	datad => \inst4|lcd_data~151_combout\,
	combout => \inst4|lcd_data~152_combout\);

-- Location: LCCOMB_X32_Y28_N8
\inst4|lcd_data~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~80_combout\ = (\inst4|lcd_data~79_combout\ & (((\inst4|lcd_data~152_combout\) # (!\inst4|lineCount\(0))))) # (!\inst4|lcd_data~79_combout\ & (\inst4|lcd_data~76_combout\ & (\inst4|lineCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~79_combout\,
	datab => \inst4|lcd_data~76_combout\,
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~152_combout\,
	combout => \inst4|lcd_data~80_combout\);

-- Location: LCCOMB_X32_Y26_N22
\inst4|lcd_data~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~81_combout\ = (!\inst4|display_state~q\ & ((\inst4|lcd_data~33_combout\ & (\inst4|lcd_data~74_combout\)) # (!\inst4|lcd_data~33_combout\ & ((\inst4|lcd_data~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~74_combout\,
	datab => \inst4|lcd_data~33_combout\,
	datac => \inst4|display_state~q\,
	datad => \inst4|lcd_data~80_combout\,
	combout => \inst4|lcd_data~81_combout\);

-- Location: LCCOMB_X31_Y26_N0
\inst4|lcd_data~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~82_combout\ = (\inst4|lcd_data~81_combout\) # ((\inst4|Equal15~1_combout\ & (\inst4|Equal23~0_combout\ & \inst4|lcd_data~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal15~1_combout\,
	datab => \inst4|Equal23~0_combout\,
	datac => \inst4|lcd_data~32_combout\,
	datad => \inst4|lcd_data~81_combout\,
	combout => \inst4|lcd_data~82_combout\);

-- Location: FF_X31_Y26_N1
\inst4|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(3));

-- Location: FF_X36_Y29_N9
\inst5|dataStorage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|lcd_data\(3),
	sload => VCC,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(3));

-- Location: LCCOMB_X36_Y29_N8
\inst5|dataOut[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[3]~23_combout\ = (\inst5|state.sendingAddress~q\ & (\inst5|addressStorage\(3))) # (!\inst5|state.sendingAddress~q\ & (((\inst5|dataStorage\(3) & \inst5|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|addressStorage\(3),
	datab => \inst5|state.sendingAddress~q\,
	datac => \inst5|dataStorage\(3),
	datad => \inst5|state.sendingData~q\,
	combout => \inst5|dataOut[3]~23_combout\);

-- Location: LCCOMB_X40_Y32_N24
\inst5|dataOut[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[3]~24_combout\ = (\inst5|state.init6~q\) # ((\inst5|Equal8~10_combout\ & ((\inst5|state.createChar3~q\) # (\inst5|state.createChar5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init6~q\,
	datab => \inst5|state.createChar3~q\,
	datac => \inst5|Equal8~10_combout\,
	datad => \inst5|state.createChar5~q\,
	combout => \inst5|dataOut[3]~24_combout\);

-- Location: LCCOMB_X40_Y32_N10
\inst5|dataOut[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[3]~25_combout\ = (\inst5|dataOut[1]~5_combout\ & ((\inst5|dataOut[3]~24_combout\) # ((\inst5|state.createChar1~q\) # (\inst5|state.init7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[1]~5_combout\,
	datab => \inst5|dataOut[3]~24_combout\,
	datac => \inst5|state.createChar1~q\,
	datad => \inst5|state.init7~q\,
	combout => \inst5|dataOut[3]~25_combout\);

-- Location: LCCOMB_X40_Y32_N4
\inst5|dataOut[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[3]~26_combout\ = (\inst5|dataOut[5]~11_combout\ & (\inst5|dataOut[3]~23_combout\)) # (!\inst5|dataOut[5]~11_combout\ & (((\inst5|state.init0~q\ & !\inst5|dataOut[3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[5]~11_combout\,
	datab => \inst5|dataOut[3]~23_combout\,
	datac => \inst5|state.init0~q\,
	datad => \inst5|dataOut[3]~25_combout\,
	combout => \inst5|dataOut[3]~26_combout\);

-- Location: LCCOMB_X34_Y27_N4
\inst4|lcd_data~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~83_combout\ = (!\inst4|data_1_storage\(1) & !\inst4|data_1_storage\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|data_1_storage\(1),
	datad => \inst4|data_1_storage\(0),
	combout => \inst4|lcd_data~83_combout\);

-- Location: LCCOMB_X34_Y27_N18
\inst4|lcd_data~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~84_combout\ = (\inst4|lcd_data~41_combout\ & (((!\inst4|data_1_storage\(2) & \inst4|lcd_data~83_combout\)) # (!\inst4|data_1_storage\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(2),
	datab => \inst4|data_1_storage\(3),
	datac => \inst4|lcd_data~83_combout\,
	datad => \inst4|lcd_data~41_combout\,
	combout => \inst4|lcd_data~84_combout\);

-- Location: LCCOMB_X31_Y26_N16
\inst4|lcd_data~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~85_combout\ = (\inst4|Equal23~1_combout\) # ((!\inst4|lcd_data~39_combout\ & !\inst4|lcd_data~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~39_combout\,
	datac => \inst4|lcd_data~84_combout\,
	datad => \inst4|Equal23~1_combout\,
	combout => \inst4|lcd_data~85_combout\);

-- Location: LCCOMB_X30_Y27_N16
\inst4|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan11~0_combout\ = (\inst4|data_2_storage\(3) & ((\inst4|data_2_storage\(2)) # ((\inst4|data_2_storage\(0)) # (\inst4|data_2_storage\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(2),
	datab => \inst4|data_2_storage\(3),
	datac => \inst4|data_2_storage\(0),
	datad => \inst4|data_2_storage\(1),
	combout => \inst4|LessThan11~0_combout\);

-- Location: LCCOMB_X30_Y27_N30
\inst4|lcd_data~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~96_combout\ = (\inst4|lcd_data~56_combout\ & !\inst4|LessThan11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~56_combout\,
	datad => \inst4|LessThan11~0_combout\,
	combout => \inst4|lcd_data~96_combout\);

-- Location: LCCOMB_X31_Y26_N18
\inst4|lcd_data~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~97_combout\ = (\inst4|data_2_storage~4_combout\ & ((\inst4|Equal23~1_combout\) # ((!\inst4|lcd_data~39_combout\ & !\inst4|lcd_data~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~39_combout\,
	datab => \inst4|data_2_storage~4_combout\,
	datac => \inst4|lcd_data~96_combout\,
	datad => \inst4|Equal23~1_combout\,
	combout => \inst4|lcd_data~97_combout\);

-- Location: LCCOMB_X31_Y25_N2
\inst4|lcd_data~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~98_combout\ = (!\inst4|lcd_data~39_combout\ & (((\inst4|data_3_storage\(3) & !\inst4|lcd_data~54_combout\)) # (!\inst4|lcd_data~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(3),
	datab => \inst4|lcd_data~53_combout\,
	datac => \inst4|lcd_data~39_combout\,
	datad => \inst4|lcd_data~54_combout\,
	combout => \inst4|lcd_data~98_combout\);

-- Location: LCCOMB_X31_Y26_N12
\inst4|lcd_data~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~99_combout\ = (\inst4|lineCount\(1) & (((\inst4|Equal23~1_combout\) # (\inst4|lcd_data~98_combout\)))) # (!\inst4|lineCount\(1) & (\inst4|lcd_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data\(2),
	datab => \inst4|Equal23~1_combout\,
	datac => \inst4|lcd_data~98_combout\,
	datad => \inst4|lineCount\(1),
	combout => \inst4|lcd_data~99_combout\);

-- Location: LCCOMB_X31_Y26_N26
\inst4|lcd_data~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~100_combout\ = (\inst4|lcd_data~97_combout\) # ((!\inst4|lineCount\(0) & \inst4|lcd_data~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|lcd_data~97_combout\,
	datad => \inst4|lcd_data~99_combout\,
	combout => \inst4|lcd_data~100_combout\);

-- Location: LCCOMB_X31_Y28_N16
\inst4|lcd_data~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~93_combout\ = (\inst4|charCount\(1) & (!\inst4|charCount\(0) & (\inst4|charCount\(2) & \inst4|charCount\(3)))) # (!\inst4|charCount\(1) & ((\inst4|charCount\(2) $ (\inst4|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~93_combout\);

-- Location: LCCOMB_X31_Y28_N0
\inst4|lcd_data~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~64_combout\ = \inst4|charCount\(0) $ (\inst4|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datac => \inst4|charCount\(1),
	combout => \inst4|lcd_data~64_combout\);

-- Location: LCCOMB_X31_Y28_N22
\inst4|lcd_data~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~94_combout\ = (\inst4|charCount\(4) & (((\inst4|Equal17~0_combout\ & \inst4|lcd_data~64_combout\)))) # (!\inst4|charCount\(4) & ((\inst4|lcd_data~93_combout\) # ((\inst4|Equal17~0_combout\ & \inst4|lcd_data~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|lcd_data~93_combout\,
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|lcd_data~64_combout\,
	combout => \inst4|lcd_data~94_combout\);

-- Location: LCCOMB_X32_Y26_N16
\inst4|lcd_data~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~86_combout\ = (!\inst4|charCount\(2) & (\inst4|charCount\(0) $ (((\inst4|charCount\(3) & \inst4|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(2),
	datad => \inst4|charCount\(0),
	combout => \inst4|lcd_data~86_combout\);

-- Location: LCCOMB_X31_Y29_N10
\inst4|lcd_data~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~89_combout\ = (!\inst4|charCount\(3)) # (!\inst4|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(1),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~89_combout\);

-- Location: LCCOMB_X31_Y29_N30
\inst4|lcd_data~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~87_combout\ = (!\inst4|charCount\(2) & (!\inst4|charCount\(0) & (\inst4|charCount\(3) $ (\inst4|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(4),
	datac => \inst4|charCount\(2),
	datad => \inst4|charCount\(0),
	combout => \inst4|lcd_data~87_combout\);

-- Location: LCCOMB_X31_Y29_N28
\inst4|lcd_data~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~88_combout\ = (!\inst4|charCount\(4) & \inst4|charCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|charCount\(4),
	datad => \inst4|charCount\(0),
	combout => \inst4|lcd_data~88_combout\);

-- Location: LCCOMB_X31_Y29_N24
\inst4|lcd_data~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~90_combout\ = (\inst4|lcd_data~87_combout\) # ((\inst4|lcd_data~88_combout\ & (\inst4|lcd_data~89_combout\ $ (!\inst4|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~89_combout\,
	datab => \inst4|charCount\(2),
	datac => \inst4|lcd_data~87_combout\,
	datad => \inst4|lcd_data~88_combout\,
	combout => \inst4|lcd_data~90_combout\);

-- Location: LCCOMB_X31_Y26_N6
\inst4|lcd_data~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~91_combout\ = (\inst4|lineCount\(0) & (((\inst4|lcd_data~90_combout\) # (\inst4|lineCount\(1))))) # (!\inst4|lineCount\(0) & (\inst4|lcd_data\(2) & ((!\inst4|lineCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data\(2),
	datab => \inst4|lineCount\(0),
	datac => \inst4|lcd_data~90_combout\,
	datad => \inst4|lineCount\(1),
	combout => \inst4|lcd_data~91_combout\);

-- Location: LCCOMB_X32_Y26_N6
\inst4|lcd_data~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~62_combout\ = (\inst4|charCount\(0) & (((!\inst4|charCount\(1) & \inst4|Equal17~0_combout\)))) # (!\inst4|charCount\(0) & (\inst4|Equal15~0_combout\ & (\inst4|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|Equal15~0_combout\,
	datac => \inst4|charCount\(1),
	datad => \inst4|Equal17~0_combout\,
	combout => \inst4|lcd_data~62_combout\);

-- Location: LCCOMB_X32_Y26_N18
\inst4|lcd_data~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~92_combout\ = (\inst4|charCount\(2) & (\inst4|charCount\(3) $ (((!\inst4|charCount\(0)))))) # (!\inst4|charCount\(2) & (\inst4|charCount\(1) $ (((\inst4|charCount\(3) & !\inst4|charCount\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(0),
	combout => \inst4|lcd_data~92_combout\);

-- Location: LCCOMB_X32_Y26_N2
\inst4|lcd_data~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~149_combout\ = (\inst4|charCount\(4) & (\inst4|lcd_data~62_combout\ & (\inst4|lcd_data~91_combout\))) # (!\inst4|charCount\(4) & (((!\inst4|lcd_data~92_combout\) # (!\inst4|lcd_data~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~62_combout\,
	datab => \inst4|charCount\(4),
	datac => \inst4|lcd_data~91_combout\,
	datad => \inst4|lcd_data~92_combout\,
	combout => \inst4|lcd_data~149_combout\);

-- Location: LCCOMB_X32_Y26_N4
\inst4|lcd_data~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~150_combout\ = (\inst4|lineCount\(1) & (\inst4|lcd_data~149_combout\ & ((\inst4|lcd_data~86_combout\) # (\inst4|lcd_data~91_combout\)))) # (!\inst4|lineCount\(1) & (((\inst4|lcd_data~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data~86_combout\,
	datac => \inst4|lcd_data~91_combout\,
	datad => \inst4|lcd_data~149_combout\,
	combout => \inst4|lcd_data~150_combout\);

-- Location: LCCOMB_X31_Y26_N24
\inst4|lcd_data~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~95_combout\ = (\inst4|display_state~q\ & (((!\inst4|lcd_data~33_combout\)))) # (!\inst4|display_state~q\ & ((\inst4|lcd_data~33_combout\ & (\inst4|lcd_data~94_combout\)) # (!\inst4|lcd_data~33_combout\ & ((\inst4|lcd_data~150_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_state~q\,
	datab => \inst4|lcd_data~94_combout\,
	datac => \inst4|lcd_data~33_combout\,
	datad => \inst4|lcd_data~150_combout\,
	combout => \inst4|lcd_data~95_combout\);

-- Location: LCCOMB_X31_Y26_N10
\inst4|lcd_data~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~101_combout\ = (\inst4|display_state~q\ & ((\inst4|lcd_data~95_combout\ & ((\inst4|lcd_data~100_combout\))) # (!\inst4|lcd_data~95_combout\ & (\inst4|lcd_data~85_combout\)))) # (!\inst4|display_state~q\ & (((\inst4|lcd_data~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_state~q\,
	datab => \inst4|lcd_data~85_combout\,
	datac => \inst4|lcd_data~100_combout\,
	datad => \inst4|lcd_data~95_combout\,
	combout => \inst4|lcd_data~101_combout\);

-- Location: FF_X31_Y26_N11
\inst4|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(2));

-- Location: LCCOMB_X35_Y29_N12
\inst5|dataStorage[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataStorage[2]~2_combout\ = !\inst4|lcd_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|lcd_data\(2),
	combout => \inst5|dataStorage[2]~2_combout\);

-- Location: FF_X35_Y29_N13
\inst5|dataStorage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|dataStorage[2]~2_combout\,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(2));

-- Location: LCCOMB_X36_Y29_N26
\inst5|addressStorage~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|addressStorage~3_combout\ = \inst4|lcd_posX\(2) $ (\inst4|lcd_posY\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|lcd_posX\(2),
	datad => \inst4|lcd_posY\(1),
	combout => \inst5|addressStorage~3_combout\);

-- Location: FF_X36_Y29_N27
\inst5|addressStorage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|addressStorage~3_combout\,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(2));

-- Location: LCCOMB_X36_Y29_N24
\inst5|dataOut[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[2]~27_combout\ = (\inst5|state.sendingAddress~q\ & (((\inst5|addressStorage\(2))))) # (!\inst5|state.sendingAddress~q\ & (!\inst5|dataStorage\(2) & ((\inst5|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataStorage\(2),
	datab => \inst5|state.sendingAddress~q\,
	datac => \inst5|addressStorage\(2),
	datad => \inst5|state.sendingData~q\,
	combout => \inst5|dataOut[2]~27_combout\);

-- Location: LCCOMB_X40_Y32_N16
\inst5|dataOut[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[5]~9_combout\ = (!\inst5|state.createChar5~q\ & !\inst5|state.createChar4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar5~q\,
	datad => \inst5|state.createChar4~q\,
	combout => \inst5|dataOut[5]~9_combout\);

-- Location: LCCOMB_X40_Y32_N22
\inst5|dataOut[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[2]~28_combout\ = (!\inst5|state.init6~q\ & (((!\inst5|state.createChar3~q\ & \inst5|dataOut[5]~9_combout\)) # (!\inst5|Equal8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init6~q\,
	datab => \inst5|state.createChar3~q\,
	datac => \inst5|Equal8~10_combout\,
	datad => \inst5|dataOut[5]~9_combout\,
	combout => \inst5|dataOut[2]~28_combout\);

-- Location: LCCOMB_X40_Y32_N20
\inst5|dataOut[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[2]~29_combout\ = ((\inst5|state.init5~q\) # ((\inst5|dataOut[4]~4_combout\ & \inst5|dataOut[2]~28_combout\))) # (!\inst5|dataOut[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[4]~4_combout\,
	datab => \inst5|dataOut[1]~5_combout\,
	datac => \inst5|dataOut[2]~28_combout\,
	datad => \inst5|state.init5~q\,
	combout => \inst5|dataOut[2]~29_combout\);

-- Location: LCCOMB_X40_Y32_N18
\inst5|dataOut[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[2]~30_combout\ = (\inst5|dataOut[5]~11_combout\ & (\inst5|dataOut[2]~27_combout\)) # (!\inst5|dataOut[5]~11_combout\ & (((\inst5|state.init0~q\ & \inst5|dataOut[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[2]~27_combout\,
	datab => \inst5|state.init0~q\,
	datac => \inst5|dataOut[5]~11_combout\,
	datad => \inst5|dataOut[2]~29_combout\,
	combout => \inst5|dataOut[2]~30_combout\);

-- Location: LCCOMB_X39_Y29_N22
\inst5|dataOut[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[5]~40_combout\ = (\inst5|charCreationCounter\(3)) # (((!\inst5|state.createChar5~q\ & !\inst5|state.createChar4~q\)) # (!\inst5|Equal8~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(3),
	datab => \inst5|state.createChar5~q\,
	datac => \inst5|Equal8~9_combout\,
	datad => \inst5|state.createChar4~q\,
	combout => \inst5|dataOut[5]~40_combout\);

-- Location: LCCOMB_X39_Y29_N16
\inst5|dataOut[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[1]~32_combout\ = (\inst5|state.init0~q\ & (\inst5|dataOut[1]~8_combout\ & (\inst5|dataOut[5]~40_combout\ & !\inst5|dataOut[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init0~q\,
	datab => \inst5|dataOut[1]~8_combout\,
	datac => \inst5|dataOut[5]~40_combout\,
	datad => \inst5|dataOut[5]~11_combout\,
	combout => \inst5|dataOut[1]~32_combout\);

-- Location: LCCOMB_X34_Y27_N16
\inst4|lcd_data~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~102_combout\ = (!\inst4|lcd_data~59_combout\ & ((\inst4|data_1_storage\(3)) # ((\inst4|data_1_storage\(2) & !\inst4|lcd_data~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(2),
	datab => \inst4|data_1_storage\(3),
	datac => \inst4|lcd_data~83_combout\,
	datad => \inst4|lcd_data~59_combout\,
	combout => \inst4|lcd_data~102_combout\);

-- Location: LCCOMB_X31_Y27_N16
\inst4|lcd_data~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~103_combout\ = (\inst4|Equal23~0_combout\ & ((\inst4|Equal15~1_combout\) # ((\inst4|lcd_data~84_combout\ & \inst4|lcd_data~102_combout\)))) # (!\inst4|Equal23~0_combout\ & (((\inst4|lcd_data~84_combout\ & \inst4|lcd_data~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal23~0_combout\,
	datab => \inst4|Equal15~1_combout\,
	datac => \inst4|lcd_data~84_combout\,
	datad => \inst4|lcd_data~102_combout\,
	combout => \inst4|lcd_data~103_combout\);

-- Location: LCCOMB_X31_Y25_N28
\inst4|lcd_data~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~116_combout\ = (\inst4|lineCount\(1) & (\inst4|lcd_data~53_combout\ & ((\inst4|lcd_data~54_combout\) # (!\inst4|data_3_storage\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data~54_combout\,
	datac => \inst4|lcd_data~53_combout\,
	datad => \inst4|data_3_storage\(3),
	combout => \inst4|lcd_data~116_combout\);

-- Location: LCCOMB_X31_Y25_N26
\inst4|lcd_data~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~117_combout\ = (\inst4|data_3_storage\(2) & ((\inst4|data_3_storage\(0)) # (\inst4|data_3_storage\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(0),
	datac => \inst4|data_3_storage\(2),
	datad => \inst4|data_3_storage\(1),
	combout => \inst4|lcd_data~117_combout\);

-- Location: LCCOMB_X31_Y25_N8
\inst4|lcd_data~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~118_combout\ = (!\inst4|lineCount\(0) & (\inst4|lcd_data~116_combout\ & ((\inst4|lcd_data~117_combout\) # (\inst4|data_3_storage\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|lcd_data~116_combout\,
	datac => \inst4|lcd_data~117_combout\,
	datad => \inst4|data_3_storage\(3),
	combout => \inst4|lcd_data~118_combout\);

-- Location: LCCOMB_X30_Y27_N4
\inst4|lcd_data~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~114_combout\ = (\inst4|data_2_storage\(3)) # ((\inst4|data_2_storage\(2) & ((\inst4|data_2_storage\(0)) # (\inst4|data_2_storage\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(2),
	datab => \inst4|data_2_storage\(3),
	datac => \inst4|data_2_storage\(0),
	datad => \inst4|data_2_storage\(1),
	combout => \inst4|lcd_data~114_combout\);

-- Location: LCCOMB_X30_Y27_N22
\inst4|lcd_data~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~115_combout\ = (\inst4|lcd_data~56_combout\ & (!\inst4|LessThan11~0_combout\ & (\inst4|lcd_data~114_combout\ & \inst4|data_2_storage~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~56_combout\,
	datab => \inst4|LessThan11~0_combout\,
	datac => \inst4|lcd_data~114_combout\,
	datad => \inst4|data_2_storage~4_combout\,
	combout => \inst4|lcd_data~115_combout\);

-- Location: LCCOMB_X31_Y27_N2
\inst4|lcd_data~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~113_combout\ = (\inst4|lineCount\(1) & (((!\inst4|lineCount\(0) & \inst4|lcd_data~39_combout\)))) # (!\inst4|lineCount\(1) & ((\inst4|lineCount\(0) & ((\inst4|lcd_data~39_combout\))) # (!\inst4|lineCount\(0) & (\inst4|lcd_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data\(1),
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~39_combout\,
	combout => \inst4|lcd_data~113_combout\);

-- Location: LCCOMB_X31_Y27_N8
\inst4|lcd_data~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~119_combout\ = (\inst4|lcd_data~113_combout\) # ((\inst4|lcd_data~40_combout\ & ((\inst4|lcd_data~118_combout\) # (\inst4|lcd_data~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~118_combout\,
	datab => \inst4|lcd_data~115_combout\,
	datac => \inst4|lcd_data~40_combout\,
	datad => \inst4|lcd_data~113_combout\,
	combout => \inst4|lcd_data~119_combout\);

-- Location: LCCOMB_X31_Y29_N18
\inst4|lcd_data~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~145_combout\ = (\inst4|lcd_data~88_combout\ & ((\inst4|charCount\(2) & ((!\inst4|charCount\(1)) # (!\inst4|charCount\(3)))) # (!\inst4|charCount\(2) & ((\inst4|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|lcd_data~88_combout\,
	datac => \inst4|charCount\(2),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~145_combout\);

-- Location: LCCOMB_X31_Y27_N30
\inst4|lcd_data~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~111_combout\ = (\inst4|lcd_data~145_combout\) # ((!\inst4|charCount\(0) & (\inst4|Equal17~0_combout\ & !\inst4|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|Equal17~0_combout\,
	datac => \inst4|charCount\(1),
	datad => \inst4|lcd_data~145_combout\,
	combout => \inst4|lcd_data~111_combout\);

-- Location: LCCOMB_X31_Y28_N20
\inst4|lcd_data~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~104_combout\ = (\inst4|charCount\(3) & (\inst4|charCount\(0) $ (((!\inst4|charCount\(1)))))) # (!\inst4|charCount\(3) & (!\inst4|charCount\(0) & (!\inst4|charCount\(2) & \inst4|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~104_combout\);

-- Location: LCCOMB_X31_Y28_N30
\inst4|lcd_data~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~105_combout\ = (\inst4|charCount\(4) & (((\inst4|Equal17~0_combout\ & \inst4|lcd_data~64_combout\)))) # (!\inst4|charCount\(4) & ((\inst4|lcd_data~104_combout\) # ((\inst4|Equal17~0_combout\ & \inst4|lcd_data~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|lcd_data~104_combout\,
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|lcd_data~64_combout\,
	combout => \inst4|lcd_data~105_combout\);

-- Location: LCCOMB_X32_Y27_N26
\inst4|lcd_data~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~31_combout\ = (\inst4|charCount\(1) & (!\inst4|charCount\(0) & (!\inst4|charCount\(2) & !\inst4|charCount\(3)))) # (!\inst4|charCount\(1) & (((!\inst4|charCount\(0) & !\inst4|charCount\(2))) # (!\inst4|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~31_combout\);

-- Location: LCCOMB_X32_Y27_N28
\inst4|lcd_data~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~148_combout\ = (\inst4|lcd_data~31_combout\ & !\inst4|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|lcd_data~31_combout\,
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~148_combout\);

-- Location: LCCOMB_X31_Y27_N14
\inst4|lcd_data~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~106_combout\ = (\inst4|lineCount\(1) & (((\inst4|lineCount\(0)) # (\inst4|lcd_data~148_combout\)))) # (!\inst4|lineCount\(1) & (\inst4|lcd_data\(1) & (!\inst4|lineCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data\(1),
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~148_combout\,
	combout => \inst4|lcd_data~106_combout\);

-- Location: LCCOMB_X32_Y26_N0
\inst4|lcd_data~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~107_combout\ = (\inst4|charCount\(0) & ((\inst4|charCount\(3) & ((\inst4|charCount\(2)) # (\inst4|charCount\(1)))) # (!\inst4|charCount\(3) & (!\inst4|charCount\(2))))) # (!\inst4|charCount\(0) & (\inst4|charCount\(3) $ 
-- (((\inst4|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(0),
	combout => \inst4|lcd_data~107_combout\);

-- Location: LCCOMB_X32_Y26_N10
\inst4|lcd_data~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~108_combout\ = (\inst4|charCount\(4) & (\inst4|lcd_data~73_combout\)) # (!\inst4|charCount\(4) & ((\inst4|lcd_data~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(4),
	datac => \inst4|lcd_data~73_combout\,
	datad => \inst4|lcd_data~107_combout\,
	combout => \inst4|lcd_data~108_combout\);

-- Location: LCCOMB_X31_Y27_N24
\inst4|lcd_data~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~109_combout\ = (\inst4|lcd_data~106_combout\ & (((\inst4|lcd_data~108_combout\) # (!\inst4|lineCount\(0))))) # (!\inst4|lcd_data~106_combout\ & (\inst4|lcd_data~105_combout\ & (\inst4|lineCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~105_combout\,
	datab => \inst4|lcd_data~106_combout\,
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~108_combout\,
	combout => \inst4|lcd_data~109_combout\);

-- Location: LCCOMB_X31_Y27_N20
\inst4|lcd_data~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~112_combout\ = (\inst4|display_state~q\ & (!\inst4|lcd_data~33_combout\)) # (!\inst4|display_state~q\ & ((\inst4|lcd_data~33_combout\ & (\inst4|lcd_data~111_combout\)) # (!\inst4|lcd_data~33_combout\ & ((\inst4|lcd_data~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_state~q\,
	datab => \inst4|lcd_data~33_combout\,
	datac => \inst4|lcd_data~111_combout\,
	datad => \inst4|lcd_data~109_combout\,
	combout => \inst4|lcd_data~112_combout\);

-- Location: LCCOMB_X31_Y27_N0
\inst4|lcd_data~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~120_combout\ = (\inst4|display_state~q\ & ((\inst4|lcd_data~112_combout\ & ((\inst4|lcd_data~119_combout\))) # (!\inst4|lcd_data~112_combout\ & (\inst4|lcd_data~103_combout\)))) # (!\inst4|display_state~q\ & 
-- (((\inst4|lcd_data~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_state~q\,
	datab => \inst4|lcd_data~103_combout\,
	datac => \inst4|lcd_data~119_combout\,
	datad => \inst4|lcd_data~112_combout\,
	combout => \inst4|lcd_data~120_combout\);

-- Location: FF_X31_Y27_N1
\inst4|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(1));

-- Location: LCCOMB_X35_Y29_N10
\inst5|dataStorage[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataStorage[1]~3_combout\ = !\inst4|lcd_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|lcd_data\(1),
	combout => \inst5|dataStorage[1]~3_combout\);

-- Location: FF_X35_Y29_N11
\inst5|dataStorage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|dataStorage[1]~3_combout\,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(1));

-- Location: LCCOMB_X32_Y29_N2
\inst4|lcd_posX[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_posX[1]~feeder_combout\ = \inst4|charCount\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_posX[1]~feeder_combout\);

-- Location: FF_X32_Y29_N3
\inst4|lcd_posX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_posX[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posX\(1));

-- Location: FF_X36_Y29_N7
\inst5|addressStorage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|lcd_posX\(1),
	sload => VCC,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(1));

-- Location: LCCOMB_X36_Y29_N6
\inst5|dataOut[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[1]~31_combout\ = (\inst5|state.sendingAddress~q\ & (((\inst5|addressStorage\(1))))) # (!\inst5|state.sendingAddress~q\ & (!\inst5|dataStorage\(1) & ((\inst5|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataStorage\(1),
	datab => \inst5|state.sendingAddress~q\,
	datac => \inst5|addressStorage\(1),
	datad => \inst5|state.sendingData~q\,
	combout => \inst5|dataOut[1]~31_combout\);

-- Location: LCCOMB_X40_Y29_N12
\inst5|dataOut[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[1]~33_combout\ = (\inst5|dataOut[1]~32_combout\ & ((\inst5|dataOut[1]~10_combout\) # ((\inst5|dataOut[5]~11_combout\ & \inst5|dataOut[1]~31_combout\)))) # (!\inst5|dataOut[1]~32_combout\ & (((\inst5|dataOut[5]~11_combout\ & 
-- \inst5|dataOut[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[1]~32_combout\,
	datab => \inst5|dataOut[1]~10_combout\,
	datac => \inst5|dataOut[5]~11_combout\,
	datad => \inst5|dataOut[1]~31_combout\,
	combout => \inst5|dataOut[1]~33_combout\);

-- Location: LCCOMB_X30_Y27_N8
\inst4|lcd_data~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~135_combout\ = (\inst4|data_2_storage\(3)) # ((\inst4|data_2_storage\(1) & (\inst4|data_2_storage\(0))) # (!\inst4|data_2_storage\(1) & (!\inst4|data_2_storage\(0) & \inst4|data_2_storage\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(1),
	datab => \inst4|data_2_storage\(3),
	datac => \inst4|data_2_storage\(0),
	datad => \inst4|data_2_storage\(2),
	combout => \inst4|lcd_data~135_combout\);

-- Location: LCCOMB_X30_Y27_N14
\inst4|lcd_data~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~136_combout\ = (\inst4|lcd_data~96_combout\ & (\inst4|lcd_data~135_combout\ & (\inst4|LessThan3~0_combout\ & \inst4|data_2_storage~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~96_combout\,
	datab => \inst4|lcd_data~135_combout\,
	datac => \inst4|LessThan3~0_combout\,
	datad => \inst4|data_2_storage~4_combout\,
	combout => \inst4|lcd_data~136_combout\);

-- Location: LCCOMB_X31_Y25_N12
\inst4|lcd_data~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~138_combout\ = (\inst4|data_3_storage\(3)) # ((\inst4|data_3_storage\(1) & (\inst4|data_3_storage\(0))) # (!\inst4|data_3_storage\(1) & (!\inst4|data_3_storage\(0) & \inst4|data_3_storage\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(1),
	datab => \inst4|data_3_storage\(0),
	datac => \inst4|data_3_storage\(2),
	datad => \inst4|data_3_storage\(3),
	combout => \inst4|lcd_data~138_combout\);

-- Location: LCCOMB_X31_Y25_N18
\inst4|lcd_data~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~137_combout\ = (!\inst4|lineCount\(1) & \inst4|lcd_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datad => \inst4|lcd_data\(0),
	combout => \inst4|lcd_data~137_combout\);

-- Location: LCCOMB_X31_Y25_N10
\inst4|lcd_data~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~139_combout\ = (\inst4|lcd_data~137_combout\) # ((\inst4|lcd_data~138_combout\ & (\inst4|lcd_data~116_combout\ & \inst4|lcd_data~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~138_combout\,
	datab => \inst4|lcd_data~116_combout\,
	datac => \inst4|lcd_data~40_combout\,
	datad => \inst4|lcd_data~137_combout\,
	combout => \inst4|lcd_data~139_combout\);

-- Location: LCCOMB_X32_Y27_N16
\inst4|lcd_data~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~134_combout\ = (\inst4|lcd_data~59_combout\ & ((\inst4|lineCount\(0) & (!\inst4|charCount\(0) & !\inst4|lineCount\(1))) # (!\inst4|lineCount\(0) & ((\inst4|lineCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|lcd_data~59_combout\,
	datac => \inst4|charCount\(0),
	datad => \inst4|lineCount\(1),
	combout => \inst4|lcd_data~134_combout\);

-- Location: LCCOMB_X31_Y27_N18
\inst4|lcd_data~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~140_combout\ = (\inst4|lcd_data~136_combout\) # ((\inst4|lcd_data~134_combout\) # ((!\inst4|lineCount\(0) & \inst4|lcd_data~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~136_combout\,
	datab => \inst4|lineCount\(0),
	datac => \inst4|lcd_data~139_combout\,
	datad => \inst4|lcd_data~134_combout\,
	combout => \inst4|lcd_data~140_combout\);

-- Location: LCCOMB_X32_Y27_N4
\inst4|lcd_data~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~121_combout\ = (\inst4|charCount\(0) & (!\inst4|charCount\(3) & ((\inst4|charCount\(1)) # (\inst4|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~121_combout\);

-- Location: LCCOMB_X32_Y27_N18
\inst4|lcd_data~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~122_combout\ = (\inst4|lcd_data~121_combout\ & !\inst4|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|lcd_data~121_combout\,
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~122_combout\);

-- Location: LCCOMB_X32_Y27_N12
\inst4|lcd_data~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~125_combout\ = (\inst4|charCount\(2) & ((\inst4|charCount\(3) & (\inst4|charCount\(1))) # (!\inst4|charCount\(3) & ((\inst4|charCount\(0)))))) # (!\inst4|charCount\(2) & (\inst4|charCount\(1) & ((!\inst4|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~125_combout\);

-- Location: LCCOMB_X32_Y27_N22
\inst4|lcd_data~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~126_combout\ = (\inst4|charCount\(1) & (!\inst4|charCount\(4) & ((\inst4|lcd_data~125_combout\)))) # (!\inst4|charCount\(1) & ((\inst4|Equal17~0_combout\) # ((!\inst4|charCount\(4) & \inst4|lcd_data~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(4),
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|lcd_data~125_combout\,
	combout => \inst4|lcd_data~126_combout\);

-- Location: LCCOMB_X32_Y27_N24
\inst4|lcd_data~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~123_combout\ = (\inst4|charCount\(0) & (\inst4|lcd_data~89_combout\ & ((!\inst4|charCount\(4))))) # (!\inst4|charCount\(0) & ((\inst4|Equal17~0_combout\) # ((!\inst4|lcd_data~89_combout\ & !\inst4|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|lcd_data~89_combout\,
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~123_combout\);

-- Location: LCCOMB_X32_Y27_N6
\inst4|lcd_data~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~124_combout\ = (\inst4|lineCount\(0) & ((\inst4|lineCount\(1)) # ((\inst4|lcd_data~123_combout\)))) # (!\inst4|lineCount\(0) & (!\inst4|lineCount\(1) & (\inst4|lcd_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|lineCount\(1),
	datac => \inst4|lcd_data\(0),
	datad => \inst4|lcd_data~123_combout\,
	combout => \inst4|lcd_data~124_combout\);

-- Location: LCCOMB_X32_Y27_N8
\inst4|lcd_data~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~127_combout\ = (\inst4|lineCount\(1) & ((\inst4|lcd_data~124_combout\ & ((\inst4|lcd_data~126_combout\))) # (!\inst4|lcd_data~124_combout\ & (\inst4|lcd_data~122_combout\)))) # (!\inst4|lineCount\(1) & (((\inst4|lcd_data~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data~122_combout\,
	datac => \inst4|lcd_data~126_combout\,
	datad => \inst4|lcd_data~124_combout\,
	combout => \inst4|lcd_data~127_combout\);

-- Location: LCCOMB_X31_Y28_N4
\inst4|lcd_data~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~130_combout\ = (\inst4|charCount\(0) & ((\inst4|charCount\(2) & ((\inst4|charCount\(3)) # (!\inst4|charCount\(1)))) # (!\inst4|charCount\(2) & (!\inst4|charCount\(1) & \inst4|charCount\(3))))) # (!\inst4|charCount\(0) & 
-- ((\inst4|charCount\(1) $ (\inst4|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(1),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~130_combout\);

-- Location: LCCOMB_X31_Y28_N26
\inst4|lcd_data~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~131_combout\ = (\inst4|charCount\(0) & \inst4|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datac => \inst4|charCount\(1),
	combout => \inst4|lcd_data~131_combout\);

-- Location: LCCOMB_X31_Y28_N28
\inst4|lcd_data~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~132_combout\ = (\inst4|charCount\(4) & (((\inst4|Equal17~0_combout\ & !\inst4|lcd_data~131_combout\)))) # (!\inst4|charCount\(4) & ((\inst4|lcd_data~130_combout\) # ((\inst4|Equal17~0_combout\ & !\inst4|lcd_data~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|lcd_data~130_combout\,
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|lcd_data~131_combout\,
	combout => \inst4|lcd_data~132_combout\);

-- Location: LCCOMB_X34_Y27_N26
\inst4|lcd_data~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~128_combout\ = (\inst4|data_1_storage\(3)) # ((\inst4|data_1_storage\(0) & (\inst4|data_1_storage\(1))) # (!\inst4|data_1_storage\(0) & (!\inst4|data_1_storage\(1) & \inst4|data_1_storage\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(0),
	datab => \inst4|data_1_storage\(1),
	datac => \inst4|data_1_storage\(2),
	datad => \inst4|data_1_storage\(3),
	combout => \inst4|lcd_data~128_combout\);

-- Location: LCCOMB_X34_Y27_N0
\inst4|lcd_data~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~129_combout\ = (\inst4|lcd_data~59_combout\) # ((\inst4|lcd_data~40_combout\ & (\inst4|lcd_data~128_combout\ & \inst4|lcd_data~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~40_combout\,
	datab => \inst4|lcd_data~59_combout\,
	datac => \inst4|lcd_data~128_combout\,
	datad => \inst4|lcd_data~84_combout\,
	combout => \inst4|lcd_data~129_combout\);

-- Location: LCCOMB_X32_Y27_N10
\inst4|lcd_data~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~133_combout\ = (\inst4|lcd_data~33_combout\ & ((\inst4|display_state~q\ & ((\inst4|lcd_data~129_combout\))) # (!\inst4|display_state~q\ & (\inst4|lcd_data~132_combout\)))) # (!\inst4|lcd_data~33_combout\ & (\inst4|display_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~33_combout\,
	datab => \inst4|display_state~q\,
	datac => \inst4|lcd_data~132_combout\,
	datad => \inst4|lcd_data~129_combout\,
	combout => \inst4|lcd_data~133_combout\);

-- Location: LCCOMB_X32_Y27_N20
\inst4|lcd_data~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~141_combout\ = (\inst4|lcd_data~33_combout\ & (((\inst4|lcd_data~133_combout\)))) # (!\inst4|lcd_data~33_combout\ & ((\inst4|lcd_data~133_combout\ & (\inst4|lcd_data~140_combout\)) # (!\inst4|lcd_data~133_combout\ & 
-- ((\inst4|lcd_data~127_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~33_combout\,
	datab => \inst4|lcd_data~140_combout\,
	datac => \inst4|lcd_data~127_combout\,
	datad => \inst4|lcd_data~133_combout\,
	combout => \inst4|lcd_data~141_combout\);

-- Location: FF_X32_Y27_N21
\inst4|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(0));

-- Location: FF_X36_Y29_N31
\inst5|dataStorage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|lcd_data\(0),
	sload => VCC,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(0));

-- Location: FF_X32_Y29_N13
\inst4|lcd_posX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|charCount\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posX\(0));

-- Location: LCCOMB_X36_Y29_N20
\inst5|addressStorage[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|addressStorage[0]~feeder_combout\ = \inst4|lcd_posX\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|lcd_posX\(0),
	combout => \inst5|addressStorage[0]~feeder_combout\);

-- Location: FF_X36_Y29_N21
\inst5|addressStorage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|addressStorage[0]~feeder_combout\,
	ena => \inst5|process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(0));

-- Location: LCCOMB_X36_Y29_N30
\inst5|dataOut[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[0]~36_combout\ = (\inst5|state.sendingAddress~q\ & (((\inst5|addressStorage\(0))))) # (!\inst5|state.sendingAddress~q\ & (\inst5|state.sendingData~q\ & (\inst5|dataStorage\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingData~q\,
	datab => \inst5|state.sendingAddress~q\,
	datac => \inst5|dataStorage\(0),
	datad => \inst5|addressStorage\(0),
	combout => \inst5|dataOut[0]~36_combout\);

-- Location: LCCOMB_X40_Y29_N14
\inst5|dataOut[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[0]~34_combout\ = (!\inst5|state.createChar4~q\ & (((\inst5|charCreationCounter\(3)) # (!\inst5|Equal8~9_combout\)) # (!\inst5|state.createChar5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar4~q\,
	datab => \inst5|state.createChar5~q\,
	datac => \inst5|charCreationCounter\(3),
	datad => \inst5|Equal8~9_combout\,
	combout => \inst5|dataOut[0]~34_combout\);

-- Location: LCCOMB_X40_Y29_N4
\inst5|dataOut[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[0]~35_combout\ = (\inst5|state.init6~q\) # ((\inst5|dataOut[0]~34_combout\ & (!\inst5|state.init7~q\ & \inst5|dataOut[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init6~q\,
	datab => \inst5|dataOut[0]~34_combout\,
	datac => \inst5|state.init7~q\,
	datad => \inst5|dataOut[1]~8_combout\,
	combout => \inst5|dataOut[0]~35_combout\);

-- Location: LCCOMB_X40_Y29_N22
\inst5|dataOut[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[0]~37_combout\ = (\inst5|dataOut[0]~36_combout\ & ((\inst5|dataOut[5]~11_combout\) # ((\inst5|dataOut[0]~35_combout\ & \inst5|dataOut[6]~13_combout\)))) # (!\inst5|dataOut[0]~36_combout\ & (\inst5|dataOut[0]~35_combout\ & 
-- ((\inst5|dataOut[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[0]~36_combout\,
	datab => \inst5|dataOut[0]~35_combout\,
	datac => \inst5|dataOut[5]~11_combout\,
	datad => \inst5|dataOut[6]~13_combout\,
	combout => \inst5|dataOut[0]~37_combout\);

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_e <= \lcd_e~output_o\;

ww_motor_A1 <= \motor_A1~output_o\;

ww_motor_A2 <= \motor_A2~output_o\;

ww_motor_B1 <= \motor_B1~output_o\;

ww_motor_B2 <= \motor_B2~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;

us_2 <= \us_2~output_o\;

us_3 <= \us_3~output_o\;

us_1 <= \us_1~output_o\;
END structure;


