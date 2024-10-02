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

-- DATE "05/29/2024 17:15:19"

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

ENTITY 	shiftLED IS
    PORT (
	Din : IN std_logic_vector(4 DOWNTO 0);
	clk : IN std_logic;
	Q : OUT std_logic_vector(9 DOWNTO 0);
	pb1 : IN std_logic;
	pb2 : IN std_logic;
	bt1 : IN std_logic;
	bt2 : IN std_logic
	);
END shiftLED;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb2	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb1	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF shiftLED IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Din : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_Q : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_pb1 : std_logic;
SIGNAL ww_pb2 : std_logic;
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_count_slow[3]~38_combout\ : std_logic;
SIGNAL \clk_count_slow[5]~42_combout\ : std_logic;
SIGNAL \clk_count_slow[6]~44_combout\ : std_logic;
SIGNAL \clk_count_slow[13]~58_combout\ : std_logic;
SIGNAL \clk_count_slow[19]~70_combout\ : std_logic;
SIGNAL \clk_count_fast[3]~38_combout\ : std_logic;
SIGNAL \clk_count_fast[5]~42_combout\ : std_logic;
SIGNAL \clk_count_fast[19]~70_combout\ : std_logic;
SIGNAL \temp[1]~7_combout\ : std_logic;
SIGNAL \temp[1]~8_combout\ : std_logic;
SIGNAL \temp[1]~9_combout\ : std_logic;
SIGNAL \temp[1]~15_combout\ : std_logic;
SIGNAL \temp[1]~20_combout\ : std_logic;
SIGNAL \temp[1]~21_combout\ : std_logic;
SIGNAL \temp[1]~24_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[8]~output_o\ : std_logic;
SIGNAL \Q[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \pb2~input_o\ : std_logic;
SIGNAL \Din[4]~input_o\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \temp[1]~1_combout\ : std_logic;
SIGNAL \pb1~input_o\ : std_logic;
SIGNAL \temp[1]~5_combout\ : std_logic;
SIGNAL \clk_count_fast[0]~32_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \clk_count_fast[15]~62_combout\ : std_logic;
SIGNAL \clk_count_fast[11]~54_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \clk_count_fast[6]~44_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \clk_count_fast[0]~33\ : std_logic;
SIGNAL \clk_count_fast[1]~34_combout\ : std_logic;
SIGNAL \clk_count_fast[1]~35\ : std_logic;
SIGNAL \clk_count_fast[2]~36_combout\ : std_logic;
SIGNAL \clk_count_fast[2]~37\ : std_logic;
SIGNAL \clk_count_fast[3]~39\ : std_logic;
SIGNAL \clk_count_fast[4]~40_combout\ : std_logic;
SIGNAL \clk_count_fast[4]~41\ : std_logic;
SIGNAL \clk_count_fast[5]~43\ : std_logic;
SIGNAL \clk_count_fast[6]~45\ : std_logic;
SIGNAL \clk_count_fast[7]~46_combout\ : std_logic;
SIGNAL \clk_count_fast[7]~47\ : std_logic;
SIGNAL \clk_count_fast[8]~48_combout\ : std_logic;
SIGNAL \clk_count_fast[8]~49\ : std_logic;
SIGNAL \clk_count_fast[9]~50_combout\ : std_logic;
SIGNAL \clk_count_fast[9]~51\ : std_logic;
SIGNAL \clk_count_fast[10]~52_combout\ : std_logic;
SIGNAL \clk_count_fast[10]~53\ : std_logic;
SIGNAL \clk_count_fast[11]~55\ : std_logic;
SIGNAL \clk_count_fast[12]~56_combout\ : std_logic;
SIGNAL \clk_count_fast[12]~57\ : std_logic;
SIGNAL \clk_count_fast[13]~59\ : std_logic;
SIGNAL \clk_count_fast[14]~60_combout\ : std_logic;
SIGNAL \clk_count_fast[14]~61\ : std_logic;
SIGNAL \clk_count_fast[15]~63\ : std_logic;
SIGNAL \clk_count_fast[16]~64_combout\ : std_logic;
SIGNAL \clk_count_fast[16]~65\ : std_logic;
SIGNAL \clk_count_fast[17]~66_combout\ : std_logic;
SIGNAL \clk_count_fast[17]~67\ : std_logic;
SIGNAL \clk_count_fast[18]~68_combout\ : std_logic;
SIGNAL \clk_count_fast[18]~69\ : std_logic;
SIGNAL \clk_count_fast[19]~71\ : std_logic;
SIGNAL \clk_count_fast[20]~72_combout\ : std_logic;
SIGNAL \clk_count_fast[20]~73\ : std_logic;
SIGNAL \clk_count_fast[21]~75\ : std_logic;
SIGNAL \clk_count_fast[22]~77\ : std_logic;
SIGNAL \clk_count_fast[23]~78_combout\ : std_logic;
SIGNAL \clk_count_fast[23]~79\ : std_logic;
SIGNAL \clk_count_fast[24]~80_combout\ : std_logic;
SIGNAL \clk_count_fast[24]~81\ : std_logic;
SIGNAL \clk_count_fast[25]~82_combout\ : std_logic;
SIGNAL \clk_count_fast[25]~83\ : std_logic;
SIGNAL \clk_count_fast[26]~84_combout\ : std_logic;
SIGNAL \clk_count_fast[26]~85\ : std_logic;
SIGNAL \clk_count_fast[27]~87\ : std_logic;
SIGNAL \clk_count_fast[28]~88_combout\ : std_logic;
SIGNAL \clk_count_fast[28]~89\ : std_logic;
SIGNAL \clk_count_fast[29]~91\ : std_logic;
SIGNAL \clk_count_fast[30]~92_combout\ : std_logic;
SIGNAL \clk_count_fast[30]~93\ : std_logic;
SIGNAL \clk_count_fast[31]~94_combout\ : std_logic;
SIGNAL \clk_count_fast[29]~90_combout\ : std_logic;
SIGNAL \temp[1]~18_combout\ : std_logic;
SIGNAL \clk_count_fast[27]~86_combout\ : std_logic;
SIGNAL \temp[1]~17_combout\ : std_logic;
SIGNAL \temp[1]~19_combout\ : std_logic;
SIGNAL \clk_count_fast[13]~58_combout\ : std_logic;
SIGNAL \temp[1]~25_combout\ : std_logic;
SIGNAL \temp[1]~26_combout\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \bt_temp~0_combout\ : std_logic;
SIGNAL \bt_temp~q\ : std_logic;
SIGNAL \temp[1]~23_combout\ : std_logic;
SIGNAL \temp[1]~27_combout\ : std_logic;
SIGNAL \clk_count_fast[21]~74_combout\ : std_logic;
SIGNAL \clk_count_fast[22]~76_combout\ : std_logic;
SIGNAL \temp[1]~22_combout\ : std_logic;
SIGNAL \temp[1]~28_combout\ : std_logic;
SIGNAL \clk_count_slow[0]~32_combout\ : std_logic;
SIGNAL \clk_count_slow[11]~55\ : std_logic;
SIGNAL \clk_count_slow[12]~56_combout\ : std_logic;
SIGNAL \clk_count_slow[12]~57\ : std_logic;
SIGNAL \clk_count_slow[13]~59\ : std_logic;
SIGNAL \clk_count_slow[14]~60_combout\ : std_logic;
SIGNAL \clk_count_slow[14]~61\ : std_logic;
SIGNAL \clk_count_slow[15]~63\ : std_logic;
SIGNAL \clk_count_slow[16]~64_combout\ : std_logic;
SIGNAL \clk_count_slow[16]~65\ : std_logic;
SIGNAL \clk_count_slow[17]~66_combout\ : std_logic;
SIGNAL \clk_count_slow[17]~67\ : std_logic;
SIGNAL \clk_count_slow[18]~68_combout\ : std_logic;
SIGNAL \clk_count_slow[18]~69\ : std_logic;
SIGNAL \clk_count_slow[19]~71\ : std_logic;
SIGNAL \clk_count_slow[20]~72_combout\ : std_logic;
SIGNAL \clk_count_slow[20]~73\ : std_logic;
SIGNAL \clk_count_slow[21]~75\ : std_logic;
SIGNAL \clk_count_slow[22]~77\ : std_logic;
SIGNAL \clk_count_slow[23]~78_combout\ : std_logic;
SIGNAL \clk_count_slow[23]~79\ : std_logic;
SIGNAL \clk_count_slow[24]~80_combout\ : std_logic;
SIGNAL \clk_count_slow[24]~81\ : std_logic;
SIGNAL \clk_count_slow[25]~82_combout\ : std_logic;
SIGNAL \clk_count_slow[25]~83\ : std_logic;
SIGNAL \clk_count_slow[26]~84_combout\ : std_logic;
SIGNAL \clk_count_slow[26]~85\ : std_logic;
SIGNAL \clk_count_slow[27]~87\ : std_logic;
SIGNAL \clk_count_slow[28]~88_combout\ : std_logic;
SIGNAL \clk_count_slow[28]~89\ : std_logic;
SIGNAL \clk_count_slow[29]~91\ : std_logic;
SIGNAL \clk_count_slow[30]~92_combout\ : std_logic;
SIGNAL \clk_count_slow[30]~93\ : std_logic;
SIGNAL \clk_count_slow[31]~94_combout\ : std_logic;
SIGNAL \clk_count_slow[27]~86_combout\ : std_logic;
SIGNAL \clk_count_slow[29]~90_combout\ : std_logic;
SIGNAL \temp[1]~6_combout\ : std_logic;
SIGNAL \temp[1]~35_combout\ : std_logic;
SIGNAL \clk_count_slow[21]~74_combout\ : std_logic;
SIGNAL \clk_count_slow[22]~76_combout\ : std_logic;
SIGNAL \temp[1]~13_combout\ : std_logic;
SIGNAL \temp[1]~14_combout\ : std_logic;
SIGNAL \clk_count_slow[15]~62_combout\ : std_logic;
SIGNAL \temp[1]~10_combout\ : std_logic;
SIGNAL \temp[1]~11_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \clk_count_slow[0]~33\ : std_logic;
SIGNAL \clk_count_slow[1]~34_combout\ : std_logic;
SIGNAL \clk_count_slow[1]~35\ : std_logic;
SIGNAL \clk_count_slow[2]~36_combout\ : std_logic;
SIGNAL \clk_count_slow[2]~37\ : std_logic;
SIGNAL \clk_count_slow[3]~39\ : std_logic;
SIGNAL \clk_count_slow[4]~40_combout\ : std_logic;
SIGNAL \clk_count_slow[4]~41\ : std_logic;
SIGNAL \clk_count_slow[5]~43\ : std_logic;
SIGNAL \clk_count_slow[6]~45\ : std_logic;
SIGNAL \clk_count_slow[7]~46_combout\ : std_logic;
SIGNAL \clk_count_slow[7]~47\ : std_logic;
SIGNAL \clk_count_slow[8]~48_combout\ : std_logic;
SIGNAL \clk_count_slow[8]~49\ : std_logic;
SIGNAL \clk_count_slow[9]~50_combout\ : std_logic;
SIGNAL \clk_count_slow[9]~51\ : std_logic;
SIGNAL \clk_count_slow[10]~52_combout\ : std_logic;
SIGNAL \clk_count_slow[10]~53\ : std_logic;
SIGNAL \clk_count_slow[11]~54_combout\ : std_logic;
SIGNAL \temp[1]~12_combout\ : std_logic;
SIGNAL \temp[1]~16_combout\ : std_logic;
SIGNAL \temp[1]~29_combout\ : std_logic;
SIGNAL \temp[2]~2_combout\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \temp[3]~3_combout\ : std_logic;
SIGNAL \temp[4]~4_combout\ : std_logic;
SIGNAL \temp~30_combout\ : std_logic;
SIGNAL \temp~31_combout\ : std_logic;
SIGNAL \temp~32_combout\ : std_logic;
SIGNAL \temp~33_combout\ : std_logic;
SIGNAL \temp~34_combout\ : std_logic;
SIGNAL \temp[0]~0_combout\ : std_logic;
SIGNAL clk_count_fast : std_logic_vector(31 DOWNTO 0);
SIGNAL clk_count_slow : std_logic_vector(31 DOWNTO 0);
SIGNAL temp : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_Din <= Din;
ww_clk <= clk;
Q <= ww_Q;
ww_pb1 <= pb1;
ww_pb2 <= pb2;
ww_bt1 <= bt1;
ww_bt2 <= bt2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X20_Y10_N7
\clk_count_slow[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[3]~38_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(3));

-- Location: FF_X20_Y10_N11
\clk_count_slow[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[5]~42_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(5));

-- Location: FF_X20_Y10_N13
\clk_count_slow[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[6]~44_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(6));

-- Location: FF_X20_Y10_N27
\clk_count_slow[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[13]~58_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(13));

-- Location: FF_X20_Y9_N7
\clk_count_slow[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[19]~70_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(19));

-- Location: FF_X21_Y19_N7
\clk_count_fast[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[3]~38_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(3));

-- Location: FF_X21_Y19_N11
\clk_count_fast[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[5]~42_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(5));

-- Location: FF_X21_Y18_N7
\clk_count_fast[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[19]~70_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(19));

-- Location: LCCOMB_X20_Y10_N6
\clk_count_slow[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[3]~38_combout\ = (clk_count_slow(3) & (!\clk_count_slow[2]~37\)) # (!clk_count_slow(3) & ((\clk_count_slow[2]~37\) # (GND)))
-- \clk_count_slow[3]~39\ = CARRY((!\clk_count_slow[2]~37\) # (!clk_count_slow(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(3),
	datad => VCC,
	cin => \clk_count_slow[2]~37\,
	combout => \clk_count_slow[3]~38_combout\,
	cout => \clk_count_slow[3]~39\);

-- Location: LCCOMB_X20_Y10_N10
\clk_count_slow[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[5]~42_combout\ = (clk_count_slow(5) & (!\clk_count_slow[4]~41\)) # (!clk_count_slow(5) & ((\clk_count_slow[4]~41\) # (GND)))
-- \clk_count_slow[5]~43\ = CARRY((!\clk_count_slow[4]~41\) # (!clk_count_slow(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(5),
	datad => VCC,
	cin => \clk_count_slow[4]~41\,
	combout => \clk_count_slow[5]~42_combout\,
	cout => \clk_count_slow[5]~43\);

-- Location: LCCOMB_X20_Y10_N12
\clk_count_slow[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[6]~44_combout\ = (clk_count_slow(6) & (\clk_count_slow[5]~43\ $ (GND))) # (!clk_count_slow(6) & (!\clk_count_slow[5]~43\ & VCC))
-- \clk_count_slow[6]~45\ = CARRY((clk_count_slow(6) & !\clk_count_slow[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(6),
	datad => VCC,
	cin => \clk_count_slow[5]~43\,
	combout => \clk_count_slow[6]~44_combout\,
	cout => \clk_count_slow[6]~45\);

-- Location: LCCOMB_X20_Y10_N26
\clk_count_slow[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[13]~58_combout\ = (clk_count_slow(13) & (!\clk_count_slow[12]~57\)) # (!clk_count_slow(13) & ((\clk_count_slow[12]~57\) # (GND)))
-- \clk_count_slow[13]~59\ = CARRY((!\clk_count_slow[12]~57\) # (!clk_count_slow(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(13),
	datad => VCC,
	cin => \clk_count_slow[12]~57\,
	combout => \clk_count_slow[13]~58_combout\,
	cout => \clk_count_slow[13]~59\);

-- Location: LCCOMB_X20_Y9_N6
\clk_count_slow[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[19]~70_combout\ = (clk_count_slow(19) & (!\clk_count_slow[18]~69\)) # (!clk_count_slow(19) & ((\clk_count_slow[18]~69\) # (GND)))
-- \clk_count_slow[19]~71\ = CARRY((!\clk_count_slow[18]~69\) # (!clk_count_slow(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(19),
	datad => VCC,
	cin => \clk_count_slow[18]~69\,
	combout => \clk_count_slow[19]~70_combout\,
	cout => \clk_count_slow[19]~71\);

-- Location: LCCOMB_X21_Y19_N6
\clk_count_fast[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[3]~38_combout\ = (clk_count_fast(3) & (!\clk_count_fast[2]~37\)) # (!clk_count_fast(3) & ((\clk_count_fast[2]~37\) # (GND)))
-- \clk_count_fast[3]~39\ = CARRY((!\clk_count_fast[2]~37\) # (!clk_count_fast(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(3),
	datad => VCC,
	cin => \clk_count_fast[2]~37\,
	combout => \clk_count_fast[3]~38_combout\,
	cout => \clk_count_fast[3]~39\);

-- Location: LCCOMB_X21_Y19_N10
\clk_count_fast[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[5]~42_combout\ = (clk_count_fast(5) & (!\clk_count_fast[4]~41\)) # (!clk_count_fast(5) & ((\clk_count_fast[4]~41\) # (GND)))
-- \clk_count_fast[5]~43\ = CARRY((!\clk_count_fast[4]~41\) # (!clk_count_fast(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(5),
	datad => VCC,
	cin => \clk_count_fast[4]~41\,
	combout => \clk_count_fast[5]~42_combout\,
	cout => \clk_count_fast[5]~43\);

-- Location: LCCOMB_X21_Y18_N6
\clk_count_fast[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[19]~70_combout\ = (clk_count_fast(19) & (!\clk_count_fast[18]~69\)) # (!clk_count_fast(19) & ((\clk_count_fast[18]~69\) # (GND)))
-- \clk_count_fast[19]~71\ = CARRY((!\clk_count_fast[18]~69\) # (!clk_count_fast(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(19),
	datad => VCC,
	cin => \clk_count_fast[18]~69\,
	combout => \clk_count_fast[19]~70_combout\,
	cout => \clk_count_fast[19]~71\);

-- Location: LCCOMB_X20_Y11_N26
\temp[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~7_combout\ = (!clk_count_slow(3) & (!clk_count_slow(0) & (!clk_count_slow(2) & !clk_count_slow(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(3),
	datab => clk_count_slow(0),
	datac => clk_count_slow(2),
	datad => clk_count_slow(1),
	combout => \temp[1]~7_combout\);

-- Location: LCCOMB_X20_Y11_N4
\temp[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~8_combout\ = (!clk_count_slow(6) & (!clk_count_slow(4) & (\temp[1]~7_combout\ & !clk_count_slow(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(6),
	datab => clk_count_slow(4),
	datac => \temp[1]~7_combout\,
	datad => clk_count_slow(5),
	combout => \temp[1]~8_combout\);

-- Location: LCCOMB_X20_Y11_N14
\temp[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~9_combout\ = (\temp[1]~6_combout\ & (!clk_count_slow(31) & (\temp[1]~8_combout\ & !clk_count_slow(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[1]~6_combout\,
	datab => clk_count_slow(31),
	datac => \temp[1]~8_combout\,
	datad => clk_count_slow(30),
	combout => \temp[1]~9_combout\);

-- Location: LCCOMB_X21_Y17_N10
\temp[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~15_combout\ = (!clk_count_slow(16) & (!\bt_temp~q\ & (!clk_count_slow(18) & !clk_count_slow(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(16),
	datab => \bt_temp~q\,
	datac => clk_count_slow(18),
	datad => clk_count_slow(24),
	combout => \temp[1]~15_combout\);

-- Location: LCCOMB_X20_Y19_N24
\temp[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~20_combout\ = (!clk_count_fast(2) & (!clk_count_fast(3) & (!clk_count_fast(0) & !clk_count_fast(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(2),
	datab => clk_count_fast(3),
	datac => clk_count_fast(0),
	datad => clk_count_fast(1),
	combout => \temp[1]~20_combout\);

-- Location: LCCOMB_X20_Y19_N26
\temp[1]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~21_combout\ = (!clk_count_fast(5) & (!clk_count_fast(4) & \temp[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(5),
	datac => clk_count_fast(4),
	datad => \temp[1]~20_combout\,
	combout => \temp[1]~21_combout\);

-- Location: LCCOMB_X21_Y17_N30
\temp[1]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~24_combout\ = (!clk_count_fast(12) & (clk_count_fast(9) & (!clk_count_fast(11) & !clk_count_fast(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(12),
	datab => clk_count_fast(9),
	datac => clk_count_fast(11),
	datad => clk_count_fast(10),
	combout => \temp[1]~24_combout\);

-- Location: LCCOMB_X20_Y18_N26
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((clk_count_fast(23) & ((clk_count_fast(21)) # (clk_count_fast(22))))) # (!\temp[1]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(21),
	datab => clk_count_fast(23),
	datac => \temp[1]~19_combout\,
	datad => clk_count_fast(22),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y17_N12
\LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (clk_count_fast(16)) # ((clk_count_fast(15) & ((clk_count_fast(14)) # (clk_count_fast(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(14),
	datab => clk_count_fast(15),
	datac => clk_count_fast(13),
	datad => clk_count_fast(16),
	combout => \LessThan1~6_combout\);

-- Location: IOOBUF_X0_Y20_N9
\Q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\Q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\Q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\Q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\Q[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(4),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\Q[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(5),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\Q[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(6),
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Q[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(7),
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\Q[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(8),
	devoe => ww_devoe,
	o => \Q[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\Q[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(9),
	devoe => ww_devoe,
	o => \Q[9]~output_o\);

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

-- Location: IOIBUF_X0_Y24_N1
\Din[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(0),
	o => \Din[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\pb2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb2,
	o => \pb2~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\Din[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(4),
	o => \Din[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\Din[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(2),
	o => \Din[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\Din[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(1),
	o => \Din[1]~input_o\);

-- Location: LCCOMB_X11_Y18_N26
\temp[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~1_combout\ = (\pb2~input_o\ & ((temp(0)))) # (!\pb2~input_o\ & (\Din[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \Din[1]~input_o\,
	datad => temp(0),
	combout => \temp[1]~1_combout\);

-- Location: IOIBUF_X0_Y26_N1
\pb1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb1,
	o => \pb1~input_o\);

-- Location: LCCOMB_X11_Y18_N2
\temp[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~5_combout\ = (\pb2~input_o\ & \pb1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb2~input_o\,
	datad => \pb1~input_o\,
	combout => \temp[1]~5_combout\);

-- Location: LCCOMB_X21_Y19_N0
\clk_count_fast[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[0]~32_combout\ = clk_count_fast(0) $ (VCC)
-- \clk_count_fast[0]~33\ = CARRY(clk_count_fast(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(0),
	datad => VCC,
	combout => \clk_count_fast[0]~32_combout\,
	cout => \clk_count_fast[0]~33\);

-- Location: LCCOMB_X21_Y17_N20
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (clk_count_fast(19) & (clk_count_fast(23) & clk_count_fast(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(19),
	datac => clk_count_fast(23),
	datad => clk_count_fast(20),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X21_Y19_N30
\clk_count_fast[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[15]~62_combout\ = (clk_count_fast(15) & (!\clk_count_fast[14]~61\)) # (!clk_count_fast(15) & ((\clk_count_fast[14]~61\) # (GND)))
-- \clk_count_fast[15]~63\ = CARRY((!\clk_count_fast[14]~61\) # (!clk_count_fast(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(15),
	datad => VCC,
	cin => \clk_count_fast[14]~61\,
	combout => \clk_count_fast[15]~62_combout\,
	cout => \clk_count_fast[15]~63\);

-- Location: FF_X21_Y19_N31
\clk_count_fast[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[15]~62_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(15));

-- Location: LCCOMB_X21_Y19_N22
\clk_count_fast[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[11]~54_combout\ = (clk_count_fast(11) & (!\clk_count_fast[10]~53\)) # (!clk_count_fast(11) & ((\clk_count_fast[10]~53\) # (GND)))
-- \clk_count_fast[11]~55\ = CARRY((!\clk_count_fast[10]~53\) # (!clk_count_fast(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(11),
	datad => VCC,
	cin => \clk_count_fast[10]~53\,
	combout => \clk_count_fast[11]~54_combout\,
	cout => \clk_count_fast[11]~55\);

-- Location: FF_X21_Y19_N23
\clk_count_fast[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[11]~54_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(11));

-- Location: LCCOMB_X21_Y17_N16
\LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (clk_count_fast(11)) # ((clk_count_fast(8) & (clk_count_fast(9) & clk_count_fast(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(8),
	datab => clk_count_fast(9),
	datac => clk_count_fast(11),
	datad => clk_count_fast(10),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X21_Y17_N2
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (clk_count_fast(15) & (clk_count_fast(12) & \LessThan1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(15),
	datac => clk_count_fast(12),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X21_Y17_N22
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (\LessThan1~6_combout\) # ((clk_count_fast(17)) # ((clk_count_fast(18)) # (\LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~6_combout\,
	datab => clk_count_fast(17),
	datac => clk_count_fast(18),
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X21_Y17_N14
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (clk_count_fast(12) & (clk_count_fast(15) & (clk_count_fast(9) & clk_count_fast(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(12),
	datab => clk_count_fast(15),
	datac => clk_count_fast(9),
	datad => clk_count_fast(10),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X21_Y19_N12
\clk_count_fast[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[6]~44_combout\ = (clk_count_fast(6) & (\clk_count_fast[5]~43\ $ (GND))) # (!clk_count_fast(6) & (!\clk_count_fast[5]~43\ & VCC))
-- \clk_count_fast[6]~45\ = CARRY((clk_count_fast(6) & !\clk_count_fast[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(6),
	datad => VCC,
	cin => \clk_count_fast[5]~43\,
	combout => \clk_count_fast[6]~44_combout\,
	cout => \clk_count_fast[6]~45\);

-- Location: FF_X21_Y19_N13
\clk_count_fast[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[6]~44_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(6));

-- Location: LCCOMB_X20_Y18_N12
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (clk_count_fast(7) & (\LessThan1~2_combout\ & ((clk_count_fast(6)) # (!\temp[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[1]~21_combout\,
	datab => clk_count_fast(7),
	datac => \LessThan1~2_combout\,
	datad => clk_count_fast(6),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X20_Y18_N14
\LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (\LessThan1~0_combout\) # ((\LessThan1~1_combout\ & ((\LessThan1~7_combout\) # (\LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \LessThan1~1_combout\,
	datac => \LessThan1~7_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~8_combout\);

-- Location: FF_X21_Y19_N1
\clk_count_fast[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[0]~32_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(0));

-- Location: LCCOMB_X21_Y19_N2
\clk_count_fast[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[1]~34_combout\ = (clk_count_fast(1) & (!\clk_count_fast[0]~33\)) # (!clk_count_fast(1) & ((\clk_count_fast[0]~33\) # (GND)))
-- \clk_count_fast[1]~35\ = CARRY((!\clk_count_fast[0]~33\) # (!clk_count_fast(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(1),
	datad => VCC,
	cin => \clk_count_fast[0]~33\,
	combout => \clk_count_fast[1]~34_combout\,
	cout => \clk_count_fast[1]~35\);

-- Location: FF_X21_Y19_N3
\clk_count_fast[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[1]~34_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(1));

-- Location: LCCOMB_X21_Y19_N4
\clk_count_fast[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[2]~36_combout\ = (clk_count_fast(2) & (\clk_count_fast[1]~35\ $ (GND))) # (!clk_count_fast(2) & (!\clk_count_fast[1]~35\ & VCC))
-- \clk_count_fast[2]~37\ = CARRY((clk_count_fast(2) & !\clk_count_fast[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(2),
	datad => VCC,
	cin => \clk_count_fast[1]~35\,
	combout => \clk_count_fast[2]~36_combout\,
	cout => \clk_count_fast[2]~37\);

-- Location: FF_X21_Y19_N5
\clk_count_fast[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[2]~36_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(2));

-- Location: LCCOMB_X21_Y19_N8
\clk_count_fast[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[4]~40_combout\ = (clk_count_fast(4) & (\clk_count_fast[3]~39\ $ (GND))) # (!clk_count_fast(4) & (!\clk_count_fast[3]~39\ & VCC))
-- \clk_count_fast[4]~41\ = CARRY((clk_count_fast(4) & !\clk_count_fast[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(4),
	datad => VCC,
	cin => \clk_count_fast[3]~39\,
	combout => \clk_count_fast[4]~40_combout\,
	cout => \clk_count_fast[4]~41\);

-- Location: FF_X21_Y19_N9
\clk_count_fast[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[4]~40_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(4));

-- Location: LCCOMB_X21_Y19_N14
\clk_count_fast[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[7]~46_combout\ = (clk_count_fast(7) & (!\clk_count_fast[6]~45\)) # (!clk_count_fast(7) & ((\clk_count_fast[6]~45\) # (GND)))
-- \clk_count_fast[7]~47\ = CARRY((!\clk_count_fast[6]~45\) # (!clk_count_fast(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(7),
	datad => VCC,
	cin => \clk_count_fast[6]~45\,
	combout => \clk_count_fast[7]~46_combout\,
	cout => \clk_count_fast[7]~47\);

-- Location: FF_X21_Y19_N15
\clk_count_fast[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[7]~46_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(7));

-- Location: LCCOMB_X21_Y19_N16
\clk_count_fast[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[8]~48_combout\ = (clk_count_fast(8) & (\clk_count_fast[7]~47\ $ (GND))) # (!clk_count_fast(8) & (!\clk_count_fast[7]~47\ & VCC))
-- \clk_count_fast[8]~49\ = CARRY((clk_count_fast(8) & !\clk_count_fast[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(8),
	datad => VCC,
	cin => \clk_count_fast[7]~47\,
	combout => \clk_count_fast[8]~48_combout\,
	cout => \clk_count_fast[8]~49\);

-- Location: FF_X21_Y19_N17
\clk_count_fast[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[8]~48_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(8));

-- Location: LCCOMB_X21_Y19_N18
\clk_count_fast[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[9]~50_combout\ = (clk_count_fast(9) & (!\clk_count_fast[8]~49\)) # (!clk_count_fast(9) & ((\clk_count_fast[8]~49\) # (GND)))
-- \clk_count_fast[9]~51\ = CARRY((!\clk_count_fast[8]~49\) # (!clk_count_fast(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(9),
	datad => VCC,
	cin => \clk_count_fast[8]~49\,
	combout => \clk_count_fast[9]~50_combout\,
	cout => \clk_count_fast[9]~51\);

-- Location: FF_X21_Y19_N19
\clk_count_fast[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[9]~50_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(9));

-- Location: LCCOMB_X21_Y19_N20
\clk_count_fast[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[10]~52_combout\ = (clk_count_fast(10) & (\clk_count_fast[9]~51\ $ (GND))) # (!clk_count_fast(10) & (!\clk_count_fast[9]~51\ & VCC))
-- \clk_count_fast[10]~53\ = CARRY((clk_count_fast(10) & !\clk_count_fast[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(10),
	datad => VCC,
	cin => \clk_count_fast[9]~51\,
	combout => \clk_count_fast[10]~52_combout\,
	cout => \clk_count_fast[10]~53\);

-- Location: FF_X21_Y19_N21
\clk_count_fast[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[10]~52_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(10));

-- Location: LCCOMB_X21_Y19_N24
\clk_count_fast[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[12]~56_combout\ = (clk_count_fast(12) & (\clk_count_fast[11]~55\ $ (GND))) # (!clk_count_fast(12) & (!\clk_count_fast[11]~55\ & VCC))
-- \clk_count_fast[12]~57\ = CARRY((clk_count_fast(12) & !\clk_count_fast[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(12),
	datad => VCC,
	cin => \clk_count_fast[11]~55\,
	combout => \clk_count_fast[12]~56_combout\,
	cout => \clk_count_fast[12]~57\);

-- Location: FF_X21_Y19_N25
\clk_count_fast[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[12]~56_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(12));

-- Location: LCCOMB_X21_Y19_N26
\clk_count_fast[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[13]~58_combout\ = (clk_count_fast(13) & (!\clk_count_fast[12]~57\)) # (!clk_count_fast(13) & ((\clk_count_fast[12]~57\) # (GND)))
-- \clk_count_fast[13]~59\ = CARRY((!\clk_count_fast[12]~57\) # (!clk_count_fast(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(13),
	datad => VCC,
	cin => \clk_count_fast[12]~57\,
	combout => \clk_count_fast[13]~58_combout\,
	cout => \clk_count_fast[13]~59\);

-- Location: LCCOMB_X21_Y19_N28
\clk_count_fast[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[14]~60_combout\ = (clk_count_fast(14) & (\clk_count_fast[13]~59\ $ (GND))) # (!clk_count_fast(14) & (!\clk_count_fast[13]~59\ & VCC))
-- \clk_count_fast[14]~61\ = CARRY((clk_count_fast(14) & !\clk_count_fast[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(14),
	datad => VCC,
	cin => \clk_count_fast[13]~59\,
	combout => \clk_count_fast[14]~60_combout\,
	cout => \clk_count_fast[14]~61\);

-- Location: FF_X21_Y19_N29
\clk_count_fast[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[14]~60_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(14));

-- Location: LCCOMB_X21_Y18_N0
\clk_count_fast[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[16]~64_combout\ = (clk_count_fast(16) & (\clk_count_fast[15]~63\ $ (GND))) # (!clk_count_fast(16) & (!\clk_count_fast[15]~63\ & VCC))
-- \clk_count_fast[16]~65\ = CARRY((clk_count_fast(16) & !\clk_count_fast[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(16),
	datad => VCC,
	cin => \clk_count_fast[15]~63\,
	combout => \clk_count_fast[16]~64_combout\,
	cout => \clk_count_fast[16]~65\);

-- Location: FF_X21_Y18_N1
\clk_count_fast[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[16]~64_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(16));

-- Location: LCCOMB_X21_Y18_N2
\clk_count_fast[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[17]~66_combout\ = (clk_count_fast(17) & (!\clk_count_fast[16]~65\)) # (!clk_count_fast(17) & ((\clk_count_fast[16]~65\) # (GND)))
-- \clk_count_fast[17]~67\ = CARRY((!\clk_count_fast[16]~65\) # (!clk_count_fast(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(17),
	datad => VCC,
	cin => \clk_count_fast[16]~65\,
	combout => \clk_count_fast[17]~66_combout\,
	cout => \clk_count_fast[17]~67\);

-- Location: FF_X21_Y18_N3
\clk_count_fast[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[17]~66_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(17));

-- Location: LCCOMB_X21_Y18_N4
\clk_count_fast[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[18]~68_combout\ = (clk_count_fast(18) & (\clk_count_fast[17]~67\ $ (GND))) # (!clk_count_fast(18) & (!\clk_count_fast[17]~67\ & VCC))
-- \clk_count_fast[18]~69\ = CARRY((clk_count_fast(18) & !\clk_count_fast[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(18),
	datad => VCC,
	cin => \clk_count_fast[17]~67\,
	combout => \clk_count_fast[18]~68_combout\,
	cout => \clk_count_fast[18]~69\);

-- Location: FF_X21_Y18_N5
\clk_count_fast[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[18]~68_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(18));

-- Location: LCCOMB_X21_Y18_N8
\clk_count_fast[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[20]~72_combout\ = (clk_count_fast(20) & (\clk_count_fast[19]~71\ $ (GND))) # (!clk_count_fast(20) & (!\clk_count_fast[19]~71\ & VCC))
-- \clk_count_fast[20]~73\ = CARRY((clk_count_fast(20) & !\clk_count_fast[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(20),
	datad => VCC,
	cin => \clk_count_fast[19]~71\,
	combout => \clk_count_fast[20]~72_combout\,
	cout => \clk_count_fast[20]~73\);

-- Location: FF_X21_Y18_N9
\clk_count_fast[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[20]~72_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(20));

-- Location: LCCOMB_X21_Y18_N10
\clk_count_fast[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[21]~74_combout\ = (clk_count_fast(21) & (!\clk_count_fast[20]~73\)) # (!clk_count_fast(21) & ((\clk_count_fast[20]~73\) # (GND)))
-- \clk_count_fast[21]~75\ = CARRY((!\clk_count_fast[20]~73\) # (!clk_count_fast(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(21),
	datad => VCC,
	cin => \clk_count_fast[20]~73\,
	combout => \clk_count_fast[21]~74_combout\,
	cout => \clk_count_fast[21]~75\);

-- Location: LCCOMB_X21_Y18_N12
\clk_count_fast[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[22]~76_combout\ = (clk_count_fast(22) & (\clk_count_fast[21]~75\ $ (GND))) # (!clk_count_fast(22) & (!\clk_count_fast[21]~75\ & VCC))
-- \clk_count_fast[22]~77\ = CARRY((clk_count_fast(22) & !\clk_count_fast[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(22),
	datad => VCC,
	cin => \clk_count_fast[21]~75\,
	combout => \clk_count_fast[22]~76_combout\,
	cout => \clk_count_fast[22]~77\);

-- Location: LCCOMB_X21_Y18_N14
\clk_count_fast[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[23]~78_combout\ = (clk_count_fast(23) & (!\clk_count_fast[22]~77\)) # (!clk_count_fast(23) & ((\clk_count_fast[22]~77\) # (GND)))
-- \clk_count_fast[23]~79\ = CARRY((!\clk_count_fast[22]~77\) # (!clk_count_fast(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(23),
	datad => VCC,
	cin => \clk_count_fast[22]~77\,
	combout => \clk_count_fast[23]~78_combout\,
	cout => \clk_count_fast[23]~79\);

-- Location: FF_X21_Y18_N15
\clk_count_fast[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[23]~78_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(23));

-- Location: LCCOMB_X21_Y18_N16
\clk_count_fast[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[24]~80_combout\ = (clk_count_fast(24) & (\clk_count_fast[23]~79\ $ (GND))) # (!clk_count_fast(24) & (!\clk_count_fast[23]~79\ & VCC))
-- \clk_count_fast[24]~81\ = CARRY((clk_count_fast(24) & !\clk_count_fast[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(24),
	datad => VCC,
	cin => \clk_count_fast[23]~79\,
	combout => \clk_count_fast[24]~80_combout\,
	cout => \clk_count_fast[24]~81\);

-- Location: FF_X21_Y18_N17
\clk_count_fast[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[24]~80_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(24));

-- Location: LCCOMB_X21_Y18_N18
\clk_count_fast[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[25]~82_combout\ = (clk_count_fast(25) & (!\clk_count_fast[24]~81\)) # (!clk_count_fast(25) & ((\clk_count_fast[24]~81\) # (GND)))
-- \clk_count_fast[25]~83\ = CARRY((!\clk_count_fast[24]~81\) # (!clk_count_fast(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(25),
	datad => VCC,
	cin => \clk_count_fast[24]~81\,
	combout => \clk_count_fast[25]~82_combout\,
	cout => \clk_count_fast[25]~83\);

-- Location: FF_X21_Y18_N19
\clk_count_fast[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[25]~82_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(25));

-- Location: LCCOMB_X21_Y18_N20
\clk_count_fast[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[26]~84_combout\ = (clk_count_fast(26) & (\clk_count_fast[25]~83\ $ (GND))) # (!clk_count_fast(26) & (!\clk_count_fast[25]~83\ & VCC))
-- \clk_count_fast[26]~85\ = CARRY((clk_count_fast(26) & !\clk_count_fast[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(26),
	datad => VCC,
	cin => \clk_count_fast[25]~83\,
	combout => \clk_count_fast[26]~84_combout\,
	cout => \clk_count_fast[26]~85\);

-- Location: FF_X21_Y18_N21
\clk_count_fast[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[26]~84_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(26));

-- Location: LCCOMB_X21_Y18_N22
\clk_count_fast[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[27]~86_combout\ = (clk_count_fast(27) & (!\clk_count_fast[26]~85\)) # (!clk_count_fast(27) & ((\clk_count_fast[26]~85\) # (GND)))
-- \clk_count_fast[27]~87\ = CARRY((!\clk_count_fast[26]~85\) # (!clk_count_fast(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(27),
	datad => VCC,
	cin => \clk_count_fast[26]~85\,
	combout => \clk_count_fast[27]~86_combout\,
	cout => \clk_count_fast[27]~87\);

-- Location: LCCOMB_X21_Y18_N24
\clk_count_fast[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[28]~88_combout\ = (clk_count_fast(28) & (\clk_count_fast[27]~87\ $ (GND))) # (!clk_count_fast(28) & (!\clk_count_fast[27]~87\ & VCC))
-- \clk_count_fast[28]~89\ = CARRY((clk_count_fast(28) & !\clk_count_fast[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(28),
	datad => VCC,
	cin => \clk_count_fast[27]~87\,
	combout => \clk_count_fast[28]~88_combout\,
	cout => \clk_count_fast[28]~89\);

-- Location: FF_X21_Y18_N25
\clk_count_fast[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[28]~88_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(28));

-- Location: LCCOMB_X21_Y18_N26
\clk_count_fast[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[29]~90_combout\ = (clk_count_fast(29) & (!\clk_count_fast[28]~89\)) # (!clk_count_fast(29) & ((\clk_count_fast[28]~89\) # (GND)))
-- \clk_count_fast[29]~91\ = CARRY((!\clk_count_fast[28]~89\) # (!clk_count_fast(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(29),
	datad => VCC,
	cin => \clk_count_fast[28]~89\,
	combout => \clk_count_fast[29]~90_combout\,
	cout => \clk_count_fast[29]~91\);

-- Location: LCCOMB_X21_Y18_N28
\clk_count_fast[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[30]~92_combout\ = (clk_count_fast(30) & (\clk_count_fast[29]~91\ $ (GND))) # (!clk_count_fast(30) & (!\clk_count_fast[29]~91\ & VCC))
-- \clk_count_fast[30]~93\ = CARRY((clk_count_fast(30) & !\clk_count_fast[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(30),
	datad => VCC,
	cin => \clk_count_fast[29]~91\,
	combout => \clk_count_fast[30]~92_combout\,
	cout => \clk_count_fast[30]~93\);

-- Location: FF_X21_Y18_N29
\clk_count_fast[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[30]~92_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(30));

-- Location: LCCOMB_X21_Y18_N30
\clk_count_fast[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_fast[31]~94_combout\ = clk_count_fast(31) $ (\clk_count_fast[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(31),
	cin => \clk_count_fast[30]~93\,
	combout => \clk_count_fast[31]~94_combout\);

-- Location: FF_X21_Y18_N31
\clk_count_fast[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[31]~94_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(31));

-- Location: FF_X21_Y18_N27
\clk_count_fast[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[29]~90_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(29));

-- Location: LCCOMB_X20_Y18_N22
\temp[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~18_combout\ = (!clk_count_fast(28) & (!clk_count_fast(30) & (!clk_count_fast(31) & !clk_count_fast(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(28),
	datab => clk_count_fast(30),
	datac => clk_count_fast(31),
	datad => clk_count_fast(29),
	combout => \temp[1]~18_combout\);

-- Location: FF_X21_Y18_N23
\clk_count_fast[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[27]~86_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(27));

-- Location: LCCOMB_X20_Y18_N20
\temp[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~17_combout\ = (!clk_count_fast(25) & (!clk_count_fast(24) & (!clk_count_fast(26) & !clk_count_fast(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(25),
	datab => clk_count_fast(24),
	datac => clk_count_fast(26),
	datad => clk_count_fast(27),
	combout => \temp[1]~17_combout\);

-- Location: LCCOMB_X20_Y18_N8
\temp[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~19_combout\ = (\temp[1]~18_combout\ & \temp[1]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp[1]~18_combout\,
	datad => \temp[1]~17_combout\,
	combout => \temp[1]~19_combout\);

-- Location: FF_X21_Y19_N27
\clk_count_fast[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[13]~58_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(13));

-- Location: LCCOMB_X21_Y17_N0
\temp[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~25_combout\ = (clk_count_fast(14) & (clk_count_fast(16) & (!clk_count_fast(13) & !clk_count_fast(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(14),
	datab => clk_count_fast(16),
	datac => clk_count_fast(13),
	datad => clk_count_fast(15),
	combout => \temp[1]~25_combout\);

-- Location: LCCOMB_X21_Y17_N26
\temp[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~26_combout\ = (clk_count_fast(19) & (!clk_count_fast(20) & (clk_count_fast(18) & clk_count_fast(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(19),
	datab => clk_count_fast(20),
	datac => clk_count_fast(18),
	datad => clk_count_fast(17),
	combout => \temp[1]~26_combout\);

-- Location: IOIBUF_X0_Y21_N8
\bt1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt1,
	o => \bt1~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\bt2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt2,
	o => \bt2~input_o\);

-- Location: LCCOMB_X21_Y17_N8
\bt_temp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bt_temp~0_combout\ = (\bt1~input_o\ & ((\bt_temp~q\) # (!\bt2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bt1~input_o\,
	datac => \bt_temp~q\,
	datad => \bt2~input_o\,
	combout => \bt_temp~0_combout\);

-- Location: FF_X21_Y17_N9
bt_temp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bt_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bt_temp~q\);

-- Location: LCCOMB_X21_Y17_N28
\temp[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~23_combout\ = (!clk_count_fast(7) & (\bt_temp~q\ & (!clk_count_fast(8) & clk_count_fast(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_fast(7),
	datab => \bt_temp~q\,
	datac => clk_count_fast(8),
	datad => clk_count_fast(6),
	combout => \temp[1]~23_combout\);

-- Location: LCCOMB_X20_Y18_N4
\temp[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~27_combout\ = (\temp[1]~24_combout\ & (\temp[1]~25_combout\ & (\temp[1]~26_combout\ & \temp[1]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[1]~24_combout\,
	datab => \temp[1]~25_combout\,
	datac => \temp[1]~26_combout\,
	datad => \temp[1]~23_combout\,
	combout => \temp[1]~27_combout\);

-- Location: FF_X21_Y18_N11
\clk_count_fast[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[21]~74_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(21));

-- Location: FF_X21_Y18_N13
\clk_count_fast[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_fast[22]~76_combout\,
	sclr => \LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_fast(22));

-- Location: LCCOMB_X20_Y18_N18
\temp[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~22_combout\ = (!clk_count_fast(23) & (!clk_count_fast(21) & !clk_count_fast(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count_fast(23),
	datac => clk_count_fast(21),
	datad => clk_count_fast(22),
	combout => \temp[1]~22_combout\);

-- Location: LCCOMB_X20_Y18_N30
\temp[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~28_combout\ = (\temp[1]~21_combout\ & (\temp[1]~19_combout\ & (\temp[1]~27_combout\ & \temp[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[1]~21_combout\,
	datab => \temp[1]~19_combout\,
	datac => \temp[1]~27_combout\,
	datad => \temp[1]~22_combout\,
	combout => \temp[1]~28_combout\);

-- Location: LCCOMB_X20_Y10_N0
\clk_count_slow[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[0]~32_combout\ = clk_count_slow(0) $ (VCC)
-- \clk_count_slow[0]~33\ = CARRY(clk_count_slow(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(0),
	datad => VCC,
	combout => \clk_count_slow[0]~32_combout\,
	cout => \clk_count_slow[0]~33\);

-- Location: LCCOMB_X20_Y10_N22
\clk_count_slow[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[11]~54_combout\ = (clk_count_slow(11) & (!\clk_count_slow[10]~53\)) # (!clk_count_slow(11) & ((\clk_count_slow[10]~53\) # (GND)))
-- \clk_count_slow[11]~55\ = CARRY((!\clk_count_slow[10]~53\) # (!clk_count_slow(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(11),
	datad => VCC,
	cin => \clk_count_slow[10]~53\,
	combout => \clk_count_slow[11]~54_combout\,
	cout => \clk_count_slow[11]~55\);

-- Location: LCCOMB_X20_Y10_N24
\clk_count_slow[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[12]~56_combout\ = (clk_count_slow(12) & (\clk_count_slow[11]~55\ $ (GND))) # (!clk_count_slow(12) & (!\clk_count_slow[11]~55\ & VCC))
-- \clk_count_slow[12]~57\ = CARRY((clk_count_slow(12) & !\clk_count_slow[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(12),
	datad => VCC,
	cin => \clk_count_slow[11]~55\,
	combout => \clk_count_slow[12]~56_combout\,
	cout => \clk_count_slow[12]~57\);

-- Location: FF_X20_Y10_N25
\clk_count_slow[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[12]~56_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(12));

-- Location: LCCOMB_X20_Y10_N28
\clk_count_slow[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[14]~60_combout\ = (clk_count_slow(14) & (\clk_count_slow[13]~59\ $ (GND))) # (!clk_count_slow(14) & (!\clk_count_slow[13]~59\ & VCC))
-- \clk_count_slow[14]~61\ = CARRY((clk_count_slow(14) & !\clk_count_slow[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(14),
	datad => VCC,
	cin => \clk_count_slow[13]~59\,
	combout => \clk_count_slow[14]~60_combout\,
	cout => \clk_count_slow[14]~61\);

-- Location: FF_X20_Y10_N29
\clk_count_slow[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[14]~60_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(14));

-- Location: LCCOMB_X20_Y10_N30
\clk_count_slow[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[15]~62_combout\ = (clk_count_slow(15) & (!\clk_count_slow[14]~61\)) # (!clk_count_slow(15) & ((\clk_count_slow[14]~61\) # (GND)))
-- \clk_count_slow[15]~63\ = CARRY((!\clk_count_slow[14]~61\) # (!clk_count_slow(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(15),
	datad => VCC,
	cin => \clk_count_slow[14]~61\,
	combout => \clk_count_slow[15]~62_combout\,
	cout => \clk_count_slow[15]~63\);

-- Location: LCCOMB_X20_Y9_N0
\clk_count_slow[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[16]~64_combout\ = (clk_count_slow(16) & (\clk_count_slow[15]~63\ $ (GND))) # (!clk_count_slow(16) & (!\clk_count_slow[15]~63\ & VCC))
-- \clk_count_slow[16]~65\ = CARRY((clk_count_slow(16) & !\clk_count_slow[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(16),
	datad => VCC,
	cin => \clk_count_slow[15]~63\,
	combout => \clk_count_slow[16]~64_combout\,
	cout => \clk_count_slow[16]~65\);

-- Location: FF_X20_Y9_N1
\clk_count_slow[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[16]~64_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(16));

-- Location: LCCOMB_X20_Y9_N2
\clk_count_slow[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[17]~66_combout\ = (clk_count_slow(17) & (!\clk_count_slow[16]~65\)) # (!clk_count_slow(17) & ((\clk_count_slow[16]~65\) # (GND)))
-- \clk_count_slow[17]~67\ = CARRY((!\clk_count_slow[16]~65\) # (!clk_count_slow(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(17),
	datad => VCC,
	cin => \clk_count_slow[16]~65\,
	combout => \clk_count_slow[17]~66_combout\,
	cout => \clk_count_slow[17]~67\);

-- Location: FF_X20_Y9_N3
\clk_count_slow[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[17]~66_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(17));

-- Location: LCCOMB_X20_Y9_N4
\clk_count_slow[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[18]~68_combout\ = (clk_count_slow(18) & (\clk_count_slow[17]~67\ $ (GND))) # (!clk_count_slow(18) & (!\clk_count_slow[17]~67\ & VCC))
-- \clk_count_slow[18]~69\ = CARRY((clk_count_slow(18) & !\clk_count_slow[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(18),
	datad => VCC,
	cin => \clk_count_slow[17]~67\,
	combout => \clk_count_slow[18]~68_combout\,
	cout => \clk_count_slow[18]~69\);

-- Location: FF_X20_Y9_N5
\clk_count_slow[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[18]~68_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(18));

-- Location: LCCOMB_X20_Y9_N8
\clk_count_slow[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[20]~72_combout\ = (clk_count_slow(20) & (\clk_count_slow[19]~71\ $ (GND))) # (!clk_count_slow(20) & (!\clk_count_slow[19]~71\ & VCC))
-- \clk_count_slow[20]~73\ = CARRY((clk_count_slow(20) & !\clk_count_slow[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(20),
	datad => VCC,
	cin => \clk_count_slow[19]~71\,
	combout => \clk_count_slow[20]~72_combout\,
	cout => \clk_count_slow[20]~73\);

-- Location: FF_X20_Y9_N9
\clk_count_slow[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[20]~72_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(20));

-- Location: LCCOMB_X20_Y9_N10
\clk_count_slow[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[21]~74_combout\ = (clk_count_slow(21) & (!\clk_count_slow[20]~73\)) # (!clk_count_slow(21) & ((\clk_count_slow[20]~73\) # (GND)))
-- \clk_count_slow[21]~75\ = CARRY((!\clk_count_slow[20]~73\) # (!clk_count_slow(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(21),
	datad => VCC,
	cin => \clk_count_slow[20]~73\,
	combout => \clk_count_slow[21]~74_combout\,
	cout => \clk_count_slow[21]~75\);

-- Location: LCCOMB_X20_Y9_N12
\clk_count_slow[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[22]~76_combout\ = (clk_count_slow(22) & (\clk_count_slow[21]~75\ $ (GND))) # (!clk_count_slow(22) & (!\clk_count_slow[21]~75\ & VCC))
-- \clk_count_slow[22]~77\ = CARRY((clk_count_slow(22) & !\clk_count_slow[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(22),
	datad => VCC,
	cin => \clk_count_slow[21]~75\,
	combout => \clk_count_slow[22]~76_combout\,
	cout => \clk_count_slow[22]~77\);

-- Location: LCCOMB_X20_Y9_N14
\clk_count_slow[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[23]~78_combout\ = (clk_count_slow(23) & (!\clk_count_slow[22]~77\)) # (!clk_count_slow(23) & ((\clk_count_slow[22]~77\) # (GND)))
-- \clk_count_slow[23]~79\ = CARRY((!\clk_count_slow[22]~77\) # (!clk_count_slow(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(23),
	datad => VCC,
	cin => \clk_count_slow[22]~77\,
	combout => \clk_count_slow[23]~78_combout\,
	cout => \clk_count_slow[23]~79\);

-- Location: FF_X20_Y9_N15
\clk_count_slow[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[23]~78_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(23));

-- Location: LCCOMB_X20_Y9_N16
\clk_count_slow[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[24]~80_combout\ = (clk_count_slow(24) & (\clk_count_slow[23]~79\ $ (GND))) # (!clk_count_slow(24) & (!\clk_count_slow[23]~79\ & VCC))
-- \clk_count_slow[24]~81\ = CARRY((clk_count_slow(24) & !\clk_count_slow[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(24),
	datad => VCC,
	cin => \clk_count_slow[23]~79\,
	combout => \clk_count_slow[24]~80_combout\,
	cout => \clk_count_slow[24]~81\);

-- Location: FF_X20_Y9_N17
\clk_count_slow[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[24]~80_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(24));

-- Location: LCCOMB_X20_Y9_N18
\clk_count_slow[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[25]~82_combout\ = (clk_count_slow(25) & (!\clk_count_slow[24]~81\)) # (!clk_count_slow(25) & ((\clk_count_slow[24]~81\) # (GND)))
-- \clk_count_slow[25]~83\ = CARRY((!\clk_count_slow[24]~81\) # (!clk_count_slow(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(25),
	datad => VCC,
	cin => \clk_count_slow[24]~81\,
	combout => \clk_count_slow[25]~82_combout\,
	cout => \clk_count_slow[25]~83\);

-- Location: FF_X20_Y9_N19
\clk_count_slow[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[25]~82_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(25));

-- Location: LCCOMB_X20_Y9_N20
\clk_count_slow[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[26]~84_combout\ = (clk_count_slow(26) & (\clk_count_slow[25]~83\ $ (GND))) # (!clk_count_slow(26) & (!\clk_count_slow[25]~83\ & VCC))
-- \clk_count_slow[26]~85\ = CARRY((clk_count_slow(26) & !\clk_count_slow[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(26),
	datad => VCC,
	cin => \clk_count_slow[25]~83\,
	combout => \clk_count_slow[26]~84_combout\,
	cout => \clk_count_slow[26]~85\);

-- Location: FF_X20_Y9_N21
\clk_count_slow[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[26]~84_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(26));

-- Location: LCCOMB_X20_Y9_N22
\clk_count_slow[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[27]~86_combout\ = (clk_count_slow(27) & (!\clk_count_slow[26]~85\)) # (!clk_count_slow(27) & ((\clk_count_slow[26]~85\) # (GND)))
-- \clk_count_slow[27]~87\ = CARRY((!\clk_count_slow[26]~85\) # (!clk_count_slow(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(27),
	datad => VCC,
	cin => \clk_count_slow[26]~85\,
	combout => \clk_count_slow[27]~86_combout\,
	cout => \clk_count_slow[27]~87\);

-- Location: LCCOMB_X20_Y9_N24
\clk_count_slow[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[28]~88_combout\ = (clk_count_slow(28) & (\clk_count_slow[27]~87\ $ (GND))) # (!clk_count_slow(28) & (!\clk_count_slow[27]~87\ & VCC))
-- \clk_count_slow[28]~89\ = CARRY((clk_count_slow(28) & !\clk_count_slow[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(28),
	datad => VCC,
	cin => \clk_count_slow[27]~87\,
	combout => \clk_count_slow[28]~88_combout\,
	cout => \clk_count_slow[28]~89\);

-- Location: FF_X20_Y9_N25
\clk_count_slow[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[28]~88_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(28));

-- Location: LCCOMB_X20_Y9_N26
\clk_count_slow[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[29]~90_combout\ = (clk_count_slow(29) & (!\clk_count_slow[28]~89\)) # (!clk_count_slow(29) & ((\clk_count_slow[28]~89\) # (GND)))
-- \clk_count_slow[29]~91\ = CARRY((!\clk_count_slow[28]~89\) # (!clk_count_slow(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(29),
	datad => VCC,
	cin => \clk_count_slow[28]~89\,
	combout => \clk_count_slow[29]~90_combout\,
	cout => \clk_count_slow[29]~91\);

-- Location: LCCOMB_X20_Y9_N28
\clk_count_slow[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[30]~92_combout\ = (clk_count_slow(30) & (\clk_count_slow[29]~91\ $ (GND))) # (!clk_count_slow(30) & (!\clk_count_slow[29]~91\ & VCC))
-- \clk_count_slow[30]~93\ = CARRY((clk_count_slow(30) & !\clk_count_slow[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(30),
	datad => VCC,
	cin => \clk_count_slow[29]~91\,
	combout => \clk_count_slow[30]~92_combout\,
	cout => \clk_count_slow[30]~93\);

-- Location: FF_X20_Y9_N29
\clk_count_slow[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[30]~92_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(30));

-- Location: LCCOMB_X20_Y9_N30
\clk_count_slow[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[31]~94_combout\ = clk_count_slow(31) $ (\clk_count_slow[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(31),
	cin => \clk_count_slow[30]~93\,
	combout => \clk_count_slow[31]~94_combout\);

-- Location: FF_X20_Y9_N31
\clk_count_slow[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[31]~94_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(31));

-- Location: FF_X20_Y9_N23
\clk_count_slow[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[27]~86_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(27));

-- Location: FF_X20_Y9_N27
\clk_count_slow[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[29]~90_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(29));

-- Location: LCCOMB_X20_Y11_N24
\temp[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~6_combout\ = (!clk_count_slow(28) & (!clk_count_slow(26) & (!clk_count_slow(27) & !clk_count_slow(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(28),
	datab => clk_count_slow(26),
	datac => clk_count_slow(27),
	datad => clk_count_slow(29),
	combout => \temp[1]~6_combout\);

-- Location: LCCOMB_X20_Y11_N16
\temp[1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~35_combout\ = (!clk_count_slow(30) & (!clk_count_slow(31) & \temp[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(30),
	datac => clk_count_slow(31),
	datad => \temp[1]~6_combout\,
	combout => \temp[1]~35_combout\);

-- Location: FF_X20_Y9_N11
\clk_count_slow[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[21]~74_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(21));

-- Location: FF_X20_Y9_N13
\clk_count_slow[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[22]~76_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(22));

-- Location: LCCOMB_X19_Y7_N0
\temp[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~13_combout\ = (clk_count_slow(19) & (clk_count_slow(20) & (clk_count_slow(21) & clk_count_slow(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(19),
	datab => clk_count_slow(20),
	datac => clk_count_slow(21),
	datad => clk_count_slow(22),
	combout => \temp[1]~13_combout\);

-- Location: LCCOMB_X19_Y7_N26
\temp[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~14_combout\ = (clk_count_slow(23) & (clk_count_slow(25) & \temp[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(23),
	datac => clk_count_slow(25),
	datad => \temp[1]~13_combout\,
	combout => \temp[1]~14_combout\);

-- Location: FF_X20_Y10_N31
\clk_count_slow[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[15]~62_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(15));

-- Location: LCCOMB_X17_Y9_N24
\temp[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~10_combout\ = (clk_count_slow(13) & (clk_count_slow(15) & (clk_count_slow(12) & clk_count_slow(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(13),
	datab => clk_count_slow(15),
	datac => clk_count_slow(12),
	datad => clk_count_slow(14),
	combout => \temp[1]~10_combout\);

-- Location: LCCOMB_X17_Y9_N26
\temp[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~11_combout\ = (clk_count_slow(17) & (clk_count_slow(7) & \temp[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(17),
	datac => clk_count_slow(7),
	datad => \temp[1]~10_combout\,
	combout => \temp[1]~11_combout\);

-- Location: LCCOMB_X21_Y17_N4
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (clk_count_slow(18)) # ((clk_count_slow(17) & clk_count_slow(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(18),
	datab => clk_count_slow(17),
	datad => clk_count_slow(16),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y17_N6
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\) # ((clk_count_slow(17) & (!\temp[1]~12_combout\ & \temp[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(17),
	datab => \temp[1]~12_combout\,
	datac => \LessThan0~0_combout\,
	datad => \temp[1]~10_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y17_N24
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\temp[1]~14_combout\ & ((\LessThan0~1_combout\) # ((!\temp[1]~8_combout\ & \temp[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[1]~8_combout\,
	datab => \temp[1]~14_combout\,
	datac => \temp[1]~11_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y17_N18
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((\LessThan0~2_combout\) # ((clk_count_slow(25) & clk_count_slow(24)))) # (!\temp[1]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(25),
	datab => clk_count_slow(24),
	datac => \temp[1]~35_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: FF_X20_Y10_N1
\clk_count_slow[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[0]~32_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(0));

-- Location: LCCOMB_X20_Y10_N2
\clk_count_slow[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[1]~34_combout\ = (clk_count_slow(1) & (!\clk_count_slow[0]~33\)) # (!clk_count_slow(1) & ((\clk_count_slow[0]~33\) # (GND)))
-- \clk_count_slow[1]~35\ = CARRY((!\clk_count_slow[0]~33\) # (!clk_count_slow(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(1),
	datad => VCC,
	cin => \clk_count_slow[0]~33\,
	combout => \clk_count_slow[1]~34_combout\,
	cout => \clk_count_slow[1]~35\);

-- Location: FF_X20_Y10_N3
\clk_count_slow[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[1]~34_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(1));

-- Location: LCCOMB_X20_Y10_N4
\clk_count_slow[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[2]~36_combout\ = (clk_count_slow(2) & (\clk_count_slow[1]~35\ $ (GND))) # (!clk_count_slow(2) & (!\clk_count_slow[1]~35\ & VCC))
-- \clk_count_slow[2]~37\ = CARRY((clk_count_slow(2) & !\clk_count_slow[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(2),
	datad => VCC,
	cin => \clk_count_slow[1]~35\,
	combout => \clk_count_slow[2]~36_combout\,
	cout => \clk_count_slow[2]~37\);

-- Location: FF_X20_Y10_N5
\clk_count_slow[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[2]~36_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(2));

-- Location: LCCOMB_X20_Y10_N8
\clk_count_slow[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[4]~40_combout\ = (clk_count_slow(4) & (\clk_count_slow[3]~39\ $ (GND))) # (!clk_count_slow(4) & (!\clk_count_slow[3]~39\ & VCC))
-- \clk_count_slow[4]~41\ = CARRY((clk_count_slow(4) & !\clk_count_slow[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(4),
	datad => VCC,
	cin => \clk_count_slow[3]~39\,
	combout => \clk_count_slow[4]~40_combout\,
	cout => \clk_count_slow[4]~41\);

-- Location: FF_X20_Y10_N9
\clk_count_slow[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[4]~40_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(4));

-- Location: LCCOMB_X20_Y10_N14
\clk_count_slow[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[7]~46_combout\ = (clk_count_slow(7) & (!\clk_count_slow[6]~45\)) # (!clk_count_slow(7) & ((\clk_count_slow[6]~45\) # (GND)))
-- \clk_count_slow[7]~47\ = CARRY((!\clk_count_slow[6]~45\) # (!clk_count_slow(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(7),
	datad => VCC,
	cin => \clk_count_slow[6]~45\,
	combout => \clk_count_slow[7]~46_combout\,
	cout => \clk_count_slow[7]~47\);

-- Location: FF_X20_Y10_N15
\clk_count_slow[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[7]~46_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(7));

-- Location: LCCOMB_X20_Y10_N16
\clk_count_slow[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[8]~48_combout\ = (clk_count_slow(8) & (\clk_count_slow[7]~47\ $ (GND))) # (!clk_count_slow(8) & (!\clk_count_slow[7]~47\ & VCC))
-- \clk_count_slow[8]~49\ = CARRY((clk_count_slow(8) & !\clk_count_slow[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(8),
	datad => VCC,
	cin => \clk_count_slow[7]~47\,
	combout => \clk_count_slow[8]~48_combout\,
	cout => \clk_count_slow[8]~49\);

-- Location: FF_X20_Y10_N17
\clk_count_slow[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[8]~48_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(8));

-- Location: LCCOMB_X20_Y10_N18
\clk_count_slow[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[9]~50_combout\ = (clk_count_slow(9) & (!\clk_count_slow[8]~49\)) # (!clk_count_slow(9) & ((\clk_count_slow[8]~49\) # (GND)))
-- \clk_count_slow[9]~51\ = CARRY((!\clk_count_slow[8]~49\) # (!clk_count_slow(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(9),
	datad => VCC,
	cin => \clk_count_slow[8]~49\,
	combout => \clk_count_slow[9]~50_combout\,
	cout => \clk_count_slow[9]~51\);

-- Location: FF_X20_Y10_N19
\clk_count_slow[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[9]~50_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(9));

-- Location: LCCOMB_X20_Y10_N20
\clk_count_slow[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count_slow[10]~52_combout\ = (clk_count_slow(10) & (\clk_count_slow[9]~51\ $ (GND))) # (!clk_count_slow(10) & (!\clk_count_slow[9]~51\ & VCC))
-- \clk_count_slow[10]~53\ = CARRY((clk_count_slow(10) & !\clk_count_slow[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count_slow(10),
	datad => VCC,
	cin => \clk_count_slow[9]~51\,
	combout => \clk_count_slow[10]~52_combout\,
	cout => \clk_count_slow[10]~53\);

-- Location: FF_X20_Y10_N21
\clk_count_slow[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[10]~52_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(10));

-- Location: FF_X20_Y10_N23
\clk_count_slow[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count_slow[11]~54_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count_slow(11));

-- Location: LCCOMB_X21_Y14_N24
\temp[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~12_combout\ = (!clk_count_slow(10) & (!clk_count_slow(11) & (!clk_count_slow(8) & !clk_count_slow(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count_slow(10),
	datab => clk_count_slow(11),
	datac => clk_count_slow(8),
	datad => clk_count_slow(9),
	combout => \temp[1]~12_combout\);

-- Location: LCCOMB_X20_Y18_N10
\temp[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~16_combout\ = (\temp[1]~15_combout\ & (\temp[1]~12_combout\ & (\temp[1]~14_combout\ & \temp[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[1]~15_combout\,
	datab => \temp[1]~12_combout\,
	datac => \temp[1]~14_combout\,
	datad => \temp[1]~11_combout\,
	combout => \temp[1]~16_combout\);

-- Location: LCCOMB_X20_Y18_N16
\temp[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~29_combout\ = (!\temp[1]~5_combout\ & ((\temp[1]~28_combout\) # ((\temp[1]~9_combout\ & \temp[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[1]~9_combout\,
	datab => \temp[1]~5_combout\,
	datac => \temp[1]~28_combout\,
	datad => \temp[1]~16_combout\,
	combout => \temp[1]~29_combout\);

-- Location: FF_X11_Y18_N27
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[1]~1_combout\,
	asdata => temp(2),
	sload => \pb1~input_o\,
	ena => \temp[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: LCCOMB_X11_Y18_N4
\temp[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[2]~2_combout\ = (\pb2~input_o\ & ((temp(1)))) # (!\pb2~input_o\ & (\Din[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \Din[2]~input_o\,
	datad => temp(1),
	combout => \temp[2]~2_combout\);

-- Location: FF_X11_Y18_N5
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[2]~2_combout\,
	asdata => temp(3),
	sload => \pb1~input_o\,
	ena => \temp[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: IOIBUF_X0_Y23_N8
\Din[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(3),
	o => \Din[3]~input_o\);

-- Location: LCCOMB_X11_Y18_N30
\temp[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[3]~3_combout\ = (\pb2~input_o\ & (temp(2))) # (!\pb2~input_o\ & ((\Din[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => temp(2),
	datad => \Din[3]~input_o\,
	combout => \temp[3]~3_combout\);

-- Location: FF_X11_Y18_N31
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[3]~3_combout\,
	asdata => temp(4),
	sload => \pb1~input_o\,
	ena => \temp[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: LCCOMB_X11_Y18_N8
\temp[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[4]~4_combout\ = (\pb2~input_o\ & ((temp(3)))) # (!\pb2~input_o\ & (\Din[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \Din[4]~input_o\,
	datad => temp(3),
	combout => \temp[4]~4_combout\);

-- Location: FF_X11_Y18_N9
\temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[4]~4_combout\,
	asdata => temp(5),
	sload => \pb1~input_o\,
	ena => \temp[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(4));

-- Location: LCCOMB_X20_Y18_N0
\temp~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~30_combout\ = (\pb1~input_o\ & (((temp(6))))) # (!\pb1~input_o\ & (temp(4) & (\pb2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => temp(4),
	datac => \pb2~input_o\,
	datad => temp(6),
	combout => \temp~30_combout\);

-- Location: FF_X20_Y18_N1
\temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp~30_combout\,
	ena => \temp[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(5));

-- Location: LCCOMB_X20_Y18_N2
\temp~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~31_combout\ = (\pb1~input_o\ & (temp(7))) # (!\pb1~input_o\ & (((\pb2~input_o\ & temp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => temp(7),
	datac => \pb2~input_o\,
	datad => temp(5),
	combout => \temp~31_combout\);

-- Location: FF_X20_Y18_N3
\temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp~31_combout\,
	ena => \temp[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(6));

-- Location: LCCOMB_X20_Y18_N28
\temp~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~32_combout\ = (\pb1~input_o\ & (((temp(8))))) # (!\pb1~input_o\ & (temp(6) & (\pb2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => temp(6),
	datac => \pb2~input_o\,
	datad => temp(8),
	combout => \temp~32_combout\);

-- Location: FF_X20_Y18_N29
\temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp~32_combout\,
	ena => \temp[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(7));

-- Location: LCCOMB_X20_Y18_N6
\temp~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~33_combout\ = (\pb1~input_o\ & (((temp(9))))) # (!\pb1~input_o\ & (temp(7) & (\pb2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => temp(7),
	datac => \pb2~input_o\,
	datad => temp(9),
	combout => \temp~33_combout\);

-- Location: FF_X20_Y18_N7
\temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp~33_combout\,
	ena => \temp[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(8));

-- Location: LCCOMB_X20_Y18_N24
\temp~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~34_combout\ = (\pb1~input_o\ & (((temp(0))))) # (!\pb1~input_o\ & (\pb2~input_o\ & ((temp(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => \pb2~input_o\,
	datac => temp(0),
	datad => temp(8),
	combout => \temp~34_combout\);

-- Location: FF_X20_Y18_N25
\temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp~34_combout\,
	ena => \temp[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(9));

-- Location: LCCOMB_X11_Y18_N24
\temp[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[0]~0_combout\ = (\pb2~input_o\ & ((temp(9)))) # (!\pb2~input_o\ & (\Din[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \Din[0]~input_o\,
	datad => temp(9),
	combout => \temp[0]~0_combout\);

-- Location: FF_X11_Y18_N25
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[0]~0_combout\,
	asdata => temp(1),
	sload => \pb1~input_o\,
	ena => \temp[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(8) <= \Q[8]~output_o\;

ww_Q(9) <= \Q[9]~output_o\;
END structure;


