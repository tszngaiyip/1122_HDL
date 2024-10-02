-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "06/07/2024 10:16:27"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter99 IS
    PORT (
	clk : IN std_logic;
	upcnt : IN std_logic;
	downcnt : IN std_logic;
	rst : IN std_logic;
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END counter99;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upcnt	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- downcnt	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF counter99 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_upcnt : std_logic;
SIGNAL ww_downcnt : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~32_combout\ : std_logic;
SIGNAL \count[0]~33\ : std_logic;
SIGNAL \count[1]~34_combout\ : std_logic;
SIGNAL \count[1]~35\ : std_logic;
SIGNAL \count[2]~36_combout\ : std_logic;
SIGNAL \count[2]~37\ : std_logic;
SIGNAL \count[3]~38_combout\ : std_logic;
SIGNAL \count[3]~39\ : std_logic;
SIGNAL \count[4]~40_combout\ : std_logic;
SIGNAL \count[4]~41\ : std_logic;
SIGNAL \count[5]~42_combout\ : std_logic;
SIGNAL \count[5]~43\ : std_logic;
SIGNAL \count[6]~44_combout\ : std_logic;
SIGNAL \count[6]~45\ : std_logic;
SIGNAL \count[7]~46_combout\ : std_logic;
SIGNAL \count[7]~47\ : std_logic;
SIGNAL \count[8]~48_combout\ : std_logic;
SIGNAL \count[8]~49\ : std_logic;
SIGNAL \count[9]~50_combout\ : std_logic;
SIGNAL \count[9]~51\ : std_logic;
SIGNAL \count[10]~52_combout\ : std_logic;
SIGNAL \count[10]~53\ : std_logic;
SIGNAL \count[11]~54_combout\ : std_logic;
SIGNAL \count[11]~55\ : std_logic;
SIGNAL \count[12]~56_combout\ : std_logic;
SIGNAL \count[12]~57\ : std_logic;
SIGNAL \count[13]~58_combout\ : std_logic;
SIGNAL \count[13]~59\ : std_logic;
SIGNAL \count[14]~60_combout\ : std_logic;
SIGNAL \count[14]~61\ : std_logic;
SIGNAL \count[15]~62_combout\ : std_logic;
SIGNAL \count[15]~63\ : std_logic;
SIGNAL \count[16]~64_combout\ : std_logic;
SIGNAL \count[16]~65\ : std_logic;
SIGNAL \count[17]~66_combout\ : std_logic;
SIGNAL \count[17]~67\ : std_logic;
SIGNAL \count[18]~68_combout\ : std_logic;
SIGNAL \count[18]~69\ : std_logic;
SIGNAL \count[19]~70_combout\ : std_logic;
SIGNAL \count[19]~71\ : std_logic;
SIGNAL \count[20]~72_combout\ : std_logic;
SIGNAL \count[20]~73\ : std_logic;
SIGNAL \count[21]~74_combout\ : std_logic;
SIGNAL \count[21]~75\ : std_logic;
SIGNAL \count[22]~76_combout\ : std_logic;
SIGNAL \count[22]~77\ : std_logic;
SIGNAL \count[23]~78_combout\ : std_logic;
SIGNAL \count[23]~79\ : std_logic;
SIGNAL \count[24]~80_combout\ : std_logic;
SIGNAL \count[24]~81\ : std_logic;
SIGNAL \count[25]~82_combout\ : std_logic;
SIGNAL \count[25]~83\ : std_logic;
SIGNAL \count[26]~84_combout\ : std_logic;
SIGNAL \count[26]~85\ : std_logic;
SIGNAL \count[27]~86_combout\ : std_logic;
SIGNAL \count[27]~87\ : std_logic;
SIGNAL \count[28]~88_combout\ : std_logic;
SIGNAL \count[28]~89\ : std_logic;
SIGNAL \count[29]~90_combout\ : std_logic;
SIGNAL \count[29]~91\ : std_logic;
SIGNAL \count[30]~92_combout\ : std_logic;
SIGNAL \count[30]~93\ : std_logic;
SIGNAL \count[31]~94_combout\ : std_logic;
SIGNAL \temp~q\ : std_logic;
SIGNAL \countsec1~4_combout\ : std_logic;
SIGNAL \clk_counter~0_combout\ : std_logic;
SIGNAL \clk_counter~1_combout\ : std_logic;
SIGNAL \clk_counter~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \clk_counter~3_combout\ : std_logic;
SIGNAL \clk_counter~4_combout\ : std_logic;
SIGNAL \clk_counter~5_combout\ : std_logic;
SIGNAL \clk_counter~6_combout\ : std_logic;
SIGNAL \clk_counter~7_combout\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \temp~clkctrl_outclk\ : std_logic;
SIGNAL \temp~feeder_combout\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Add1~2_cout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \downcnt~input_o\ : std_logic;
SIGNAL \upcnt~input_o\ : std_logic;
SIGNAL \countsec0[2]~3_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \countsec0~4_combout\ : std_logic;
SIGNAL \countsec0[2]~0_combout\ : std_logic;
SIGNAL \countsec0[2]~1_combout\ : std_logic;
SIGNAL \countsec0~2_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \dis0[0]~feeder_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \dis0[1]~feeder_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \dis0[2]~feeder_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \dis0[3]~feeder_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \dis0[4]~feeder_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \dis0[5]~feeder_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \dis0[6]~feeder_combout\ : std_logic;
SIGNAL \countsec1~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \countsec1~1_combout\ : std_logic;
SIGNAL \countsec1~2_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \countsec1~5_combout\ : std_logic;
SIGNAL \countsec1~6_combout\ : std_logic;
SIGNAL \countsec1~3_combout\ : std_logic;
SIGNAL \countsec1~7_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \countsec1[3]~8_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~4_cout\ : std_logic;
SIGNAL \Add2~6_cout\ : std_logic;
SIGNAL \Add2~7_combout\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \countsec1[3]~9_combout\ : std_logic;
SIGNAL \Add2~8\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \countsec1~10_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \dis1[0]~feeder_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \dis1[1]~feeder_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \dis1[2]~feeder_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \dis1[3]~feeder_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \dis1[4]~feeder_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \dis1[5]~feeder_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \dis1[6]~feeder_combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL countsec0 : std_logic_vector(3 DOWNTO 0);
SIGNAL countsec1 : std_logic_vector(3 DOWNTO 0);
SIGNAL dis0 : std_logic_vector(6 DOWNTO 0);
SIGNAL dis1 : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_upcnt <= upcnt;
ww_downcnt <= downcnt;
ww_rst <= rst;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \temp~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X7_Y5_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~44_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: FF_X7_Y5_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[8]~48_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: FF_X7_Y5_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~54_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: FF_X7_Y5_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[14]~60_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: FF_X7_Y4_N7
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[19]~70_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: FF_X7_Y5_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[9]~50_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: FF_X7_Y4_N5
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[18]~68_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: FF_X7_Y4_N13
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[22]~76_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: FF_X7_Y4_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[24]~80_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: FF_X7_Y4_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[25]~82_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: FF_X7_Y4_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[26]~84_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: FF_X7_Y4_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[27]~86_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: FF_X7_Y4_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[28]~88_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: FF_X7_Y4_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[29]~90_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: FF_X7_Y4_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[30]~92_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: FF_X7_Y4_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[31]~94_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: FF_X7_Y4_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[16]~64_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: FF_X7_Y4_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[17]~66_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: FF_X7_Y4_N11
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[21]~74_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: FF_X7_Y5_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[12]~56_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: FF_X7_Y5_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~58_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: FF_X7_Y5_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~34_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: FF_X7_Y5_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~36_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: FF_X7_Y5_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~32_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: FF_X7_Y5_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~38_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: FF_X7_Y5_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~40_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: FF_X7_Y5_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~42_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: FF_X7_Y5_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~46_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: FF_X7_Y5_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~52_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: FF_X7_Y5_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[15]~62_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: FF_X7_Y4_N9
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[20]~72_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: FF_X7_Y4_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[23]~78_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X7_Y5_N0
\count[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~32_combout\ = count(0) $ (VCC)
-- \count[0]~33\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~32_combout\,
	cout => \count[0]~33\);

-- Location: LCCOMB_X7_Y5_N2
\count[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~34_combout\ = (count(1) & (!\count[0]~33\)) # (!count(1) & ((\count[0]~33\) # (GND)))
-- \count[1]~35\ = CARRY((!\count[0]~33\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~33\,
	combout => \count[1]~34_combout\,
	cout => \count[1]~35\);

-- Location: LCCOMB_X7_Y5_N4
\count[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~36_combout\ = (count(2) & (\count[1]~35\ $ (GND))) # (!count(2) & (!\count[1]~35\ & VCC))
-- \count[2]~37\ = CARRY((count(2) & !\count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~35\,
	combout => \count[2]~36_combout\,
	cout => \count[2]~37\);

-- Location: LCCOMB_X7_Y5_N6
\count[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~38_combout\ = (count(3) & (!\count[2]~37\)) # (!count(3) & ((\count[2]~37\) # (GND)))
-- \count[3]~39\ = CARRY((!\count[2]~37\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~37\,
	combout => \count[3]~38_combout\,
	cout => \count[3]~39\);

-- Location: LCCOMB_X7_Y5_N8
\count[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~40_combout\ = (count(4) & (\count[3]~39\ $ (GND))) # (!count(4) & (!\count[3]~39\ & VCC))
-- \count[4]~41\ = CARRY((count(4) & !\count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~39\,
	combout => \count[4]~40_combout\,
	cout => \count[4]~41\);

-- Location: LCCOMB_X7_Y5_N10
\count[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~42_combout\ = (count(5) & (!\count[4]~41\)) # (!count(5) & ((\count[4]~41\) # (GND)))
-- \count[5]~43\ = CARRY((!\count[4]~41\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~41\,
	combout => \count[5]~42_combout\,
	cout => \count[5]~43\);

-- Location: LCCOMB_X7_Y5_N12
\count[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~44_combout\ = (count(6) & (\count[5]~43\ $ (GND))) # (!count(6) & (!\count[5]~43\ & VCC))
-- \count[6]~45\ = CARRY((count(6) & !\count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~43\,
	combout => \count[6]~44_combout\,
	cout => \count[6]~45\);

-- Location: LCCOMB_X7_Y5_N14
\count[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~46_combout\ = (count(7) & (!\count[6]~45\)) # (!count(7) & ((\count[6]~45\) # (GND)))
-- \count[7]~47\ = CARRY((!\count[6]~45\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~45\,
	combout => \count[7]~46_combout\,
	cout => \count[7]~47\);

-- Location: LCCOMB_X7_Y5_N16
\count[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[8]~48_combout\ = (count(8) & (\count[7]~47\ $ (GND))) # (!count(8) & (!\count[7]~47\ & VCC))
-- \count[8]~49\ = CARRY((count(8) & !\count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~47\,
	combout => \count[8]~48_combout\,
	cout => \count[8]~49\);

-- Location: LCCOMB_X7_Y5_N18
\count[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~50_combout\ = (count(9) & (!\count[8]~49\)) # (!count(9) & ((\count[8]~49\) # (GND)))
-- \count[9]~51\ = CARRY((!\count[8]~49\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~49\,
	combout => \count[9]~50_combout\,
	cout => \count[9]~51\);

-- Location: LCCOMB_X7_Y5_N20
\count[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[10]~52_combout\ = (count(10) & (\count[9]~51\ $ (GND))) # (!count(10) & (!\count[9]~51\ & VCC))
-- \count[10]~53\ = CARRY((count(10) & !\count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~51\,
	combout => \count[10]~52_combout\,
	cout => \count[10]~53\);

-- Location: LCCOMB_X7_Y5_N22
\count[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[11]~54_combout\ = (count(11) & (!\count[10]~53\)) # (!count(11) & ((\count[10]~53\) # (GND)))
-- \count[11]~55\ = CARRY((!\count[10]~53\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~53\,
	combout => \count[11]~54_combout\,
	cout => \count[11]~55\);

-- Location: LCCOMB_X7_Y5_N24
\count[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[12]~56_combout\ = (count(12) & (\count[11]~55\ $ (GND))) # (!count(12) & (!\count[11]~55\ & VCC))
-- \count[12]~57\ = CARRY((count(12) & !\count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~55\,
	combout => \count[12]~56_combout\,
	cout => \count[12]~57\);

-- Location: LCCOMB_X7_Y5_N26
\count[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[13]~58_combout\ = (count(13) & (!\count[12]~57\)) # (!count(13) & ((\count[12]~57\) # (GND)))
-- \count[13]~59\ = CARRY((!\count[12]~57\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~57\,
	combout => \count[13]~58_combout\,
	cout => \count[13]~59\);

-- Location: LCCOMB_X7_Y5_N28
\count[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[14]~60_combout\ = (count(14) & (\count[13]~59\ $ (GND))) # (!count(14) & (!\count[13]~59\ & VCC))
-- \count[14]~61\ = CARRY((count(14) & !\count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~59\,
	combout => \count[14]~60_combout\,
	cout => \count[14]~61\);

-- Location: LCCOMB_X7_Y5_N30
\count[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~62_combout\ = (count(15) & (!\count[14]~61\)) # (!count(15) & ((\count[14]~61\) # (GND)))
-- \count[15]~63\ = CARRY((!\count[14]~61\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~61\,
	combout => \count[15]~62_combout\,
	cout => \count[15]~63\);

-- Location: LCCOMB_X7_Y4_N0
\count[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[16]~64_combout\ = (count(16) & (\count[15]~63\ $ (GND))) # (!count(16) & (!\count[15]~63\ & VCC))
-- \count[16]~65\ = CARRY((count(16) & !\count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~63\,
	combout => \count[16]~64_combout\,
	cout => \count[16]~65\);

-- Location: LCCOMB_X7_Y4_N2
\count[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[17]~66_combout\ = (count(17) & (!\count[16]~65\)) # (!count(17) & ((\count[16]~65\) # (GND)))
-- \count[17]~67\ = CARRY((!\count[16]~65\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~65\,
	combout => \count[17]~66_combout\,
	cout => \count[17]~67\);

-- Location: LCCOMB_X7_Y4_N4
\count[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[18]~68_combout\ = (count(18) & (\count[17]~67\ $ (GND))) # (!count(18) & (!\count[17]~67\ & VCC))
-- \count[18]~69\ = CARRY((count(18) & !\count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~67\,
	combout => \count[18]~68_combout\,
	cout => \count[18]~69\);

-- Location: LCCOMB_X7_Y4_N6
\count[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[19]~70_combout\ = (count(19) & (!\count[18]~69\)) # (!count(19) & ((\count[18]~69\) # (GND)))
-- \count[19]~71\ = CARRY((!\count[18]~69\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~69\,
	combout => \count[19]~70_combout\,
	cout => \count[19]~71\);

-- Location: LCCOMB_X7_Y4_N8
\count[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[20]~72_combout\ = (count(20) & (\count[19]~71\ $ (GND))) # (!count(20) & (!\count[19]~71\ & VCC))
-- \count[20]~73\ = CARRY((count(20) & !\count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~71\,
	combout => \count[20]~72_combout\,
	cout => \count[20]~73\);

-- Location: LCCOMB_X7_Y4_N10
\count[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[21]~74_combout\ = (count(21) & (!\count[20]~73\)) # (!count(21) & ((\count[20]~73\) # (GND)))
-- \count[21]~75\ = CARRY((!\count[20]~73\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~73\,
	combout => \count[21]~74_combout\,
	cout => \count[21]~75\);

-- Location: LCCOMB_X7_Y4_N12
\count[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[22]~76_combout\ = (count(22) & (\count[21]~75\ $ (GND))) # (!count(22) & (!\count[21]~75\ & VCC))
-- \count[22]~77\ = CARRY((count(22) & !\count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~75\,
	combout => \count[22]~76_combout\,
	cout => \count[22]~77\);

-- Location: LCCOMB_X7_Y4_N14
\count[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[23]~78_combout\ = (count(23) & (!\count[22]~77\)) # (!count(23) & ((\count[22]~77\) # (GND)))
-- \count[23]~79\ = CARRY((!\count[22]~77\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~77\,
	combout => \count[23]~78_combout\,
	cout => \count[23]~79\);

-- Location: LCCOMB_X7_Y4_N16
\count[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[24]~80_combout\ = (count(24) & (\count[23]~79\ $ (GND))) # (!count(24) & (!\count[23]~79\ & VCC))
-- \count[24]~81\ = CARRY((count(24) & !\count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~79\,
	combout => \count[24]~80_combout\,
	cout => \count[24]~81\);

-- Location: LCCOMB_X7_Y4_N18
\count[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[25]~82_combout\ = (count(25) & (!\count[24]~81\)) # (!count(25) & ((\count[24]~81\) # (GND)))
-- \count[25]~83\ = CARRY((!\count[24]~81\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~81\,
	combout => \count[25]~82_combout\,
	cout => \count[25]~83\);

-- Location: LCCOMB_X7_Y4_N20
\count[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[26]~84_combout\ = (count(26) & (\count[25]~83\ $ (GND))) # (!count(26) & (!\count[25]~83\ & VCC))
-- \count[26]~85\ = CARRY((count(26) & !\count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \count[25]~83\,
	combout => \count[26]~84_combout\,
	cout => \count[26]~85\);

-- Location: LCCOMB_X7_Y4_N22
\count[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[27]~86_combout\ = (count(27) & (!\count[26]~85\)) # (!count(27) & ((\count[26]~85\) # (GND)))
-- \count[27]~87\ = CARRY((!\count[26]~85\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \count[26]~85\,
	combout => \count[27]~86_combout\,
	cout => \count[27]~87\);

-- Location: LCCOMB_X7_Y4_N24
\count[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[28]~88_combout\ = (count(28) & (\count[27]~87\ $ (GND))) # (!count(28) & (!\count[27]~87\ & VCC))
-- \count[28]~89\ = CARRY((count(28) & !\count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \count[27]~87\,
	combout => \count[28]~88_combout\,
	cout => \count[28]~89\);

-- Location: LCCOMB_X7_Y4_N26
\count[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[29]~90_combout\ = (count(29) & (!\count[28]~89\)) # (!count(29) & ((\count[28]~89\) # (GND)))
-- \count[29]~91\ = CARRY((!\count[28]~89\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \count[28]~89\,
	combout => \count[29]~90_combout\,
	cout => \count[29]~91\);

-- Location: LCCOMB_X7_Y4_N28
\count[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[30]~92_combout\ = (count(30) & (\count[29]~91\ $ (GND))) # (!count(30) & (!\count[29]~91\ & VCC))
-- \count[30]~93\ = CARRY((count(30) & !\count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \count[29]~91\,
	combout => \count[30]~92_combout\,
	cout => \count[30]~93\);

-- Location: LCCOMB_X7_Y4_N30
\count[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[31]~94_combout\ = count(31) $ (\count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \count[30]~93\,
	combout => \count[31]~94_combout\);

-- Location: FF_X6_Y4_N31
temp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp~q\);

-- Location: LCCOMB_X35_Y28_N12
\countsec1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec1~4_combout\ = (\LessThan4~0_combout\ & (\upcnt~input_o\ & !\countsec1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datac => \upcnt~input_o\,
	datad => \countsec1~0_combout\,
	combout => \countsec1~4_combout\);

-- Location: LCCOMB_X8_Y5_N24
\clk_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_counter~0_combout\ = (count(8) & (count(11) & (count(14) & count(19)))) # (!count(8) & ((count(11)) # ((count(14)) # (count(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(11),
	datac => count(14),
	datad => count(19),
	combout => \clk_counter~0_combout\);

-- Location: LCCOMB_X6_Y4_N26
\clk_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_counter~1_combout\ = (count(8) & (((count(18) & count(22))) # (!count(9)))) # (!count(8) & (!count(9) & ((count(18)) # (count(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(18),
	datac => count(22),
	datad => count(9),
	combout => \clk_counter~1_combout\);

-- Location: LCCOMB_X6_Y4_N10
\clk_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_counter~2_combout\ = (count(6) & (count(9) & (\clk_counter~1_combout\ & \clk_counter~0_combout\))) # (!count(6) & (!count(9) & (!\clk_counter~1_combout\ & !\clk_counter~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(9),
	datac => \clk_counter~1_combout\,
	datad => \clk_counter~0_combout\,
	combout => \clk_counter~2_combout\);

-- Location: LCCOMB_X6_Y4_N8
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(26) & (!count(27) & (!count(24) & !count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(27),
	datac => count(24),
	datad => count(25),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X6_Y4_N12
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!count(31) & (!count(29) & (!count(30) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => count(29),
	datac => count(30),
	datad => count(28),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X6_Y4_N4
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~0_combout\ & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X6_Y4_N24
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!count(21) & (!count(16) & !count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datac => count(16),
	datad => count(17),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X8_Y3_N0
\clk_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_counter~3_combout\ = (!count(12) & (!count(1) & (!count(2) & !count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(1),
	datac => count(2),
	datad => count(13),
	combout => \clk_counter~3_combout\);

-- Location: LCCOMB_X6_Y4_N20
\clk_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_counter~4_combout\ = (!count(0) & (\LessThan0~3_combout\ & (\LessThan0~2_combout\ & \clk_counter~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~2_combout\,
	datad => \clk_counter~3_combout\,
	combout => \clk_counter~4_combout\);

-- Location: LCCOMB_X10_Y4_N16
\clk_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_counter~5_combout\ = (!count(4) & (!count(5) & (!count(7) & !count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(5),
	datac => count(7),
	datad => count(3),
	combout => \clk_counter~5_combout\);

-- Location: LCCOMB_X6_Y5_N8
\clk_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_counter~6_combout\ = (!count(10) & (!count(15) & (!count(20) & !count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(15),
	datac => count(20),
	datad => count(23),
	combout => \clk_counter~6_combout\);

-- Location: LCCOMB_X6_Y4_N18
\clk_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_counter~7_combout\ = (\clk_counter~6_combout\ & \clk_counter~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_counter~6_combout\,
	datad => \clk_counter~5_combout\,
	combout => \clk_counter~7_combout\);

-- Location: LCCOMB_X6_Y4_N16
\temp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = \temp~q\ $ (((\clk_counter~2_combout\ & (\clk_counter~4_combout\ & \clk_counter~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_counter~2_combout\,
	datab => \clk_counter~4_combout\,
	datac => \temp~q\,
	datad => \clk_counter~7_combout\,
	combout => \temp~0_combout\);

-- Location: LCCOMB_X6_Y4_N14
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!count(22) & (!count(18) & \LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datac => count(18),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X6_Y4_N2
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((!count(8) & !count(7))) # (!count(9))) # (!count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(10),
	datac => count(7),
	datad => count(9),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X6_Y4_N6
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (count(13)) # ((count(12) & ((count(11)) # (!\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(13),
	datac => count(12),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X6_Y4_N28
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~4_combout\ & (((!count(14) & !\LessThan0~6_combout\)) # (!count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(15),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X6_Y4_N22
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!count(21) & (!count(22) & ((!count(19)) # (!count(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => count(20),
	datad => count(19),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X6_Y4_N0
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ((!\LessThan0~8_combout\ & (count(23) & !\LessThan0~7_combout\))) # (!\LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => count(23),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~9_combout\);

-- Location: CLKCTRL_G0
\temp~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \temp~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y4_N30
\temp~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~feeder_combout\ = \temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \temp~0_combout\,
	combout => \temp~feeder_combout\);

-- Location: IOOBUF_X21_Y29_N23
\hex0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis0(0),
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\hex0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis0(1),
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\hex0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis0(2),
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\hex0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis0(3),
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\hex0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis0(4),
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\hex0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis0(5),
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\hex0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis0(6),
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\hex1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis1(0),
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\hex1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis1(1),
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\hex1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis1(2),
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\hex1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis1(3),
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\hex1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis1(4),
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\hex1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis1(5),
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\hex1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dis1(6),
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X33_Y28_N16
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_cout\ = CARRY(countsec0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countsec0(0),
	datad => VCC,
	cout => \Add1~2_cout\);

-- Location: LCCOMB_X33_Y28_N18
\Add1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\upcnt~input_o\ & ((countsec0(1) & (\Add1~2_cout\ & VCC)) # (!countsec0(1) & (!\Add1~2_cout\)))) # (!\upcnt~input_o\ & ((countsec0(1) & (!\Add1~2_cout\)) # (!countsec0(1) & ((\Add1~2_cout\) # (GND)))))
-- \Add1~4\ = CARRY((\upcnt~input_o\ & (!countsec0(1) & !\Add1~2_cout\)) # (!\upcnt~input_o\ & ((!\Add1~2_cout\) # (!countsec0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upcnt~input_o\,
	datab => countsec0(1),
	datad => VCC,
	cin => \Add1~2_cout\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X37_Y28_N26
\Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\Add1~3_combout\ & \countsec0[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~3_combout\,
	datad => \countsec0[2]~1_combout\,
	combout => \Add1~5_combout\);

-- Location: IOIBUF_X0_Y23_N1
\downcnt~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_downcnt,
	o => \downcnt~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\upcnt~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upcnt,
	o => \upcnt~input_o\);

-- Location: LCCOMB_X33_Y28_N2
\countsec0[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec0[2]~3_combout\ = ((!\upcnt~input_o\) # (!\downcnt~input_o\)) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \downcnt~input_o\,
	datad => \upcnt~input_o\,
	combout => \countsec0[2]~3_combout\);

-- Location: FF_X37_Y28_N27
\countsec0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~clkctrl_outclk\,
	d => \Add1~5_combout\,
	ena => \countsec0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countsec0(1));

-- Location: LCCOMB_X33_Y28_N20
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = ((\upcnt~input_o\ $ (countsec0(2) $ (!\Add1~4\)))) # (GND)
-- \Add1~7\ = CARRY((\upcnt~input_o\ & ((countsec0(2)) # (!\Add1~4\))) # (!\upcnt~input_o\ & (countsec0(2) & !\Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upcnt~input_o\,
	datab => countsec0(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X37_Y28_N20
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~6_combout\ & \countsec0[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~6_combout\,
	datad => \countsec0[2]~1_combout\,
	combout => \Add1~8_combout\);

-- Location: FF_X37_Y28_N21
\countsec0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~clkctrl_outclk\,
	d => \Add1~8_combout\,
	ena => \countsec0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countsec0(2));

-- Location: LCCOMB_X33_Y28_N22
\Add1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = \upcnt~input_o\ $ (\Add1~7\ $ (countsec0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upcnt~input_o\,
	datad => countsec0(3),
	cin => \Add1~7\,
	combout => \Add1~9_combout\);

-- Location: LCCOMB_X37_Y28_N30
\countsec0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec0~4_combout\ = (\countsec0[2]~1_combout\ & (((\Add1~9_combout\)))) # (!\countsec0[2]~1_combout\ & (\upcnt~input_o\ & (\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upcnt~input_o\,
	datab => \rst~input_o\,
	datac => \countsec0[2]~1_combout\,
	datad => \Add1~9_combout\,
	combout => \countsec0~4_combout\);

-- Location: FF_X37_Y28_N31
\countsec0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~clkctrl_outclk\,
	d => \countsec0~4_combout\,
	ena => \countsec0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countsec0(3));

-- Location: LCCOMB_X35_Y28_N24
\countsec0[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec0[2]~0_combout\ = (!countsec0(0) & (!countsec0(1) & !countsec0(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countsec0(0),
	datac => countsec0(1),
	datad => countsec0(2),
	combout => \countsec0[2]~0_combout\);

-- Location: LCCOMB_X33_Y28_N0
\countsec0[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec0[2]~1_combout\ = (\rst~input_o\ & ((\upcnt~input_o\ & ((countsec0(3)) # (!\countsec0[2]~0_combout\))) # (!\upcnt~input_o\ & ((\countsec0[2]~0_combout\) # (!countsec0(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upcnt~input_o\,
	datab => \rst~input_o\,
	datac => countsec0(3),
	datad => \countsec0[2]~0_combout\,
	combout => \countsec0[2]~1_combout\);

-- Location: LCCOMB_X37_Y28_N8
\countsec0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec0~2_combout\ = (\countsec0[2]~1_combout\ & (((!countsec0(0))))) # (!\countsec0[2]~1_combout\ & (\upcnt~input_o\ & (\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upcnt~input_o\,
	datab => \rst~input_o\,
	datac => countsec0(0),
	datad => \countsec0[2]~1_combout\,
	combout => \countsec0~2_combout\);

-- Location: FF_X37_Y28_N9
\countsec0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~clkctrl_outclk\,
	d => \countsec0~2_combout\,
	ena => \countsec0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countsec0(0));

-- Location: LCCOMB_X37_Y28_N0
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!countsec0(3) & (!countsec0(1) & (countsec0(0) $ (countsec0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec0(3),
	datab => countsec0(0),
	datac => countsec0(2),
	datad => countsec0(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X37_Y28_N24
\dis0[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis0[0]~feeder_combout\ = \Mux13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux13~0_combout\,
	combout => \dis0[0]~feeder_combout\);

-- Location: FF_X37_Y28_N25
\dis0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis0[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis0(0));

-- Location: LCCOMB_X37_Y28_N2
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!countsec0(3) & (countsec0(2) & (countsec0(1) $ (countsec0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec0(1),
	datab => countsec0(0),
	datac => countsec0(3),
	datad => countsec0(2),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X37_Y28_N10
\dis0[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis0[1]~feeder_combout\ = \Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux12~0_combout\,
	combout => \dis0[1]~feeder_combout\);

-- Location: FF_X37_Y28_N11
\dis0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis0[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis0(1));

-- Location: LCCOMB_X37_Y28_N28
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!countsec0(3) & (!countsec0(2) & (countsec0(1) & !countsec0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec0(3),
	datab => countsec0(2),
	datac => countsec0(1),
	datad => countsec0(0),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X36_Y28_N0
\dis0[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis0[2]~feeder_combout\ = \Mux11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux11~0_combout\,
	combout => \dis0[2]~feeder_combout\);

-- Location: FF_X36_Y28_N1
\dis0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis0[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis0(2));

-- Location: LCCOMB_X37_Y28_N22
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!countsec0(3) & ((countsec0(0) & (countsec0(2) $ (!countsec0(1)))) # (!countsec0(0) & (countsec0(2) & !countsec0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec0(3),
	datab => countsec0(0),
	datac => countsec0(2),
	datad => countsec0(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X37_Y28_N4
\dis0[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis0[3]~feeder_combout\ = \Mux10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux10~0_combout\,
	combout => \dis0[3]~feeder_combout\);

-- Location: FF_X37_Y28_N5
\dis0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis0[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis0(3));

-- Location: LCCOMB_X37_Y28_N16
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (countsec0(0)) # ((countsec0(1) & (countsec0(3))) # (!countsec0(1) & ((countsec0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec0(1),
	datab => countsec0(0),
	datac => countsec0(3),
	datad => countsec0(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X36_Y28_N10
\dis0[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis0[4]~feeder_combout\ = \Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux9~0_combout\,
	combout => \dis0[4]~feeder_combout\);

-- Location: FF_X36_Y28_N11
\dis0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis0[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis0(4));

-- Location: LCCOMB_X37_Y28_N18
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!countsec0(3) & ((countsec0(1) & ((countsec0(0)) # (!countsec0(2)))) # (!countsec0(1) & (!countsec0(2) & countsec0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec0(1),
	datab => countsec0(2),
	datac => countsec0(3),
	datad => countsec0(0),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X36_Y28_N12
\dis0[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis0[5]~feeder_combout\ = \Mux8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux8~0_combout\,
	combout => \dis0[5]~feeder_combout\);

-- Location: FF_X36_Y28_N13
\dis0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis0[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis0(5));

-- Location: LCCOMB_X37_Y28_N12
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!countsec0(3) & ((countsec0(1) & (countsec0(0) & countsec0(2))) # (!countsec0(1) & ((!countsec0(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec0(1),
	datab => countsec0(0),
	datac => countsec0(3),
	datad => countsec0(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X37_Y28_N6
\dis0[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis0[6]~feeder_combout\ = \Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux7~0_combout\,
	combout => \dis0[6]~feeder_combout\);

-- Location: FF_X37_Y28_N7
\dis0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis0[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis0(6));

-- Location: LCCOMB_X35_Y28_N2
\countsec1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec1~0_combout\ = (\downcnt~input_o\) # ((countsec0(3)) # (!\countsec0[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \downcnt~input_o\,
	datac => countsec0(3),
	datad => \countsec0[2]~0_combout\,
	combout => \countsec1~0_combout\);

-- Location: LCCOMB_X37_Y28_N14
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!countsec0(1) & (!countsec0(2) & (countsec0(3) & countsec0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec0(1),
	datab => countsec0(2),
	datac => countsec0(3),
	datad => countsec0(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X36_Y28_N14
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ((!countsec1(0) & (!countsec1(2) & !countsec1(1)))) # (!countsec1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(0),
	datab => countsec1(2),
	datac => countsec1(3),
	datad => countsec1(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X36_Y28_N24
\countsec1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec1~1_combout\ = (countsec1(0) & (((\upcnt~input_o\)) # (!\Equal2~0_combout\))) # (!countsec1(0) & (\Equal2~0_combout\ & (\LessThan2~0_combout\ & !\upcnt~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(0),
	datab => \Equal2~0_combout\,
	datac => \LessThan2~0_combout\,
	datad => \upcnt~input_o\,
	combout => \countsec1~1_combout\);

-- Location: LCCOMB_X35_Y28_N8
\countsec1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec1~2_combout\ = (\rst~input_o\ & (\countsec1~1_combout\ $ (((!\countsec1~0_combout\ & \upcnt~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsec1~0_combout\,
	datab => \upcnt~input_o\,
	datac => \rst~input_o\,
	datad => \countsec1~1_combout\,
	combout => \countsec1~2_combout\);

-- Location: FF_X35_Y28_N9
\countsec1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~clkctrl_outclk\,
	d => \countsec1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countsec1(0));

-- Location: LCCOMB_X35_Y28_N30
\Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = (countsec1(0) & \upcnt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countsec1(0),
	datad => \upcnt~input_o\,
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X35_Y28_N0
\countsec1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec1~5_combout\ = (countsec1(0) & (!\upcnt~input_o\ & (\Equal2~0_combout\ & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(0),
	datab => \upcnt~input_o\,
	datac => \Equal2~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \countsec1~5_combout\);

-- Location: LCCOMB_X35_Y28_N26
\countsec1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec1~6_combout\ = countsec1(1) $ (((\countsec1~5_combout\) # ((!\countsec1~0_combout\ & \Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(1),
	datab => \countsec1~0_combout\,
	datac => \Add2~1_combout\,
	datad => \countsec1~5_combout\,
	combout => \countsec1~6_combout\);

-- Location: LCCOMB_X36_Y28_N18
\countsec1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec1~3_combout\ = (\upcnt~input_o\ & (((\countsec1~0_combout\)))) # (!\upcnt~input_o\ & ((\LessThan2~0_combout\) # ((!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \upcnt~input_o\,
	datad => \countsec1~0_combout\,
	combout => \countsec1~3_combout\);

-- Location: LCCOMB_X35_Y28_N10
\countsec1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec1~7_combout\ = (\rst~input_o\ & ((\countsec1~6_combout\ & ((\countsec1~3_combout\))) # (!\countsec1~6_combout\ & (\countsec1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsec1~4_combout\,
	datab => \rst~input_o\,
	datac => \countsec1~6_combout\,
	datad => \countsec1~3_combout\,
	combout => \countsec1~7_combout\);

-- Location: FF_X35_Y28_N11
\countsec1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~clkctrl_outclk\,
	d => \countsec1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countsec1(1));

-- Location: LCCOMB_X36_Y28_N4
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (countsec1(0)) # ((countsec1(2)) # ((countsec1(3)) # (countsec1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(0),
	datab => countsec1(2),
	datac => countsec1(3),
	datad => countsec1(1),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X36_Y28_N30
\countsec1[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec1[3]~8_combout\ = (\rst~input_o\ & ((\upcnt~input_o\ & (\LessThan4~0_combout\)) # (!\upcnt~input_o\ & ((\LessThan2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \upcnt~input_o\,
	datac => \LessThan4~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \countsec1[3]~8_combout\);

-- Location: LCCOMB_X35_Y28_N4
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (countsec1(0)) # (\upcnt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countsec1(0),
	datad => \upcnt~input_o\,
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X35_Y28_N16
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_cout\ = CARRY((\Add2~1_combout\ & \upcnt~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => \upcnt~input_o\,
	datad => VCC,
	cout => \Add2~4_cout\);

-- Location: LCCOMB_X35_Y28_N18
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_cout\ = CARRY((countsec1(1) & (!\Add2~2_combout\ & !\Add2~4_cout\)) # (!countsec1(1) & ((!\Add2~4_cout\) # (!\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(1),
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \Add2~4_cout\,
	cout => \Add2~6_cout\);

-- Location: LCCOMB_X35_Y28_N20
\Add2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~7_combout\ = ((\upcnt~input_o\ $ (countsec1(2) $ (!\Add2~6_cout\)))) # (GND)
-- \Add2~8\ = CARRY((\upcnt~input_o\ & ((countsec1(2)) # (!\Add2~6_cout\))) # (!\upcnt~input_o\ & (countsec1(2) & !\Add2~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upcnt~input_o\,
	datab => countsec1(2),
	datad => VCC,
	cin => \Add2~6_cout\,
	combout => \Add2~7_combout\,
	cout => \Add2~8\);

-- Location: LCCOMB_X35_Y28_N28
\Add2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = (\countsec1[3]~8_combout\ & \Add2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \countsec1[3]~8_combout\,
	datad => \Add2~7_combout\,
	combout => \Add2~9_combout\);

-- Location: LCCOMB_X35_Y28_N6
\countsec1[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec1[3]~9_combout\ = ((\upcnt~input_o\ & ((!\countsec1~0_combout\))) # (!\upcnt~input_o\ & (\Equal2~0_combout\))) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \upcnt~input_o\,
	datac => \Equal2~0_combout\,
	datad => \countsec1~0_combout\,
	combout => \countsec1[3]~9_combout\);

-- Location: FF_X35_Y28_N29
\countsec1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~clkctrl_outclk\,
	d => \Add2~9_combout\,
	ena => \countsec1[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countsec1(2));

-- Location: LCCOMB_X35_Y28_N22
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = countsec1(3) $ (\Add2~8\ $ (\upcnt~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countsec1(3),
	datad => \upcnt~input_o\,
	cin => \Add2~8\,
	combout => \Add2~10_combout\);

-- Location: LCCOMB_X35_Y28_N14
\countsec1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countsec1~10_combout\ = (\countsec1[3]~8_combout\ & (((\Add2~10_combout\)))) # (!\countsec1[3]~8_combout\ & (\upcnt~input_o\ & ((\rst~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsec1[3]~8_combout\,
	datab => \upcnt~input_o\,
	datac => \Add2~10_combout\,
	datad => \rst~input_o\,
	combout => \countsec1~10_combout\);

-- Location: FF_X35_Y28_N15
\countsec1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~clkctrl_outclk\,
	d => \countsec1~10_combout\,
	ena => \countsec1[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countsec1(3));

-- Location: LCCOMB_X36_Y28_N6
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!countsec1(3) & (!countsec1(1) & (countsec1(0) $ (countsec1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(0),
	datab => countsec1(3),
	datac => countsec1(2),
	datad => countsec1(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X36_Y28_N22
\dis1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis1[0]~feeder_combout\ = \Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux6~0_combout\,
	combout => \dis1[0]~feeder_combout\);

-- Location: FF_X36_Y28_N23
\dis1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis1(0));

-- Location: LCCOMB_X36_Y28_N16
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!countsec1(3) & (countsec1(2) & (countsec1(0) $ (countsec1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(0),
	datab => countsec1(3),
	datac => countsec1(2),
	datad => countsec1(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X36_Y28_N8
\dis1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis1[1]~feeder_combout\ = \Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux5~0_combout\,
	combout => \dis1[1]~feeder_combout\);

-- Location: FF_X36_Y28_N9
\dis1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis1(1));

-- Location: LCCOMB_X36_Y28_N2
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!countsec1(0) & (!countsec1(3) & (!countsec1(2) & countsec1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(0),
	datab => countsec1(3),
	datac => countsec1(2),
	datad => countsec1(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X36_Y28_N26
\dis1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis1[2]~feeder_combout\ = \Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux4~0_combout\,
	combout => \dis1[2]~feeder_combout\);

-- Location: FF_X36_Y28_N27
\dis1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis1(2));

-- Location: LCCOMB_X36_Y28_N28
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!countsec1(3) & ((countsec1(0) & (countsec1(2) $ (!countsec1(1)))) # (!countsec1(0) & (countsec1(2) & !countsec1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(0),
	datab => countsec1(3),
	datac => countsec1(2),
	datad => countsec1(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X36_Y28_N20
\dis1[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis1[3]~feeder_combout\ = \Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux3~0_combout\,
	combout => \dis1[3]~feeder_combout\);

-- Location: FF_X36_Y28_N21
\dis1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis1(3));

-- Location: LCCOMB_X31_Y28_N6
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (countsec1(0)) # ((countsec1(1) & (countsec1(3))) # (!countsec1(1) & ((countsec1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(3),
	datab => countsec1(1),
	datac => countsec1(0),
	datad => countsec1(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X31_Y28_N24
\dis1[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis1[4]~feeder_combout\ = \Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~0_combout\,
	combout => \dis1[4]~feeder_combout\);

-- Location: FF_X31_Y28_N25
\dis1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis1(4));

-- Location: LCCOMB_X31_Y28_N0
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!countsec1(3) & ((countsec1(0) & ((countsec1(1)) # (!countsec1(2)))) # (!countsec1(0) & (!countsec1(2) & countsec1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(0),
	datab => countsec1(2),
	datac => countsec1(1),
	datad => countsec1(3),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X31_Y28_N26
\dis1[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis1[5]~feeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \dis1[5]~feeder_combout\);

-- Location: FF_X31_Y28_N27
\dis1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis1[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis1(5));

-- Location: LCCOMB_X31_Y28_N2
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!countsec1(3) & ((countsec1(1) & (countsec1(0) & countsec1(2))) # (!countsec1(1) & ((!countsec1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countsec1(0),
	datab => countsec1(3),
	datac => countsec1(1),
	datad => countsec1(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X31_Y28_N28
\dis1[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dis1[6]~feeder_combout\ = \Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux0~0_combout\,
	combout => \dis1[6]~feeder_combout\);

-- Location: FF_X31_Y28_N29
\dis1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dis1[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis1(6));

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;
END structure;


