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

-- DATE "06/21/2017 13:11:55"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	stoppuhr IS
    PORT (
	DIN : OUT std_logic;
	clk_50 : IN std_logic;
	DOUT : IN std_logic;
	CS_n : OUT std_logic;
	SCLK : OUT std_logic;
	ledout : OUT std_logic_vector(5 DOWNTO 0)
	);
END stoppuhr;

-- Design Ports Information
-- DIN	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS_n	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF stoppuhr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_DOUT : std_logic;
SIGNAL ww_CS_n : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_ledout : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|clk_spi~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIN~output_o\ : std_logic;
SIGNAL \CS_n~output_o\ : std_logic;
SIGNAL \SCLK~output_o\ : std_logic;
SIGNAL \ledout[5]~output_o\ : std_logic;
SIGNAL \ledout[4]~output_o\ : std_logic;
SIGNAL \ledout[3]~output_o\ : std_logic;
SIGNAL \ledout[2]~output_o\ : std_logic;
SIGNAL \ledout[1]~output_o\ : std_logic;
SIGNAL \ledout[0]~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|clk_spi_count[0]~3_combout\ : std_logic;
SIGNAL \inst3|clk_spi_count[1]~0_combout\ : std_logic;
SIGNAL \inst3|clk_spi_count[2]~1_combout\ : std_logic;
SIGNAL \inst3|clk_spi_count[3]~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|clk_spi~0_combout\ : std_logic;
SIGNAL \inst3|clk_spi~feeder_combout\ : std_logic;
SIGNAL \inst3|clk_spi~q\ : std_logic;
SIGNAL \inst3|clk_spi~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|count[0]~3_combout\ : std_logic;
SIGNAL \inst3|active2~feeder_combout\ : std_logic;
SIGNAL \inst3|active2~q\ : std_logic;
SIGNAL \inst3|count[1]~0_combout\ : std_logic;
SIGNAL \inst3|count[2]~1_combout\ : std_logic;
SIGNAL \inst3|count[3]~2_combout\ : std_logic;
SIGNAL \inst3|Equal4~1_combout\ : std_logic;
SIGNAL \inst3|channel[0]~0_combout\ : std_logic;
SIGNAL \inst3|Equal4~0_combout\ : std_logic;
SIGNAL \inst3|DIN~0_combout\ : std_logic;
SIGNAL \inst3|channel[1]~2_combout\ : std_logic;
SIGNAL \inst3|channel[2]~1_combout\ : std_logic;
SIGNAL \inst3|DIN~1_combout\ : std_logic;
SIGNAL \inst3|DIN~2_combout\ : std_logic;
SIGNAL \inst3|DIN~q\ : std_logic;
SIGNAL \inst3|SCLK~0_combout\ : std_logic;
SIGNAL \inst|secCount[0]~27_combout\ : std_logic;
SIGNAL \DOUT~input_o\ : std_logic;
SIGNAL \inst3|Equal4~2_combout\ : std_logic;
SIGNAL \inst3|Equal4~10_combout\ : std_logic;
SIGNAL \inst3|data~8_combout\ : std_logic;
SIGNAL \inst3|Data0[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|Data0[11]~0_combout\ : std_logic;
SIGNAL \inst3|Data0[11]~1_combout\ : std_logic;
SIGNAL \inst3|Equal4~12_combout\ : std_logic;
SIGNAL \inst3|data~11_combout\ : std_logic;
SIGNAL \inst3|Data0[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|Equal4~11_combout\ : std_logic;
SIGNAL \inst3|data~10_combout\ : std_logic;
SIGNAL \inst3|data~9_combout\ : std_logic;
SIGNAL \inst2|button1pressed~2_combout\ : std_logic;
SIGNAL \inst3|Equal4~3_combout\ : std_logic;
SIGNAL \inst3|data~0_combout\ : std_logic;
SIGNAL \inst3|Data0[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|Equal4~4_combout\ : std_logic;
SIGNAL \inst3|data~1_combout\ : std_logic;
SIGNAL \inst3|Equal4~6_combout\ : std_logic;
SIGNAL \inst3|data~4_combout\ : std_logic;
SIGNAL \inst3|Data0[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|Equal4~5_combout\ : std_logic;
SIGNAL \inst3|data~2_combout\ : std_logic;
SIGNAL \inst3|Data0[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|data~3_combout\ : std_logic;
SIGNAL \inst3|Equal4~8_combout\ : std_logic;
SIGNAL \inst3|data~6_combout\ : std_logic;
SIGNAL \inst3|Data0[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|Equal4~7_combout\ : std_logic;
SIGNAL \inst3|data~5_combout\ : std_logic;
SIGNAL \inst3|Equal4~9_combout\ : std_logic;
SIGNAL \inst3|data~7_combout\ : std_logic;
SIGNAL \inst3|Data0[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|button1pressed~0_combout\ : std_logic;
SIGNAL \inst2|button1pressed~1_combout\ : std_logic;
SIGNAL \inst2|button1pressed~3_combout\ : std_logic;
SIGNAL \inst|secCount[25]~78\ : std_logic;
SIGNAL \inst|secCount[26]~79_combout\ : std_logic;
SIGNAL \inst2|button3pressed~0_combout\ : std_logic;
SIGNAL \inst|isactive~0_combout\ : std_logic;
SIGNAL \inst|isactive~1_combout\ : std_logic;
SIGNAL \inst|isactive~2_combout\ : std_logic;
SIGNAL \inst|isactive~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|secCount[0]~28\ : std_logic;
SIGNAL \inst|secCount[1]~29_combout\ : std_logic;
SIGNAL \inst|secCount[1]~30\ : std_logic;
SIGNAL \inst|secCount[2]~31_combout\ : std_logic;
SIGNAL \inst|secCount[2]~32\ : std_logic;
SIGNAL \inst|secCount[3]~33_combout\ : std_logic;
SIGNAL \inst|secCount[3]~34\ : std_logic;
SIGNAL \inst|secCount[4]~35_combout\ : std_logic;
SIGNAL \inst|secCount[4]~36\ : std_logic;
SIGNAL \inst|secCount[5]~37_combout\ : std_logic;
SIGNAL \inst|secCount[5]~38\ : std_logic;
SIGNAL \inst|secCount[6]~39_combout\ : std_logic;
SIGNAL \inst|secCount[6]~40\ : std_logic;
SIGNAL \inst|secCount[7]~41_combout\ : std_logic;
SIGNAL \inst|secCount[7]~42\ : std_logic;
SIGNAL \inst|secCount[8]~43_combout\ : std_logic;
SIGNAL \inst|secCount[8]~44\ : std_logic;
SIGNAL \inst|secCount[9]~45_combout\ : std_logic;
SIGNAL \inst|secCount[9]~46\ : std_logic;
SIGNAL \inst|secCount[10]~47_combout\ : std_logic;
SIGNAL \inst|secCount[10]~48\ : std_logic;
SIGNAL \inst|secCount[11]~49_combout\ : std_logic;
SIGNAL \inst|secCount[11]~50\ : std_logic;
SIGNAL \inst|secCount[12]~51_combout\ : std_logic;
SIGNAL \inst|secCount[12]~52\ : std_logic;
SIGNAL \inst|secCount[13]~53_combout\ : std_logic;
SIGNAL \inst|secCount[13]~54\ : std_logic;
SIGNAL \inst|secCount[14]~55_combout\ : std_logic;
SIGNAL \inst|secCount[14]~56\ : std_logic;
SIGNAL \inst|secCount[15]~57_combout\ : std_logic;
SIGNAL \inst|secCount[15]~58\ : std_logic;
SIGNAL \inst|secCount[16]~59_combout\ : std_logic;
SIGNAL \inst|secCount[16]~60\ : std_logic;
SIGNAL \inst|secCount[17]~61_combout\ : std_logic;
SIGNAL \inst|secCount[17]~62\ : std_logic;
SIGNAL \inst|secCount[18]~63_combout\ : std_logic;
SIGNAL \inst|secCount[18]~64\ : std_logic;
SIGNAL \inst|secCount[19]~65_combout\ : std_logic;
SIGNAL \inst|secCount[19]~66\ : std_logic;
SIGNAL \inst|secCount[20]~67_combout\ : std_logic;
SIGNAL \inst|secCount[20]~68\ : std_logic;
SIGNAL \inst|secCount[21]~69_combout\ : std_logic;
SIGNAL \inst|secCount[21]~70\ : std_logic;
SIGNAL \inst|secCount[22]~71_combout\ : std_logic;
SIGNAL \inst|secCount[22]~72\ : std_logic;
SIGNAL \inst|secCount[23]~73_combout\ : std_logic;
SIGNAL \inst|secCount[23]~74\ : std_logic;
SIGNAL \inst|secCount[24]~75_combout\ : std_logic;
SIGNAL \inst|secCount[24]~76\ : std_logic;
SIGNAL \inst|secCount[25]~77_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|outCount[0]~15_combout\ : std_logic;
SIGNAL \inst|outCount[0]~16_combout\ : std_logic;
SIGNAL \inst|outCount[1]~5_combout\ : std_logic;
SIGNAL \inst|outCount[1]~6\ : std_logic;
SIGNAL \inst|outCount[2]~7_combout\ : std_logic;
SIGNAL \inst|outCount[2]~8\ : std_logic;
SIGNAL \inst|outCount[3]~9_combout\ : std_logic;
SIGNAL \inst|outCount[3]~10\ : std_logic;
SIGNAL \inst|outCount[4]~11_combout\ : std_logic;
SIGNAL \inst|outCount[4]~12\ : std_logic;
SIGNAL \inst|outCount[5]~13_combout\ : std_logic;
SIGNAL \inst3|data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|Data0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|clk_spi_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|channel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|secCount\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \inst|outCount\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|ALT_INV_clk_spi~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|ALT_INV_button1pressed~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_active2~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DIN <= ww_DIN;
ww_clk_50 <= clk_50;
ww_DOUT <= DOUT;
CS_n <= ww_CS_n;
SCLK <= ww_SCLK;
ledout <= ww_ledout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|clk_spi~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|clk_spi~q\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\inst3|ALT_INV_clk_spi~clkctrl_outclk\ <= NOT \inst3|clk_spi~clkctrl_outclk\;
\inst2|ALT_INV_button1pressed~3_combout\ <= NOT \inst2|button1pressed~3_combout\;
\inst3|ALT_INV_active2~q\ <= NOT \inst3|active2~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N16
\DIN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|DIN~q\,
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
	i => \inst3|ALT_INV_active2~q\,
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
	i => \inst3|SCLK~0_combout\,
	devoe => ww_devoe,
	o => \SCLK~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\ledout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|outCount\(5),
	devoe => ww_devoe,
	o => \ledout[5]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\ledout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|outCount\(4),
	devoe => ww_devoe,
	o => \ledout[4]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\ledout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|outCount\(3),
	devoe => ww_devoe,
	o => \ledout[3]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\ledout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|outCount\(2),
	devoe => ww_devoe,
	o => \ledout[2]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\ledout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|outCount\(1),
	devoe => ww_devoe,
	o => \ledout[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\ledout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|outCount\(0),
	devoe => ww_devoe,
	o => \ledout[0]~output_o\);

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

-- Location: LCCOMB_X52_Y22_N28
\inst3|clk_spi_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clk_spi_count[0]~3_combout\ = !\inst3|clk_spi_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|clk_spi_count\(0),
	combout => \inst3|clk_spi_count[0]~3_combout\);

-- Location: FF_X52_Y22_N29
\inst3|clk_spi_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|clk_spi_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_spi_count\(0));

-- Location: LCCOMB_X52_Y22_N22
\inst3|clk_spi_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clk_spi_count[1]~0_combout\ = \inst3|clk_spi_count\(1) $ (\inst3|clk_spi_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|clk_spi_count\(1),
	datad => \inst3|clk_spi_count\(0),
	combout => \inst3|clk_spi_count[1]~0_combout\);

-- Location: FF_X52_Y22_N23
\inst3|clk_spi_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|clk_spi_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_spi_count\(1));

-- Location: LCCOMB_X52_Y22_N26
\inst3|clk_spi_count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clk_spi_count[2]~1_combout\ = \inst3|clk_spi_count\(2) $ (((\inst3|clk_spi_count\(0) & \inst3|clk_spi_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_spi_count\(0),
	datac => \inst3|clk_spi_count\(2),
	datad => \inst3|clk_spi_count\(1),
	combout => \inst3|clk_spi_count[2]~1_combout\);

-- Location: FF_X52_Y22_N27
\inst3|clk_spi_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|clk_spi_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_spi_count\(2));

-- Location: LCCOMB_X52_Y22_N20
\inst3|clk_spi_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clk_spi_count[3]~2_combout\ = \inst3|clk_spi_count\(3) $ (((\inst3|clk_spi_count\(2) & (\inst3|clk_spi_count\(1) & \inst3|clk_spi_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_spi_count\(2),
	datab => \inst3|clk_spi_count\(1),
	datac => \inst3|clk_spi_count\(3),
	datad => \inst3|clk_spi_count\(0),
	combout => \inst3|clk_spi_count[3]~2_combout\);

-- Location: FF_X52_Y22_N21
\inst3|clk_spi_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|clk_spi_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_spi_count\(3));

-- Location: LCCOMB_X52_Y22_N24
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst3|clk_spi_count\(1) & (!\inst3|clk_spi_count\(0) & (!\inst3|clk_spi_count\(2) & !\inst3|clk_spi_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_spi_count\(1),
	datab => \inst3|clk_spi_count\(0),
	datac => \inst3|clk_spi_count\(2),
	datad => \inst3|clk_spi_count\(3),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y22_N18
\inst3|clk_spi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clk_spi~0_combout\ = \inst3|clk_spi~q\ $ (\inst3|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_spi~q\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|clk_spi~0_combout\);

-- Location: LCCOMB_X52_Y22_N30
\inst3|clk_spi~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clk_spi~feeder_combout\ = \inst3|clk_spi~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_spi~0_combout\,
	combout => \inst3|clk_spi~feeder_combout\);

-- Location: FF_X52_Y22_N31
\inst3|clk_spi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|clk_spi~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_spi~q\);

-- Location: CLKCTRL_G5
\inst3|clk_spi~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|clk_spi~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|clk_spi~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y30_N22
\inst3|count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count[0]~3_combout\ = !\inst3|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|count\(0),
	combout => \inst3|count[0]~3_combout\);

-- Location: LCCOMB_X28_Y30_N28
\inst3|active2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|active2~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|active2~feeder_combout\);

-- Location: FF_X28_Y30_N29
\inst3|active2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|active2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|active2~q\);

-- Location: FF_X27_Y30_N23
\inst3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|count[0]~3_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count\(0));

-- Location: LCCOMB_X27_Y30_N16
\inst3|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count[1]~0_combout\ = \inst3|count\(0) $ (\inst3|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datac => \inst3|count\(1),
	combout => \inst3|count[1]~0_combout\);

-- Location: FF_X27_Y30_N17
\inst3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|count[1]~0_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count\(1));

-- Location: LCCOMB_X27_Y30_N2
\inst3|count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count[2]~1_combout\ = \inst3|count\(2) $ (((\inst3|count\(0) & \inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datac => \inst3|count\(2),
	datad => \inst3|count\(1),
	combout => \inst3|count[2]~1_combout\);

-- Location: FF_X27_Y30_N3
\inst3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|count[2]~1_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count\(2));

-- Location: LCCOMB_X27_Y30_N4
\inst3|count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count[3]~2_combout\ = \inst3|count\(3) $ (((\inst3|count\(0) & (\inst3|count\(2) & \inst3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count\(2),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst3|count[3]~2_combout\);

-- Location: FF_X27_Y30_N5
\inst3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|count[3]~2_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count\(3));

-- Location: LCCOMB_X27_Y30_N24
\inst3|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~1_combout\ = (\inst3|count\(0) & (\inst3|count\(2) & (\inst3|count\(3) & \inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count\(2),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst3|Equal4~1_combout\);

-- Location: LCCOMB_X28_Y30_N10
\inst3|channel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|channel[0]~0_combout\ = \inst3|channel\(0) $ (\inst3|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|channel\(0),
	datad => \inst3|Equal4~1_combout\,
	combout => \inst3|channel[0]~0_combout\);

-- Location: FF_X28_Y30_N11
\inst3|channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|channel[0]~0_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|channel\(0));

-- Location: LCCOMB_X27_Y30_N18
\inst3|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~0_combout\ = (!\inst3|count\(0) & (!\inst3|count\(1) & (!\inst3|count\(3) & \inst3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count\(1),
	datac => \inst3|count\(3),
	datad => \inst3|count\(2),
	combout => \inst3|Equal4~0_combout\);

-- Location: LCCOMB_X27_Y30_N8
\inst3|DIN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|DIN~0_combout\ = (\inst3|count\(1) & (!\inst3|count\(3) & !\inst3|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(1),
	datac => \inst3|count\(3),
	datad => \inst3|count\(2),
	combout => \inst3|DIN~0_combout\);

-- Location: LCCOMB_X27_Y30_N28
\inst3|channel[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|channel[1]~2_combout\ = \inst3|channel\(1) $ (((\inst3|channel\(0) & \inst3|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|channel\(0),
	datac => \inst3|channel\(1),
	datad => \inst3|Equal4~1_combout\,
	combout => \inst3|channel[1]~2_combout\);

-- Location: FF_X27_Y30_N29
\inst3|channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|channel[1]~2_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|channel\(1));

-- Location: LCCOMB_X27_Y30_N30
\inst3|channel[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|channel[2]~1_combout\ = \inst3|channel\(2) $ (((\inst3|channel\(0) & (\inst3|Equal4~1_combout\ & \inst3|channel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|channel\(0),
	datab => \inst3|Equal4~1_combout\,
	datac => \inst3|channel\(2),
	datad => \inst3|channel\(1),
	combout => \inst3|channel[2]~1_combout\);

-- Location: FF_X27_Y30_N31
\inst3|channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|channel[2]~1_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|channel\(2));

-- Location: LCCOMB_X27_Y30_N10
\inst3|DIN~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|DIN~1_combout\ = (\inst3|count\(0) & ((\inst3|channel\(1)))) # (!\inst3|count\(0) & (\inst3|channel\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|channel\(2),
	datac => \inst3|count\(0),
	datad => \inst3|channel\(1),
	combout => \inst3|DIN~1_combout\);

-- Location: LCCOMB_X27_Y30_N0
\inst3|DIN~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|DIN~2_combout\ = (\inst3|DIN~0_combout\ & (((\inst3|DIN~1_combout\)))) # (!\inst3|DIN~0_combout\ & (\inst3|channel\(0) & (\inst3|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|channel\(0),
	datab => \inst3|Equal4~0_combout\,
	datac => \inst3|DIN~0_combout\,
	datad => \inst3|DIN~1_combout\,
	combout => \inst3|DIN~2_combout\);

-- Location: FF_X27_Y30_N1
\inst3|DIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clk_spi~clkctrl_outclk\,
	d => \inst3|DIN~2_combout\,
	ena => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|DIN~q\);

-- Location: LCCOMB_X46_Y30_N4
\inst3|SCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|SCLK~0_combout\ = (\inst3|clk_spi~q\) # (!\inst3|active2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|active2~q\,
	datad => \inst3|clk_spi~q\,
	combout => \inst3|SCLK~0_combout\);

-- Location: LCCOMB_X32_Y31_N6
\inst|secCount[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[0]~27_combout\ = \inst|secCount\(0) $ (VCC)
-- \inst|secCount[0]~28\ = CARRY(\inst|secCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(0),
	datad => VCC,
	combout => \inst|secCount[0]~27_combout\,
	cout => \inst|secCount[0]~28\);

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

-- Location: LCCOMB_X29_Y30_N12
\inst3|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~2_combout\ = (!\inst3|count\(1) & (!\inst3|count\(3) & (!\inst3|count\(2) & !\inst3|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(1),
	datab => \inst3|count\(3),
	datac => \inst3|count\(2),
	datad => \inst3|count\(0),
	combout => \inst3|Equal4~2_combout\);

-- Location: LCCOMB_X29_Y30_N4
\inst3|Equal4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~10_combout\ = (!\inst3|count\(0) & (!\inst3|count\(2) & (\inst3|count\(3) & \inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count\(2),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst3|Equal4~10_combout\);

-- Location: LCCOMB_X28_Y30_N16
\inst3|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data~8_combout\ = (!\inst3|Equal4~2_combout\ & ((\inst3|Equal4~10_combout\ & (\DOUT~input_o\)) # (!\inst3|Equal4~10_combout\ & ((\inst3|data\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst3|Equal4~2_combout\,
	datac => \inst3|data\(5),
	datad => \inst3|Equal4~10_combout\,
	combout => \inst3|data~8_combout\);

-- Location: FF_X28_Y30_N17
\inst3|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|data~8_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(5));

-- Location: LCCOMB_X30_Y30_N10
\inst3|Data0[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Data0[5]~feeder_combout\ = \inst3|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|data\(5),
	combout => \inst3|Data0[5]~feeder_combout\);

-- Location: LCCOMB_X27_Y30_N6
\inst3|Data0[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Data0[11]~0_combout\ = (!\inst3|channel\(2) & (\inst3|channel\(1) & (!\inst3|channel\(0) & \inst3|active2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|channel\(2),
	datab => \inst3|channel\(1),
	datac => \inst3|channel\(0),
	datad => \inst3|active2~q\,
	combout => \inst3|Data0[11]~0_combout\);

-- Location: LCCOMB_X30_Y30_N26
\inst3|Data0[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Data0[11]~1_combout\ = (\inst3|Data0[11]~0_combout\ & \inst3|Equal4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Data0[11]~0_combout\,
	datad => \inst3|Equal4~2_combout\,
	combout => \inst3|Data0[11]~1_combout\);

-- Location: FF_X30_Y30_N11
\inst3|Data0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|Data0[5]~feeder_combout\,
	ena => \inst3|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Data0\(5));

-- Location: LCCOMB_X27_Y30_N26
\inst3|Equal4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~12_combout\ = (\inst3|count\(0) & (\inst3|count\(2) & (!\inst3|count\(3) & !\inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count\(2),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst3|Equal4~12_combout\);

-- Location: LCCOMB_X28_Y30_N26
\inst3|data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data~11_combout\ = (!\inst3|Equal4~2_combout\ & ((\inst3|Equal4~12_combout\ & (\DOUT~input_o\)) # (!\inst3|Equal4~12_combout\ & ((\inst3|data\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst3|Equal4~2_combout\,
	datac => \inst3|data\(10),
	datad => \inst3|Equal4~12_combout\,
	combout => \inst3|data~11_combout\);

-- Location: FF_X28_Y30_N27
\inst3|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|data~11_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(10));

-- Location: LCCOMB_X30_Y30_N24
\inst3|Data0[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Data0[10]~feeder_combout\ = \inst3|data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|data\(10),
	combout => \inst3|Data0[10]~feeder_combout\);

-- Location: FF_X30_Y30_N25
\inst3|Data0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|Data0[10]~feeder_combout\,
	ena => \inst3|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Data0\(10));

-- Location: LCCOMB_X27_Y30_N12
\inst3|Equal4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~11_combout\ = (!\inst3|count\(0) & (!\inst3|count\(2) & (\inst3|count\(3) & !\inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count\(2),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst3|Equal4~11_combout\);

-- Location: LCCOMB_X28_Y30_N12
\inst3|data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data~10_combout\ = (!\inst3|Equal4~2_combout\ & ((\inst3|Equal4~11_combout\ & (\DOUT~input_o\)) # (!\inst3|Equal4~11_combout\ & ((\inst3|data\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst3|Equal4~2_combout\,
	datac => \inst3|data\(7),
	datad => \inst3|Equal4~11_combout\,
	combout => \inst3|data~10_combout\);

-- Location: FF_X28_Y30_N13
\inst3|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|data~10_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(7));

-- Location: FF_X30_Y30_N7
\inst3|Data0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	asdata => \inst3|data\(7),
	sload => VCC,
	ena => \inst3|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Data0\(7));

-- Location: LCCOMB_X28_Y30_N22
\inst3|data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data~9_combout\ = (!\inst3|Equal4~2_combout\ & ((\inst3|Equal4~0_combout\ & (\DOUT~input_o\)) # (!\inst3|Equal4~0_combout\ & ((\inst3|data\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst3|Equal4~2_combout\,
	datac => \inst3|data\(11),
	datad => \inst3|Equal4~0_combout\,
	combout => \inst3|data~9_combout\);

-- Location: FF_X28_Y30_N23
\inst3|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|data~9_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(11));

-- Location: FF_X30_Y30_N17
\inst3|Data0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	asdata => \inst3|data\(11),
	sload => VCC,
	ena => \inst3|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Data0\(11));

-- Location: LCCOMB_X30_Y30_N30
\inst2|button1pressed~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|button1pressed~2_combout\ = (!\inst3|Data0\(5) & (!\inst3|Data0\(10) & (!\inst3|Data0\(7) & !\inst3|Data0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Data0\(5),
	datab => \inst3|Data0\(10),
	datac => \inst3|Data0\(7),
	datad => \inst3|Data0\(11),
	combout => \inst2|button1pressed~2_combout\);

-- Location: LCCOMB_X27_Y30_N20
\inst3|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~3_combout\ = (\inst3|count\(0) & (\inst3|count\(2) & (!\inst3|count\(3) & \inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count\(2),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst3|Equal4~3_combout\);

-- Location: LCCOMB_X28_Y30_N24
\inst3|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data~0_combout\ = (!\inst3|Equal4~2_combout\ & ((\inst3|Equal4~3_combout\ & (\DOUT~input_o\)) # (!\inst3|Equal4~3_combout\ & ((\inst3|data\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst3|Equal4~2_combout\,
	datac => \inst3|data\(8),
	datad => \inst3|Equal4~3_combout\,
	combout => \inst3|data~0_combout\);

-- Location: FF_X28_Y30_N25
\inst3|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|data~0_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(8));

-- Location: LCCOMB_X30_Y30_N4
\inst3|Data0[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Data0[8]~feeder_combout\ = \inst3|data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|data\(8),
	combout => \inst3|Data0[8]~feeder_combout\);

-- Location: FF_X30_Y30_N5
\inst3|Data0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|Data0[8]~feeder_combout\,
	ena => \inst3|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Data0\(8));

-- Location: LCCOMB_X29_Y30_N26
\inst3|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~4_combout\ = (\inst3|count\(0) & (!\inst3|count\(2) & (\inst3|count\(3) & !\inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count\(2),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst3|Equal4~4_combout\);

-- Location: LCCOMB_X28_Y30_N18
\inst3|data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data~1_combout\ = (!\inst3|Equal4~2_combout\ & ((\inst3|Equal4~4_combout\ & (\DOUT~input_o\)) # (!\inst3|Equal4~4_combout\ & ((\inst3|data\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst3|Equal4~2_combout\,
	datac => \inst3|data\(6),
	datad => \inst3|Equal4~4_combout\,
	combout => \inst3|data~1_combout\);

-- Location: FF_X28_Y30_N19
\inst3|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|data~1_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(6));

-- Location: FF_X30_Y30_N23
\inst3|Data0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	asdata => \inst3|data\(6),
	sload => VCC,
	ena => \inst3|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Data0\(6));

-- Location: LCCOMB_X27_Y30_N14
\inst3|Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~6_combout\ = (!\inst3|count\(0) & (\inst3|count\(2) & (!\inst3|count\(3) & \inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count\(2),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst3|Equal4~6_combout\);

-- Location: LCCOMB_X28_Y30_N20
\inst3|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data~4_combout\ = (!\inst3|Equal4~2_combout\ & ((\inst3|Equal4~6_combout\ & (\DOUT~input_o\)) # (!\inst3|Equal4~6_combout\ & ((\inst3|data\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst3|Equal4~2_combout\,
	datac => \inst3|data\(9),
	datad => \inst3|Equal4~6_combout\,
	combout => \inst3|data~4_combout\);

-- Location: FF_X28_Y30_N21
\inst3|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|data~4_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(9));

-- Location: LCCOMB_X30_Y30_N0
\inst3|Data0[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Data0[9]~feeder_combout\ = \inst3|data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|data\(9),
	combout => \inst3|Data0[9]~feeder_combout\);

-- Location: FF_X30_Y30_N1
\inst3|Data0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|Data0[9]~feeder_combout\,
	ena => \inst3|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Data0\(9));

-- Location: LCCOMB_X28_Y30_N4
\inst3|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~5_combout\ = (\inst3|count\(2) & (!\inst3|count\(0) & (\inst3|count\(3) & \inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(2),
	datab => \inst3|count\(0),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst3|Equal4~5_combout\);

-- Location: LCCOMB_X28_Y30_N0
\inst3|data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data~2_combout\ = (!\inst3|Equal4~2_combout\ & ((\inst3|Equal4~5_combout\ & ((\DOUT~input_o\))) # (!\inst3|Equal4~5_combout\ & (\inst3|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal4~2_combout\,
	datab => \inst3|Equal4~5_combout\,
	datac => \inst3|data\(1),
	datad => \DOUT~input_o\,
	combout => \inst3|data~2_combout\);

-- Location: FF_X28_Y30_N1
\inst3|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|data~2_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(1));

-- Location: LCCOMB_X30_Y30_N8
\inst3|Data0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Data0[1]~feeder_combout\ = \inst3|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|data\(1),
	combout => \inst3|Data0[1]~feeder_combout\);

-- Location: FF_X30_Y30_N9
\inst3|Data0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|Data0[1]~feeder_combout\,
	ena => \inst3|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Data0\(1));

-- Location: LCCOMB_X28_Y30_N6
\inst3|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data~3_combout\ = (!\inst3|Equal4~2_combout\ & ((\inst3|Equal4~1_combout\ & (\DOUT~input_o\)) # (!\inst3|Equal4~1_combout\ & ((\inst3|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst3|Equal4~2_combout\,
	datac => \inst3|data\(0),
	datad => \inst3|Equal4~1_combout\,
	combout => \inst3|data~3_combout\);

-- Location: FF_X28_Y30_N7
\inst3|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|data~3_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(0));

-- Location: FF_X30_Y30_N15
\inst3|Data0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	asdata => \inst3|data\(0),
	sload => VCC,
	ena => \inst3|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Data0\(0));

-- Location: LCCOMB_X28_Y30_N2
\inst3|Equal4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~8_combout\ = (\inst3|count\(2) & (\inst3|count\(0) & (\inst3|count\(3) & !\inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(2),
	datab => \inst3|count\(0),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst3|Equal4~8_combout\);

-- Location: LCCOMB_X28_Y30_N8
\inst3|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data~6_combout\ = (!\inst3|Equal4~2_combout\ & ((\inst3|Equal4~8_combout\ & (\DOUT~input_o\)) # (!\inst3|Equal4~8_combout\ & ((\inst3|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst3|Equal4~2_combout\,
	datac => \inst3|data\(2),
	datad => \inst3|Equal4~8_combout\,
	combout => \inst3|data~6_combout\);

-- Location: FF_X28_Y30_N9
\inst3|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|data~6_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(2));

-- Location: LCCOMB_X30_Y30_N12
\inst3|Data0[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Data0[2]~feeder_combout\ = \inst3|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|data\(2),
	combout => \inst3|Data0[2]~feeder_combout\);

-- Location: FF_X30_Y30_N13
\inst3|Data0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|Data0[2]~feeder_combout\,
	ena => \inst3|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Data0\(2));

-- Location: LCCOMB_X29_Y30_N28
\inst3|Equal4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~7_combout\ = (\inst3|count\(0) & (!\inst3|count\(2) & (\inst3|count\(3) & \inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count\(2),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst3|Equal4~7_combout\);

-- Location: LCCOMB_X28_Y30_N14
\inst3|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data~5_combout\ = (!\inst3|Equal4~2_combout\ & ((\inst3|Equal4~7_combout\ & (\DOUT~input_o\)) # (!\inst3|Equal4~7_combout\ & ((\inst3|data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst3|Equal4~2_combout\,
	datac => \inst3|data\(4),
	datad => \inst3|Equal4~7_combout\,
	combout => \inst3|data~5_combout\);

-- Location: FF_X28_Y30_N15
\inst3|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|data~5_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(4));

-- Location: FF_X30_Y30_N27
\inst3|Data0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	asdata => \inst3|data\(4),
	sload => VCC,
	ena => \inst3|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Data0\(4));

-- Location: LCCOMB_X29_Y30_N6
\inst3|Equal4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~9_combout\ = (!\inst3|count\(0) & (\inst3|count\(2) & (\inst3|count\(3) & !\inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count\(2),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst3|Equal4~9_combout\);

-- Location: LCCOMB_X28_Y30_N30
\inst3|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data~7_combout\ = (!\inst3|Equal4~2_combout\ & ((\inst3|Equal4~9_combout\ & (\DOUT~input_o\)) # (!\inst3|Equal4~9_combout\ & ((\inst3|data\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst3|Equal4~2_combout\,
	datac => \inst3|data\(3),
	datad => \inst3|Equal4~9_combout\,
	combout => \inst3|data~7_combout\);

-- Location: FF_X28_Y30_N31
\inst3|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|data~7_combout\,
	clrn => \inst3|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(3));

-- Location: LCCOMB_X30_Y30_N18
\inst3|Data0[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Data0[3]~feeder_combout\ = \inst3|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|data\(3),
	combout => \inst3|Data0[3]~feeder_combout\);

-- Location: FF_X30_Y30_N19
\inst3|Data0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_spi~clkctrl_outclk\,
	d => \inst3|Data0[3]~feeder_combout\,
	ena => \inst3|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Data0\(3));

-- Location: LCCOMB_X30_Y30_N20
\inst2|button1pressed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|button1pressed~0_combout\ = (\inst3|Data0\(2) & (((!\inst3|Data0\(3)) # (!\inst3|Data0\(1))) # (!\inst3|Data0\(4)))) # (!\inst3|Data0\(2) & ((\inst3|Data0\(4)) # ((\inst3|Data0\(1)) # (\inst3|Data0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Data0\(2),
	datab => \inst3|Data0\(4),
	datac => \inst3|Data0\(1),
	datad => \inst3|Data0\(3),
	combout => \inst2|button1pressed~0_combout\);

-- Location: LCCOMB_X30_Y30_N14
\inst2|button1pressed~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|button1pressed~1_combout\ = (!\inst3|Data0\(9) & ((\inst2|button1pressed~0_combout\) # ((!\inst3|Data0\(1) & \inst3|Data0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Data0\(9),
	datab => \inst3|Data0\(1),
	datac => \inst3|Data0\(0),
	datad => \inst2|button1pressed~0_combout\,
	combout => \inst2|button1pressed~1_combout\);

-- Location: LCCOMB_X30_Y30_N22
\inst2|button1pressed~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|button1pressed~3_combout\ = (\inst2|button1pressed~2_combout\ & (!\inst3|Data0\(8) & (!\inst3|Data0\(6) & \inst2|button1pressed~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|button1pressed~2_combout\,
	datab => \inst3|Data0\(8),
	datac => \inst3|Data0\(6),
	datad => \inst2|button1pressed~1_combout\,
	combout => \inst2|button1pressed~3_combout\);

-- Location: LCCOMB_X32_Y30_N24
\inst|secCount[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[25]~77_combout\ = (\inst|secCount\(25) & (!\inst|secCount[24]~76\)) # (!\inst|secCount\(25) & ((\inst|secCount[24]~76\) # (GND)))
-- \inst|secCount[25]~78\ = CARRY((!\inst|secCount[24]~76\) # (!\inst|secCount\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(25),
	datad => VCC,
	cin => \inst|secCount[24]~76\,
	combout => \inst|secCount[25]~77_combout\,
	cout => \inst|secCount[25]~78\);

-- Location: LCCOMB_X32_Y30_N26
\inst|secCount[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[26]~79_combout\ = \inst|secCount\(26) $ (!\inst|secCount[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(26),
	cin => \inst|secCount[25]~78\,
	combout => \inst|secCount[26]~79_combout\);

-- Location: LCCOMB_X30_Y30_N6
\inst2|button3pressed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|button3pressed~0_combout\ = ((\inst3|Data0\(11)) # ((\inst3|Data0\(7)) # (!\inst3|Data0\(9)))) # (!\inst3|Data0\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Data0\(10),
	datab => \inst3|Data0\(11),
	datac => \inst3|Data0\(7),
	datad => \inst3|Data0\(9),
	combout => \inst2|button3pressed~0_combout\);

-- Location: LCCOMB_X30_Y30_N16
\inst|isactive~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|isactive~0_combout\ = (\inst3|Data0\(6) & (\inst3|Data0\(8) & !\inst2|button3pressed~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Data0\(6),
	datab => \inst3|Data0\(8),
	datad => \inst2|button3pressed~0_combout\,
	combout => \inst|isactive~0_combout\);

-- Location: LCCOMB_X30_Y30_N28
\inst|isactive~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|isactive~1_combout\ = (\inst3|Data0\(2) & ((\inst3|Data0\(5)) # ((\inst3|Data0\(0)) # (\inst3|Data0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Data0\(5),
	datab => \inst3|Data0\(0),
	datac => \inst3|Data0\(1),
	datad => \inst3|Data0\(2),
	combout => \inst|isactive~1_combout\);

-- Location: LCCOMB_X30_Y30_N2
\inst|isactive~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|isactive~2_combout\ = (\inst3|Data0\(5) & (((!\inst|isactive~1_combout\) # (!\inst3|Data0\(3))) # (!\inst3|Data0\(4)))) # (!\inst3|Data0\(5) & (\inst3|Data0\(4) & ((\inst3|Data0\(3)) # (\inst|isactive~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Data0\(5),
	datab => \inst3|Data0\(4),
	datac => \inst3|Data0\(3),
	datad => \inst|isactive~1_combout\,
	combout => \inst|isactive~2_combout\);

-- Location: LCCOMB_X31_Y30_N22
\inst|isactive~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|isactive~3_combout\ = \inst|isactive~3_combout\ $ (((\inst|isactive~0_combout\ & \inst|isactive~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|isactive~3_combout\,
	datac => \inst|isactive~0_combout\,
	datad => \inst|isactive~2_combout\,
	combout => \inst|isactive~3_combout\);

-- Location: FF_X32_Y30_N27
\inst|secCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[26]~79_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(26));

-- Location: LCCOMB_X32_Y30_N28
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|secCount\(18) & (!\inst|secCount\(24) & !\inst|secCount\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(18),
	datac => \inst|secCount\(24),
	datad => \inst|secCount\(16),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y31_N4
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|secCount\(8) & (!\inst|secCount\(9) & (!\inst|secCount\(10) & !\inst|secCount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(8),
	datab => \inst|secCount\(9),
	datac => \inst|secCount\(10),
	datad => \inst|secCount\(7),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y30_N30
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (((!\inst|secCount\(15)) # (!\inst|secCount\(12))) # (!\inst|secCount\(13))) # (!\inst|secCount\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(14),
	datab => \inst|secCount\(13),
	datac => \inst|secCount\(12),
	datad => \inst|secCount\(15),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y30_N24
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|LessThan0~0_combout\ & ((\inst|LessThan0~1_combout\) # ((!\inst|secCount\(11) & \inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(11),
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|LessThan0~2_combout\,
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X31_Y30_N0
\inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_combout\ = (\inst|secCount\(26)) # ((!\inst|LessThan0~6_combout\ & !\inst|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(26),
	datac => \inst|LessThan0~6_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan0~7_combout\);

-- Location: FF_X32_Y31_N7
\inst|secCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[0]~27_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(0));

-- Location: LCCOMB_X32_Y31_N8
\inst|secCount[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[1]~29_combout\ = (\inst|secCount\(1) & (!\inst|secCount[0]~28\)) # (!\inst|secCount\(1) & ((\inst|secCount[0]~28\) # (GND)))
-- \inst|secCount[1]~30\ = CARRY((!\inst|secCount[0]~28\) # (!\inst|secCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(1),
	datad => VCC,
	cin => \inst|secCount[0]~28\,
	combout => \inst|secCount[1]~29_combout\,
	cout => \inst|secCount[1]~30\);

-- Location: FF_X32_Y31_N9
\inst|secCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[1]~29_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(1));

-- Location: LCCOMB_X32_Y31_N10
\inst|secCount[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[2]~31_combout\ = (\inst|secCount\(2) & (\inst|secCount[1]~30\ $ (GND))) # (!\inst|secCount\(2) & (!\inst|secCount[1]~30\ & VCC))
-- \inst|secCount[2]~32\ = CARRY((\inst|secCount\(2) & !\inst|secCount[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(2),
	datad => VCC,
	cin => \inst|secCount[1]~30\,
	combout => \inst|secCount[2]~31_combout\,
	cout => \inst|secCount[2]~32\);

-- Location: FF_X32_Y31_N11
\inst|secCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[2]~31_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(2));

-- Location: LCCOMB_X32_Y31_N12
\inst|secCount[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[3]~33_combout\ = (\inst|secCount\(3) & (!\inst|secCount[2]~32\)) # (!\inst|secCount\(3) & ((\inst|secCount[2]~32\) # (GND)))
-- \inst|secCount[3]~34\ = CARRY((!\inst|secCount[2]~32\) # (!\inst|secCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(3),
	datad => VCC,
	cin => \inst|secCount[2]~32\,
	combout => \inst|secCount[3]~33_combout\,
	cout => \inst|secCount[3]~34\);

-- Location: FF_X32_Y31_N13
\inst|secCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[3]~33_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(3));

-- Location: LCCOMB_X32_Y31_N14
\inst|secCount[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[4]~35_combout\ = (\inst|secCount\(4) & (\inst|secCount[3]~34\ $ (GND))) # (!\inst|secCount\(4) & (!\inst|secCount[3]~34\ & VCC))
-- \inst|secCount[4]~36\ = CARRY((\inst|secCount\(4) & !\inst|secCount[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(4),
	datad => VCC,
	cin => \inst|secCount[3]~34\,
	combout => \inst|secCount[4]~35_combout\,
	cout => \inst|secCount[4]~36\);

-- Location: FF_X32_Y31_N15
\inst|secCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[4]~35_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(4));

-- Location: LCCOMB_X32_Y31_N16
\inst|secCount[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[5]~37_combout\ = (\inst|secCount\(5) & (!\inst|secCount[4]~36\)) # (!\inst|secCount\(5) & ((\inst|secCount[4]~36\) # (GND)))
-- \inst|secCount[5]~38\ = CARRY((!\inst|secCount[4]~36\) # (!\inst|secCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(5),
	datad => VCC,
	cin => \inst|secCount[4]~36\,
	combout => \inst|secCount[5]~37_combout\,
	cout => \inst|secCount[5]~38\);

-- Location: FF_X32_Y31_N17
\inst|secCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[5]~37_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(5));

-- Location: LCCOMB_X32_Y31_N18
\inst|secCount[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[6]~39_combout\ = (\inst|secCount\(6) & (\inst|secCount[5]~38\ $ (GND))) # (!\inst|secCount\(6) & (!\inst|secCount[5]~38\ & VCC))
-- \inst|secCount[6]~40\ = CARRY((\inst|secCount\(6) & !\inst|secCount[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(6),
	datad => VCC,
	cin => \inst|secCount[5]~38\,
	combout => \inst|secCount[6]~39_combout\,
	cout => \inst|secCount[6]~40\);

-- Location: FF_X32_Y31_N19
\inst|secCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[6]~39_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(6));

-- Location: LCCOMB_X32_Y31_N20
\inst|secCount[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[7]~41_combout\ = (\inst|secCount\(7) & (!\inst|secCount[6]~40\)) # (!\inst|secCount\(7) & ((\inst|secCount[6]~40\) # (GND)))
-- \inst|secCount[7]~42\ = CARRY((!\inst|secCount[6]~40\) # (!\inst|secCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(7),
	datad => VCC,
	cin => \inst|secCount[6]~40\,
	combout => \inst|secCount[7]~41_combout\,
	cout => \inst|secCount[7]~42\);

-- Location: FF_X32_Y31_N21
\inst|secCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[7]~41_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(7));

-- Location: LCCOMB_X32_Y31_N22
\inst|secCount[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[8]~43_combout\ = (\inst|secCount\(8) & (\inst|secCount[7]~42\ $ (GND))) # (!\inst|secCount\(8) & (!\inst|secCount[7]~42\ & VCC))
-- \inst|secCount[8]~44\ = CARRY((\inst|secCount\(8) & !\inst|secCount[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(8),
	datad => VCC,
	cin => \inst|secCount[7]~42\,
	combout => \inst|secCount[8]~43_combout\,
	cout => \inst|secCount[8]~44\);

-- Location: FF_X32_Y31_N23
\inst|secCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[8]~43_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(8));

-- Location: LCCOMB_X32_Y31_N24
\inst|secCount[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[9]~45_combout\ = (\inst|secCount\(9) & (!\inst|secCount[8]~44\)) # (!\inst|secCount\(9) & ((\inst|secCount[8]~44\) # (GND)))
-- \inst|secCount[9]~46\ = CARRY((!\inst|secCount[8]~44\) # (!\inst|secCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(9),
	datad => VCC,
	cin => \inst|secCount[8]~44\,
	combout => \inst|secCount[9]~45_combout\,
	cout => \inst|secCount[9]~46\);

-- Location: FF_X32_Y31_N25
\inst|secCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[9]~45_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(9));

-- Location: LCCOMB_X32_Y31_N26
\inst|secCount[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[10]~47_combout\ = (\inst|secCount\(10) & (\inst|secCount[9]~46\ $ (GND))) # (!\inst|secCount\(10) & (!\inst|secCount[9]~46\ & VCC))
-- \inst|secCount[10]~48\ = CARRY((\inst|secCount\(10) & !\inst|secCount[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(10),
	datad => VCC,
	cin => \inst|secCount[9]~46\,
	combout => \inst|secCount[10]~47_combout\,
	cout => \inst|secCount[10]~48\);

-- Location: FF_X32_Y31_N27
\inst|secCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[10]~47_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(10));

-- Location: LCCOMB_X32_Y31_N28
\inst|secCount[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[11]~49_combout\ = (\inst|secCount\(11) & (!\inst|secCount[10]~48\)) # (!\inst|secCount\(11) & ((\inst|secCount[10]~48\) # (GND)))
-- \inst|secCount[11]~50\ = CARRY((!\inst|secCount[10]~48\) # (!\inst|secCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(11),
	datad => VCC,
	cin => \inst|secCount[10]~48\,
	combout => \inst|secCount[11]~49_combout\,
	cout => \inst|secCount[11]~50\);

-- Location: FF_X32_Y31_N29
\inst|secCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[11]~49_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(11));

-- Location: LCCOMB_X32_Y31_N30
\inst|secCount[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[12]~51_combout\ = (\inst|secCount\(12) & (\inst|secCount[11]~50\ $ (GND))) # (!\inst|secCount\(12) & (!\inst|secCount[11]~50\ & VCC))
-- \inst|secCount[12]~52\ = CARRY((\inst|secCount\(12) & !\inst|secCount[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(12),
	datad => VCC,
	cin => \inst|secCount[11]~50\,
	combout => \inst|secCount[12]~51_combout\,
	cout => \inst|secCount[12]~52\);

-- Location: FF_X31_Y31_N25
\inst|secCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst|secCount[12]~51_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	sload => VCC,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(12));

-- Location: LCCOMB_X32_Y30_N0
\inst|secCount[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[13]~53_combout\ = (\inst|secCount\(13) & (!\inst|secCount[12]~52\)) # (!\inst|secCount\(13) & ((\inst|secCount[12]~52\) # (GND)))
-- \inst|secCount[13]~54\ = CARRY((!\inst|secCount[12]~52\) # (!\inst|secCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(13),
	datad => VCC,
	cin => \inst|secCount[12]~52\,
	combout => \inst|secCount[13]~53_combout\,
	cout => \inst|secCount[13]~54\);

-- Location: FF_X32_Y30_N1
\inst|secCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[13]~53_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(13));

-- Location: LCCOMB_X32_Y30_N2
\inst|secCount[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[14]~55_combout\ = (\inst|secCount\(14) & (\inst|secCount[13]~54\ $ (GND))) # (!\inst|secCount\(14) & (!\inst|secCount[13]~54\ & VCC))
-- \inst|secCount[14]~56\ = CARRY((\inst|secCount\(14) & !\inst|secCount[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(14),
	datad => VCC,
	cin => \inst|secCount[13]~54\,
	combout => \inst|secCount[14]~55_combout\,
	cout => \inst|secCount[14]~56\);

-- Location: FF_X32_Y30_N3
\inst|secCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[14]~55_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(14));

-- Location: LCCOMB_X32_Y30_N4
\inst|secCount[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[15]~57_combout\ = (\inst|secCount\(15) & (!\inst|secCount[14]~56\)) # (!\inst|secCount\(15) & ((\inst|secCount[14]~56\) # (GND)))
-- \inst|secCount[15]~58\ = CARRY((!\inst|secCount[14]~56\) # (!\inst|secCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(15),
	datad => VCC,
	cin => \inst|secCount[14]~56\,
	combout => \inst|secCount[15]~57_combout\,
	cout => \inst|secCount[15]~58\);

-- Location: FF_X32_Y30_N5
\inst|secCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[15]~57_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(15));

-- Location: LCCOMB_X32_Y30_N6
\inst|secCount[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[16]~59_combout\ = (\inst|secCount\(16) & (\inst|secCount[15]~58\ $ (GND))) # (!\inst|secCount\(16) & (!\inst|secCount[15]~58\ & VCC))
-- \inst|secCount[16]~60\ = CARRY((\inst|secCount\(16) & !\inst|secCount[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(16),
	datad => VCC,
	cin => \inst|secCount[15]~58\,
	combout => \inst|secCount[16]~59_combout\,
	cout => \inst|secCount[16]~60\);

-- Location: FF_X32_Y30_N7
\inst|secCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[16]~59_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(16));

-- Location: LCCOMB_X32_Y30_N8
\inst|secCount[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[17]~61_combout\ = (\inst|secCount\(17) & (!\inst|secCount[16]~60\)) # (!\inst|secCount\(17) & ((\inst|secCount[16]~60\) # (GND)))
-- \inst|secCount[17]~62\ = CARRY((!\inst|secCount[16]~60\) # (!\inst|secCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(17),
	datad => VCC,
	cin => \inst|secCount[16]~60\,
	combout => \inst|secCount[17]~61_combout\,
	cout => \inst|secCount[17]~62\);

-- Location: FF_X32_Y30_N9
\inst|secCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[17]~61_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(17));

-- Location: LCCOMB_X32_Y30_N10
\inst|secCount[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[18]~63_combout\ = (\inst|secCount\(18) & (\inst|secCount[17]~62\ $ (GND))) # (!\inst|secCount\(18) & (!\inst|secCount[17]~62\ & VCC))
-- \inst|secCount[18]~64\ = CARRY((\inst|secCount\(18) & !\inst|secCount[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(18),
	datad => VCC,
	cin => \inst|secCount[17]~62\,
	combout => \inst|secCount[18]~63_combout\,
	cout => \inst|secCount[18]~64\);

-- Location: FF_X32_Y30_N11
\inst|secCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[18]~63_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(18));

-- Location: LCCOMB_X32_Y30_N12
\inst|secCount[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[19]~65_combout\ = (\inst|secCount\(19) & (!\inst|secCount[18]~64\)) # (!\inst|secCount\(19) & ((\inst|secCount[18]~64\) # (GND)))
-- \inst|secCount[19]~66\ = CARRY((!\inst|secCount[18]~64\) # (!\inst|secCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(19),
	datad => VCC,
	cin => \inst|secCount[18]~64\,
	combout => \inst|secCount[19]~65_combout\,
	cout => \inst|secCount[19]~66\);

-- Location: FF_X32_Y30_N13
\inst|secCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[19]~65_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(19));

-- Location: LCCOMB_X32_Y30_N14
\inst|secCount[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[20]~67_combout\ = (\inst|secCount\(20) & (\inst|secCount[19]~66\ $ (GND))) # (!\inst|secCount\(20) & (!\inst|secCount[19]~66\ & VCC))
-- \inst|secCount[20]~68\ = CARRY((\inst|secCount\(20) & !\inst|secCount[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(20),
	datad => VCC,
	cin => \inst|secCount[19]~66\,
	combout => \inst|secCount[20]~67_combout\,
	cout => \inst|secCount[20]~68\);

-- Location: FF_X32_Y30_N15
\inst|secCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[20]~67_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(20));

-- Location: LCCOMB_X32_Y30_N16
\inst|secCount[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[21]~69_combout\ = (\inst|secCount\(21) & (!\inst|secCount[20]~68\)) # (!\inst|secCount\(21) & ((\inst|secCount[20]~68\) # (GND)))
-- \inst|secCount[21]~70\ = CARRY((!\inst|secCount[20]~68\) # (!\inst|secCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(21),
	datad => VCC,
	cin => \inst|secCount[20]~68\,
	combout => \inst|secCount[21]~69_combout\,
	cout => \inst|secCount[21]~70\);

-- Location: FF_X32_Y30_N17
\inst|secCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[21]~69_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(21));

-- Location: LCCOMB_X32_Y30_N18
\inst|secCount[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[22]~71_combout\ = (\inst|secCount\(22) & (\inst|secCount[21]~70\ $ (GND))) # (!\inst|secCount\(22) & (!\inst|secCount[21]~70\ & VCC))
-- \inst|secCount[22]~72\ = CARRY((\inst|secCount\(22) & !\inst|secCount[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(22),
	datad => VCC,
	cin => \inst|secCount[21]~70\,
	combout => \inst|secCount[22]~71_combout\,
	cout => \inst|secCount[22]~72\);

-- Location: FF_X32_Y30_N19
\inst|secCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[22]~71_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(22));

-- Location: LCCOMB_X32_Y30_N20
\inst|secCount[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[23]~73_combout\ = (\inst|secCount\(23) & (!\inst|secCount[22]~72\)) # (!\inst|secCount\(23) & ((\inst|secCount[22]~72\) # (GND)))
-- \inst|secCount[23]~74\ = CARRY((!\inst|secCount[22]~72\) # (!\inst|secCount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(23),
	datad => VCC,
	cin => \inst|secCount[22]~72\,
	combout => \inst|secCount[23]~73_combout\,
	cout => \inst|secCount[23]~74\);

-- Location: FF_X32_Y30_N21
\inst|secCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[23]~73_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(23));

-- Location: LCCOMB_X32_Y30_N22
\inst|secCount[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|secCount[24]~75_combout\ = (\inst|secCount\(24) & (\inst|secCount[23]~74\ $ (GND))) # (!\inst|secCount\(24) & (!\inst|secCount[23]~74\ & VCC))
-- \inst|secCount[24]~76\ = CARRY((\inst|secCount\(24) & !\inst|secCount[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(24),
	datad => VCC,
	cin => \inst|secCount[23]~74\,
	combout => \inst|secCount[24]~75_combout\,
	cout => \inst|secCount[24]~76\);

-- Location: FF_X32_Y30_N23
\inst|secCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[24]~75_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(24));

-- Location: FF_X32_Y30_N25
\inst|secCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|secCount[25]~77_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	sclr => \inst|LessThan0~7_combout\,
	ena => \inst|isactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|secCount\(25));

-- Location: LCCOMB_X32_Y30_N30
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (((!\inst|secCount\(18) & !\inst|secCount\(17))) # (!\inst|secCount\(19))) # (!\inst|secCount\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(18),
	datab => \inst|secCount\(17),
	datac => \inst|secCount\(20),
	datad => \inst|secCount\(19),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X31_Y30_N18
\inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = ((!\inst|secCount\(21)) # (!\inst|secCount\(23))) # (!\inst|secCount\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|secCount\(22),
	datac => \inst|secCount\(23),
	datad => \inst|secCount\(21),
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X31_Y30_N26
\inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = ((!\inst|secCount\(24) & ((\inst|LessThan0~4_combout\) # (\inst|LessThan0~5_combout\)))) # (!\inst|secCount\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|secCount\(25),
	datab => \inst|secCount\(24),
	datac => \inst|LessThan0~4_combout\,
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X31_Y30_N20
\inst|outCount[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|outCount[0]~15_combout\ = (\inst|isactive~3_combout\ & ((\inst|secCount\(26)) # ((!\inst|LessThan0~6_combout\ & !\inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~6_combout\,
	datab => \inst|secCount\(26),
	datac => \inst|isactive~3_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|outCount[0]~15_combout\);

-- Location: LCCOMB_X31_Y30_N28
\inst|outCount[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|outCount[0]~16_combout\ = \inst|outCount\(0) $ (\inst|outCount[0]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|outCount\(0),
	datad => \inst|outCount[0]~15_combout\,
	combout => \inst|outCount[0]~16_combout\);

-- Location: FF_X31_Y30_N29
\inst|outCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|outCount[0]~16_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|outCount\(0));

-- Location: LCCOMB_X31_Y30_N8
\inst|outCount[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|outCount[1]~5_combout\ = (\inst|outCount\(1) & (\inst|outCount\(0) $ (VCC))) # (!\inst|outCount\(1) & (\inst|outCount\(0) & VCC))
-- \inst|outCount[1]~6\ = CARRY((\inst|outCount\(1) & \inst|outCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|outCount\(1),
	datab => \inst|outCount\(0),
	datad => VCC,
	combout => \inst|outCount[1]~5_combout\,
	cout => \inst|outCount[1]~6\);

-- Location: FF_X31_Y30_N9
\inst|outCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|outCount[1]~5_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	ena => \inst|outCount[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|outCount\(1));

-- Location: LCCOMB_X31_Y30_N10
\inst|outCount[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|outCount[2]~7_combout\ = (\inst|outCount\(2) & (!\inst|outCount[1]~6\)) # (!\inst|outCount\(2) & ((\inst|outCount[1]~6\) # (GND)))
-- \inst|outCount[2]~8\ = CARRY((!\inst|outCount[1]~6\) # (!\inst|outCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|outCount\(2),
	datad => VCC,
	cin => \inst|outCount[1]~6\,
	combout => \inst|outCount[2]~7_combout\,
	cout => \inst|outCount[2]~8\);

-- Location: FF_X31_Y30_N11
\inst|outCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|outCount[2]~7_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	ena => \inst|outCount[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|outCount\(2));

-- Location: LCCOMB_X31_Y30_N12
\inst|outCount[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|outCount[3]~9_combout\ = (\inst|outCount\(3) & (\inst|outCount[2]~8\ $ (GND))) # (!\inst|outCount\(3) & (!\inst|outCount[2]~8\ & VCC))
-- \inst|outCount[3]~10\ = CARRY((\inst|outCount\(3) & !\inst|outCount[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|outCount\(3),
	datad => VCC,
	cin => \inst|outCount[2]~8\,
	combout => \inst|outCount[3]~9_combout\,
	cout => \inst|outCount[3]~10\);

-- Location: FF_X31_Y30_N13
\inst|outCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|outCount[3]~9_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	ena => \inst|outCount[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|outCount\(3));

-- Location: LCCOMB_X31_Y30_N14
\inst|outCount[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|outCount[4]~11_combout\ = (\inst|outCount\(4) & (!\inst|outCount[3]~10\)) # (!\inst|outCount\(4) & ((\inst|outCount[3]~10\) # (GND)))
-- \inst|outCount[4]~12\ = CARRY((!\inst|outCount[3]~10\) # (!\inst|outCount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|outCount\(4),
	datad => VCC,
	cin => \inst|outCount[3]~10\,
	combout => \inst|outCount[4]~11_combout\,
	cout => \inst|outCount[4]~12\);

-- Location: FF_X31_Y30_N15
\inst|outCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|outCount[4]~11_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	ena => \inst|outCount[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|outCount\(4));

-- Location: LCCOMB_X31_Y30_N16
\inst|outCount[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|outCount[5]~13_combout\ = \inst|outCount[4]~12\ $ (!\inst|outCount\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|outCount\(5),
	cin => \inst|outCount[4]~12\,
	combout => \inst|outCount[5]~13_combout\);

-- Location: FF_X31_Y30_N17
\inst|outCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|outCount[5]~13_combout\,
	clrn => \inst2|ALT_INV_button1pressed~3_combout\,
	ena => \inst|outCount[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|outCount\(5));

ww_DIN <= \DIN~output_o\;

ww_CS_n <= \CS_n~output_o\;

ww_SCLK <= \SCLK~output_o\;

ww_ledout(5) <= \ledout[5]~output_o\;

ww_ledout(4) <= \ledout[4]~output_o\;

ww_ledout(3) <= \ledout[3]~output_o\;

ww_ledout(2) <= \ledout[2]~output_o\;

ww_ledout(1) <= \ledout[1]~output_o\;

ww_ledout(0) <= \ledout[0]~output_o\;
END structure;


