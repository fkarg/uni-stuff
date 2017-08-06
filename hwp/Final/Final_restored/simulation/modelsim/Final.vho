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

-- DATE "07/27/2017 15:28:18"

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

ENTITY 	data IS
    PORT (
	fetch : IN std_logic;
	data_out : BUFFER std_logic_vector(37 DOWNTO 0)
	);
END data;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[10]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[11]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[12]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[13]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[14]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[15]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[16]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[17]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[18]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[19]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[20]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[21]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[22]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[23]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[24]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[25]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[26]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[27]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[28]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[29]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[30]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[31]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[32]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[33]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[34]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[35]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[36]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[37]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fetch	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF data IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fetch : std_logic;
SIGNAL ww_data_out : std_logic_vector(37 DOWNTO 0);
SIGNAL \fetch~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \data_out[8]~output_o\ : std_logic;
SIGNAL \data_out[9]~output_o\ : std_logic;
SIGNAL \data_out[10]~output_o\ : std_logic;
SIGNAL \data_out[11]~output_o\ : std_logic;
SIGNAL \data_out[12]~output_o\ : std_logic;
SIGNAL \data_out[13]~output_o\ : std_logic;
SIGNAL \data_out[14]~output_o\ : std_logic;
SIGNAL \data_out[15]~output_o\ : std_logic;
SIGNAL \data_out[16]~output_o\ : std_logic;
SIGNAL \data_out[17]~output_o\ : std_logic;
SIGNAL \data_out[18]~output_o\ : std_logic;
SIGNAL \data_out[19]~output_o\ : std_logic;
SIGNAL \data_out[20]~output_o\ : std_logic;
SIGNAL \data_out[21]~output_o\ : std_logic;
SIGNAL \data_out[22]~output_o\ : std_logic;
SIGNAL \data_out[23]~output_o\ : std_logic;
SIGNAL \data_out[24]~output_o\ : std_logic;
SIGNAL \data_out[25]~output_o\ : std_logic;
SIGNAL \data_out[26]~output_o\ : std_logic;
SIGNAL \data_out[27]~output_o\ : std_logic;
SIGNAL \data_out[28]~output_o\ : std_logic;
SIGNAL \data_out[29]~output_o\ : std_logic;
SIGNAL \data_out[30]~output_o\ : std_logic;
SIGNAL \data_out[31]~output_o\ : std_logic;
SIGNAL \data_out[32]~output_o\ : std_logic;
SIGNAL \data_out[33]~output_o\ : std_logic;
SIGNAL \data_out[34]~output_o\ : std_logic;
SIGNAL \data_out[35]~output_o\ : std_logic;
SIGNAL \data_out[36]~output_o\ : std_logic;
SIGNAL \data_out[37]~output_o\ : std_logic;
SIGNAL \fetch~input_o\ : std_logic;
SIGNAL \fetch~inputclkctrl_outclk\ : std_logic;
SIGNAL \storage_index[0]~15_combout\ : std_logic;
SIGNAL \storage_index[1]~5_combout\ : std_logic;
SIGNAL \storage_index[1]~6\ : std_logic;
SIGNAL \storage_index[2]~7_combout\ : std_logic;
SIGNAL \storage_index[2]~8\ : std_logic;
SIGNAL \storage_index[3]~9_combout\ : std_logic;
SIGNAL \Mux37~4_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \storage_index[3]~10\ : std_logic;
SIGNAL \storage_index[4]~11_combout\ : std_logic;
SIGNAL \storage_index[4]~12\ : std_logic;
SIGNAL \storage_index[5]~13_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux37~5_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~4_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Mux35~5_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \Mux33~6_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \Mux33~7_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~4_combout\ : std_logic;
SIGNAL \Mux32~5_combout\ : std_logic;
SIGNAL \Mux32~6_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux35~6_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux33~5_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL storage_index : std_logic_vector(5 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_fetch <= fetch;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fetch~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fetch~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y0_N9
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~5_combout\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~4_combout\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~5_combout\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~5_combout\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~7_combout\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~6_combout\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~4_combout\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~5_combout\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\data_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~4_combout\,
	devoe => ww_devoe,
	o => \data_out[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\data_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~5_combout\,
	devoe => ww_devoe,
	o => \data_out[9]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\data_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~4_combout\,
	devoe => ww_devoe,
	o => \data_out[10]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\data_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~5_combout\,
	devoe => ww_devoe,
	o => \data_out[11]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\data_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~2_combout\,
	devoe => ww_devoe,
	o => \data_out[12]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\data_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~4_combout\,
	devoe => ww_devoe,
	o => \data_out[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\data_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~4_combout\,
	devoe => ww_devoe,
	o => \data_out[14]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\data_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~5_combout\,
	devoe => ww_devoe,
	o => \data_out[15]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\data_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~3_combout\,
	devoe => ww_devoe,
	o => \data_out[16]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\data_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => \data_out[17]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\data_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~3_combout\,
	devoe => ww_devoe,
	o => \data_out[18]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\data_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~4_combout\,
	devoe => ww_devoe,
	o => \data_out[19]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\data_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~6_combout\,
	devoe => ww_devoe,
	o => \data_out[20]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\data_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~5_combout\,
	devoe => ww_devoe,
	o => \data_out[21]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\data_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \data_out[22]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\data_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~3_combout\,
	devoe => ww_devoe,
	o => \data_out[23]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\data_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~3_combout\,
	devoe => ww_devoe,
	o => \data_out[24]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\data_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~5_combout\,
	devoe => ww_devoe,
	o => \data_out[25]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\data_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~3_combout\,
	devoe => ww_devoe,
	o => \data_out[26]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\data_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	devoe => ww_devoe,
	o => \data_out[27]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\data_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => \data_out[28]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\data_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~2_combout\,
	devoe => ww_devoe,
	o => \data_out[29]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\data_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => \data_out[30]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\data_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~4_combout\,
	devoe => ww_devoe,
	o => \data_out[31]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\data_out[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \data_out[32]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\data_out[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~3_combout\,
	devoe => ww_devoe,
	o => \data_out[33]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\data_out[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~5_combout\,
	devoe => ww_devoe,
	o => \data_out[34]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\data_out[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \data_out[35]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\data_out[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~3_combout\,
	devoe => ww_devoe,
	o => \data_out[36]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\data_out[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	devoe => ww_devoe,
	o => \data_out[37]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\fetch~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fetch,
	o => \fetch~input_o\);

-- Location: CLKCTRL_G2
\fetch~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fetch~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fetch~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y4_N22
\storage_index[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \storage_index[0]~15_combout\ = !storage_index(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => storage_index(0),
	combout => \storage_index[0]~15_combout\);

-- Location: FF_X31_Y4_N23
\storage_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fetch~inputclkctrl_outclk\,
	d => \storage_index[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => storage_index(0));

-- Location: LCCOMB_X31_Y4_N0
\storage_index[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \storage_index[1]~5_combout\ = (storage_index(0) & (storage_index(1) $ (VCC))) # (!storage_index(0) & (storage_index(1) & VCC))
-- \storage_index[1]~6\ = CARRY((storage_index(0) & storage_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datad => VCC,
	combout => \storage_index[1]~5_combout\,
	cout => \storage_index[1]~6\);

-- Location: FF_X31_Y4_N1
\storage_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fetch~inputclkctrl_outclk\,
	d => \storage_index[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => storage_index(1));

-- Location: LCCOMB_X31_Y4_N2
\storage_index[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \storage_index[2]~7_combout\ = (storage_index(2) & (!\storage_index[1]~6\)) # (!storage_index(2) & ((\storage_index[1]~6\) # (GND)))
-- \storage_index[2]~8\ = CARRY((!\storage_index[1]~6\) # (!storage_index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => storage_index(2),
	datad => VCC,
	cin => \storage_index[1]~6\,
	combout => \storage_index[2]~7_combout\,
	cout => \storage_index[2]~8\);

-- Location: FF_X31_Y4_N3
\storage_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fetch~inputclkctrl_outclk\,
	d => \storage_index[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => storage_index(2));

-- Location: LCCOMB_X31_Y4_N4
\storage_index[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \storage_index[3]~9_combout\ = (storage_index(3) & (\storage_index[2]~8\ $ (GND))) # (!storage_index(3) & (!\storage_index[2]~8\ & VCC))
-- \storage_index[3]~10\ = CARRY((storage_index(3) & !\storage_index[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => storage_index(3),
	datad => VCC,
	cin => \storage_index[2]~8\,
	combout => \storage_index[3]~9_combout\,
	cout => \storage_index[3]~10\);

-- Location: FF_X31_Y4_N5
\storage_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fetch~inputclkctrl_outclk\,
	d => \storage_index[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => storage_index(3));

-- Location: LCCOMB_X18_Y3_N28
\Mux37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~4_combout\ = (!storage_index(2) & (!storage_index(1) & !storage_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux37~4_combout\);

-- Location: LCCOMB_X21_Y1_N16
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (storage_index(2)) # ((storage_index(0) & (storage_index(1) & storage_index(3))) # (!storage_index(0) & ((storage_index(1)) # (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(2),
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X31_Y4_N6
\storage_index[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \storage_index[4]~11_combout\ = (storage_index(4) & (!\storage_index[3]~10\)) # (!storage_index(4) & ((\storage_index[3]~10\) # (GND)))
-- \storage_index[4]~12\ = CARRY((!\storage_index[3]~10\) # (!storage_index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datad => VCC,
	cin => \storage_index[3]~10\,
	combout => \storage_index[4]~11_combout\,
	cout => \storage_index[4]~12\);

-- Location: FF_X31_Y4_N7
\storage_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fetch~inputclkctrl_outclk\,
	d => \storage_index[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => storage_index(4));

-- Location: LCCOMB_X31_Y4_N8
\storage_index[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \storage_index[5]~13_combout\ = storage_index(5) $ (!\storage_index[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => storage_index(5),
	cin => \storage_index[4]~12\,
	combout => \storage_index[5]~13_combout\);

-- Location: FF_X31_Y4_N9
\storage_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fetch~inputclkctrl_outclk\,
	d => \storage_index[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => storage_index(5));

-- Location: LCCOMB_X21_Y1_N12
\Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (storage_index(1) & (storage_index(0) $ (((!storage_index(3) & storage_index(2)))))) # (!storage_index(1) & ((storage_index(0) & ((storage_index(2)))) # (!storage_index(0) & (storage_index(3) & !storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(2),
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X21_Y1_N14
\Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (storage_index(2) & (((storage_index(1) & !storage_index(3))))) # (!storage_index(2) & (storage_index(0) & (storage_index(1) $ (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(2),
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X21_Y1_N2
\Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (storage_index(5) & (((storage_index(4))))) # (!storage_index(5) & ((storage_index(4) & ((!\Mux37~1_combout\))) # (!storage_index(4) & (!\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => storage_index(5),
	datac => \Mux37~1_combout\,
	datad => storage_index(4),
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X21_Y1_N4
\Mux37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~5_combout\ = (storage_index(5) & ((\Mux37~3_combout\ & (\Mux37~4_combout\)) # (!\Mux37~3_combout\ & ((\Mux37~0_combout\))))) # (!storage_index(5) & (((\Mux37~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~4_combout\,
	datab => \Mux37~0_combout\,
	datac => storage_index(5),
	datad => \Mux37~3_combout\,
	combout => \Mux37~5_combout\);

-- Location: LCCOMB_X14_Y1_N14
\Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (storage_index(2) & (storage_index(0) $ (storage_index(1) $ (!storage_index(5))))) # (!storage_index(2) & (storage_index(1) & ((storage_index(5)) # (!storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(2),
	datad => storage_index(5),
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X14_Y1_N28
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (storage_index(0) & (!storage_index(1) & (storage_index(2) $ (storage_index(5))))) # (!storage_index(0) & (storage_index(1) & (!storage_index(2) & storage_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(2),
	datad => storage_index(5),
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X14_Y1_N24
\Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (!storage_index(3) & ((storage_index(4) & ((\Mux36~0_combout\))) # (!storage_index(4) & (!\Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(3),
	datab => \Mux36~1_combout\,
	datac => storage_index(4),
	datad => \Mux36~0_combout\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X14_Y1_N18
\Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (storage_index(0) & (!storage_index(4) & (!storage_index(1) & storage_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(4),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X14_Y1_N20
\Mux36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = (\Mux36~2_combout\) # ((storage_index(2) & \Mux36~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux36~2_combout\,
	datac => storage_index(2),
	datad => \Mux36~3_combout\,
	combout => \Mux36~4_combout\);

-- Location: LCCOMB_X17_Y3_N4
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (storage_index(5) & ((storage_index(2)) # ((storage_index(3)) # (!storage_index(0))))) # (!storage_index(5) & (storage_index(2) $ (((storage_index(0) & storage_index(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(5),
	datab => storage_index(2),
	datac => storage_index(0),
	datad => storage_index(3),
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X17_Y3_N8
\Mux35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~4_combout\ = (storage_index(5) & (!storage_index(2) & (!storage_index(0) & !storage_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(5),
	datab => storage_index(2),
	datac => storage_index(0),
	datad => storage_index(3),
	combout => \Mux35~4_combout\);

-- Location: LCCOMB_X17_Y3_N6
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (storage_index(5) & (storage_index(2) & (storage_index(0) $ (!storage_index(3))))) # (!storage_index(5) & (!storage_index(2) & (storage_index(0) $ (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(5),
	datab => storage_index(2),
	datac => storage_index(0),
	datad => storage_index(3),
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X17_Y3_N12
\Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (storage_index(2) & (storage_index(0) $ (((storage_index(5)) # (storage_index(3)))))) # (!storage_index(2) & ((storage_index(3)) # ((!storage_index(5) & storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(5),
	datab => storage_index(2),
	datac => storage_index(0),
	datad => storage_index(3),
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X17_Y3_N2
\Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (storage_index(4) & (((storage_index(1))))) # (!storage_index(4) & ((storage_index(1) & (\Mux35~1_combout\)) # (!storage_index(1) & ((!\Mux35~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~1_combout\,
	datab => storage_index(4),
	datac => storage_index(1),
	datad => \Mux35~2_combout\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X17_Y3_N14
\Mux35~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~5_combout\ = (storage_index(4) & ((\Mux35~3_combout\ & ((\Mux35~4_combout\))) # (!\Mux35~3_combout\ & (!\Mux35~0_combout\)))) # (!storage_index(4) & (((\Mux35~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~0_combout\,
	datab => \Mux35~4_combout\,
	datac => storage_index(4),
	datad => \Mux35~3_combout\,
	combout => \Mux35~5_combout\);

-- Location: LCCOMB_X31_Y4_N24
\Mux34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (!storage_index(3) & ((storage_index(5) & (!storage_index(2) & !storage_index(0))) # (!storage_index(5) & (storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(5),
	datab => storage_index(3),
	datac => storage_index(2),
	datad => storage_index(0),
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X31_Y4_N16
\Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (storage_index(5) & ((storage_index(2) & ((storage_index(3)) # (storage_index(0)))) # (!storage_index(2) & ((!storage_index(0)))))) # (!storage_index(5) & (storage_index(2) $ (((storage_index(3) & storage_index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(5),
	datab => storage_index(3),
	datac => storage_index(2),
	datad => storage_index(0),
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X31_Y4_N10
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (storage_index(3) & (storage_index(5) $ ((!storage_index(2))))) # (!storage_index(3) & (storage_index(5) & (!storage_index(2) & !storage_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(5),
	datab => storage_index(3),
	datac => storage_index(2),
	datad => storage_index(0),
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X31_Y4_N26
\Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (storage_index(4) & (((storage_index(1))))) # (!storage_index(4) & ((storage_index(1) & ((\Mux34~1_combout\))) # (!storage_index(1) & (!\Mux34~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux34~2_combout\,
	datac => storage_index(1),
	datad => \Mux34~1_combout\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X31_Y4_N20
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (storage_index(5) & (!storage_index(3) & (!storage_index(2)))) # (!storage_index(5) & (storage_index(2) & ((storage_index(3)) # (!storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(5),
	datab => storage_index(3),
	datac => storage_index(2),
	datad => storage_index(0),
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X31_Y4_N30
\Mux34~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = (storage_index(4) & ((\Mux34~3_combout\ & (\Mux34~4_combout\)) # (!\Mux34~3_combout\ & ((\Mux34~0_combout\))))) # (!storage_index(4) & (((\Mux34~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux34~4_combout\,
	datac => \Mux34~3_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux34~5_combout\);

-- Location: LCCOMB_X15_Y3_N6
\Mux33~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~6_combout\ = (storage_index(0) & ((storage_index(1) & ((storage_index(3)))) # (!storage_index(1) & (!storage_index(2))))) # (!storage_index(0) & (!storage_index(2) & (storage_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux33~6_combout\);

-- Location: LCCOMB_X15_Y3_N30
\Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (storage_index(1) & (storage_index(0) & (storage_index(2) $ (storage_index(3))))) # (!storage_index(1) & (((storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X15_Y3_N16
\Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (storage_index(2) & (((!storage_index(1))))) # (!storage_index(2) & ((storage_index(0)) # (storage_index(1) $ (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X15_Y3_N20
\Mux33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = (!storage_index(5) & ((storage_index(4) & (!\Mux33~3_combout\)) # (!storage_index(4) & ((\Mux33~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~3_combout\,
	datab => \Mux33~2_combout\,
	datac => storage_index(4),
	datad => storage_index(5),
	combout => \Mux33~4_combout\);

-- Location: LCCOMB_X15_Y3_N24
\Mux33~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~7_combout\ = (\Mux33~4_combout\) # ((!\Mux33~6_combout\ & (!storage_index(4) & storage_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~6_combout\,
	datab => \Mux33~4_combout\,
	datac => storage_index(4),
	datad => storage_index(5),
	combout => \Mux33~7_combout\);

-- Location: LCCOMB_X14_Y2_N2
\Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (storage_index(2) & ((storage_index(3) $ (storage_index(0))))) # (!storage_index(2) & ((storage_index(1) & ((!storage_index(0)))) # (!storage_index(1) & ((storage_index(3)) # (storage_index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(0),
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X14_Y2_N12
\Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (storage_index(3) & ((storage_index(2)) # (storage_index(1) $ (storage_index(0))))) # (!storage_index(3) & ((storage_index(0) & (storage_index(2))) # (!storage_index(0) & ((storage_index(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(0),
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X14_Y2_N28
\Mux32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~4_combout\ = (!storage_index(5) & ((storage_index(4) & ((\Mux32~2_combout\))) # (!storage_index(4) & (\Mux32~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux32~3_combout\,
	datac => storage_index(5),
	datad => \Mux32~2_combout\,
	combout => \Mux32~4_combout\);

-- Location: LCCOMB_X14_Y2_N18
\Mux32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~5_combout\ = (storage_index(1) & ((storage_index(3)) # ((storage_index(2) & storage_index(0))))) # (!storage_index(1) & (storage_index(2) $ (((storage_index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(0),
	combout => \Mux32~5_combout\);

-- Location: LCCOMB_X14_Y2_N10
\Mux32~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~6_combout\ = (\Mux32~4_combout\) # ((!storage_index(4) & (storage_index(5) & \Mux32~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux32~4_combout\,
	datac => storage_index(5),
	datad => \Mux32~5_combout\,
	combout => \Mux32~6_combout\);

-- Location: LCCOMB_X18_Y3_N10
\Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (storage_index(1) & (storage_index(0) $ (((!storage_index(3)) # (!storage_index(2)))))) # (!storage_index(1) & ((storage_index(0) & (!storage_index(2))) # (!storage_index(0) & ((storage_index(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X18_Y3_N20
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (storage_index(1)) # ((storage_index(0) & (!storage_index(2) & storage_index(3))) # (!storage_index(0) & (storage_index(2) & !storage_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X18_Y3_N12
\Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (storage_index(5) & (((storage_index(4))))) # (!storage_index(5) & ((storage_index(4) & ((\Mux31~1_combout\))) # (!storage_index(4) & (\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => storage_index(5),
	datac => \Mux31~1_combout\,
	datad => storage_index(4),
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X18_Y3_N18
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (storage_index(0) & (((storage_index(1))) # (!storage_index(2)))) # (!storage_index(0) & ((storage_index(2) & ((storage_index(3)) # (!storage_index(1)))) # (!storage_index(2) & (storage_index(1) $ (storage_index(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X18_Y3_N14
\Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\Mux31~3_combout\ & (((\Mux37~4_combout\) # (!storage_index(5))))) # (!\Mux31~3_combout\ & (\Mux31~0_combout\ & ((storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux31~0_combout\,
	datac => \Mux37~4_combout\,
	datad => storage_index(5),
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X16_Y1_N20
\Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (!storage_index(4) & (storage_index(0) & ((storage_index(1)) # (storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(5),
	datac => storage_index(4),
	datad => storage_index(0),
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X16_Y1_N8
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (storage_index(5) & (((!storage_index(4) & storage_index(0))))) # (!storage_index(5) & (storage_index(4) & ((storage_index(0)) # (!storage_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(5),
	datac => storage_index(4),
	datad => storage_index(0),
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X16_Y1_N2
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (storage_index(1) & ((storage_index(4)) # ((!storage_index(5) & storage_index(0))))) # (!storage_index(1) & ((storage_index(5)) # ((storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(5),
	datac => storage_index(4),
	datad => storage_index(0),
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X16_Y1_N16
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (storage_index(1) & (storage_index(4) $ (((!storage_index(5) & !storage_index(0)))))) # (!storage_index(1) & (!storage_index(4) & (storage_index(5) $ (storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(5),
	datac => storage_index(4),
	datad => storage_index(0),
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X16_Y1_N6
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (storage_index(3) & (((storage_index(2))))) # (!storage_index(3) & ((storage_index(2) & (!\Mux30~1_combout\)) # (!storage_index(2) & ((!\Mux30~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(3),
	datab => \Mux30~1_combout\,
	datac => storage_index(2),
	datad => \Mux30~2_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X16_Y1_N22
\Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (storage_index(3) & ((\Mux30~3_combout\ & (\Mux30~4_combout\)) # (!\Mux30~3_combout\ & ((\Mux30~0_combout\))))) # (!storage_index(3) & (((\Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(3),
	datab => \Mux30~4_combout\,
	datac => \Mux30~0_combout\,
	datad => \Mux30~3_combout\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X21_Y1_N18
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (storage_index(1) & (storage_index(2) $ (((!storage_index(3)) # (!storage_index(0)))))) # (!storage_index(1) & (storage_index(0) & (storage_index(3) & !storage_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(2),
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X21_Y1_N22
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (storage_index(1) & ((storage_index(3) & (!storage_index(0))) # (!storage_index(3) & ((storage_index(2)))))) # (!storage_index(1) & (storage_index(0) & ((storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(2),
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X21_Y1_N24
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (storage_index(0) & ((storage_index(2) & ((!storage_index(3)))) # (!storage_index(2) & (storage_index(1))))) # (!storage_index(0) & (!storage_index(1) & ((storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(2),
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X21_Y1_N28
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (storage_index(4) & (((storage_index(5)) # (\Mux29~1_combout\)))) # (!storage_index(4) & (\Mux29~2_combout\ & (!storage_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => storage_index(4),
	datac => storage_index(5),
	datad => \Mux29~1_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X21_Y1_N10
\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (storage_index(5) & ((\Mux29~3_combout\ & (\Mux37~4_combout\)) # (!\Mux29~3_combout\ & ((\Mux29~0_combout\))))) # (!storage_index(5) & (((\Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~4_combout\,
	datab => \Mux29~0_combout\,
	datac => storage_index(5),
	datad => \Mux29~3_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X15_Y3_N12
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (storage_index(0) & (storage_index(2) $ (((!storage_index(3)) # (!storage_index(1)))))) # (!storage_index(0) & ((storage_index(2) & ((!storage_index(3)) # (!storage_index(1)))) # (!storage_index(2) & ((storage_index(1)) # 
-- (storage_index(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X15_Y3_N2
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (storage_index(0) & (!storage_index(3) & (storage_index(2) $ (storage_index(1))))) # (!storage_index(0) & (storage_index(2) & (!storage_index(1) & storage_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X15_Y3_N26
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (storage_index(4) & (((storage_index(5)) # (!\Mux28~1_combout\)))) # (!storage_index(4) & (\Mux28~2_combout\ & ((!storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \Mux28~1_combout\,
	datac => storage_index(4),
	datad => storage_index(5),
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X15_Y3_N28
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (storage_index(0) & (storage_index(3) $ (((!storage_index(2) & !storage_index(1)))))) # (!storage_index(0) & (!storage_index(2) & (storage_index(1) & storage_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X18_Y3_N4
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (!storage_index(0) & (!storage_index(2) & (!storage_index(1) & !storage_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X15_Y3_N4
\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\Mux28~3_combout\ & (((\Mux28~4_combout\) # (!storage_index(5))))) # (!\Mux28~3_combout\ & (!\Mux28~0_combout\ & ((storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux28~4_combout\,
	datad => storage_index(5),
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X14_Y1_N10
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!storage_index(2) & ((storage_index(0) & (!storage_index(4) & !storage_index(3))) # (!storage_index(0) & (storage_index(4) $ (storage_index(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(4),
	datac => storage_index(2),
	datad => storage_index(3),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X14_Y1_N4
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (storage_index(0) & (((storage_index(2) & !storage_index(3))))) # (!storage_index(0) & (!storage_index(4) & ((storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(4),
	datac => storage_index(2),
	datad => storage_index(3),
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X14_Y1_N6
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (storage_index(1) & ((storage_index(5) & (\Mux27~0_combout\)) # (!storage_index(5) & ((\Mux27~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \Mux27~1_combout\,
	datac => storage_index(1),
	datad => storage_index(5),
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X14_Y1_N0
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (storage_index(4) & (((!storage_index(0) & !storage_index(3))) # (!storage_index(2)))) # (!storage_index(4) & ((storage_index(0)) # ((storage_index(2)) # (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(4),
	datac => storage_index(2),
	datad => storage_index(3),
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X14_Y1_N30
\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Mux27~2_combout\) # ((!\Mux27~3_combout\ & (!storage_index(1) & !storage_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \Mux27~3_combout\,
	datac => storage_index(1),
	datad => storage_index(5),
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X30_Y1_N12
\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (!storage_index(4) & (storage_index(3) $ (((!storage_index(2) & storage_index(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X30_Y1_N28
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!storage_index(2) & ((storage_index(4) & (!storage_index(1) & !storage_index(3))) # (!storage_index(4) & (storage_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X30_Y1_N22
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (storage_index(2) & (((!storage_index(3)) # (!storage_index(1))))) # (!storage_index(2) & (storage_index(1) & ((storage_index(4)) # (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X30_Y1_N24
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (storage_index(2) & (storage_index(1) $ (storage_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(4),
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X30_Y1_N14
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (storage_index(0) & ((\Mux26~1_combout\) # ((storage_index(5))))) # (!storage_index(0) & (((\Mux26~2_combout\ & !storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux26~2_combout\,
	datac => storage_index(0),
	datad => storage_index(5),
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X30_Y1_N6
\Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux26~3_combout\ & ((\Mux26~4_combout\) # ((!storage_index(5))))) # (!\Mux26~3_combout\ & (((\Mux26~0_combout\ & storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~4_combout\,
	datab => \Mux26~0_combout\,
	datac => \Mux26~3_combout\,
	datad => storage_index(5),
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X14_Y4_N22
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (storage_index(4)) # ((storage_index(5) & ((!storage_index(3)) # (!storage_index(0)))) # (!storage_index(5) & ((storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(4),
	datac => storage_index(5),
	datad => storage_index(3),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X14_Y4_N24
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (storage_index(0) & (!storage_index(5) & ((!storage_index(3)) # (!storage_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(4),
	datac => storage_index(5),
	datad => storage_index(3),
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X14_Y4_N26
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (storage_index(1) & (((\Mux25~0_combout\ & \Mux25~1_combout\)))) # (!storage_index(1) & (!\Mux25~0_combout\ & (storage_index(2) $ (!\Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => \Mux25~0_combout\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X14_Y4_N30
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (storage_index(0) & storage_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datac => storage_index(2),
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X14_Y4_N18
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (storage_index(5) & (!storage_index(3) & (storage_index(0) $ (storage_index(2))))) # (!storage_index(5) & (!storage_index(0) & (!storage_index(2) & storage_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(5),
	datad => storage_index(3),
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X14_Y4_N8
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (storage_index(1) & !storage_index(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datac => storage_index(4),
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X14_Y4_N20
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (storage_index(1) & (storage_index(4) & (!storage_index(5) & !storage_index(3)))) # (!storage_index(1) & (!storage_index(4) & (storage_index(5) & storage_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(4),
	datac => storage_index(5),
	datad => storage_index(3),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X14_Y4_N4
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\Mux24~3_combout\ & ((\Mux24~0_combout\) # ((\Mux24~1_combout\ & \Mux24~2_combout\)))) # (!\Mux24~3_combout\ & (\Mux24~1_combout\ & (\Mux24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux24~2_combout\,
	datad => \Mux24~0_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X17_Y3_N10
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (storage_index(2) & (!storage_index(5) & (storage_index(1) $ (storage_index(3))))) # (!storage_index(2) & (!storage_index(1) & (storage_index(5) & !storage_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(5),
	datad => storage_index(3),
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X17_Y3_N26
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (!storage_index(2) & ((storage_index(1) & (!storage_index(5) & storage_index(3))) # (!storage_index(1) & (storage_index(5) & !storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(5),
	datad => storage_index(3),
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X17_Y3_N16
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (storage_index(2) & (!storage_index(5) & ((storage_index(3)) # (!storage_index(1))))) # (!storage_index(2) & (storage_index(1) & (storage_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(5),
	datad => storage_index(3),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X17_Y3_N20
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (!storage_index(4) & ((storage_index(0) & ((\Mux23~0_combout\))) # (!storage_index(0) & (\Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => storage_index(4),
	datac => storage_index(0),
	datad => \Mux23~0_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X17_Y3_N24
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux23~2_combout\) # ((\Mux23~3_combout\ & (storage_index(4) & storage_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => storage_index(4),
	datac => storage_index(0),
	datad => \Mux23~2_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X31_Y1_N12
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (storage_index(4) & (!storage_index(1) & (storage_index(2) $ (!storage_index(0))))) # (!storage_index(4) & (storage_index(1) & ((storage_index(2)) # (!storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => storage_index(2),
	datac => storage_index(0),
	datad => storage_index(1),
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X31_Y1_N18
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (storage_index(2) & (storage_index(0) & (storage_index(4) $ (storage_index(1))))) # (!storage_index(2) & (storage_index(4) $ (((!storage_index(0) & storage_index(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => storage_index(2),
	datac => storage_index(0),
	datad => storage_index(1),
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X31_Y1_N22
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (storage_index(3) & (((storage_index(5)) # (\Mux22~1_combout\)))) # (!storage_index(3) & (!\Mux22~2_combout\ & (!storage_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => storage_index(3),
	datac => storage_index(5),
	datad => \Mux22~1_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X31_Y1_N20
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (!storage_index(4) & (storage_index(0) & (storage_index(2) $ (!storage_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => storage_index(2),
	datac => storage_index(0),
	datad => storage_index(1),
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X31_Y1_N28
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (storage_index(4) & (!storage_index(2) & (!storage_index(0) & !storage_index(1)))) # (!storage_index(4) & ((storage_index(2) & (!storage_index(0))) # (!storage_index(2) & ((storage_index(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => storage_index(2),
	datac => storage_index(0),
	datad => storage_index(1),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X31_Y1_N30
\Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux22~3_combout\ & ((\Mux22~4_combout\) # ((!storage_index(5))))) # (!\Mux22~3_combout\ & (((storage_index(5) & \Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datab => \Mux22~4_combout\,
	datac => storage_index(5),
	datad => \Mux22~0_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X30_Y3_N6
\Mux35~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~6_combout\ = (!storage_index(0) & (!storage_index(2) & !storage_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datad => storage_index(3),
	combout => \Mux35~6_combout\);

-- Location: LCCOMB_X30_Y3_N22
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (storage_index(0) & (!storage_index(2) & ((!storage_index(3)) # (!storage_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X30_Y3_N16
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (storage_index(0) & (((storage_index(1) & !storage_index(3))) # (!storage_index(2)))) # (!storage_index(0) & ((storage_index(2)) # (storage_index(1) $ (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X30_Y3_N0
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (storage_index(5) & (!storage_index(4) & (!\Mux21~1_combout\))) # (!storage_index(5) & ((storage_index(4)) # ((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(5),
	datab => storage_index(4),
	datac => \Mux21~1_combout\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X30_Y3_N28
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux21~2_combout\) # ((\Mux35~6_combout\ & storage_index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~6_combout\,
	datab => storage_index(4),
	datad => \Mux21~2_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X30_Y3_N12
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (storage_index(0) & ((storage_index(2) & (!storage_index(1))) # (!storage_index(2) & (storage_index(1) & !storage_index(3))))) # (!storage_index(0) & (storage_index(1) & ((!storage_index(3)) # (!storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X30_Y3_N10
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (storage_index(0) & (storage_index(2) & ((storage_index(1)) # (storage_index(3))))) # (!storage_index(0) & ((storage_index(3) & ((storage_index(1)))) # (!storage_index(3) & (storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X30_Y3_N4
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (storage_index(4) & (((storage_index(5))))) # (!storage_index(4) & ((storage_index(5) & (\Mux20~1_combout\)) # (!storage_index(5) & ((\Mux20~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => storage_index(4),
	datac => storage_index(5),
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X30_Y3_N2
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = storage_index(1) $ (((storage_index(0) & (!storage_index(2) & storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X30_Y3_N14
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (storage_index(4) & ((\Mux20~3_combout\ & (\Mux35~6_combout\)) # (!\Mux20~3_combout\ & ((!\Mux20~0_combout\))))) # (!storage_index(4) & (((\Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~6_combout\,
	datab => storage_index(4),
	datac => \Mux20~3_combout\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X17_Y3_N30
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (storage_index(3) & ((storage_index(1) & ((!storage_index(5)))) # (!storage_index(1) & (storage_index(2))))) # (!storage_index(3) & (((!storage_index(2) & storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(5),
	datad => storage_index(3),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X17_Y3_N0
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (storage_index(2)) # ((storage_index(5)) # (storage_index(1) $ (storage_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(5),
	datad => storage_index(3),
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X17_Y3_N18
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (!storage_index(4) & ((storage_index(0) & (\Mux19~0_combout\)) # (!storage_index(0) & ((!\Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => storage_index(4),
	datac => storage_index(0),
	datad => \Mux19~1_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X17_Y3_N28
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux19~2_combout\) # ((\Mux23~3_combout\ & (storage_index(4) & storage_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => storage_index(4),
	datac => storage_index(0),
	datad => \Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X31_Y1_N0
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (storage_index(2) & (storage_index(1) $ ((storage_index(3))))) # (!storage_index(2) & (storage_index(1) & (storage_index(3) & !storage_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(3),
	datac => storage_index(4),
	datad => storage_index(2),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X31_Y1_N10
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (storage_index(2)) # ((storage_index(1) & ((storage_index(4)) # (!storage_index(3)))) # (!storage_index(1) & (storage_index(3) $ (storage_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(3),
	datac => storage_index(4),
	datad => storage_index(2),
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X31_Y1_N4
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (!storage_index(5) & ((storage_index(0) & (\Mux18~0_combout\)) # (!storage_index(0) & ((!\Mux18~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => \Mux18~0_combout\,
	datac => storage_index(5),
	datad => \Mux18~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X31_Y1_N6
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (storage_index(1)) # ((storage_index(3) & ((storage_index(4)) # (!storage_index(2)))) # (!storage_index(3) & ((storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(3),
	datac => storage_index(4),
	datad => storage_index(2),
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X31_Y1_N16
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux18~2_combout\) # ((storage_index(0) & (storage_index(5) & !\Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => \Mux18~2_combout\,
	datac => storage_index(5),
	datad => \Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X14_Y1_N26
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (storage_index(0) & (!storage_index(1) & (!storage_index(2)))) # (!storage_index(0) & ((storage_index(1) & (!storage_index(2) & !storage_index(3))) # (!storage_index(1) & ((storage_index(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(2),
	datad => storage_index(3),
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X14_Y1_N16
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (storage_index(0) & (storage_index(3) & (storage_index(1) $ (!storage_index(2))))) # (!storage_index(0) & (storage_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(2),
	datad => storage_index(3),
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X14_Y1_N12
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (!storage_index(5) & ((storage_index(4) & ((\Mux17~2_combout\))) # (!storage_index(4) & (\Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \Mux17~2_combout\,
	datac => storage_index(4),
	datad => storage_index(5),
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X14_Y1_N2
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (storage_index(1) & (storage_index(2) & ((storage_index(0)) # (storage_index(3))))) # (!storage_index(1) & (!storage_index(0) & ((storage_index(2)) # (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(2),
	datad => storage_index(3),
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X14_Y1_N8
\Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux17~4_combout\) # ((\Mux17~5_combout\ & (!storage_index(4) & storage_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux17~5_combout\,
	datac => storage_index(4),
	datad => storage_index(5),
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X31_Y3_N24
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (!storage_index(5) & ((storage_index(2) & (!storage_index(1) & !storage_index(0))) # (!storage_index(2) & (storage_index(1) & storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(0),
	datad => storage_index(5),
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X31_Y3_N30
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (storage_index(1) & (!storage_index(0) & (storage_index(2) $ (storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(0),
	datad => storage_index(5),
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X31_Y3_N0
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = storage_index(1) $ (((storage_index(5) & ((storage_index(0)))) # (!storage_index(5) & (storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(0),
	datad => storage_index(5),
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X31_Y3_N2
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (storage_index(3) & ((\Mux16~1_combout\) # ((storage_index(4))))) # (!storage_index(3) & (((!storage_index(4) & !\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => storage_index(3),
	datac => storage_index(4),
	datad => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X31_Y3_N28
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (storage_index(1) & (!storage_index(2) & (!storage_index(0) & !storage_index(5)))) # (!storage_index(1) & (storage_index(0) & (storage_index(2) $ (storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(0),
	datad => storage_index(5),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X31_Y3_N14
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux16~3_combout\ & ((\Mux16~4_combout\) # ((!storage_index(4))))) # (!\Mux16~3_combout\ & (((storage_index(4) & \Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \Mux16~3_combout\,
	datac => storage_index(4),
	datad => \Mux16~0_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X30_Y3_N20
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (storage_index(0) & ((storage_index(2) & ((storage_index(1)) # (storage_index(3)))) # (!storage_index(2) & ((!storage_index(3)) # (!storage_index(1)))))) # (!storage_index(0) & (storage_index(3) $ (((storage_index(2) & 
-- !storage_index(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X30_Y3_N8
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (storage_index(0) & ((storage_index(1) $ (!storage_index(3))))) # (!storage_index(0) & ((storage_index(1) & ((!storage_index(3)))) # (!storage_index(1) & ((storage_index(2)) # (storage_index(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X30_Y3_N18
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (storage_index(4) & (storage_index(5))) # (!storage_index(4) & ((\Mux15~2_combout\) # (storage_index(5) $ (!storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(5),
	datab => storage_index(4),
	datac => \Mux15~2_combout\,
	datad => storage_index(2),
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X30_Y3_N30
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (storage_index(4) & ((\Mux15~3_combout\ & (\Mux35~6_combout\)) # (!\Mux15~3_combout\ & ((\Mux15~0_combout\))))) # (!storage_index(4) & (((\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~6_combout\,
	datab => \Mux15~0_combout\,
	datac => storage_index(4),
	datad => \Mux15~3_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X31_Y4_N18
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (storage_index(1) & ((storage_index(3) & ((storage_index(5)) # (!storage_index(4)))) # (!storage_index(3) & ((storage_index(4)))))) # (!storage_index(1) & (storage_index(3) & ((storage_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(3),
	datac => storage_index(5),
	datad => storage_index(4),
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X31_Y4_N12
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (storage_index(0) & (((storage_index(2) & !\Mux14~1_combout\)))) # (!storage_index(0) & ((storage_index(5)) # ((storage_index(2) & \Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(5),
	datab => storage_index(0),
	datac => storage_index(2),
	datad => \Mux14~1_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X31_Y4_N28
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (storage_index(4) & ((storage_index(5)) # ((!storage_index(1) & !storage_index(3))))) # (!storage_index(4) & (storage_index(1) $ ((storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(3),
	datac => storage_index(5),
	datad => storage_index(4),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X31_Y4_N14
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\ & (\Mux14~0_combout\ $ (((\Mux14~1_combout\) # (storage_index(5)))))) # (!\Mux14~2_combout\ & (!\Mux14~1_combout\ & (storage_index(5) & \Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux14~1_combout\,
	datac => storage_index(5),
	datad => \Mux14~0_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X31_Y1_N8
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (storage_index(4) & (((storage_index(5)) # (storage_index(1))))) # (!storage_index(4) & (!storage_index(0) & ((storage_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(5),
	datac => storage_index(4),
	datad => storage_index(1),
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X31_Y1_N2
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (storage_index(4) & (storage_index(0) $ (((storage_index(5) & !storage_index(1)))))) # (!storage_index(4) & ((storage_index(0) & ((!storage_index(1)))) # (!storage_index(0) & (storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(5),
	datac => storage_index(4),
	datad => storage_index(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X31_Y1_N26
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (storage_index(4) & ((\Mux13~0_combout\ & (!\Mux13~1_combout\ & storage_index(2))) # (!\Mux13~0_combout\ & ((!storage_index(2)))))) # (!storage_index(4) & (\Mux13~0_combout\ $ (((storage_index(2)) # (!\Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux13~0_combout\,
	datac => \Mux13~1_combout\,
	datad => storage_index(2),
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X31_Y1_N24
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~2_combout\ & (storage_index(3) $ (((storage_index(4)) # (!\Mux13~1_combout\))))) # (!\Mux13~2_combout\ & (storage_index(4) & (!\Mux13~1_combout\ & storage_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux13~1_combout\,
	datac => storage_index(3),
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X14_Y2_N20
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (storage_index(2) & ((storage_index(1)) # ((storage_index(0)) # (!storage_index(3))))) # (!storage_index(2) & (storage_index(1) & ((storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(0),
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X14_Y2_N6
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (storage_index(2) & (storage_index(1))) # (!storage_index(2) & ((storage_index(1) & ((storage_index(3)) # (storage_index(0)))) # (!storage_index(1) & (storage_index(3) & storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(0),
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X14_Y2_N26
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (storage_index(4) & (((storage_index(5)) # (\Mux12~1_combout\)))) # (!storage_index(4) & (!\Mux12~2_combout\ & (!storage_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux12~2_combout\,
	datac => storage_index(5),
	datad => \Mux12~1_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X14_Y2_N8
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (!storage_index(2) & (!storage_index(3) & (storage_index(1) $ (storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(0),
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X14_Y2_N0
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (storage_index(0) & (storage_index(2) $ (((!storage_index(1) & !storage_index(3)))))) # (!storage_index(0) & (!storage_index(1) & ((storage_index(2)) # (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(0),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X14_Y2_N30
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~3_combout\ & ((\Mux12~4_combout\) # ((!storage_index(5))))) # (!\Mux12~3_combout\ & (((storage_index(5) & \Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~3_combout\,
	datab => \Mux12~4_combout\,
	datac => storage_index(5),
	datad => \Mux12~0_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X14_Y4_N12
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (storage_index(0) & (!storage_index(1))) # (!storage_index(0) & ((storage_index(3) & (!storage_index(1))) # (!storage_index(3) & ((storage_index(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(0),
	datad => storage_index(3),
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X14_Y4_N10
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (storage_index(3) & (storage_index(1) $ (((!storage_index(2) & !storage_index(0)))))) # (!storage_index(3) & (((storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(0),
	datad => storage_index(3),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X14_Y4_N14
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (!storage_index(5) & ((storage_index(4) & (!\Mux11~1_combout\)) # (!storage_index(4) & ((!\Mux11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => storage_index(4),
	datac => storage_index(5),
	datad => \Mux11~0_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X14_Y4_N16
\Mux33~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~5_combout\ = (!storage_index(4) & storage_index(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => storage_index(4),
	datac => storage_index(5),
	combout => \Mux33~5_combout\);

-- Location: LCCOMB_X14_Y4_N28
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux11~2_combout\) # ((\Mux33~5_combout\ & ((\Mux24~3_combout\) # (!storage_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => \Mux11~2_combout\,
	datac => \Mux24~3_combout\,
	datad => \Mux33~5_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X15_Y3_N22
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (storage_index(2) & (((storage_index(1)) # (storage_index(3))) # (!storage_index(0)))) # (!storage_index(2) & (storage_index(0) $ (storage_index(1) $ (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X15_Y3_N10
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (storage_index(0) & ((storage_index(1) $ (!storage_index(3))) # (!storage_index(2)))) # (!storage_index(0) & ((storage_index(2) & ((!storage_index(3)) # (!storage_index(1)))) # (!storage_index(2) & ((storage_index(1)) # 
-- (storage_index(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X15_Y3_N0
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (storage_index(2) & (!storage_index(1) & (storage_index(0) $ (storage_index(3))))) # (!storage_index(2) & (storage_index(0) & ((storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X15_Y3_N8
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (storage_index(4) & (((storage_index(5)) # (!\Mux10~1_combout\)))) # (!storage_index(4) & (\Mux10~2_combout\ & ((!storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux10~1_combout\,
	datac => storage_index(4),
	datad => storage_index(5),
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X15_Y3_N14
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\ & (((\Mux28~4_combout\) # (!storage_index(5))))) # (!\Mux10~3_combout\ & (\Mux10~0_combout\ & ((storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux28~4_combout\,
	datac => \Mux10~3_combout\,
	datad => storage_index(5),
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X21_Y1_N30
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (storage_index(1) & (storage_index(0) & ((storage_index(2))))) # (!storage_index(1) & ((storage_index(2)) # (storage_index(0) $ (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(2),
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X21_Y1_N8
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (storage_index(0) & (!storage_index(1) & ((!storage_index(2))))) # (!storage_index(0) & ((storage_index(1) & ((!storage_index(2)) # (!storage_index(3)))) # (!storage_index(1) & (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(2),
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X21_Y1_N6
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (storage_index(5) & (((storage_index(4))) # (!\Mux9~1_combout\))) # (!storage_index(5) & (((!\Mux9~2_combout\ & !storage_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux9~2_combout\,
	datac => storage_index(5),
	datad => storage_index(4),
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X21_Y1_N0
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (storage_index(1) & ((storage_index(2)) # (storage_index(0) $ (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X21_Y1_N20
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux9~3_combout\ & (((\Mux37~4_combout\)) # (!storage_index(4)))) # (!\Mux9~3_combout\ & (storage_index(4) & ((!\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => storage_index(4),
	datac => \Mux37~4_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X30_Y1_N10
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (storage_index(3)) # ((storage_index(2)) # ((storage_index(1) & storage_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(3),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(0),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X30_Y1_N4
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (storage_index(1) & ((storage_index(3) $ (!storage_index(0))) # (!storage_index(2)))) # (!storage_index(1) & ((storage_index(3)) # (storage_index(2) $ (storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(3),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(0),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X30_Y1_N16
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (storage_index(2)) # ((storage_index(3) & ((storage_index(1)) # (!storage_index(0)))) # (!storage_index(3) & (storage_index(1) $ (storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(3),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(0),
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X30_Y1_N30
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (storage_index(5) & (storage_index(4))) # (!storage_index(5) & ((\Mux8~3_combout\) # (storage_index(4) $ (!storage_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux8~3_combout\,
	datac => storage_index(1),
	datad => storage_index(5),
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X30_Y1_N0
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux8~4_combout\ & (((!storage_index(5))) # (!\Mux8~1_combout\))) # (!\Mux8~4_combout\ & (((\Mux8~0_combout\ & storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Mux8~0_combout\,
	datac => \Mux8~4_combout\,
	datad => storage_index(5),
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X18_Y3_N2
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (storage_index(1) & ((storage_index(3)) # (storage_index(0) $ (!storage_index(2))))) # (!storage_index(1) & ((storage_index(0)) # ((storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X18_Y3_N8
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (storage_index(4) & (((\Mux37~4_combout\ & storage_index(5))))) # (!storage_index(4) & ((\Mux7~0_combout\) # ((storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux7~0_combout\,
	datac => \Mux37~4_combout\,
	datad => storage_index(5),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X18_Y3_N26
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~1_combout\) # ((storage_index(4) & (!\Mux28~4_combout\ & !storage_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux28~4_combout\,
	datac => \Mux7~1_combout\,
	datad => storage_index(5),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X14_Y2_N14
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (storage_index(2) & ((storage_index(1) & ((storage_index(3)) # (storage_index(0)))) # (!storage_index(1) & (!storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(0),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X14_Y2_N16
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ((storage_index(2) & storage_index(3))) # (!storage_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(3),
	datac => storage_index(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X14_Y2_N4
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (storage_index(4) & (((storage_index(5))))) # (!storage_index(4) & ((storage_index(5) & ((\Mux6~0_combout\))) # (!storage_index(5) & (!\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux6~1_combout\,
	datac => storage_index(5),
	datad => \Mux6~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X14_Y2_N22
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (!storage_index(2) & (storage_index(1) & (!storage_index(3) & !storage_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(3),
	datad => storage_index(0),
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X14_Y2_N24
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (storage_index(4) & ((\Mux6~2_combout\ & (\Mux6~3_combout\)) # (!\Mux6~2_combout\ & ((\Mux12~1_combout\))))) # (!storage_index(4) & (\Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux6~2_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X30_Y1_N18
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (storage_index(3)) # ((storage_index(2) & ((!storage_index(0)))) # (!storage_index(2) & (storage_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(3),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X30_Y1_N20
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (storage_index(3) & ((storage_index(2)) # ((!storage_index(0)) # (!storage_index(1))))) # (!storage_index(3) & ((storage_index(0)) # ((storage_index(2) & !storage_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(3),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(0),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X30_Y1_N26
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (storage_index(2)) # ((storage_index(1)) # ((!storage_index(3) & storage_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(3),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(0),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X30_Y1_N8
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (storage_index(4) & ((\Mux5~1_combout\) # ((storage_index(5))))) # (!storage_index(4) & (((\Mux5~2_combout\ & !storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux5~1_combout\,
	datac => \Mux5~2_combout\,
	datad => storage_index(5),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X30_Y1_N2
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux5~3_combout\ & (((!storage_index(5))) # (!\Mux8~1_combout\))) # (!\Mux5~3_combout\ & (((\Mux5~0_combout\ & storage_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux5~3_combout\,
	datad => storage_index(5),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X31_Y3_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (storage_index(2) & (((!storage_index(5)) # (!storage_index(0))))) # (!storage_index(2) & ((storage_index(1) & ((storage_index(5)) # (!storage_index(0)))) # (!storage_index(1) & (storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(0),
	datad => storage_index(5),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X31_Y3_N26
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!storage_index(3) & ((storage_index(4) & (\Mux16~1_combout\)) # (!storage_index(4) & ((!\Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => storage_index(3),
	datac => \Mux16~1_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X31_Y3_N16
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (storage_index(1)) # ((storage_index(0)) # (storage_index(2) $ (storage_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(0),
	datad => storage_index(5),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X31_Y3_N6
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~1_combout\) # ((storage_index(3) & (!storage_index(4) & !\Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => storage_index(3),
	datac => storage_index(4),
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X16_Y1_N10
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (storage_index(1) & (!storage_index(4) & ((!storage_index(0)) # (!storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(4),
	datad => storage_index(0),
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X16_Y1_N4
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (storage_index(1) & ((storage_index(2) & (!storage_index(4))) # (!storage_index(2) & ((storage_index(0)))))) # (!storage_index(1) & (((storage_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(4),
	datad => storage_index(0),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X16_Y1_N18
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (storage_index(1) & ((storage_index(4) & ((storage_index(2)) # (storage_index(0)))) # (!storage_index(4) & ((!storage_index(0)))))) # (!storage_index(1) & (!storage_index(2) & (!storage_index(4) & storage_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(4),
	datad => storage_index(0),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X16_Y1_N28
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (storage_index(3) & ((\Mux3~1_combout\) # ((storage_index(5))))) # (!storage_index(3) & (((!storage_index(5) & !\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(3),
	datab => \Mux3~1_combout\,
	datac => storage_index(5),
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X21_Y1_N26
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (storage_index(0) & (storage_index(4) $ (((!storage_index(1) & !storage_index(2)))))) # (!storage_index(0) & (storage_index(2) & ((storage_index(4)) # (!storage_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(4),
	datac => storage_index(1),
	datad => storage_index(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X16_Y1_N24
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~3_combout\ & ((\Mux3~4_combout\) # ((!storage_index(5))))) # (!\Mux3~3_combout\ & (((storage_index(5) & !\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Mux3~3_combout\,
	datac => storage_index(5),
	datad => \Mux3~0_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X31_Y3_N10
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (storage_index(1) & (((storage_index(0)) # (storage_index(3))) # (!storage_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(0),
	datad => storage_index(3),
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X31_Y3_N22
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (storage_index(2) & (!storage_index(1) & ((storage_index(3))))) # (!storage_index(2) & ((storage_index(1) & ((!storage_index(3)) # (!storage_index(0)))) # (!storage_index(1) & (storage_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(0),
	datad => storage_index(3),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X31_Y3_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (storage_index(2) & (((storage_index(0))) # (!storage_index(1)))) # (!storage_index(2) & (!storage_index(1) & ((storage_index(0)) # (storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(2),
	datab => storage_index(1),
	datac => storage_index(0),
	datad => storage_index(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X31_Y3_N4
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (!storage_index(4) & ((storage_index(5) & ((\Mux2~0_combout\))) # (!storage_index(5) & (\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~0_combout\,
	datac => storage_index(4),
	datad => storage_index(5),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X31_Y3_N20
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux2~2_combout\) # ((\Mux2~3_combout\ & (storage_index(4) & !storage_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux2~2_combout\,
	datac => storage_index(4),
	datad => storage_index(5),
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X18_Y3_N24
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (storage_index(2)) # ((storage_index(0) & ((storage_index(1)) # (!storage_index(3)))) # (!storage_index(0) & ((storage_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X30_Y3_N24
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (storage_index(1) & ((storage_index(0)) # ((!storage_index(3)) # (!storage_index(2))))) # (!storage_index(1) & ((storage_index(3)) # (storage_index(0) $ (storage_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(0),
	datab => storage_index(2),
	datac => storage_index(1),
	datad => storage_index(3),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X30_Y3_N26
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (storage_index(4) & (((storage_index(5))))) # (!storage_index(4) & ((storage_index(5) & ((\Mux1~1_combout\))) # (!storage_index(5) & (!\Mux35~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~6_combout\,
	datab => storage_index(4),
	datac => storage_index(5),
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X18_Y3_N22
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (storage_index(4) & ((\Mux1~2_combout\ & ((\Mux37~4_combout\))) # (!\Mux1~2_combout\ & (\Mux1~0_combout\)))) # (!storage_index(4) & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(4),
	datab => \Mux1~0_combout\,
	datac => \Mux37~4_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X16_Y1_N30
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (storage_index(0) & ((storage_index(4) & (storage_index(1))) # (!storage_index(4) & ((!storage_index(2)))))) # (!storage_index(0) & (storage_index(1) & (!storage_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(4),
	datad => storage_index(0),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X16_Y1_N0
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = storage_index(1) $ (((!storage_index(4) & ((storage_index(2)) # (storage_index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(4),
	datad => storage_index(0),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X16_Y1_N12
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (storage_index(5) & (((storage_index(3))))) # (!storage_index(5) & ((storage_index(3) & ((!\Mux0~1_combout\))) # (!storage_index(3) & (!\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Mux0~1_combout\,
	datac => storage_index(5),
	datad => storage_index(3),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X16_Y1_N14
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (storage_index(2) & (((storage_index(4)) # (storage_index(0))) # (!storage_index(1)))) # (!storage_index(2) & (storage_index(0) & (storage_index(1) $ (!storage_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => storage_index(1),
	datab => storage_index(2),
	datac => storage_index(4),
	datad => storage_index(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X16_Y1_N26
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\ & (((\Mux3~4_combout\)) # (!storage_index(5)))) # (!\Mux0~3_combout\ & (storage_index(5) & (!\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => storage_index(5),
	datac => \Mux0~0_combout\,
	datad => \Mux3~4_combout\,
	combout => \Mux0~4_combout\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_data_out(8) <= \data_out[8]~output_o\;

ww_data_out(9) <= \data_out[9]~output_o\;

ww_data_out(10) <= \data_out[10]~output_o\;

ww_data_out(11) <= \data_out[11]~output_o\;

ww_data_out(12) <= \data_out[12]~output_o\;

ww_data_out(13) <= \data_out[13]~output_o\;

ww_data_out(14) <= \data_out[14]~output_o\;

ww_data_out(15) <= \data_out[15]~output_o\;

ww_data_out(16) <= \data_out[16]~output_o\;

ww_data_out(17) <= \data_out[17]~output_o\;

ww_data_out(18) <= \data_out[18]~output_o\;

ww_data_out(19) <= \data_out[19]~output_o\;

ww_data_out(20) <= \data_out[20]~output_o\;

ww_data_out(21) <= \data_out[21]~output_o\;

ww_data_out(22) <= \data_out[22]~output_o\;

ww_data_out(23) <= \data_out[23]~output_o\;

ww_data_out(24) <= \data_out[24]~output_o\;

ww_data_out(25) <= \data_out[25]~output_o\;

ww_data_out(26) <= \data_out[26]~output_o\;

ww_data_out(27) <= \data_out[27]~output_o\;

ww_data_out(28) <= \data_out[28]~output_o\;

ww_data_out(29) <= \data_out[29]~output_o\;

ww_data_out(30) <= \data_out[30]~output_o\;

ww_data_out(31) <= \data_out[31]~output_o\;

ww_data_out(32) <= \data_out[32]~output_o\;

ww_data_out(33) <= \data_out[33]~output_o\;

ww_data_out(34) <= \data_out[34]~output_o\;

ww_data_out(35) <= \data_out[35]~output_o\;

ww_data_out(36) <= \data_out[36]~output_o\;

ww_data_out(37) <= \data_out[37]~output_o\;
END structure;


