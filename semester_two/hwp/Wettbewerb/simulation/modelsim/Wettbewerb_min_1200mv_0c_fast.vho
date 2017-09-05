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

-- DATE "07/25/2017 13:22:41"

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

ENTITY 	uart_receiver IS
    PORT (
	serial_in : IN std_logic;
	data_out : OUT std_logic_vector(7 DOWNTO 0);
	data_ready : OUT std_logic;
	clk_50 : IN std_logic
	);
END uart_receiver;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_ready	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- serial_in	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart_receiver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_serial_in : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_ready : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \data_ready~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \serial_in~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \state~35_combout\ : std_logic;
SIGNAL \state~46_combout\ : std_logic;
SIGNAL \state~47_combout\ : std_logic;
SIGNAL \state.bit6~q\ : std_logic;
SIGNAL \state~32_combout\ : std_logic;
SIGNAL \state~42_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \state~45_combout\ : std_logic;
SIGNAL \state.bit1~q\ : std_logic;
SIGNAL \state~50_combout\ : std_logic;
SIGNAL \state.bit2~q\ : std_logic;
SIGNAL \state~51_combout\ : std_logic;
SIGNAL \state.bit3~q\ : std_logic;
SIGNAL \state~48_combout\ : std_logic;
SIGNAL \state.bit4~q\ : std_logic;
SIGNAL \state~49_combout\ : std_logic;
SIGNAL \state.bit5~q\ : std_logic;
SIGNAL \state~29_combout\ : std_logic;
SIGNAL \state~28_combout\ : std_logic;
SIGNAL \state~30_combout\ : std_logic;
SIGNAL \state~31_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \state~52_combout\ : std_logic;
SIGNAL \state~33_combout\ : std_logic;
SIGNAL \state~34_combout\ : std_logic;
SIGNAL \state.stop~q\ : std_logic;
SIGNAL \state~53_combout\ : std_logic;
SIGNAL \state.success~q\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \state~43_combout\ : std_logic;
SIGNAL \state.bit0~q\ : std_logic;
SIGNAL \state~36_combout\ : std_logic;
SIGNAL \state~37_combout\ : std_logic;
SIGNAL \state~38_combout\ : std_logic;
SIGNAL \state.bit7~q\ : std_logic;
SIGNAL \state~44_combout\ : std_logic;
SIGNAL \state.idle~feeder_combout\ : std_logic;
SIGNAL \serial_in~_wirecell_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \count[0]~0_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \state~39_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \state~40_combout\ : std_logic;
SIGNAL \state~41_combout\ : std_logic;
SIGNAL \state.start~q\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \new_data[0]~0_combout\ : std_logic;
SIGNAL \data_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_q\ : std_logic;
SIGNAL \new_data[1]~1_combout\ : std_logic;
SIGNAL \data_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[1]~reg0_q\ : std_logic;
SIGNAL \new_data[2]~2_combout\ : std_logic;
SIGNAL \data_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[2]~reg0_q\ : std_logic;
SIGNAL \new_data[3]~3_combout\ : std_logic;
SIGNAL \data_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[3]~reg0_q\ : std_logic;
SIGNAL \new_data[4]~4_combout\ : std_logic;
SIGNAL \data_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[4]~reg0_q\ : std_logic;
SIGNAL \new_data[5]~5_combout\ : std_logic;
SIGNAL \data_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[5]~reg0_q\ : std_logic;
SIGNAL \new_data[6]~6_combout\ : std_logic;
SIGNAL \data_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[6]~reg0_q\ : std_logic;
SIGNAL \new_data[7]~7_combout\ : std_logic;
SIGNAL \data_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[7]~reg0_q\ : std_logic;
SIGNAL count : std_logic_vector(10 DOWNTO 0);
SIGNAL new_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_state.idle~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_serial_in <= serial_in;
data_out <= ww_data_out;
data_ready <= ww_data_ready;
ww_clk_50 <= clk_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\ALT_INV_state.idle~q\ <= NOT \state.idle~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y34_N16
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\data_ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.success~q\,
	devoe => ww_devoe,
	o => \data_ready~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X20_Y34_N15
