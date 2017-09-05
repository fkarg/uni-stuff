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

-- DATE "06/20/2017 17:05:27"

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

ENTITY 	different_sounds IS
    PORT (
	sound : OUT std_logic;
	clk_50 : IN std_logic;
	DOUT : IN std_logic;
	DIN : OUT std_logic;
	CS_n : OUT std_logic;
	SCLK : OUT std_logic
	);
END different_sounds;

-- Design Ports Information
-- sound	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS_n	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF different_sounds IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sound : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_DOUT : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL ww_CS_n : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL \inst|clk_spi~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sound~output_o\ : std_logic;
SIGNAL \DIN~output_o\ : std_logic;
SIGNAL \CS_n~output_o\ : std_logic;
SIGNAL \SCLK~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|num[0]~16_combout\ : std_logic;
SIGNAL \inst3|num[0]~17\ : std_logic;
SIGNAL \inst3|num[1]~18_combout\ : std_logic;
SIGNAL \inst3|num[1]~19\ : std_logic;
SIGNAL \inst3|num[2]~20_combout\ : std_logic;
SIGNAL \inst3|num[2]~21\ : std_logic;
SIGNAL \inst3|num[3]~22_combout\ : std_logic;
SIGNAL \inst3|num[3]~23\ : std_logic;
SIGNAL \inst3|num[4]~24_combout\ : std_logic;
SIGNAL \inst3|num[4]~25\ : std_logic;
SIGNAL \inst3|num[5]~26_combout\ : std_logic;
SIGNAL \inst3|num[5]~27\ : std_logic;
SIGNAL \inst3|num[6]~28_combout\ : std_logic;
SIGNAL \inst3|num[6]~29\ : std_logic;
SIGNAL \inst3|num[7]~30_combout\ : std_logic;
SIGNAL \inst3|num[7]~31\ : std_logic;
SIGNAL \inst3|num[8]~32_combout\ : std_logic;
SIGNAL \inst3|num[8]~33\ : std_logic;
SIGNAL \inst3|num[9]~34_combout\ : std_logic;
SIGNAL \inst3|num[9]~35\ : std_logic;
SIGNAL \inst3|num[10]~36_combout\ : std_logic;
SIGNAL \inst3|num[10]~37\ : std_logic;
SIGNAL \inst3|num[11]~38_combout\ : std_logic;
SIGNAL \inst3|num[11]~39\ : std_logic;
SIGNAL \inst3|num[12]~40_combout\ : std_logic;
SIGNAL \inst3|num[12]~41\ : std_logic;
SIGNAL \inst3|num[13]~42_combout\ : std_logic;
SIGNAL \inst|clk_spi_count[0]~3_combout\ : std_logic;
SIGNAL \inst|clk_spi_count[1]~0_combout\ : std_logic;
SIGNAL \inst|clk_spi_count[2]~1_combout\ : std_logic;
SIGNAL \inst|clk_spi_count[3]~2_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|clk_spi~0_combout\ : std_logic;
SIGNAL \inst|clk_spi~feeder_combout\ : std_logic;
SIGNAL \inst|clk_spi~q\ : std_logic;
SIGNAL \inst|clk_spi~clkctrl_outclk\ : std_logic;
SIGNAL \inst|count[0]~3_combout\ : std_logic;
SIGNAL \inst|active2~feeder_combout\ : std_logic;
SIGNAL \inst|active2~q\ : std_logic;
SIGNAL \inst|count[1]~0_combout\ : std_logic;
SIGNAL \inst|count[2]~1_combout\ : std_logic;
SIGNAL \inst|count[3]~2_combout\ : std_logic;
SIGNAL \inst|Equal4~5_combout\ : std_logic;
SIGNAL \inst|Equal4~2_combout\ : std_logic;
SIGNAL \DOUT~input_o\ : std_logic;
SIGNAL \inst|data~2_combout\ : std_logic;
SIGNAL \inst|Data0[9]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~1_combout\ : std_logic;
SIGNAL \inst|channel[0]~0_combout\ : std_logic;
SIGNAL \inst|channel[1]~2_combout\ : std_logic;
SIGNAL \inst|channel[2]~1_combout\ : std_logic;
SIGNAL \inst|Data0[11]~0_combout\ : std_logic;
SIGNAL \inst|Data0[11]~1_combout\ : std_logic;
SIGNAL \inst|Equal4~6_combout\ : std_logic;
SIGNAL \inst|data~3_combout\ : std_logic;
SIGNAL \inst|Equal4~7_combout\ : std_logic;
SIGNAL \inst|data~4_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|data~5_combout\ : std_logic;
SIGNAL \inst4|buttonOut[0]~0_combout\ : std_logic;
SIGNAL \inst|Equal4~4_combout\ : std_logic;
SIGNAL \inst|data~1_combout\ : std_logic;
SIGNAL \inst|Equal4~3_combout\ : std_logic;
SIGNAL \inst|data~0_combout\ : std_logic;
SIGNAL \inst|Equal4~8_combout\ : std_logic;
SIGNAL \inst|data~7_combout\ : std_logic;
SIGNAL \inst|data~6_combout\ : std_logic;
SIGNAL \inst|Equal4~10_combout\ : std_logic;
SIGNAL \inst|data~9_combout\ : std_logic;
SIGNAL \inst|Data0[2]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~11_combout\ : std_logic;
SIGNAL \inst|data~10_combout\ : std_logic;
SIGNAL \inst|Data0[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~12_combout\ : std_logic;
SIGNAL \inst|data~11_combout\ : std_logic;
SIGNAL \inst4|buttonOut[0]~1_combout\ : std_logic;
SIGNAL \inst|Equal4~9_combout\ : std_logic;
SIGNAL \inst|data~8_combout\ : std_logic;
SIGNAL \inst|Data0[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|buttonOut[0]~2_combout\ : std_logic;
SIGNAL \inst4|buttonOut[0]~3_combout\ : std_logic;
SIGNAL \inst4|buttonOut[2]~9_combout\ : std_logic;
SIGNAL \inst4|buttonOut[1]~13_combout\ : std_logic;
SIGNAL \inst4|buttonOut[1]~14_combout\ : std_logic;
SIGNAL \inst4|buttonOut[1]~15_combout\ : std_logic;
SIGNAL \inst4|buttonOut[4]~16_combout\ : std_logic;
SIGNAL \inst4|buttonOut[4]~17_combout\ : std_logic;
SIGNAL \inst4|buttonOut[4]~18_combout\ : std_logic;
SIGNAL \inst4|buttonOut[4]~19_combout\ : std_logic;
SIGNAL \inst4|buttonOut[3]~4_combout\ : std_logic;
SIGNAL \inst4|buttonOut[3]~7_combout\ : std_logic;
SIGNAL \inst4|buttonOut[3]~5_combout\ : std_logic;
SIGNAL \inst4|buttonOut[3]~6_combout\ : std_logic;
SIGNAL \inst4|buttonOut[3]~8_combout\ : std_logic;
SIGNAL \inst4|buttonOut[2]~10_combout\ : std_logic;
SIGNAL \inst4|buttonOut[2]~11_combout\ : std_logic;
SIGNAL \inst4|buttonOut[2]~12_combout\ : std_logic;
SIGNAL \inst7|state~13_combout\ : std_logic;
SIGNAL \inst7|state.f0~0_combout\ : std_logic;
SIGNAL \inst7|state.f0~q\ : std_logic;
SIGNAL \inst7|state~14_combout\ : std_logic;
SIGNAL \inst7|state.f1~q\ : std_logic;
SIGNAL \inst7|state~16_combout\ : std_logic;
SIGNAL \inst7|state.f3~q\ : std_logic;
SIGNAL \inst3|num[13]~43\ : std_logic;
SIGNAL \inst3|num[14]~44_combout\ : std_logic;
SIGNAL \inst3|Equal0~11_combout\ : std_logic;
SIGNAL \inst7|state~15_combout\ : std_logic;
SIGNAL \inst7|state.f2~q\ : std_logic;
SIGNAL \inst7|freqOut~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~12_combout\ : std_logic;
SIGNAL \inst3|num[14]~45\ : std_logic;
SIGNAL \inst3|num[15]~46_combout\ : std_logic;
SIGNAL \inst3|Equal0~13_combout\ : std_logic;
SIGNAL \inst3|Equal0~14_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|Equal0~9_combout\ : std_logic;
SIGNAL \inst3|Equal0~7_combout\ : std_logic;
SIGNAL \inst3|Equal0~8_combout\ : std_logic;
SIGNAL \inst3|Equal0~6_combout\ : std_logic;
SIGNAL \inst3|Equal0~10_combout\ : std_logic;
SIGNAL \inst3|Equal0~15_combout\ : std_logic;
SIGNAL \inst3|sound_intern~0_combout\ : std_logic;
SIGNAL \inst3|sound_intern~q\ : std_logic;
SIGNAL \inst|DIN~1_combout\ : std_logic;
SIGNAL \inst|DIN~0_combout\ : std_logic;
SIGNAL \inst|DIN~2_combout\ : std_logic;
SIGNAL \inst|DIN~q\ : std_logic;
SIGNAL \inst|SCLK~0_combout\ : std_logic;
SIGNAL \inst|data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|Data0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|clk_spi_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|channel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|num\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_clk_spi~clkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_active2~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

sound <= ww_sound;
ww_clk_50 <= clk_50;
ww_DOUT <= DOUT;
DIN <= ww_DIN;
CS_n <= ww_CS_n;
SCLK <= ww_SCLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clk_spi~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clk_spi~q\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\inst|ALT_INV_clk_spi~clkctrl_outclk\ <= NOT \inst|clk_spi~clkctrl_outclk\;
\inst|ALT_INV_active2~q\ <= NOT \inst|active2~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y22_N2
\sound~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|sound_intern~q\,
	devoe => ww_devoe,
	o => \sound~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\DIN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DIN~q\,
	devoe => ww_devoe,
	o => \DIN~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\CS_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_active2~q\,
	devoe => ww_devoe,
	o => \CS_n~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SCLK~0_combout\,
	devoe => ww_devoe,
	o => \SCLK~output_o\);

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

-- Location: LCCOMB_X32_Y30_N0
\inst3|num[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[0]~16_combout\ = \inst3|num\(0) $ (VCC)
-- \inst3|num[0]~17\ = CARRY(\inst3|num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|num\(0),
	datad => VCC,
	combout => \inst3|num[0]~16_combout\,
	cout => \inst3|num[0]~17\);

-- Location: FF_X32_Y30_N1
\inst3|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[0]~16_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(0));

-- Location: LCCOMB_X32_Y30_N2
\inst3|num[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[1]~18_combout\ = (\inst3|num\(1) & (!\inst3|num[0]~17\)) # (!\inst3|num\(1) & ((\inst3|num[0]~17\) # (GND)))
-- \inst3|num[1]~19\ = CARRY((!\inst3|num[0]~17\) # (!\inst3|num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|num\(1),
	datad => VCC,
	cin => \inst3|num[0]~17\,
	combout => \inst3|num[1]~18_combout\,
	cout => \inst3|num[1]~19\);

-- Location: FF_X32_Y30_N3
\inst3|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[1]~18_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(1));

-- Location: LCCOMB_X32_Y30_N4
\inst3|num[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[2]~20_combout\ = (\inst3|num\(2) & (\inst3|num[1]~19\ $ (GND))) # (!\inst3|num\(2) & (!\inst3|num[1]~19\ & VCC))
-- \inst3|num[2]~21\ = CARRY((\inst3|num\(2) & !\inst3|num[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|num\(2),
	datad => VCC,
	cin => \inst3|num[1]~19\,
	combout => \inst3|num[2]~20_combout\,
	cout => \inst3|num[2]~21\);

-- Location: FF_X32_Y30_N5
\inst3|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[2]~20_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(2));

-- Location: LCCOMB_X32_Y30_N6
\inst3|num[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[3]~22_combout\ = (\inst3|num\(3) & (!\inst3|num[2]~21\)) # (!\inst3|num\(3) & ((\inst3|num[2]~21\) # (GND)))
-- \inst3|num[3]~23\ = CARRY((!\inst3|num[2]~21\) # (!\inst3|num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(3),
	datad => VCC,
	cin => \inst3|num[2]~21\,
	combout => \inst3|num[3]~22_combout\,
	cout => \inst3|num[3]~23\);

-- Location: FF_X32_Y30_N7
\inst3|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[3]~22_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(3));

-- Location: LCCOMB_X32_Y30_N8
\inst3|num[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[4]~24_combout\ = (\inst3|num\(4) & (\inst3|num[3]~23\ $ (GND))) # (!\inst3|num\(4) & (!\inst3|num[3]~23\ & VCC))
-- \inst3|num[4]~25\ = CARRY((\inst3|num\(4) & !\inst3|num[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|num\(4),
	datad => VCC,
	cin => \inst3|num[3]~23\,
	combout => \inst3|num[4]~24_combout\,
	cout => \inst3|num[4]~25\);

-- Location: FF_X32_Y30_N9
\inst3|num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[4]~24_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(4));

-- Location: LCCOMB_X32_Y30_N10
\inst3|num[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[5]~26_combout\ = (\inst3|num\(5) & (!\inst3|num[4]~25\)) # (!\inst3|num\(5) & ((\inst3|num[4]~25\) # (GND)))
-- \inst3|num[5]~27\ = CARRY((!\inst3|num[4]~25\) # (!\inst3|num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(5),
	datad => VCC,
	cin => \inst3|num[4]~25\,
	combout => \inst3|num[5]~26_combout\,
	cout => \inst3|num[5]~27\);

-- Location: FF_X32_Y30_N11
\inst3|num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[5]~26_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(5));

-- Location: LCCOMB_X32_Y30_N12
\inst3|num[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[6]~28_combout\ = (\inst3|num\(6) & (\inst3|num[5]~27\ $ (GND))) # (!\inst3|num\(6) & (!\inst3|num[5]~27\ & VCC))
-- \inst3|num[6]~29\ = CARRY((\inst3|num\(6) & !\inst3|num[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(6),
	datad => VCC,
	cin => \inst3|num[5]~27\,
	combout => \inst3|num[6]~28_combout\,
	cout => \inst3|num[6]~29\);

-- Location: FF_X32_Y30_N13
\inst3|num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[6]~28_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(6));

-- Location: LCCOMB_X32_Y30_N14
\inst3|num[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[7]~30_combout\ = (\inst3|num\(7) & (!\inst3|num[6]~29\)) # (!\inst3|num\(7) & ((\inst3|num[6]~29\) # (GND)))
-- \inst3|num[7]~31\ = CARRY((!\inst3|num[6]~29\) # (!\inst3|num\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|num\(7),
	datad => VCC,
	cin => \inst3|num[6]~29\,
	combout => \inst3|num[7]~30_combout\,
	cout => \inst3|num[7]~31\);

-- Location: FF_X32_Y30_N15
\inst3|num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[7]~30_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(7));

-- Location: LCCOMB_X32_Y30_N16
\inst3|num[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[8]~32_combout\ = (\inst3|num\(8) & (\inst3|num[7]~31\ $ (GND))) # (!\inst3|num\(8) & (!\inst3|num[7]~31\ & VCC))
-- \inst3|num[8]~33\ = CARRY((\inst3|num\(8) & !\inst3|num[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|num\(8),
	datad => VCC,
	cin => \inst3|num[7]~31\,
	combout => \inst3|num[8]~32_combout\,
	cout => \inst3|num[8]~33\);

-- Location: FF_X32_Y30_N17
\inst3|num[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[8]~32_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(8));

-- Location: LCCOMB_X32_Y30_N18
\inst3|num[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[9]~34_combout\ = (\inst3|num\(9) & (!\inst3|num[8]~33\)) # (!\inst3|num\(9) & ((\inst3|num[8]~33\) # (GND)))
-- \inst3|num[9]~35\ = CARRY((!\inst3|num[8]~33\) # (!\inst3|num\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(9),
	datad => VCC,
	cin => \inst3|num[8]~33\,
	combout => \inst3|num[9]~34_combout\,
	cout => \inst3|num[9]~35\);

-- Location: FF_X31_Y30_N17
\inst3|num[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|num[9]~34_combout\,
	sclr => \inst3|Equal0~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(9));

-- Location: LCCOMB_X32_Y30_N20
\inst3|num[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[10]~36_combout\ = (\inst3|num\(10) & (\inst3|num[9]~35\ $ (GND))) # (!\inst3|num\(10) & (!\inst3|num[9]~35\ & VCC))
-- \inst3|num[10]~37\ = CARRY((\inst3|num\(10) & !\inst3|num[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|num\(10),
	datad => VCC,
	cin => \inst3|num[9]~35\,
	combout => \inst3|num[10]~36_combout\,
	cout => \inst3|num[10]~37\);

-- Location: FF_X32_Y30_N21
\inst3|num[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[10]~36_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(10));

-- Location: LCCOMB_X32_Y30_N22
\inst3|num[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[11]~38_combout\ = (\inst3|num\(11) & (!\inst3|num[10]~37\)) # (!\inst3|num\(11) & ((\inst3|num[10]~37\) # (GND)))
-- \inst3|num[11]~39\ = CARRY((!\inst3|num[10]~37\) # (!\inst3|num\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(11),
	datad => VCC,
	cin => \inst3|num[10]~37\,
	combout => \inst3|num[11]~38_combout\,
	cout => \inst3|num[11]~39\);

-- Location: FF_X32_Y30_N23
\inst3|num[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[11]~38_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(11));

-- Location: LCCOMB_X32_Y30_N24
\inst3|num[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[12]~40_combout\ = (\inst3|num\(12) & (\inst3|num[11]~39\ $ (GND))) # (!\inst3|num\(12) & (!\inst3|num[11]~39\ & VCC))
-- \inst3|num[12]~41\ = CARRY((\inst3|num\(12) & !\inst3|num[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|num\(12),
	datad => VCC,
	cin => \inst3|num[11]~39\,
	combout => \inst3|num[12]~40_combout\,
	cout => \inst3|num[12]~41\);

-- Location: FF_X32_Y30_N25
\inst3|num[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[12]~40_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(12));

-- Location: LCCOMB_X32_Y30_N26
\inst3|num[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[13]~42_combout\ = (\inst3|num\(13) & (!\inst3|num[12]~41\)) # (!\inst3|num\(13) & ((\inst3|num[12]~41\) # (GND)))
-- \inst3|num[13]~43\ = CARRY((!\inst3|num[12]~41\) # (!\inst3|num\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(13),
	datad => VCC,
	cin => \inst3|num[12]~41\,
	combout => \inst3|num[13]~42_combout\,
	cout => \inst3|num[13]~43\);

-- Location: FF_X32_Y30_N27
\inst3|num[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[13]~42_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(13));

-- Location: LCCOMB_X29_Y33_N8
\inst|clk_spi_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_spi_count[0]~3_combout\ = !\inst|clk_spi_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clk_spi_count\(0),
	combout => \inst|clk_spi_count[0]~3_combout\);

-- Location: FF_X29_Y33_N9
\inst|clk_spi_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|clk_spi_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_spi_count\(0));

-- Location: LCCOMB_X29_Y33_N22
\inst|clk_spi_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_spi_count[1]~0_combout\ = \inst|clk_spi_count\(1) $ (\inst|clk_spi_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clk_spi_count\(1),
	datad => \inst|clk_spi_count\(0),
	combout => \inst|clk_spi_count[1]~0_combout\);

-- Location: FF_X29_Y33_N23
\inst|clk_spi_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|clk_spi_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_spi_count\(1));

-- Location: LCCOMB_X29_Y33_N28
\inst|clk_spi_count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_spi_count[2]~1_combout\ = \inst|clk_spi_count\(2) $ (((\inst|clk_spi_count\(0) & \inst|clk_spi_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_spi_count\(0),
	datac => \inst|clk_spi_count\(2),
	datad => \inst|clk_spi_count\(1),
	combout => \inst|clk_spi_count[2]~1_combout\);

-- Location: FF_X29_Y33_N29
\inst|clk_spi_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|clk_spi_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_spi_count\(2));

-- Location: LCCOMB_X29_Y33_N2
\inst|clk_spi_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_spi_count[3]~2_combout\ = \inst|clk_spi_count\(3) $ (((\inst|clk_spi_count\(0) & (\inst|clk_spi_count\(1) & \inst|clk_spi_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_spi_count\(0),
	datab => \inst|clk_spi_count\(1),
	datac => \inst|clk_spi_count\(3),
	datad => \inst|clk_spi_count\(2),
	combout => \inst|clk_spi_count[3]~2_combout\);

-- Location: FF_X29_Y33_N3
\inst|clk_spi_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|clk_spi_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_spi_count\(3));

-- Location: LCCOMB_X29_Y33_N20
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|clk_spi_count\(1) & (!\inst|clk_spi_count\(2) & (!\inst|clk_spi_count\(0) & !\inst|clk_spi_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_spi_count\(1),
	datab => \inst|clk_spi_count\(2),
	datac => \inst|clk_spi_count\(0),
	datad => \inst|clk_spi_count\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y33_N6
\inst|clk_spi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_spi~0_combout\ = \inst|clk_spi~q\ $ (\inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_spi~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|clk_spi~0_combout\);

-- Location: LCCOMB_X29_Y33_N10
\inst|clk_spi~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_spi~feeder_combout\ = \inst|clk_spi~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clk_spi~0_combout\,
	combout => \inst|clk_spi~feeder_combout\);

-- Location: FF_X29_Y33_N11
\inst|clk_spi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|clk_spi~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_spi~q\);

-- Location: CLKCTRL_G13
\inst|clk_spi~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk_spi~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk_spi~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y32_N20
\inst|count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[0]~3_combout\ = !\inst|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(0),
	combout => \inst|count[0]~3_combout\);

-- Location: LCCOMB_X29_Y32_N20
\inst|active2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|active2~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|active2~feeder_combout\);

-- Location: FF_X29_Y32_N21
\inst|active2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|active2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|active2~q\);

-- Location: FF_X30_Y32_N21
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|count[0]~3_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X30_Y32_N22
\inst|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[1]~0_combout\ = \inst|count\(1) $ (\inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(1),
	datad => \inst|count\(0),
	combout => \inst|count[1]~0_combout\);

-- Location: FF_X30_Y32_N23
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|count[1]~0_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X30_Y32_N16
\inst|count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[2]~1_combout\ = \inst|count\(2) $ (((\inst|count\(1) & \inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datac => \inst|count\(2),
	datad => \inst|count\(0),
	combout => \inst|count[2]~1_combout\);

-- Location: FF_X30_Y32_N17
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|count[2]~1_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X30_Y32_N26
\inst|count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~2_combout\ = \inst|count\(3) $ (((\inst|count\(1) & (\inst|count\(0) & \inst|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(0),
	datac => \inst|count\(3),
	datad => \inst|count\(2),
	combout => \inst|count[3]~2_combout\);

-- Location: FF_X30_Y32_N27
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|count[3]~2_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X29_Y32_N26
\inst|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~5_combout\ = (!\inst|count\(3) & (!\inst|count\(0) & (\inst|count\(2) & \inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(0),
	datac => \inst|count\(2),
	datad => \inst|count\(1),
	combout => \inst|Equal4~5_combout\);

-- Location: LCCOMB_X30_Y32_N28
\inst|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~2_combout\ = (!\inst|count\(3) & (!\inst|count\(2) & (!\inst|count\(1) & !\inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(2),
	datac => \inst|count\(1),
	datad => \inst|count\(0),
	combout => \inst|Equal4~2_combout\);

-- Location: IOIBUF_X25_Y34_N1
\DOUT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DOUT,
	o => \DOUT~input_o\);

-- Location: LCCOMB_X29_Y32_N10
\inst|data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~2_combout\ = (!\inst|Equal4~2_combout\ & ((\inst|Equal4~5_combout\ & ((\DOUT~input_o\))) # (!\inst|Equal4~5_combout\ & (\inst|data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~5_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|data\(9),
	datad => \DOUT~input_o\,
	combout => \inst|data~2_combout\);

-- Location: FF_X29_Y32_N11
\inst|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~2_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(9));

-- Location: LCCOMB_X30_Y30_N20
\inst|Data0[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[9]~feeder_combout\ = \inst|data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data\(9),
	combout => \inst|Data0[9]~feeder_combout\);

-- Location: LCCOMB_X30_Y32_N18
\inst|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~1_combout\ = (\inst|count\(3) & (\inst|count\(0) & (\inst|count\(1) & \inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(0),
	datac => \inst|count\(1),
	datad => \inst|count\(2),
	combout => \inst|Equal4~1_combout\);

-- Location: LCCOMB_X30_Y32_N10
\inst|channel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|channel[0]~0_combout\ = \inst|channel\(0) $ (\inst|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|channel\(0),
	datad => \inst|Equal4~1_combout\,
	combout => \inst|channel[0]~0_combout\);

-- Location: FF_X30_Y32_N11
\inst|channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|channel[0]~0_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|channel\(0));

-- Location: LCCOMB_X30_Y32_N30
\inst|channel[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|channel[1]~2_combout\ = \inst|channel\(1) $ (((\inst|Equal4~1_combout\ & \inst|channel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal4~1_combout\,
	datac => \inst|channel\(1),
	datad => \inst|channel\(0),
	combout => \inst|channel[1]~2_combout\);

-- Location: FF_X30_Y32_N31
\inst|channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|channel[1]~2_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|channel\(1));

-- Location: LCCOMB_X30_Y32_N8
\inst|channel[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|channel[2]~1_combout\ = \inst|channel\(2) $ (((\inst|channel\(1) & (\inst|Equal4~1_combout\ & \inst|channel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|channel\(1),
	datab => \inst|Equal4~1_combout\,
	datac => \inst|channel\(2),
	datad => \inst|channel\(0),
	combout => \inst|channel[2]~1_combout\);

-- Location: FF_X30_Y32_N9
\inst|channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|channel[2]~1_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|channel\(2));

-- Location: LCCOMB_X30_Y32_N14
\inst|Data0[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[11]~0_combout\ = (!\inst|channel\(0) & (!\inst|channel\(2) & (\inst|channel\(1) & \inst|active2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|channel\(0),
	datab => \inst|channel\(2),
	datac => \inst|channel\(1),
	datad => \inst|active2~q\,
	combout => \inst|Data0[11]~0_combout\);

-- Location: LCCOMB_X29_Y30_N24
\inst|Data0[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[11]~1_combout\ = (\inst|Equal4~2_combout\ & \inst|Data0[11]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~2_combout\,
	datad => \inst|Data0[11]~0_combout\,
	combout => \inst|Data0[11]~1_combout\);

-- Location: FF_X30_Y30_N21
\inst|Data0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[9]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(9));

-- Location: LCCOMB_X29_Y32_N0
\inst|Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~6_combout\ = (!\inst|count\(3) & (\inst|count\(0) & (\inst|count\(2) & !\inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(0),
	datac => \inst|count\(2),
	datad => \inst|count\(1),
	combout => \inst|Equal4~6_combout\);

-- Location: LCCOMB_X29_Y32_N16
\inst|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~3_combout\ = (!\inst|Equal4~2_combout\ & ((\inst|Equal4~6_combout\ & (\DOUT~input_o\)) # (!\inst|Equal4~6_combout\ & ((\inst|data\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|data\(10),
	datad => \inst|Equal4~6_combout\,
	combout => \inst|data~3_combout\);

-- Location: FF_X29_Y32_N17
\inst|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~3_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(10));

-- Location: FF_X30_Y30_N15
\inst|Data0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	asdata => \inst|data\(10),
	sload => VCC,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(10));

-- Location: LCCOMB_X29_Y31_N0
\inst|Equal4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~7_combout\ = (\inst|count\(1) & (\inst|count\(2) & (\inst|count\(0) & !\inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(3),
	combout => \inst|Equal4~7_combout\);

-- Location: LCCOMB_X29_Y32_N22
\inst|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~4_combout\ = (!\inst|Equal4~2_combout\ & ((\inst|Equal4~7_combout\ & (\DOUT~input_o\)) # (!\inst|Equal4~7_combout\ & ((\inst|data\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|data\(8),
	datad => \inst|Equal4~7_combout\,
	combout => \inst|data~4_combout\);

-- Location: FF_X29_Y32_N23
\inst|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~4_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(8));

-- Location: FF_X30_Y30_N9
\inst|Data0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	asdata => \inst|data\(8),
	sload => VCC,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(8));

-- Location: LCCOMB_X30_Y32_N4
\inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (!\inst|count\(1) & (!\inst|count\(0) & (!\inst|count\(3) & \inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(0),
	datac => \inst|count\(3),
	datad => \inst|count\(2),
	combout => \inst|Equal4~0_combout\);

-- Location: LCCOMB_X29_Y32_N24
\inst|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~5_combout\ = (!\inst|Equal4~2_combout\ & ((\inst|Equal4~0_combout\ & (\DOUT~input_o\)) # (!\inst|Equal4~0_combout\ & ((\inst|data\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|data\(11),
	datad => \inst|Equal4~0_combout\,
	combout => \inst|data~5_combout\);

-- Location: FF_X29_Y32_N25
\inst|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~5_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(11));

-- Location: FF_X30_Y30_N27
\inst|Data0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	asdata => \inst|data\(11),
	sload => VCC,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(11));

-- Location: LCCOMB_X30_Y30_N8
\inst4|buttonOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[0]~0_combout\ = (\inst|Data0\(9)) # ((\inst|Data0\(10)) # ((\inst|Data0\(8)) # (\inst|Data0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(9),
	datab => \inst|Data0\(10),
	datac => \inst|Data0\(8),
	datad => \inst|Data0\(11),
	combout => \inst4|buttonOut[0]~0_combout\);

-- Location: LCCOMB_X30_Y32_N2
\inst|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~4_combout\ = (\inst|count\(3) & (\inst|count\(0) & (!\inst|count\(1) & !\inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(0),
	datac => \inst|count\(1),
	datad => \inst|count\(2),
	combout => \inst|Equal4~4_combout\);

-- Location: LCCOMB_X29_Y32_N8
\inst|data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~1_combout\ = (!\inst|Equal4~2_combout\ & ((\inst|Equal4~4_combout\ & (\DOUT~input_o\)) # (!\inst|Equal4~4_combout\ & ((\inst|data\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|data\(6),
	datad => \inst|Equal4~4_combout\,
	combout => \inst|data~1_combout\);

-- Location: FF_X29_Y32_N9
\inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~1_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(6));

-- Location: FF_X29_Y30_N3
\inst|Data0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	asdata => \inst|data\(6),
	sload => VCC,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(6));

-- Location: LCCOMB_X30_Y32_N24
\inst|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~3_combout\ = (\inst|count\(3) & (!\inst|count\(0) & (!\inst|count\(1) & !\inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(0),
	datac => \inst|count\(1),
	datad => \inst|count\(2),
	combout => \inst|Equal4~3_combout\);

-- Location: LCCOMB_X29_Y32_N6
\inst|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~0_combout\ = (!\inst|Equal4~2_combout\ & ((\inst|Equal4~3_combout\ & (\DOUT~input_o\)) # (!\inst|Equal4~3_combout\ & ((\inst|data\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|data\(7),
	datad => \inst|Equal4~3_combout\,
	combout => \inst|data~0_combout\);

-- Location: FF_X29_Y32_N7
\inst|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~0_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(7));

-- Location: FF_X29_Y30_N29
\inst|Data0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	asdata => \inst|data\(7),
	sload => VCC,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(7));

-- Location: LCCOMB_X29_Y31_N2
\inst|Equal4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~8_combout\ = (\inst|count\(1) & (!\inst|count\(2) & (\inst|count\(0) & \inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(3),
	combout => \inst|Equal4~8_combout\);

-- Location: LCCOMB_X29_Y32_N28
\inst|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~7_combout\ = (!\inst|Equal4~2_combout\ & ((\inst|Equal4~8_combout\ & (\DOUT~input_o\)) # (!\inst|Equal4~8_combout\ & ((\inst|data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|data\(4),
	datad => \inst|Equal4~8_combout\,
	combout => \inst|data~7_combout\);

-- Location: FF_X29_Y32_N29
\inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~7_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(4));

-- Location: FF_X29_Y30_N7
\inst|Data0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	asdata => \inst|data\(4),
	sload => VCC,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(4));

-- Location: LCCOMB_X29_Y32_N2
\inst|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~6_combout\ = (!\inst|Equal4~2_combout\ & ((\inst|Equal4~1_combout\ & (\DOUT~input_o\)) # (!\inst|Equal4~1_combout\ & ((\inst|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|data\(0),
	datad => \inst|Equal4~1_combout\,
	combout => \inst|data~6_combout\);

-- Location: FF_X29_Y32_N3
\inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~6_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(0));

-- Location: FF_X29_Y30_N25
\inst|Data0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	asdata => \inst|data\(0),
	sload => VCC,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(0));

-- Location: LCCOMB_X29_Y31_N12
\inst|Equal4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~10_combout\ = (!\inst|count\(1) & (\inst|count\(2) & (\inst|count\(0) & \inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(3),
	combout => \inst|Equal4~10_combout\);

-- Location: LCCOMB_X29_Y32_N4
\inst|data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~9_combout\ = (!\inst|Equal4~2_combout\ & ((\inst|Equal4~10_combout\ & (\DOUT~input_o\)) # (!\inst|Equal4~10_combout\ & ((\inst|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|data\(2),
	datad => \inst|Equal4~10_combout\,
	combout => \inst|data~9_combout\);

-- Location: FF_X29_Y32_N5
\inst|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~9_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(2));

-- Location: LCCOMB_X29_Y30_N22
\inst|Data0[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[2]~feeder_combout\ = \inst|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data\(2),
	combout => \inst|Data0[2]~feeder_combout\);

-- Location: FF_X29_Y30_N23
\inst|Data0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[2]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(2));

-- Location: LCCOMB_X29_Y31_N10
\inst|Equal4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~11_combout\ = (\inst|count\(1) & (\inst|count\(2) & (!\inst|count\(0) & \inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(3),
	combout => \inst|Equal4~11_combout\);

-- Location: LCCOMB_X29_Y32_N30
\inst|data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~10_combout\ = (!\inst|Equal4~2_combout\ & ((\inst|Equal4~11_combout\ & (\DOUT~input_o\)) # (!\inst|Equal4~11_combout\ & ((\inst|data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|data\(1),
	datad => \inst|Equal4~11_combout\,
	combout => \inst|data~10_combout\);

-- Location: FF_X29_Y32_N31
\inst|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~10_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(1));

-- Location: LCCOMB_X29_Y30_N20
\inst|Data0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[1]~feeder_combout\ = \inst|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data\(1),
	combout => \inst|Data0[1]~feeder_combout\);

-- Location: FF_X29_Y30_N21
\inst|Data0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[1]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(1));

-- Location: LCCOMB_X29_Y31_N16
\inst|Equal4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~12_combout\ = (!\inst|count\(1) & (\inst|count\(2) & (!\inst|count\(0) & \inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(3),
	combout => \inst|Equal4~12_combout\);

-- Location: LCCOMB_X29_Y32_N12
\inst|data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~11_combout\ = (!\inst|Equal4~2_combout\ & ((\inst|Equal4~12_combout\ & (\DOUT~input_o\)) # (!\inst|Equal4~12_combout\ & ((\inst|data\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|data\(3),
	datad => \inst|Equal4~12_combout\,
	combout => \inst|data~11_combout\);

-- Location: FF_X29_Y32_N13
\inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~11_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(3));

-- Location: FF_X29_Y30_N15
\inst|Data0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	asdata => \inst|data\(3),
	sload => VCC,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(3));

-- Location: LCCOMB_X29_Y30_N6
\inst4|buttonOut[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[0]~1_combout\ = (\inst|Data0\(2)) # ((\inst|Data0\(1)) # (\inst|Data0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(2),
	datab => \inst|Data0\(1),
	datad => \inst|Data0\(3),
	combout => \inst4|buttonOut[0]~1_combout\);

-- Location: LCCOMB_X29_Y32_N18
\inst|Equal4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~9_combout\ = (\inst|count\(3) & (!\inst|count\(0) & (!\inst|count\(2) & \inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(0),
	datac => \inst|count\(2),
	datad => \inst|count\(1),
	combout => \inst|Equal4~9_combout\);

-- Location: LCCOMB_X29_Y32_N14
\inst|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~8_combout\ = (!\inst|Equal4~2_combout\ & ((\inst|Equal4~9_combout\ & (\DOUT~input_o\)) # (!\inst|Equal4~9_combout\ & ((\inst|data\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|data\(5),
	datad => \inst|Equal4~9_combout\,
	combout => \inst|data~8_combout\);

-- Location: FF_X29_Y32_N15
\inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~8_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(5));

-- Location: LCCOMB_X29_Y30_N4
\inst|Data0[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[5]~feeder_combout\ = \inst|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(5),
	combout => \inst|Data0[5]~feeder_combout\);

-- Location: FF_X29_Y30_N5
\inst|Data0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[5]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(5));

-- Location: LCCOMB_X29_Y30_N8
\inst4|buttonOut[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[0]~2_combout\ = (\inst|Data0\(4) & (((!\inst|Data0\(5)) # (!\inst4|buttonOut[0]~1_combout\)))) # (!\inst|Data0\(4) & ((\inst|Data0\(0)) # ((\inst4|buttonOut[0]~1_combout\) # (\inst|Data0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(4),
	datab => \inst|Data0\(0),
	datac => \inst4|buttonOut[0]~1_combout\,
	datad => \inst|Data0\(5),
	combout => \inst4|buttonOut[0]~2_combout\);

-- Location: LCCOMB_X30_Y30_N24
\inst4|buttonOut[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[0]~3_combout\ = (\inst4|buttonOut[0]~0_combout\) # ((\inst|Data0\(6)) # ((\inst|Data0\(7)) # (!\inst4|buttonOut[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|buttonOut[0]~0_combout\,
	datab => \inst|Data0\(6),
	datac => \inst|Data0\(7),
	datad => \inst4|buttonOut[0]~2_combout\,
	combout => \inst4|buttonOut[0]~3_combout\);

-- Location: LCCOMB_X30_Y30_N26
\inst4|buttonOut[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[2]~9_combout\ = (\inst|Data0\(9) & (\inst|Data0\(8) & (!\inst|Data0\(11) & \inst|Data0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(9),
	datab => \inst|Data0\(8),
	datac => \inst|Data0\(11),
	datad => \inst|Data0\(6),
	combout => \inst4|buttonOut[2]~9_combout\);

-- Location: LCCOMB_X29_Y30_N0
\inst4|buttonOut[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[1]~13_combout\ = (\inst|Data0\(2) & ((\inst|Data0\(1)) # ((\inst|Data0\(0) & \inst|Data0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(2),
	datab => \inst|Data0\(0),
	datac => \inst|Data0\(5),
	datad => \inst|Data0\(1),
	combout => \inst4|buttonOut[1]~13_combout\);

-- Location: LCCOMB_X29_Y30_N30
\inst4|buttonOut[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[1]~14_combout\ = (\inst|Data0\(4) & (!\inst|Data0\(5))) # (!\inst|Data0\(4) & ((\inst|Data0\(5) & ((!\inst4|buttonOut[1]~13_combout\) # (!\inst|Data0\(3)))) # (!\inst|Data0\(5) & ((\inst|Data0\(3)) # (\inst4|buttonOut[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(4),
	datab => \inst|Data0\(5),
	datac => \inst|Data0\(3),
	datad => \inst4|buttonOut[1]~13_combout\,
	combout => \inst4|buttonOut[1]~14_combout\);

-- Location: LCCOMB_X30_Y30_N2
\inst4|buttonOut[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[1]~15_combout\ = (\inst|Data0\(10)) # (((!\inst4|buttonOut[1]~14_combout\) # (!\inst4|buttonOut[2]~9_combout\)) # (!\inst|Data0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(10),
	datab => \inst|Data0\(7),
	datac => \inst4|buttonOut[2]~9_combout\,
	datad => \inst4|buttonOut[1]~14_combout\,
	combout => \inst4|buttonOut[1]~15_combout\);

-- Location: LCCOMB_X30_Y30_N14
\inst4|buttonOut[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[4]~16_combout\ = (\inst|Data0\(9)) # ((\inst|Data0\(8)) # ((!\inst|Data0\(11)) # (!\inst|Data0\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(9),
	datab => \inst|Data0\(8),
	datac => \inst|Data0\(10),
	datad => \inst|Data0\(11),
	combout => \inst4|buttonOut[4]~16_combout\);

-- Location: LCCOMB_X29_Y30_N12
\inst4|buttonOut[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[4]~17_combout\ = (\inst|Data0\(2)) # ((\inst|Data0\(1) & ((\inst|Data0\(5)) # (\inst|Data0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(5),
	datab => \inst|Data0\(0),
	datac => \inst|Data0\(2),
	datad => \inst|Data0\(1),
	combout => \inst4|buttonOut[4]~17_combout\);

-- Location: LCCOMB_X29_Y30_N18
\inst4|buttonOut[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[4]~18_combout\ = (\inst|Data0\(4) & ((\inst|Data0\(5) & ((!\inst4|buttonOut[4]~17_combout\) # (!\inst|Data0\(3)))) # (!\inst|Data0\(5) & ((\inst|Data0\(3)) # (\inst4|buttonOut[4]~17_combout\))))) # (!\inst|Data0\(4) & (\inst|Data0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(4),
	datab => \inst|Data0\(5),
	datac => \inst|Data0\(3),
	datad => \inst4|buttonOut[4]~17_combout\,
	combout => \inst4|buttonOut[4]~18_combout\);

-- Location: LCCOMB_X30_Y30_N16
\inst4|buttonOut[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[4]~19_combout\ = (((\inst4|buttonOut[4]~16_combout\) # (!\inst4|buttonOut[4]~18_combout\)) # (!\inst|Data0\(7))) # (!\inst|Data0\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(6),
	datab => \inst|Data0\(7),
	datac => \inst4|buttonOut[4]~16_combout\,
	datad => \inst4|buttonOut[4]~18_combout\,
	combout => \inst4|buttonOut[4]~19_combout\);

-- Location: LCCOMB_X30_Y30_N22
\inst4|buttonOut[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[3]~4_combout\ = (\inst|Data0\(8)) # ((\inst|Data0\(10)) # (!\inst|Data0\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data0\(8),
	datac => \inst|Data0\(10),
	datad => \inst|Data0\(9),
	combout => \inst4|buttonOut[3]~4_combout\);

-- Location: LCCOMB_X29_Y30_N26
\inst4|buttonOut[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[3]~7_combout\ = ((\inst|Data0\(5) & (\inst|Data0\(7))) # (!\inst|Data0\(5) & ((\inst|Data0\(6))))) # (!\inst|Data0\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(7),
	datab => \inst|Data0\(5),
	datac => \inst|Data0\(6),
	datad => \inst|Data0\(11),
	combout => \inst4|buttonOut[3]~7_combout\);

-- Location: LCCOMB_X29_Y30_N2
\inst4|buttonOut[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[3]~5_combout\ = ((!\inst|Data0\(1) & (!\inst|Data0\(0) & !\inst|Data0\(2)))) # (!\inst|Data0\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(1),
	datab => \inst|Data0\(0),
	datac => \inst|Data0\(6),
	datad => \inst|Data0\(2),
	combout => \inst4|buttonOut[3]~5_combout\);

-- Location: LCCOMB_X29_Y30_N28
\inst4|buttonOut[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[3]~6_combout\ = (!\inst|Data0\(7) & (((\inst4|buttonOut[3]~5_combout\) # (!\inst|Data0\(3))) # (!\inst|Data0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(4),
	datab => \inst|Data0\(3),
	datac => \inst|Data0\(7),
	datad => \inst4|buttonOut[3]~5_combout\,
	combout => \inst4|buttonOut[3]~6_combout\);

-- Location: LCCOMB_X29_Y30_N16
\inst4|buttonOut[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[3]~8_combout\ = (\inst4|buttonOut[3]~4_combout\) # ((\inst4|buttonOut[3]~7_combout\) # (\inst4|buttonOut[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|buttonOut[3]~4_combout\,
	datac => \inst4|buttonOut[3]~7_combout\,
	datad => \inst4|buttonOut[3]~6_combout\,
	combout => \inst4|buttonOut[3]~8_combout\);

-- Location: LCCOMB_X29_Y30_N14
\inst4|buttonOut[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[2]~10_combout\ = (\inst|Data0\(4) & ((\inst|Data0\(0)) # ((\inst|Data0\(3)) # (\inst|Data0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(4),
	datab => \inst|Data0\(0),
	datac => \inst|Data0\(3),
	datad => \inst|Data0\(1),
	combout => \inst4|buttonOut[2]~10_combout\);

-- Location: LCCOMB_X29_Y30_N10
\inst4|buttonOut[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[2]~11_combout\ = (\inst|Data0\(5) & (((!\inst|Data0\(3)) # (!\inst4|buttonOut[2]~10_combout\)) # (!\inst|Data0\(2)))) # (!\inst|Data0\(5) & (\inst4|buttonOut[2]~10_combout\ & ((\inst|Data0\(2)) # (\inst|Data0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(2),
	datab => \inst|Data0\(5),
	datac => \inst4|buttonOut[2]~10_combout\,
	datad => \inst|Data0\(3),
	combout => \inst4|buttonOut[2]~11_combout\);

-- Location: LCCOMB_X30_Y30_N0
\inst4|buttonOut[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|buttonOut[2]~12_combout\ = ((\inst|Data0\(7)) # ((!\inst4|buttonOut[2]~11_combout\) # (!\inst4|buttonOut[2]~9_combout\))) # (!\inst|Data0\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(10),
	datab => \inst|Data0\(7),
	datac => \inst4|buttonOut[2]~9_combout\,
	datad => \inst4|buttonOut[2]~11_combout\,
	combout => \inst4|buttonOut[2]~12_combout\);

-- Location: LCCOMB_X30_Y30_N10
\inst7|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~13_combout\ = (\inst4|buttonOut[1]~15_combout\ & (\inst4|buttonOut[4]~19_combout\ & (\inst4|buttonOut[3]~8_combout\ & \inst4|buttonOut[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|buttonOut[1]~15_combout\,
	datab => \inst4|buttonOut[4]~19_combout\,
	datac => \inst4|buttonOut[3]~8_combout\,
	datad => \inst4|buttonOut[2]~12_combout\,
	combout => \inst7|state~13_combout\);

-- Location: LCCOMB_X30_Y30_N6
\inst7|state.f0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state.f0~0_combout\ = (\inst4|buttonOut[0]~3_combout\ & ((\inst7|state.f0~q\) # (!\inst7|state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|buttonOut[0]~3_combout\,
	datac => \inst7|state.f0~q\,
	datad => \inst7|state~13_combout\,
	combout => \inst7|state.f0~0_combout\);

-- Location: FF_X30_Y30_N7
\inst7|state.f0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|state.f0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|state.f0~q\);

-- Location: LCCOMB_X30_Y30_N28
\inst7|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~14_combout\ = (\inst4|buttonOut[0]~3_combout\ & (((\inst7|state.f1~q\ & \inst7|state~13_combout\)) # (!\inst4|buttonOut[1]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|buttonOut[1]~15_combout\,
	datab => \inst4|buttonOut[0]~3_combout\,
	datac => \inst7|state.f1~q\,
	datad => \inst7|state~13_combout\,
	combout => \inst7|state~14_combout\);

-- Location: FF_X30_Y30_N29
\inst7|state.f1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|state.f1~q\);

-- Location: LCCOMB_X30_Y30_N30
\inst7|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~16_combout\ = (\inst4|buttonOut[0]~3_combout\ & (((\inst7|state.f3~q\ & \inst7|state~13_combout\)) # (!\inst4|buttonOut[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|buttonOut[3]~8_combout\,
	datab => \inst4|buttonOut[0]~3_combout\,
	datac => \inst7|state.f3~q\,
	datad => \inst7|state~13_combout\,
	combout => \inst7|state~16_combout\);

-- Location: FF_X30_Y30_N31
\inst7|state.f3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|state.f3~q\);

-- Location: LCCOMB_X32_Y30_N28
\inst3|num[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[14]~44_combout\ = (\inst3|num\(14) & (\inst3|num[13]~43\ $ (GND))) # (!\inst3|num\(14) & (!\inst3|num[13]~43\ & VCC))
-- \inst3|num[14]~45\ = CARRY((\inst3|num\(14) & !\inst3|num[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|num\(14),
	datad => VCC,
	cin => \inst3|num[13]~43\,
	combout => \inst3|num[14]~44_combout\,
	cout => \inst3|num[14]~45\);

-- Location: FF_X32_Y30_N29
\inst3|num[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[14]~44_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(14));

-- Location: LCCOMB_X31_Y30_N26
\inst3|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~11_combout\ = \inst3|num\(14) $ (((\inst7|state.f1~q\) # ((!\inst7|state.f0~q\) # (!\inst7|state.f3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.f1~q\,
	datab => \inst7|state.f3~q\,
	datac => \inst7|state.f0~q\,
	datad => \inst3|num\(14),
	combout => \inst3|Equal0~11_combout\);

-- Location: LCCOMB_X31_Y30_N2
\inst7|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~15_combout\ = (\inst4|buttonOut[0]~3_combout\ & (((\inst7|state.f2~q\ & \inst7|state~13_combout\)) # (!\inst4|buttonOut[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|buttonOut[2]~12_combout\,
	datab => \inst4|buttonOut[0]~3_combout\,
	datac => \inst7|state.f2~q\,
	datad => \inst7|state~13_combout\,
	combout => \inst7|state~15_combout\);

-- Location: FF_X31_Y30_N3
\inst7|state.f2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst7|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|state.f2~q\);

-- Location: LCCOMB_X31_Y30_N16
\inst7|freqOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|freqOut~0_combout\ = (!\inst7|state.f2~q\ & !\inst7|state.f1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|state.f2~q\,
	datad => \inst7|state.f1~q\,
	combout => \inst7|freqOut~0_combout\);

-- Location: LCCOMB_X31_Y30_N12
\inst3|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~12_combout\ = (!\inst3|Equal0~11_combout\ & (\inst3|num\(13) $ (((\inst7|state.f0~q\ & !\inst7|freqOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(13),
	datab => \inst7|state.f0~q\,
	datac => \inst3|Equal0~11_combout\,
	datad => \inst7|freqOut~0_combout\,
	combout => \inst3|Equal0~12_combout\);

-- Location: LCCOMB_X32_Y30_N30
\inst3|num[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|num[15]~46_combout\ = \inst3|num\(15) $ (\inst3|num[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(15),
	cin => \inst3|num[14]~45\,
	combout => \inst3|num[15]~46_combout\);

-- Location: FF_X32_Y30_N31
\inst3|num[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|num[15]~46_combout\,
	sclr => \inst3|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|num\(15));

-- Location: LCCOMB_X30_Y30_N12
\inst3|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~13_combout\ = (\inst3|num\(4) & (\inst7|state.f0~q\ & (!\inst7|state.f1~q\ & \inst3|num\(9)))) # (!\inst3|num\(4) & (!\inst3|num\(9) & ((\inst7|state.f1~q\) # (!\inst7|state.f0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.f0~q\,
	datab => \inst7|state.f1~q\,
	datac => \inst3|num\(4),
	datad => \inst3|num\(9),
	combout => \inst3|Equal0~13_combout\);

-- Location: LCCOMB_X30_Y30_N18
\inst3|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~14_combout\ = (\inst3|num\(15) & (\inst3|Equal0~13_combout\ & (\inst7|state.f0~q\ $ (!\inst3|num\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.f0~q\,
	datab => \inst3|num\(8),
	datac => \inst3|num\(15),
	datad => \inst3|Equal0~13_combout\,
	combout => \inst3|Equal0~14_combout\);

-- Location: LCCOMB_X31_Y30_N30
\inst3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst3|num\(1) & (\inst7|state.f0~q\ & (\inst3|num\(0) & \inst7|freqOut~0_combout\))) # (!\inst3|num\(1) & (!\inst3|num\(0) & ((!\inst7|freqOut~0_combout\) # (!\inst7|state.f0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(1),
	datab => \inst7|state.f0~q\,
	datac => \inst3|num\(0),
	datad => \inst7|freqOut~0_combout\,
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y30_N20
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = \inst3|num\(7) $ (((\inst7|state.f3~q\) # ((!\inst7|freqOut~0_combout\) # (!\inst7|state.f0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(7),
	datab => \inst7|state.f3~q\,
	datac => \inst7|state.f0~q\,
	datad => \inst7|freqOut~0_combout\,
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y30_N4
\inst3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = \inst3|num\(2) $ ((((!\inst7|state.f2~q\ & !\inst7|state.f3~q\)) # (!\inst7|state.f0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(2),
	datab => \inst7|state.f2~q\,
	datac => \inst7|state.f0~q\,
	datad => \inst7|state.f3~q\,
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y30_N14
\inst3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (!\inst3|Equal0~2_combout\ & (\inst3|num\(3) $ (((!\inst7|freqOut~0_combout\) # (!\inst7|state.f0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(3),
	datab => \inst7|state.f0~q\,
	datac => \inst3|Equal0~2_combout\,
	datad => \inst7|freqOut~0_combout\,
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X31_Y30_N24
\inst3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = \inst3|num\(5) $ ((((!\inst7|state.f3~q\ & \inst7|freqOut~0_combout\)) # (!\inst7|state.f0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(5),
	datab => \inst7|state.f3~q\,
	datac => \inst7|state.f0~q\,
	datad => \inst7|freqOut~0_combout\,
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y30_N22
\inst3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~5_combout\ = (\inst3|Equal0~1_combout\ & (\inst3|Equal0~0_combout\ & (\inst3|Equal0~3_combout\ & !\inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~1_combout\,
	datab => \inst3|Equal0~0_combout\,
	datac => \inst3|Equal0~3_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y30_N10
\inst3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~9_combout\ = \inst3|num\(12) $ ((((\inst7|state.f1~q\) # (!\inst7|state.f0~q\)) # (!\inst7|state.f2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(12),
	datab => \inst7|state.f2~q\,
	datac => \inst7|state.f0~q\,
	datad => \inst7|state.f1~q\,
	combout => \inst3|Equal0~9_combout\);

-- Location: LCCOMB_X31_Y30_N18
\inst3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~7_combout\ = \inst3|num\(11) $ (((\inst7|state.f2~q\) # ((\inst7|state.f3~q\) # (!\inst7|state.f0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(11),
	datab => \inst7|state.f2~q\,
	datac => \inst7|state.f0~q\,
	datad => \inst7|state.f3~q\,
	combout => \inst3|Equal0~7_combout\);

-- Location: LCCOMB_X31_Y30_N8
\inst3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~8_combout\ = \inst3|num\(10) $ ((((!\inst7|state.f2~q\ & !\inst7|state.f1~q\)) # (!\inst7|state.f0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|num\(10),
	datab => \inst7|state.f2~q\,
	datac => \inst7|state.f0~q\,
	datad => \inst7|state.f1~q\,
	combout => \inst3|Equal0~8_combout\);

-- Location: LCCOMB_X31_Y30_N28
\inst3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~6_combout\ = \inst3|num\(6) $ ((((\inst7|state.f1~q\) # (\inst7|state.f3~q\)) # (!\inst7|state.f0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.f0~q\,
	datab => \inst7|state.f1~q\,
	datac => \inst3|num\(6),
	datad => \inst7|state.f3~q\,
	combout => \inst3|Equal0~6_combout\);

-- Location: LCCOMB_X31_Y30_N0
\inst3|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~10_combout\ = (!\inst3|Equal0~9_combout\ & (\inst3|Equal0~7_combout\ & (!\inst3|Equal0~8_combout\ & \inst3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~9_combout\,
	datab => \inst3|Equal0~7_combout\,
	datac => \inst3|Equal0~8_combout\,
	datad => \inst3|Equal0~6_combout\,
	combout => \inst3|Equal0~10_combout\);

-- Location: LCCOMB_X31_Y30_N6
\inst3|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~15_combout\ = (\inst3|Equal0~12_combout\ & (\inst3|Equal0~14_combout\ & (\inst3|Equal0~5_combout\ & \inst3|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~12_combout\,
	datab => \inst3|Equal0~14_combout\,
	datac => \inst3|Equal0~5_combout\,
	datad => \inst3|Equal0~10_combout\,
	combout => \inst3|Equal0~15_combout\);

-- Location: LCCOMB_X30_Y30_N4
\inst3|sound_intern~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sound_intern~0_combout\ = \inst3|sound_intern~q\ $ (\inst3|Equal0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|sound_intern~q\,
	datad => \inst3|Equal0~15_combout\,
	combout => \inst3|sound_intern~0_combout\);

-- Location: FF_X30_Y30_N5
\inst3|sound_intern\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|sound_intern~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sound_intern~q\);

-- Location: LCCOMB_X30_Y32_N0
\inst|DIN~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIN~1_combout\ = (\inst|count\(0) & ((\inst|channel\(1)))) # (!\inst|count\(0) & (\inst|channel\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(0),
	datac => \inst|channel\(2),
	datad => \inst|channel\(1),
	combout => \inst|DIN~1_combout\);

-- Location: LCCOMB_X30_Y32_N6
\inst|DIN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIN~0_combout\ = (\inst|count\(1) & (!\inst|count\(3) & !\inst|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datac => \inst|count\(3),
	datad => \inst|count\(2),
	combout => \inst|DIN~0_combout\);

-- Location: LCCOMB_X30_Y32_N12
\inst|DIN~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIN~2_combout\ = (\inst|DIN~0_combout\ & (((\inst|DIN~1_combout\)))) # (!\inst|DIN~0_combout\ & (\inst|channel\(0) & ((\inst|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|channel\(0),
	datab => \inst|DIN~1_combout\,
	datac => \inst|Equal4~0_combout\,
	datad => \inst|DIN~0_combout\,
	combout => \inst|DIN~2_combout\);

-- Location: FF_X30_Y32_N13
\inst|DIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_spi~clkctrl_outclk\,
	d => \inst|DIN~2_combout\,
	ena => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DIN~q\);

-- Location: LCCOMB_X29_Y33_N14
\inst|SCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SCLK~0_combout\ = (\inst|clk_spi~q\) # (!\inst|active2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|active2~q\,
	datad => \inst|clk_spi~q\,
	combout => \inst|SCLK~0_combout\);

ww_sound <= \sound~output_o\;

ww_DIN <= \DIN~output_o\;

ww_CS_n <= \CS_n~output_o\;

ww_SCLK <= \SCLK~output_o\;
END structure;