\serial_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_serial_in,
	o => \serial_in~input_o\);

-- Location: LCCOMB_X14_Y31_N10
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = count(0) $ (VCC)
-- \Add0~2\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X14_Y31_N20
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (count(5) & (!\Add0~10\)) # (!count(5) & ((\Add0~10\) # (GND)))
-- \Add0~12\ = CARRY((!\Add0~10\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X14_Y31_N22
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (count(6) & (\Add0~12\ $ (GND))) # (!count(6) & (!\Add0~12\ & VCC))
-- \Add0~14\ = CARRY((count(6) & !\Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X15_Y31_N22
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~13_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~13_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~31_combout\);

-- Location: LCCOMB_X16_Y31_N12
\state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~35_combout\ = (!\process_0~1_combout\ & ((\state~32_combout\) # (\LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~32_combout\,
	datac => \LessThan1~3_combout\,
	datad => \process_0~1_combout\,
	combout => \state~35_combout\);

-- Location: LCCOMB_X17_Y31_N14
\state~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~46_combout\ = (!\state~32_combout\ & (!\LessThan1~3_combout\ & !\process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~32_combout\,
	datac => \LessThan1~3_combout\,
	datad => \process_0~1_combout\,
	combout => \state~46_combout\);

-- Location: LCCOMB_X18_Y31_N12
\state~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~47_combout\ = (\state~35_combout\ & ((\state.bit6~q\) # ((\state.bit5~q\ & \state~46_combout\)))) # (!\state~35_combout\ & (\state.bit5~q\ & ((\state~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~35_combout\,
	datab => \state.bit5~q\,
	datac => \state.bit6~q\,
	datad => \state~46_combout\,
	combout => \state~47_combout\);

-- Location: FF_X18_Y31_N13
\state.bit6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~47_combout\,
	sclr => \ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.bit6~q\);

-- Location: LCCOMB_X17_Y31_N20
\state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~32_combout\ = (\state~29_combout\ & (!\state.bit0~q\ & (!\state.bit6~q\ & !\state.bit1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~29_combout\,
	datab => \state.bit0~q\,
	datac => \state.bit6~q\,
	datad => \state.bit1~q\,
	combout => \state~32_combout\);

-- Location: LCCOMB_X18_Y31_N28
\state~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~42_combout\ = (\state~32_combout\) # (\LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state~32_combout\,
	datad => \LessThan1~3_combout\,
	combout => \state~42_combout\);

-- Location: LCCOMB_X18_Y31_N6
\process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\state.bit0~q\ & !\LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.bit0~q\,
	datad => \LessThan1~3_combout\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X18_Y31_N18
\state~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~45_combout\ = (!\process_0~1_combout\ & ((\state~42_combout\ & (\state.bit1~q\)) # (!\state~42_combout\ & ((\process_0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \state~42_combout\,
	datac => \state.bit1~q\,
	datad => \process_0~5_combout\,
	combout => \state~45_combout\);

-- Location: FF_X18_Y31_N19
\state.bit1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~45_combout\,
	sclr => \ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.bit1~q\);

-- Location: LCCOMB_X17_Y31_N16
\state~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~50_combout\ = (\state.bit1~q\ & ((\state~46_combout\) # ((\state.bit2~q\ & \state~35_combout\)))) # (!\state.bit1~q\ & (((\state.bit2~q\ & \state~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bit1~q\,
	datab => \state~46_combout\,
	datac => \state.bit2~q\,
	datad => \state~35_combout\,
	combout => \state~50_combout\);

-- Location: FF_X17_Y31_N17
\state.bit2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~50_combout\,
	sclr => \ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.bit2~q\);

-- Location: LCCOMB_X17_Y31_N26
\state~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~51_combout\ = (\state.bit2~q\ & ((\state~46_combout\) # ((\state.bit3~q\ & \state~35_combout\)))) # (!\state.bit2~q\ & (((\state.bit3~q\ & \state~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bit2~q\,
	datab => \state~46_combout\,
	datac => \state.bit3~q\,
	datad => \state~35_combout\,
	combout => \state~51_combout\);

-- Location: FF_X17_Y31_N27
\state.bit3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~51_combout\,
	sclr => \ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.bit3~q\);

-- Location: LCCOMB_X17_Y31_N8
\state~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~48_combout\ = (\state.bit3~q\ & ((\state~46_combout\) # ((\state.bit4~q\ & \state~35_combout\)))) # (!\state.bit3~q\ & (((\state.bit4~q\ & \state~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bit3~q\,
	datab => \state~46_combout\,
	datac => \state.bit4~q\,
	datad => \state~35_combout\,
	combout => \state~48_combout\);

-- Location: FF_X17_Y31_N9
\state.bit4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~48_combout\,
	sclr => \ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.bit4~q\);

-- Location: LCCOMB_X17_Y31_N30
\state~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~49_combout\ = (\state.bit4~q\ & ((\state~46_combout\) # ((\state.bit5~q\ & \state~35_combout\)))) # (!\state.bit4~q\ & (((\state.bit5~q\ & \state~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bit4~q\,
	datab => \state~46_combout\,
	datac => \state.bit5~q\,
	datad => \state~35_combout\,
	combout => \state~49_combout\);

-- Location: FF_X17_Y31_N31
\state.bit5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~49_combout\,
	sclr => \ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.bit5~q\);

-- Location: LCCOMB_X17_Y31_N22
\state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~29_combout\ = (!\state.bit5~q\ & (!\state.bit4~q\ & (!\state.bit3~q\ & !\state.bit2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bit5~q\,
	datab => \state.bit4~q\,
	datac => \state.bit3~q\,
	datad => \state.bit2~q\,
	combout => \state~29_combout\);

-- Location: LCCOMB_X16_Y31_N22
\state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~28_combout\ = (\state.idle~q\ & (!\state.bit1~q\ & !\state.bit0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.idle~q\,
	datac => \state.bit1~q\,
	datad => \state.bit0~q\,
	combout => \state~28_combout\);

-- Location: LCCOMB_X18_Y31_N22
\state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~30_combout\ = (\state.bit6~q\) # ((!\state.bit7~q\ & \state~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bit6~q\,
	datac => \state.bit7~q\,
	datad => \state~29_combout\,
	combout => \state~30_combout\);

-- Location: LCCOMB_X16_Y31_N0
\state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~31_combout\ = (\state~28_combout\ & (!\process_0~1_combout\ & (!\LessThan1~3_combout\ & !\state~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~28_combout\,
	datab => \process_0~1_combout\,
	datac => \LessThan1~3_combout\,
	datad => \state~30_combout\,
	combout => \state~31_combout\);

-- Location: LCCOMB_X17_Y31_N6
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\state.bit7~q\ & (\serial_in~input_o\ & !\LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bit7~q\,
	datac => \serial_in~input_o\,
	datad => \LessThan1~3_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X16_Y31_N16
\state~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~52_combout\ = (\state~31_combout\ & (!\process_0~0_combout\ & ((\state~29_combout\) # (\LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~29_combout\,
	datab => \state~31_combout\,
	datac => \LessThan1~3_combout\,
	datad => \process_0~0_combout\,
	combout => \state~52_combout\);

-- Location: LCCOMB_X16_Y31_N10
\state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~33_combout\ = (!\process_0~1_combout\ & ((\LessThan1~3_combout\) # ((\state~32_combout\ & !\state.bit7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~32_combout\,
	datab => \state.bit7~q\,
	datac => \LessThan1~3_combout\,
	datad => \process_0~1_combout\,
	combout => \state~33_combout\);

-- Location: LCCOMB_X16_Y31_N14
\state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~34_combout\ = (\state.idle~q\ & ((\process_0~4_combout\) # ((!\state~33_combout\)))) # (!\state.idle~q\ & (((!\serial_in~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.idle~q\,
	datab => \process_0~4_combout\,
	datac => \serial_in~input_o\,
	datad => \state~33_combout\,
	combout => \state~34_combout\);

-- Location: FF_X16_Y31_N17
\state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~52_combout\,
	ena => \state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.stop~q\);

-- Location: LCCOMB_X16_Y31_N8
\state~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~53_combout\ = (\serial_in~input_o\ & (\state.bit7~q\ & (!\LessThan1~3_combout\ & \state~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datab => \state.bit7~q\,
	datac => \LessThan1~3_combout\,
	datad => \state~31_combout\,
	combout => \state~53_combout\);

-- Location: FF_X16_Y31_N9
\state.success\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~53_combout\,
	ena => \state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.success~q\);

-- Location: LCCOMB_X14_Y31_N28
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (count(9) & (!\Add0~18\)) # (!count(9) & ((\Add0~18\) # (GND)))
-- \Add0~20\ = CARRY((!\Add0~18\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X14_Y31_N30
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \Add0~20\ $ (!count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(10),
	cin => \Add0~20\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X14_Y31_N6
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Add0~23_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~23_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~25_combout\);

-- Location: FF_X14_Y31_N7
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~25_combout\,
	ena => \count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X15_Y31_N10
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (((!count(3)) # (!count(5))) # (!count(4))) # (!count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(4),
	datac => count(5),
	datad => count(3),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X15_Y31_N12
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (count(7) & ((count(6)) # (!\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datac => count(6),
	datad => \LessThan2~0_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X16_Y31_N2
\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (count(9) & ((count(8)) # (\process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datac => count(8),
	datad => \process_0~2_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X16_Y31_N20
\process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\state.stop~q\ & (((count(10)) # (\process_0~3_combout\)))) # (!\state.stop~q\ & (\state.success~q\ & ((count(10)) # (\process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.stop~q\,
	datab => \state.success~q\,
	datac => count(10),
	datad => \process_0~3_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X17_Y31_N24
\state~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~43_combout\ = (\process_0~1_combout\) # ((!\process_0~4_combout\ & (\state.bit0~q\ & \state~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \process_0~1_combout\,
	datac => \state.bit0~q\,
	datad => \state~42_combout\,
	combout => \state~43_combout\);

-- Location: FF_X17_Y31_N25
\state.bit0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.bit0~q\);

-- Location: LCCOMB_X18_Y31_N8
\state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~36_combout\ = (!\state.bit0~q\ & (!\state.bit1~q\ & \state~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.bit0~q\,
	datac => \state.bit1~q\,
	datad => \state~29_combout\,
	combout => \state~36_combout\);

-- Location: LCCOMB_X18_Y31_N2
\state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~37_combout\ = (\LessThan1~3_combout\) # (((\process_0~1_combout\) # (\state~32_combout\)) # (!\state~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \state~36_combout\,
	datac => \process_0~1_combout\,
	datad => \state~32_combout\,
	combout => \state~37_combout\);

-- Location: LCCOMB_X18_Y31_N4
\state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~38_combout\ = ((\LessThan1~3_combout\ & (\state.bit7~q\ & \state~35_combout\))) # (!\state~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \state~37_combout\,
	datac => \state.bit7~q\,
	datad => \state~35_combout\,
	combout => \state~38_combout\);

-- Location: FF_X18_Y31_N5
\state.bit7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~38_combout\,
	sclr => \ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.bit7~q\);

-- Location: LCCOMB_X16_Y31_N18
\state~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~44_combout\ = (((\state.bit7~q\ & !\LessThan1~3_combout\)) # (!\state~35_combout\)) # (!\process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bit7~q\,
	datab => \process_0~4_combout\,
	datac => \LessThan1~3_combout\,
	datad => \state~35_combout\,
	combout => \state~44_combout\);

-- Location: LCCOMB_X16_Y31_N26
\state.idle~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.idle~feeder_combout\ = \state~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state~44_combout\,
	combout => \state.idle~feeder_combout\);

-- Location: LCCOMB_X19_Y31_N12
\serial_in~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_in~_wirecell_combout\ = !\serial_in~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serial_in~input_o\,
	combout => \serial_in~_wirecell_combout\);

-- Location: FF_X16_Y31_N27
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state.idle~feeder_combout\,
	asdata => \serial_in~_wirecell_combout\,
	sload => \ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: LCCOMB_X16_Y31_N4
\count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~0_combout\ = (\state.idle~q\) # (!\serial_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.idle~q\,
	datac => \serial_in~input_o\,
	combout => \count[0]~0_combout\);

-- Location: FF_X15_Y31_N23
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~31_combout\,
	ena => \count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X14_Y31_N24
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (count(7) & (!\Add0~14\)) # (!count(7) & ((\Add0~14\) # (GND)))
-- \Add0~16\ = CARRY((!\Add0~14\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X15_Y31_N28
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~15_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~15_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~29_combout\);

-- Location: FF_X15_Y31_N29
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~29_combout\,
	ena => \count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X14_Y31_N26
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (count(8) & (\Add0~16\ $ (GND))) # (!count(8) & (!\Add0~16\ & VCC))
-- \Add0~18\ = CARRY((count(8) & !\Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X14_Y31_N8
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Add0~17_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~22_combout\);

-- Location: FF_X14_Y31_N9
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	ena => \count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X15_Y31_N4
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~19_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~19_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~21_combout\);

-- Location: FF_X15_Y31_N5
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~21_combout\,
	ena => \count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X15_Y31_N18
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!count(7) & (((!count(2) & !count(3))) # (!count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(3),
	datac => count(4),
	datad => count(7),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X14_Y31_N4
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!count(8) & !count(9))) # (!count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datac => count(8),
	datad => count(9),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X15_Y31_N6
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~0_combout\) # ((!count(9) & (\LessThan1~1_combout\ & \LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => \LessThan1~1_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X16_Y31_N6
\state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~39_combout\ = (\state.idle~q\ & !\process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.idle~q\,
	datad => \process_0~4_combout\,
	combout => \state~39_combout\);

-- Location: LCCOMB_X15_Y31_N2
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\state~35_combout\ & (\state~39_combout\ & ((\LessThan1~3_combout\) # (!\state.bit7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \state.bit7~q\,
	datac => \state~35_combout\,
	datad => \state~39_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X14_Y31_N2
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~1_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~33_combout\);

-- Location: FF_X14_Y31_N3
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~33_combout\,
	ena => \count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X14_Y31_N12
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (count(1) & (!\Add0~2\)) # (!count(1) & ((\Add0~2\) # (GND)))
-- \Add0~4\ = CARRY((!\Add0~2\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X15_Y31_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\Add0~3_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~3_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~32_combout\);

-- Location: FF_X15_Y31_N1
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	ena => \count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X14_Y31_N14
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (count(2) & (\Add0~4\ $ (GND))) # (!count(2) & (!\Add0~4\ & VCC))
-- \Add0~6\ = CARRY((count(2) & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X15_Y31_N30
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Add0~5_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~26_combout\);

-- Location: FF_X15_Y31_N31
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	ena => \count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X14_Y31_N16
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (count(3) & (!\Add0~6\)) # (!count(3) & ((\Add0~6\) # (GND)))
-- \Add0~8\ = CARRY((!\Add0~6\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X15_Y31_N16
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~7_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~7_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~27_combout\);

-- Location: FF_X15_Y31_N17
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~27_combout\,
	ena => \count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X14_Y31_N18
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (count(4) & (\Add0~8\ $ (GND))) # (!count(4) & (!\Add0~8\ & VCC))
-- \Add0~10\ = CARRY((count(4) & !\Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X15_Y31_N14
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\Add0~9_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~9_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~28_combout\);

-- Location: FF_X15_Y31_N15
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	ena => \count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X15_Y31_N8
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\Add0~11_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~30_combout\);

-- Location: FF_X15_Y31_N9
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	ena => \count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X15_Y31_N20
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!count(5) & !count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datac => count(6),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X15_Y31_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!count(3)) # (!count(4))) # (!count(1))) # (!count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(4),
	datad => count(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y31_N24
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!count(7)) # (!count(10))) # (!count(9))) # (!count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(9),
	datac => count(10),
	datad => count(7),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y31_N0
\state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~40_combout\ = (\state.start~q\ & ((\LessThan0~1_combout\) # ((\LessThan1~2_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \state.start~q\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \state~40_combout\);

-- Location: LCCOMB_X16_Y31_N24
\state~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~41_combout\ = (\state~40_combout\ & ((\state~32_combout\) # (\LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~32_combout\,
	datab => \LessThan1~3_combout\,
	datad => \state~40_combout\,
	combout => \state~41_combout\);

-- Location: FF_X16_Y31_N25
\state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~41_combout\,
	asdata => \serial_in~_wirecell_combout\,
	sload => \ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.start~q\);

-- Location: LCCOMB_X16_Y31_N28
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\state.start~q\ & (!\LessThan0~1_combout\ & ((!\LessThan0~0_combout\) # (!\LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \state.start~q\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X16_Y31_N30
\new_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_data[0]~0_combout\ = (\process_0~1_combout\ & (\serial_in~input_o\)) # (!\process_0~1_combout\ & ((new_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datac => new_data(0),
	datad => \process_0~1_combout\,
	combout => \new_data[0]~0_combout\);

-- Location: FF_X16_Y31_N31
\new_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \new_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_data(0));

-- Location: LCCOMB_X17_Y31_N0
\data_out[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~reg0feeder_combout\ = new_data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => new_data(0),
	combout => \data_out[0]~reg0feeder_combout\);

-- Location: FF_X17_Y31_N1
\data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \data_out[0]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_q\);

-- Location: LCCOMB_X18_Y31_N16
\new_data[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_data[1]~1_combout\ = (\state.bit0~q\ & ((\LessThan1~3_combout\ & ((new_data(1)))) # (!\LessThan1~3_combout\ & (\serial_in~input_o\)))) # (!\state.bit0~q\ & (((new_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datab => \state.bit0~q\,
	datac => new_data(1),
	datad => \LessThan1~3_combout\,
	combout => \new_data[1]~1_combout\);

-- Location: FF_X18_Y31_N17
\new_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \new_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_data(1));

-- Location: LCCOMB_X18_Y31_N26
\data_out[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~reg0feeder_combout\ = new_data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => new_data(1),
	combout => \data_out[1]~reg0feeder_combout\);

-- Location: FF_X18_Y31_N27
\data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \data_out[1]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~reg0_q\);

-- Location: LCCOMB_X18_Y31_N14
\new_data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_data[2]~2_combout\ = (\state.bit1~q\ & ((\LessThan1~3_combout\ & ((new_data(2)))) # (!\LessThan1~3_combout\ & (\serial_in~input_o\)))) # (!\state.bit1~q\ & (((new_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datab => \state.bit1~q\,
	datac => new_data(2),
	datad => \LessThan1~3_combout\,
	combout => \new_data[2]~2_combout\);

-- Location: FF_X18_Y31_N15
\new_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \new_data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_data(2));

-- Location: LCCOMB_X17_Y31_N18
\data_out[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~reg0feeder_combout\ = new_data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => new_data(2),
	combout => \data_out[2]~reg0feeder_combout\);

-- Location: FF_X17_Y31_N19
\data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \data_out[2]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~reg0_q\);

-- Location: LCCOMB_X18_Y31_N20
\new_data[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_data[3]~3_combout\ = (\state.bit2~q\ & ((\LessThan1~3_combout\ & ((new_data(3)))) # (!\LessThan1~3_combout\ & (\serial_in~input_o\)))) # (!\state.bit2~q\ & (((new_data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datab => \state.bit2~q\,
	datac => new_data(3),
	datad => \LessThan1~3_combout\,
	combout => \new_data[3]~3_combout\);

-- Location: FF_X18_Y31_N21
\new_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \new_data[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_data(3));

-- Location: LCCOMB_X17_Y31_N12
\data_out[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~reg0feeder_combout\ = new_data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => new_data(3),
	combout => \data_out[3]~reg0feeder_combout\);

-- Location: FF_X17_Y31_N13
\data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \data_out[3]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~reg0_q\);

-- Location: LCCOMB_X18_Y31_N30
\new_data[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_data[4]~4_combout\ = (\state.bit3~q\ & ((\LessThan1~3_combout\ & ((new_data(4)))) # (!\LessThan1~3_combout\ & (\serial_in~input_o\)))) # (!\state.bit3~q\ & (((new_data(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datab => \state.bit3~q\,
	datac => new_data(4),
	datad => \LessThan1~3_combout\,
	combout => \new_data[4]~4_combout\);

-- Location: FF_X18_Y31_N31
\new_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \new_data[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_data(4));

-- Location: LCCOMB_X17_Y31_N10
\data_out[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~reg0feeder_combout\ = new_data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => new_data(4),
	combout => \data_out[4]~reg0feeder_combout\);

-- Location: FF_X17_Y31_N11
\data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \data_out[4]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[4]~reg0_q\);

-- Location: LCCOMB_X18_Y31_N24
\new_data[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_data[5]~5_combout\ = (\state.bit4~q\ & ((\LessThan1~3_combout\ & ((new_data(5)))) # (!\LessThan1~3_combout\ & (\serial_in~input_o\)))) # (!\state.bit4~q\ & (((new_data(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datab => \state.bit4~q\,
	datac => new_data(5),
	datad => \LessThan1~3_combout\,
	combout => \new_data[5]~5_combout\);

-- Location: FF_X18_Y31_N25
\new_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \new_data[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_data(5));

-- Location: LCCOMB_X17_Y31_N4
\data_out[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~reg0feeder_combout\ = new_data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => new_data(5),
	combout => \data_out[5]~reg0feeder_combout\);

-- Location: FF_X17_Y31_N5
\data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \data_out[5]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[5]~reg0_q\);

-- Location: LCCOMB_X18_Y31_N10
\new_data[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_data[6]~6_combout\ = (\state.bit5~q\ & ((\LessThan1~3_combout\ & ((new_data(6)))) # (!\LessThan1~3_combout\ & (\serial_in~input_o\)))) # (!\state.bit5~q\ & (((new_data(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datab => \state.bit5~q\,
	datac => new_data(6),
	datad => \LessThan1~3_combout\,
	combout => \new_data[6]~6_combout\);

-- Location: FF_X18_Y31_N11
\new_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \new_data[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_data(6));

-- Location: LCCOMB_X17_Y31_N2
\data_out[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~reg0feeder_combout\ = new_data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => new_data(6),
	combout => \data_out[6]~reg0feeder_combout\);

-- Location: FF_X17_Y31_N3
\data_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \data_out[6]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[6]~reg0_q\);

-- Location: LCCOMB_X18_Y31_N0
\new_data[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_data[7]~7_combout\ = (\LessThan1~3_combout\ & (((new_data(7))))) # (!\LessThan1~3_combout\ & ((\state.bit6~q\ & (\serial_in~input_o\)) # (!\state.bit6~q\ & ((new_data(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datab => \LessThan1~3_combout\,
	datac => new_data(7),
	datad => \state.bit6~q\,
	combout => \new_data[7]~7_combout\);

-- Location: FF_X18_Y31_N1
\new_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \new_data[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_data(7));

-- Location: LCCOMB_X17_Y31_N28
\data_out[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~reg0feeder_combout\ = new_data(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => new_data(7),
	combout => \data_out[7]~reg0feeder_combout\);

-- Location: FF_X17_Y31_N29
\data_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \data_out[7]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[7]~reg0_q\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_data_ready <= \data_ready~output_o\;
END structure;


