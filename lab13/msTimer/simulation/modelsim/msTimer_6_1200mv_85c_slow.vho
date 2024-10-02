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

-- DATE "06/05/2024 22:17:38"

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

ENTITY 	msTImer IS
    PORT (
	clk : IN std_logic;
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	dot : OUT std_logic;
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END msTImer;

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
-- dot	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF msTImer IS
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
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dot : std_logic;
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \divid50M|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divid50M|countsec[27]~86_combout\ : std_logic;
SIGNAL \divid50M|countsec[30]~93\ : std_logic;
SIGNAL \divid50M|countsec[31]~94_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~1_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~11_combout\ : std_logic;
SIGNAL \minCounter|countsec1[3]~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \dot~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \divid50M|countsec[0]~32_combout\ : std_logic;
SIGNAL \divid50M|countsec[6]~45\ : std_logic;
SIGNAL \divid50M|countsec[7]~46_combout\ : std_logic;
SIGNAL \divid50M|countsec[7]~47\ : std_logic;
SIGNAL \divid50M|countsec[8]~48_combout\ : std_logic;
SIGNAL \divid50M|countsec[8]~49\ : std_logic;
SIGNAL \divid50M|countsec[9]~50_combout\ : std_logic;
SIGNAL \divid50M|countsec[9]~51\ : std_logic;
SIGNAL \divid50M|countsec[10]~52_combout\ : std_logic;
SIGNAL \divid50M|countsec[10]~53\ : std_logic;
SIGNAL \divid50M|countsec[11]~55\ : std_logic;
SIGNAL \divid50M|countsec[12]~56_combout\ : std_logic;
SIGNAL \divid50M|countsec[12]~57\ : std_logic;
SIGNAL \divid50M|countsec[13]~59\ : std_logic;
SIGNAL \divid50M|countsec[14]~60_combout\ : std_logic;
SIGNAL \divid50M|countsec[14]~61\ : std_logic;
SIGNAL \divid50M|countsec[15]~63\ : std_logic;
SIGNAL \divid50M|countsec[16]~64_combout\ : std_logic;
SIGNAL \divid50M|countsec[16]~65\ : std_logic;
SIGNAL \divid50M|countsec[17]~66_combout\ : std_logic;
SIGNAL \divid50M|countsec[17]~67\ : std_logic;
SIGNAL \divid50M|countsec[18]~68_combout\ : std_logic;
SIGNAL \divid50M|countsec[18]~69\ : std_logic;
SIGNAL \divid50M|countsec[19]~71\ : std_logic;
SIGNAL \divid50M|countsec[20]~72_combout\ : std_logic;
SIGNAL \divid50M|countsec[20]~73\ : std_logic;
SIGNAL \divid50M|countsec[21]~75\ : std_logic;
SIGNAL \divid50M|countsec[22]~77\ : std_logic;
SIGNAL \divid50M|countsec[23]~78_combout\ : std_logic;
SIGNAL \divid50M|countsec[23]~79\ : std_logic;
SIGNAL \divid50M|countsec[24]~80_combout\ : std_logic;
SIGNAL \divid50M|countsec[24]~81\ : std_logic;
SIGNAL \divid50M|countsec[25]~82_combout\ : std_logic;
SIGNAL \divid50M|countsec[25]~83\ : std_logic;
SIGNAL \divid50M|countsec[26]~84_combout\ : std_logic;
SIGNAL \divid50M|countsec[26]~85\ : std_logic;
SIGNAL \divid50M|countsec[27]~87\ : std_logic;
SIGNAL \divid50M|countsec[28]~88_combout\ : std_logic;
SIGNAL \divid50M|countsec[28]~89\ : std_logic;
SIGNAL \divid50M|countsec[29]~91\ : std_logic;
SIGNAL \divid50M|countsec[30]~92_combout\ : std_logic;
SIGNAL \divid50M|countsec[29]~90_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~8_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~9_combout\ : std_logic;
SIGNAL \divid50M|countsec[15]~62_combout\ : std_logic;
SIGNAL \divid50M|countsec[11]~54_combout\ : std_logic;
SIGNAL \divid50M|countsec[3]~38_combout\ : std_logic;
SIGNAL \divid50M|LessThan0~1_combout\ : std_logic;
SIGNAL \divid50M|LessThan0~2_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~10_combout\ : std_logic;
SIGNAL \divid50M|LessThan0~3_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~4_combout\ : std_logic;
SIGNAL \divid50M|LessThan0~4_combout\ : std_logic;
SIGNAL \divid50M|countsec[21]~74_combout\ : std_logic;
SIGNAL \divid50M|countsec[22]~76_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~0_combout\ : std_logic;
SIGNAL \divid50M|LessThan0~0_combout\ : std_logic;
SIGNAL \divid50M|LessThan0~5_combout\ : std_logic;
SIGNAL \divid50M|countsec[0]~33\ : std_logic;
SIGNAL \divid50M|countsec[1]~34_combout\ : std_logic;
SIGNAL \divid50M|countsec[1]~35\ : std_logic;
SIGNAL \divid50M|countsec[2]~36_combout\ : std_logic;
SIGNAL \divid50M|countsec[2]~37\ : std_logic;
SIGNAL \divid50M|countsec[3]~39\ : std_logic;
SIGNAL \divid50M|countsec[4]~40_combout\ : std_logic;
SIGNAL \divid50M|countsec[4]~41\ : std_logic;
SIGNAL \divid50M|countsec[5]~43\ : std_logic;
SIGNAL \divid50M|countsec[6]~44_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~2_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~3_combout\ : std_logic;
SIGNAL \divid50M|countsec[13]~58_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~5_combout\ : std_logic;
SIGNAL \divid50M|countsec[19]~70_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~6_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~7_combout\ : std_logic;
SIGNAL \divid50M|countsec[5]~42_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~12_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~13_combout\ : std_logic;
SIGNAL \divid50M|clk_counter~14_combout\ : std_logic;
SIGNAL \divid50M|temp~0_combout\ : std_logic;
SIGNAL \divid50M|temp~feeder_combout\ : std_logic;
SIGNAL \divid50M|temp~q\ : std_logic;
SIGNAL \divid50M|temp~clkctrl_outclk\ : std_logic;
SIGNAL \secCounter|countsec0~0_combout\ : std_logic;
SIGNAL \secCounter|countsec0~3_combout\ : std_logic;
SIGNAL \secCounter|countsec0~1_combout\ : std_logic;
SIGNAL \secCounter|countsec0~2_combout\ : std_logic;
SIGNAL \sec_digSeg|Mux6~0_combout\ : std_logic;
SIGNAL \sec_digSeg|Mux5~0_combout\ : std_logic;
SIGNAL \sec_digSeg|Mux4~0_combout\ : std_logic;
SIGNAL \sec_digSeg|Mux3~0_combout\ : std_logic;
SIGNAL \sec_digSeg|Mux2~0_combout\ : std_logic;
SIGNAL \sec_digSeg|Mux1~0_combout\ : std_logic;
SIGNAL \sec_digSeg|Mux0~0_combout\ : std_logic;
SIGNAL \secCounter|countsec1~2_combout\ : std_logic;
SIGNAL \secCounter|Equal1~0_combout\ : std_logic;
SIGNAL \secCounter|countsec1~1_combout\ : std_logic;
SIGNAL \secCounter|countsec1~0_combout\ : std_logic;
SIGNAL \sec_tenSeg|Mux6~0_combout\ : std_logic;
SIGNAL \sec_tenSeg|Mux5~0_combout\ : std_logic;
SIGNAL \sec_tenSeg|Mux4~0_combout\ : std_logic;
SIGNAL \sec_tenSeg|Mux3~0_combout\ : std_logic;
SIGNAL \sec_tenSeg|Mux2~0_combout\ : std_logic;
SIGNAL \sec_tenSeg|Mux1~0_combout\ : std_logic;
SIGNAL \sec_tenSeg|Mux0~0_combout\ : std_logic;
SIGNAL \minCounter|countsec0~3_combout\ : std_logic;
SIGNAL \secCounter|Co~combout\ : std_logic;
SIGNAL \minCounter|countsec0~0_combout\ : std_logic;
SIGNAL \minCounter|countsec0~1_combout\ : std_logic;
SIGNAL \minCounter|countsec0~2_combout\ : std_logic;
SIGNAL \min_digSeg|Mux6~0_combout\ : std_logic;
SIGNAL \min_digSeg|Mux5~0_combout\ : std_logic;
SIGNAL \min_digSeg|Mux4~0_combout\ : std_logic;
SIGNAL \min_digSeg|Mux3~0_combout\ : std_logic;
SIGNAL \min_digSeg|Mux2~0_combout\ : std_logic;
SIGNAL \min_digSeg|Mux1~0_combout\ : std_logic;
SIGNAL \min_digSeg|Mux0~0_combout\ : std_logic;
SIGNAL \minCounter|countsec1~0_combout\ : std_logic;
SIGNAL \secCounter|Co~2_combout\ : std_logic;
SIGNAL \minCounter|countsec1[3]~2_combout\ : std_logic;
SIGNAL \minCounter|countsec1~4_combout\ : std_logic;
SIGNAL \minCounter|countsec1~3_combout\ : std_logic;
SIGNAL \min_tenSeg|Mux6~0_combout\ : std_logic;
SIGNAL \min_tenSeg|Mux5~0_combout\ : std_logic;
SIGNAL \min_tenSeg|Mux4~0_combout\ : std_logic;
SIGNAL \min_tenSeg|Mux3~0_combout\ : std_logic;
SIGNAL \min_tenSeg|Mux2~0_combout\ : std_logic;
SIGNAL \min_tenSeg|Mux1~0_combout\ : std_logic;
SIGNAL \min_tenSeg|Mux0~0_combout\ : std_logic;
SIGNAL \sec_digSeg|dis\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \secCounter|countsec0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \secCounter|countsec1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divid50M|countsec\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \min_tenSeg|dis\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \min_digSeg|dis\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \sec_tenSeg|dis\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \minCounter|countsec0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \minCounter|countsec1\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
dot <= ww_dot;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\divid50M|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divid50M|temp~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X23_Y17_N23
\divid50M|countsec[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[27]~86_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(27));

-- Location: FF_X23_Y17_N31
\divid50M|countsec[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[31]~94_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(31));

-- Location: LCCOMB_X23_Y17_N22
\divid50M|countsec[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[27]~86_combout\ = (\divid50M|countsec\(27) & (!\divid50M|countsec[26]~85\)) # (!\divid50M|countsec\(27) & ((\divid50M|countsec[26]~85\) # (GND)))
-- \divid50M|countsec[27]~87\ = CARRY((!\divid50M|countsec[26]~85\) # (!\divid50M|countsec\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(27),
	datad => VCC,
	cin => \divid50M|countsec[26]~85\,
	combout => \divid50M|countsec[27]~86_combout\,
	cout => \divid50M|countsec[27]~87\);

-- Location: LCCOMB_X23_Y17_N28
\divid50M|countsec[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[30]~92_combout\ = (\divid50M|countsec\(30) & (\divid50M|countsec[29]~91\ $ (GND))) # (!\divid50M|countsec\(30) & (!\divid50M|countsec[29]~91\ & VCC))
-- \divid50M|countsec[30]~93\ = CARRY((\divid50M|countsec\(30) & !\divid50M|countsec[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(30),
	datad => VCC,
	cin => \divid50M|countsec[29]~91\,
	combout => \divid50M|countsec[30]~92_combout\,
	cout => \divid50M|countsec[30]~93\);

-- Location: LCCOMB_X23_Y17_N30
\divid50M|countsec[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[31]~94_combout\ = \divid50M|countsec\(31) $ (\divid50M|countsec[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(31),
	cin => \divid50M|countsec[30]~93\,
	combout => \divid50M|countsec[31]~94_combout\);

-- Location: LCCOMB_X19_Y16_N2
\divid50M|clk_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~1_combout\ = (\divid50M|countsec\(13) & (\divid50M|countsec\(14) & \divid50M|countsec\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(13),
	datac => \divid50M|countsec\(14),
	datad => \divid50M|countsec\(12),
	combout => \divid50M|clk_counter~1_combout\);

-- Location: LCCOMB_X19_Y16_N22
\divid50M|clk_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~11_combout\ = (!\divid50M|countsec\(3) & (!\divid50M|countsec\(0) & (!\divid50M|countsec\(1) & !\divid50M|countsec\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(3),
	datab => \divid50M|countsec\(0),
	datac => \divid50M|countsec\(1),
	datad => \divid50M|countsec\(2),
	combout => \divid50M|clk_counter~11_combout\);

-- Location: LCCOMB_X28_Y26_N10
\minCounter|countsec1[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minCounter|countsec1[3]~1_combout\ = (\minCounter|countsec0\(0) & (!\minCounter|countsec0\(2) & (!\minCounter|countsec0\(3) & !\minCounter|countsec0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minCounter|countsec0\(0),
	datab => \minCounter|countsec0\(2),
	datac => \minCounter|countsec0\(3),
	datad => \minCounter|countsec0\(1),
	combout => \minCounter|countsec1[3]~1_combout\);

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

-- Location: IOOBUF_X21_Y29_N23
\hex0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec_digSeg|dis\(0),
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
	i => \sec_digSeg|dis\(1),
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
	i => \sec_digSeg|dis\(2),
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
	i => \sec_digSeg|dis\(3),
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
	i => \sec_digSeg|dis\(4),
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
	i => \sec_digSeg|dis\(5),
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
	i => \sec_digSeg|dis\(6),
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
	i => \sec_tenSeg|dis\(0),
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
	i => \sec_tenSeg|dis\(1),
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
	i => \sec_tenSeg|dis\(2),
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
	i => \sec_tenSeg|dis\(3),
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
	i => \sec_tenSeg|dis\(4),
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
	i => \sec_tenSeg|dis\(5),
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
	i => \sec_tenSeg|dis\(6),
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\dot~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dot~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\hex2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_digSeg|dis\(0),
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\hex2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_digSeg|dis\(1),
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\hex2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_digSeg|dis\(2),
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\hex2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_digSeg|dis\(3),
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\hex2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_digSeg|dis\(4),
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\hex2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_digSeg|dis\(5),
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\hex2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_digSeg|dis\(6),
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\hex3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tenSeg|dis\(0),
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\hex3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tenSeg|dis\(1),
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\hex3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tenSeg|dis\(2),
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\hex3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tenSeg|dis\(3),
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\hex3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tenSeg|dis\(4),
	devoe => ww_devoe,
	o => \hex3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\hex3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tenSeg|dis\(5),
	devoe => ww_devoe,
	o => \hex3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\hex3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_tenSeg|dis\(6),
	devoe => ww_devoe,
	o => \hex3[6]~output_o\);

-- Location: LCCOMB_X23_Y18_N0
\divid50M|countsec[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[0]~32_combout\ = \divid50M|countsec\(0) $ (VCC)
-- \divid50M|countsec[0]~33\ = CARRY(\divid50M|countsec\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(0),
	datad => VCC,
	combout => \divid50M|countsec[0]~32_combout\,
	cout => \divid50M|countsec[0]~33\);

-- Location: LCCOMB_X23_Y18_N12
\divid50M|countsec[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[6]~44_combout\ = (\divid50M|countsec\(6) & (\divid50M|countsec[5]~43\ $ (GND))) # (!\divid50M|countsec\(6) & (!\divid50M|countsec[5]~43\ & VCC))
-- \divid50M|countsec[6]~45\ = CARRY((\divid50M|countsec\(6) & !\divid50M|countsec[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(6),
	datad => VCC,
	cin => \divid50M|countsec[5]~43\,
	combout => \divid50M|countsec[6]~44_combout\,
	cout => \divid50M|countsec[6]~45\);

-- Location: LCCOMB_X23_Y18_N14
\divid50M|countsec[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[7]~46_combout\ = (\divid50M|countsec\(7) & (!\divid50M|countsec[6]~45\)) # (!\divid50M|countsec\(7) & ((\divid50M|countsec[6]~45\) # (GND)))
-- \divid50M|countsec[7]~47\ = CARRY((!\divid50M|countsec[6]~45\) # (!\divid50M|countsec\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(7),
	datad => VCC,
	cin => \divid50M|countsec[6]~45\,
	combout => \divid50M|countsec[7]~46_combout\,
	cout => \divid50M|countsec[7]~47\);

-- Location: FF_X23_Y18_N15
\divid50M|countsec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[7]~46_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(7));

-- Location: LCCOMB_X23_Y18_N16
\divid50M|countsec[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[8]~48_combout\ = (\divid50M|countsec\(8) & (\divid50M|countsec[7]~47\ $ (GND))) # (!\divid50M|countsec\(8) & (!\divid50M|countsec[7]~47\ & VCC))
-- \divid50M|countsec[8]~49\ = CARRY((\divid50M|countsec\(8) & !\divid50M|countsec[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(8),
	datad => VCC,
	cin => \divid50M|countsec[7]~47\,
	combout => \divid50M|countsec[8]~48_combout\,
	cout => \divid50M|countsec[8]~49\);

-- Location: FF_X23_Y18_N17
\divid50M|countsec[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[8]~48_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(8));

-- Location: LCCOMB_X23_Y18_N18
\divid50M|countsec[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[9]~50_combout\ = (\divid50M|countsec\(9) & (!\divid50M|countsec[8]~49\)) # (!\divid50M|countsec\(9) & ((\divid50M|countsec[8]~49\) # (GND)))
-- \divid50M|countsec[9]~51\ = CARRY((!\divid50M|countsec[8]~49\) # (!\divid50M|countsec\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(9),
	datad => VCC,
	cin => \divid50M|countsec[8]~49\,
	combout => \divid50M|countsec[9]~50_combout\,
	cout => \divid50M|countsec[9]~51\);

-- Location: FF_X23_Y18_N19
\divid50M|countsec[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[9]~50_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(9));

-- Location: LCCOMB_X23_Y18_N20
\divid50M|countsec[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[10]~52_combout\ = (\divid50M|countsec\(10) & (\divid50M|countsec[9]~51\ $ (GND))) # (!\divid50M|countsec\(10) & (!\divid50M|countsec[9]~51\ & VCC))
-- \divid50M|countsec[10]~53\ = CARRY((\divid50M|countsec\(10) & !\divid50M|countsec[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(10),
	datad => VCC,
	cin => \divid50M|countsec[9]~51\,
	combout => \divid50M|countsec[10]~52_combout\,
	cout => \divid50M|countsec[10]~53\);

-- Location: FF_X23_Y18_N21
\divid50M|countsec[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[10]~52_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(10));

-- Location: LCCOMB_X23_Y18_N22
\divid50M|countsec[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[11]~54_combout\ = (\divid50M|countsec\(11) & (!\divid50M|countsec[10]~53\)) # (!\divid50M|countsec\(11) & ((\divid50M|countsec[10]~53\) # (GND)))
-- \divid50M|countsec[11]~55\ = CARRY((!\divid50M|countsec[10]~53\) # (!\divid50M|countsec\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(11),
	datad => VCC,
	cin => \divid50M|countsec[10]~53\,
	combout => \divid50M|countsec[11]~54_combout\,
	cout => \divid50M|countsec[11]~55\);

-- Location: LCCOMB_X23_Y18_N24
\divid50M|countsec[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[12]~56_combout\ = (\divid50M|countsec\(12) & (\divid50M|countsec[11]~55\ $ (GND))) # (!\divid50M|countsec\(12) & (!\divid50M|countsec[11]~55\ & VCC))
-- \divid50M|countsec[12]~57\ = CARRY((\divid50M|countsec\(12) & !\divid50M|countsec[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(12),
	datad => VCC,
	cin => \divid50M|countsec[11]~55\,
	combout => \divid50M|countsec[12]~56_combout\,
	cout => \divid50M|countsec[12]~57\);

-- Location: FF_X23_Y18_N25
\divid50M|countsec[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[12]~56_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(12));

-- Location: LCCOMB_X23_Y18_N26
\divid50M|countsec[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[13]~58_combout\ = (\divid50M|countsec\(13) & (!\divid50M|countsec[12]~57\)) # (!\divid50M|countsec\(13) & ((\divid50M|countsec[12]~57\) # (GND)))
-- \divid50M|countsec[13]~59\ = CARRY((!\divid50M|countsec[12]~57\) # (!\divid50M|countsec\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(13),
	datad => VCC,
	cin => \divid50M|countsec[12]~57\,
	combout => \divid50M|countsec[13]~58_combout\,
	cout => \divid50M|countsec[13]~59\);

-- Location: LCCOMB_X23_Y18_N28
\divid50M|countsec[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[14]~60_combout\ = (\divid50M|countsec\(14) & (\divid50M|countsec[13]~59\ $ (GND))) # (!\divid50M|countsec\(14) & (!\divid50M|countsec[13]~59\ & VCC))
-- \divid50M|countsec[14]~61\ = CARRY((\divid50M|countsec\(14) & !\divid50M|countsec[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(14),
	datad => VCC,
	cin => \divid50M|countsec[13]~59\,
	combout => \divid50M|countsec[14]~60_combout\,
	cout => \divid50M|countsec[14]~61\);

-- Location: FF_X23_Y18_N29
\divid50M|countsec[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[14]~60_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(14));

-- Location: LCCOMB_X23_Y18_N30
\divid50M|countsec[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[15]~62_combout\ = (\divid50M|countsec\(15) & (!\divid50M|countsec[14]~61\)) # (!\divid50M|countsec\(15) & ((\divid50M|countsec[14]~61\) # (GND)))
-- \divid50M|countsec[15]~63\ = CARRY((!\divid50M|countsec[14]~61\) # (!\divid50M|countsec\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(15),
	datad => VCC,
	cin => \divid50M|countsec[14]~61\,
	combout => \divid50M|countsec[15]~62_combout\,
	cout => \divid50M|countsec[15]~63\);

-- Location: LCCOMB_X23_Y17_N0
\divid50M|countsec[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[16]~64_combout\ = (\divid50M|countsec\(16) & (\divid50M|countsec[15]~63\ $ (GND))) # (!\divid50M|countsec\(16) & (!\divid50M|countsec[15]~63\ & VCC))
-- \divid50M|countsec[16]~65\ = CARRY((\divid50M|countsec\(16) & !\divid50M|countsec[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(16),
	datad => VCC,
	cin => \divid50M|countsec[15]~63\,
	combout => \divid50M|countsec[16]~64_combout\,
	cout => \divid50M|countsec[16]~65\);

-- Location: FF_X23_Y17_N1
\divid50M|countsec[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[16]~64_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(16));

-- Location: LCCOMB_X23_Y17_N2
\divid50M|countsec[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[17]~66_combout\ = (\divid50M|countsec\(17) & (!\divid50M|countsec[16]~65\)) # (!\divid50M|countsec\(17) & ((\divid50M|countsec[16]~65\) # (GND)))
-- \divid50M|countsec[17]~67\ = CARRY((!\divid50M|countsec[16]~65\) # (!\divid50M|countsec\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(17),
	datad => VCC,
	cin => \divid50M|countsec[16]~65\,
	combout => \divid50M|countsec[17]~66_combout\,
	cout => \divid50M|countsec[17]~67\);

-- Location: FF_X23_Y17_N3
\divid50M|countsec[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[17]~66_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(17));

-- Location: LCCOMB_X23_Y17_N4
\divid50M|countsec[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[18]~68_combout\ = (\divid50M|countsec\(18) & (\divid50M|countsec[17]~67\ $ (GND))) # (!\divid50M|countsec\(18) & (!\divid50M|countsec[17]~67\ & VCC))
-- \divid50M|countsec[18]~69\ = CARRY((\divid50M|countsec\(18) & !\divid50M|countsec[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(18),
	datad => VCC,
	cin => \divid50M|countsec[17]~67\,
	combout => \divid50M|countsec[18]~68_combout\,
	cout => \divid50M|countsec[18]~69\);

-- Location: FF_X23_Y17_N5
\divid50M|countsec[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[18]~68_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(18));

-- Location: LCCOMB_X23_Y17_N6
\divid50M|countsec[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[19]~70_combout\ = (\divid50M|countsec\(19) & (!\divid50M|countsec[18]~69\)) # (!\divid50M|countsec\(19) & ((\divid50M|countsec[18]~69\) # (GND)))
-- \divid50M|countsec[19]~71\ = CARRY((!\divid50M|countsec[18]~69\) # (!\divid50M|countsec\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(19),
	datad => VCC,
	cin => \divid50M|countsec[18]~69\,
	combout => \divid50M|countsec[19]~70_combout\,
	cout => \divid50M|countsec[19]~71\);

-- Location: LCCOMB_X23_Y17_N8
\divid50M|countsec[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[20]~72_combout\ = (\divid50M|countsec\(20) & (\divid50M|countsec[19]~71\ $ (GND))) # (!\divid50M|countsec\(20) & (!\divid50M|countsec[19]~71\ & VCC))
-- \divid50M|countsec[20]~73\ = CARRY((\divid50M|countsec\(20) & !\divid50M|countsec[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(20),
	datad => VCC,
	cin => \divid50M|countsec[19]~71\,
	combout => \divid50M|countsec[20]~72_combout\,
	cout => \divid50M|countsec[20]~73\);

-- Location: FF_X23_Y17_N9
\divid50M|countsec[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[20]~72_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(20));

-- Location: LCCOMB_X23_Y17_N10
\divid50M|countsec[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[21]~74_combout\ = (\divid50M|countsec\(21) & (!\divid50M|countsec[20]~73\)) # (!\divid50M|countsec\(21) & ((\divid50M|countsec[20]~73\) # (GND)))
-- \divid50M|countsec[21]~75\ = CARRY((!\divid50M|countsec[20]~73\) # (!\divid50M|countsec\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(21),
	datad => VCC,
	cin => \divid50M|countsec[20]~73\,
	combout => \divid50M|countsec[21]~74_combout\,
	cout => \divid50M|countsec[21]~75\);

-- Location: LCCOMB_X23_Y17_N12
\divid50M|countsec[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[22]~76_combout\ = (\divid50M|countsec\(22) & (\divid50M|countsec[21]~75\ $ (GND))) # (!\divid50M|countsec\(22) & (!\divid50M|countsec[21]~75\ & VCC))
-- \divid50M|countsec[22]~77\ = CARRY((\divid50M|countsec\(22) & !\divid50M|countsec[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(22),
	datad => VCC,
	cin => \divid50M|countsec[21]~75\,
	combout => \divid50M|countsec[22]~76_combout\,
	cout => \divid50M|countsec[22]~77\);

-- Location: LCCOMB_X23_Y17_N14
\divid50M|countsec[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[23]~78_combout\ = (\divid50M|countsec\(23) & (!\divid50M|countsec[22]~77\)) # (!\divid50M|countsec\(23) & ((\divid50M|countsec[22]~77\) # (GND)))
-- \divid50M|countsec[23]~79\ = CARRY((!\divid50M|countsec[22]~77\) # (!\divid50M|countsec\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(23),
	datad => VCC,
	cin => \divid50M|countsec[22]~77\,
	combout => \divid50M|countsec[23]~78_combout\,
	cout => \divid50M|countsec[23]~79\);

-- Location: FF_X23_Y17_N15
\divid50M|countsec[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[23]~78_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(23));

-- Location: LCCOMB_X23_Y17_N16
\divid50M|countsec[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[24]~80_combout\ = (\divid50M|countsec\(24) & (\divid50M|countsec[23]~79\ $ (GND))) # (!\divid50M|countsec\(24) & (!\divid50M|countsec[23]~79\ & VCC))
-- \divid50M|countsec[24]~81\ = CARRY((\divid50M|countsec\(24) & !\divid50M|countsec[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(24),
	datad => VCC,
	cin => \divid50M|countsec[23]~79\,
	combout => \divid50M|countsec[24]~80_combout\,
	cout => \divid50M|countsec[24]~81\);

-- Location: FF_X23_Y17_N17
\divid50M|countsec[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[24]~80_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(24));

-- Location: LCCOMB_X23_Y17_N18
\divid50M|countsec[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[25]~82_combout\ = (\divid50M|countsec\(25) & (!\divid50M|countsec[24]~81\)) # (!\divid50M|countsec\(25) & ((\divid50M|countsec[24]~81\) # (GND)))
-- \divid50M|countsec[25]~83\ = CARRY((!\divid50M|countsec[24]~81\) # (!\divid50M|countsec\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(25),
	datad => VCC,
	cin => \divid50M|countsec[24]~81\,
	combout => \divid50M|countsec[25]~82_combout\,
	cout => \divid50M|countsec[25]~83\);

-- Location: FF_X23_Y17_N19
\divid50M|countsec[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[25]~82_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(25));

-- Location: LCCOMB_X23_Y17_N20
\divid50M|countsec[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[26]~84_combout\ = (\divid50M|countsec\(26) & (\divid50M|countsec[25]~83\ $ (GND))) # (!\divid50M|countsec\(26) & (!\divid50M|countsec[25]~83\ & VCC))
-- \divid50M|countsec[26]~85\ = CARRY((\divid50M|countsec\(26) & !\divid50M|countsec[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(26),
	datad => VCC,
	cin => \divid50M|countsec[25]~83\,
	combout => \divid50M|countsec[26]~84_combout\,
	cout => \divid50M|countsec[26]~85\);

-- Location: FF_X23_Y17_N21
\divid50M|countsec[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[26]~84_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(26));

-- Location: LCCOMB_X23_Y17_N24
\divid50M|countsec[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[28]~88_combout\ = (\divid50M|countsec\(28) & (\divid50M|countsec[27]~87\ $ (GND))) # (!\divid50M|countsec\(28) & (!\divid50M|countsec[27]~87\ & VCC))
-- \divid50M|countsec[28]~89\ = CARRY((\divid50M|countsec\(28) & !\divid50M|countsec[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(28),
	datad => VCC,
	cin => \divid50M|countsec[27]~87\,
	combout => \divid50M|countsec[28]~88_combout\,
	cout => \divid50M|countsec[28]~89\);

-- Location: FF_X23_Y17_N25
\divid50M|countsec[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[28]~88_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(28));

-- Location: LCCOMB_X23_Y17_N26
\divid50M|countsec[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[29]~90_combout\ = (\divid50M|countsec\(29) & (!\divid50M|countsec[28]~89\)) # (!\divid50M|countsec\(29) & ((\divid50M|countsec[28]~89\) # (GND)))
-- \divid50M|countsec[29]~91\ = CARRY((!\divid50M|countsec[28]~89\) # (!\divid50M|countsec\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(29),
	datad => VCC,
	cin => \divid50M|countsec[28]~89\,
	combout => \divid50M|countsec[29]~90_combout\,
	cout => \divid50M|countsec[29]~91\);

-- Location: FF_X23_Y17_N29
\divid50M|countsec[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[30]~92_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(30));

-- Location: FF_X23_Y17_N27
\divid50M|countsec[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[29]~90_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(29));

-- Location: LCCOMB_X27_Y17_N0
\divid50M|clk_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~8_combout\ = (!\divid50M|countsec\(27) & (!\divid50M|countsec\(29) & (!\divid50M|countsec\(26) & !\divid50M|countsec\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(27),
	datab => \divid50M|countsec\(29),
	datac => \divid50M|countsec\(26),
	datad => \divid50M|countsec\(28),
	combout => \divid50M|clk_counter~8_combout\);

-- Location: LCCOMB_X27_Y17_N26
\divid50M|clk_counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~9_combout\ = (!\divid50M|countsec\(31) & (!\divid50M|countsec\(30) & \divid50M|clk_counter~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(31),
	datac => \divid50M|countsec\(30),
	datad => \divid50M|clk_counter~8_combout\,
	combout => \divid50M|clk_counter~9_combout\);

-- Location: FF_X23_Y18_N31
\divid50M|countsec[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[15]~62_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(15));

-- Location: FF_X23_Y18_N23
\divid50M|countsec[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[11]~54_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(11));

-- Location: LCCOMB_X23_Y18_N6
\divid50M|countsec[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[3]~38_combout\ = (\divid50M|countsec\(3) & (!\divid50M|countsec[2]~37\)) # (!\divid50M|countsec\(3) & ((\divid50M|countsec[2]~37\) # (GND)))
-- \divid50M|countsec[3]~39\ = CARRY((!\divid50M|countsec[2]~37\) # (!\divid50M|countsec\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(3),
	datad => VCC,
	cin => \divid50M|countsec[2]~37\,
	combout => \divid50M|countsec[3]~38_combout\,
	cout => \divid50M|countsec[3]~39\);

-- Location: FF_X23_Y18_N7
\divid50M|countsec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[3]~38_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(3));

-- Location: LCCOMB_X19_Y16_N18
\divid50M|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|LessThan0~1_combout\ = (((!\divid50M|countsec\(2)) # (!\divid50M|countsec\(3))) # (!\divid50M|countsec\(0))) # (!\divid50M|countsec\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(1),
	datab => \divid50M|countsec\(0),
	datac => \divid50M|countsec\(3),
	datad => \divid50M|countsec\(2),
	combout => \divid50M|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y16_N12
\divid50M|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|LessThan0~2_combout\ = (((\divid50M|LessThan0~1_combout\) # (!\divid50M|countsec\(4))) # (!\divid50M|countsec\(6))) # (!\divid50M|countsec\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(5),
	datab => \divid50M|countsec\(6),
	datac => \divid50M|countsec\(4),
	datad => \divid50M|LessThan0~1_combout\,
	combout => \divid50M|LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y16_N24
\divid50M|clk_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~10_combout\ = (!\divid50M|countsec\(7) & (!\divid50M|countsec\(8) & (!\divid50M|countsec\(10) & !\divid50M|countsec\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(7),
	datab => \divid50M|countsec\(8),
	datac => \divid50M|countsec\(10),
	datad => \divid50M|countsec\(9),
	combout => \divid50M|clk_counter~10_combout\);

-- Location: LCCOMB_X19_Y16_N26
\divid50M|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|LessThan0~3_combout\ = (\divid50M|clk_counter~1_combout\ & ((\divid50M|countsec\(11)) # ((!\divid50M|clk_counter~10_combout\) # (!\divid50M|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|clk_counter~1_combout\,
	datab => \divid50M|countsec\(11),
	datac => \divid50M|LessThan0~2_combout\,
	datad => \divid50M|clk_counter~10_combout\,
	combout => \divid50M|LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y16_N2
\divid50M|clk_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~4_combout\ = (!\divid50M|countsec\(18) & (!\divid50M|countsec\(24) & !\divid50M|countsec\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(18),
	datac => \divid50M|countsec\(24),
	datad => \divid50M|countsec\(16),
	combout => \divid50M|clk_counter~4_combout\);

-- Location: LCCOMB_X19_Y16_N30
\divid50M|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|LessThan0~4_combout\ = (\divid50M|countsec\(25) & (((\divid50M|countsec\(15) & \divid50M|LessThan0~3_combout\)) # (!\divid50M|clk_counter~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(25),
	datab => \divid50M|countsec\(15),
	datac => \divid50M|LessThan0~3_combout\,
	datad => \divid50M|clk_counter~4_combout\,
	combout => \divid50M|LessThan0~4_combout\);

-- Location: FF_X23_Y17_N11
\divid50M|countsec[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[21]~74_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(21));

-- Location: FF_X23_Y17_N13
\divid50M|countsec[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[22]~76_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(22));

-- Location: LCCOMB_X30_Y18_N0
\divid50M|clk_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~0_combout\ = (\divid50M|countsec\(19) & (\divid50M|countsec\(20) & (\divid50M|countsec\(21) & \divid50M|countsec\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(19),
	datab => \divid50M|countsec\(20),
	datac => \divid50M|countsec\(21),
	datad => \divid50M|countsec\(22),
	combout => \divid50M|clk_counter~0_combout\);

-- Location: LCCOMB_X19_Y16_N20
\divid50M|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|LessThan0~0_combout\ = (((!\divid50M|countsec\(17) & !\divid50M|countsec\(18))) # (!\divid50M|clk_counter~0_combout\)) # (!\divid50M|countsec\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(17),
	datab => \divid50M|countsec\(18),
	datac => \divid50M|countsec\(23),
	datad => \divid50M|clk_counter~0_combout\,
	combout => \divid50M|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y16_N0
\divid50M|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|LessThan0~5_combout\ = ((\divid50M|LessThan0~4_combout\ & ((\divid50M|countsec\(24)) # (!\divid50M|LessThan0~0_combout\)))) # (!\divid50M|clk_counter~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(24),
	datab => \divid50M|clk_counter~9_combout\,
	datac => \divid50M|LessThan0~4_combout\,
	datad => \divid50M|LessThan0~0_combout\,
	combout => \divid50M|LessThan0~5_combout\);

-- Location: FF_X23_Y18_N1
\divid50M|countsec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[0]~32_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(0));

-- Location: LCCOMB_X23_Y18_N2
\divid50M|countsec[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[1]~34_combout\ = (\divid50M|countsec\(1) & (!\divid50M|countsec[0]~33\)) # (!\divid50M|countsec\(1) & ((\divid50M|countsec[0]~33\) # (GND)))
-- \divid50M|countsec[1]~35\ = CARRY((!\divid50M|countsec[0]~33\) # (!\divid50M|countsec\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(1),
	datad => VCC,
	cin => \divid50M|countsec[0]~33\,
	combout => \divid50M|countsec[1]~34_combout\,
	cout => \divid50M|countsec[1]~35\);

-- Location: FF_X23_Y18_N3
\divid50M|countsec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[1]~34_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(1));

-- Location: LCCOMB_X23_Y18_N4
\divid50M|countsec[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[2]~36_combout\ = (\divid50M|countsec\(2) & (\divid50M|countsec[1]~35\ $ (GND))) # (!\divid50M|countsec\(2) & (!\divid50M|countsec[1]~35\ & VCC))
-- \divid50M|countsec[2]~37\ = CARRY((\divid50M|countsec\(2) & !\divid50M|countsec[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(2),
	datad => VCC,
	cin => \divid50M|countsec[1]~35\,
	combout => \divid50M|countsec[2]~36_combout\,
	cout => \divid50M|countsec[2]~37\);

-- Location: FF_X23_Y18_N5
\divid50M|countsec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[2]~36_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(2));

-- Location: LCCOMB_X23_Y18_N8
\divid50M|countsec[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[4]~40_combout\ = (\divid50M|countsec\(4) & (\divid50M|countsec[3]~39\ $ (GND))) # (!\divid50M|countsec\(4) & (!\divid50M|countsec[3]~39\ & VCC))
-- \divid50M|countsec[4]~41\ = CARRY((\divid50M|countsec\(4) & !\divid50M|countsec[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divid50M|countsec\(4),
	datad => VCC,
	cin => \divid50M|countsec[3]~39\,
	combout => \divid50M|countsec[4]~40_combout\,
	cout => \divid50M|countsec[4]~41\);

-- Location: FF_X23_Y18_N9
\divid50M|countsec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[4]~40_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(4));

-- Location: LCCOMB_X23_Y18_N10
\divid50M|countsec[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|countsec[5]~42_combout\ = (\divid50M|countsec\(5) & (!\divid50M|countsec[4]~41\)) # (!\divid50M|countsec\(5) & ((\divid50M|countsec[4]~41\) # (GND)))
-- \divid50M|countsec[5]~43\ = CARRY((!\divid50M|countsec[4]~41\) # (!\divid50M|countsec\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(5),
	datad => VCC,
	cin => \divid50M|countsec[4]~41\,
	combout => \divid50M|countsec[5]~42_combout\,
	cout => \divid50M|countsec[5]~43\);

-- Location: FF_X23_Y18_N13
\divid50M|countsec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[6]~44_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(6));

-- Location: LCCOMB_X29_Y16_N0
\divid50M|clk_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~2_combout\ = (\divid50M|countsec\(11) & (\divid50M|countsec\(16) & (\divid50M|countsec\(24) & \divid50M|countsec\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(11),
	datab => \divid50M|countsec\(16),
	datac => \divid50M|countsec\(24),
	datad => \divid50M|countsec\(18),
	combout => \divid50M|clk_counter~2_combout\);

-- Location: LCCOMB_X19_Y16_N8
\divid50M|clk_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~3_combout\ = (\divid50M|clk_counter~1_combout\ & (\divid50M|countsec\(6) & (\divid50M|clk_counter~2_combout\ & \divid50M|clk_counter~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|clk_counter~1_combout\,
	datab => \divid50M|countsec\(6),
	datac => \divid50M|clk_counter~2_combout\,
	datad => \divid50M|clk_counter~0_combout\,
	combout => \divid50M|clk_counter~3_combout\);

-- Location: FF_X23_Y18_N27
\divid50M|countsec[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[13]~58_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(13));

-- Location: LCCOMB_X19_Y16_N14
\divid50M|clk_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~5_combout\ = (!\divid50M|countsec\(6) & (!\divid50M|countsec\(13) & (!\divid50M|countsec\(14) & !\divid50M|countsec\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(6),
	datab => \divid50M|countsec\(13),
	datac => \divid50M|countsec\(14),
	datad => \divid50M|countsec\(12),
	combout => \divid50M|clk_counter~5_combout\);

-- Location: FF_X23_Y17_N7
\divid50M|countsec[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[19]~70_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(19));

-- Location: LCCOMB_X30_Y18_N26
\divid50M|clk_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~6_combout\ = (!\divid50M|countsec\(21) & (!\divid50M|countsec\(20) & (!\divid50M|countsec\(19) & !\divid50M|countsec\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(21),
	datab => \divid50M|countsec\(20),
	datac => \divid50M|countsec\(19),
	datad => \divid50M|countsec\(22),
	combout => \divid50M|clk_counter~6_combout\);

-- Location: LCCOMB_X19_Y16_N4
\divid50M|clk_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~7_combout\ = (\divid50M|clk_counter~4_combout\ & (!\divid50M|countsec\(11) & (\divid50M|clk_counter~5_combout\ & \divid50M|clk_counter~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|clk_counter~4_combout\,
	datab => \divid50M|countsec\(11),
	datac => \divid50M|clk_counter~5_combout\,
	datad => \divid50M|clk_counter~6_combout\,
	combout => \divid50M|clk_counter~7_combout\);

-- Location: FF_X23_Y18_N11
\divid50M|countsec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|countsec[5]~42_combout\,
	sclr => \divid50M|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|countsec\(5));

-- Location: LCCOMB_X29_Y17_N0
\divid50M|clk_counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~12_combout\ = (!\divid50M|countsec\(17) & (!\divid50M|countsec\(15) & (!\divid50M|countsec\(5) & !\divid50M|countsec\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(17),
	datab => \divid50M|countsec\(15),
	datac => \divid50M|countsec\(5),
	datad => \divid50M|countsec\(4),
	combout => \divid50M|clk_counter~12_combout\);

-- Location: LCCOMB_X19_Y16_N28
\divid50M|clk_counter~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~13_combout\ = (!\divid50M|countsec\(23) & (\divid50M|clk_counter~12_combout\ & !\divid50M|countsec\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|countsec\(23),
	datac => \divid50M|clk_counter~12_combout\,
	datad => \divid50M|countsec\(25),
	combout => \divid50M|clk_counter~13_combout\);

-- Location: LCCOMB_X19_Y16_N16
\divid50M|clk_counter~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|clk_counter~14_combout\ = (\divid50M|clk_counter~11_combout\ & (\divid50M|clk_counter~10_combout\ & (\divid50M|clk_counter~9_combout\ & \divid50M|clk_counter~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|clk_counter~11_combout\,
	datab => \divid50M|clk_counter~10_combout\,
	datac => \divid50M|clk_counter~9_combout\,
	datad => \divid50M|clk_counter~13_combout\,
	combout => \divid50M|clk_counter~14_combout\);

-- Location: LCCOMB_X19_Y16_N10
\divid50M|temp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|temp~0_combout\ = \divid50M|temp~q\ $ (((\divid50M|clk_counter~14_combout\ & ((\divid50M|clk_counter~3_combout\) # (\divid50M|clk_counter~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divid50M|temp~q\,
	datab => \divid50M|clk_counter~3_combout\,
	datac => \divid50M|clk_counter~7_combout\,
	datad => \divid50M|clk_counter~14_combout\,
	combout => \divid50M|temp~0_combout\);

-- Location: LCCOMB_X19_Y16_N6
\divid50M|temp~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divid50M|temp~feeder_combout\ = \divid50M|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divid50M|temp~0_combout\,
	combout => \divid50M|temp~feeder_combout\);

-- Location: FF_X19_Y16_N7
\divid50M|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divid50M|temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divid50M|temp~q\);

-- Location: CLKCTRL_G0
\divid50M|temp~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divid50M|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divid50M|temp~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y26_N24
\secCounter|countsec0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secCounter|countsec0~0_combout\ = (!\secCounter|countsec0\(0) & ((\secCounter|countsec0\(3)) # ((!\secCounter|countsec0\(2) & !\secCounter|countsec0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec0\(2),
	datab => \secCounter|countsec0\(1),
	datac => \secCounter|countsec0\(0),
	datad => \secCounter|countsec0\(3),
	combout => \secCounter|countsec0~0_combout\);

-- Location: FF_X28_Y26_N25
\secCounter|countsec0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \secCounter|countsec0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secCounter|countsec0\(0));

-- Location: LCCOMB_X28_Y26_N22
\secCounter|countsec0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secCounter|countsec0~3_combout\ = (\secCounter|countsec0\(2) & (((!\secCounter|countsec0\(0)) # (!\secCounter|countsec0\(3))) # (!\secCounter|countsec0\(1)))) # (!\secCounter|countsec0\(2) & ((\secCounter|countsec0\(1)) # ((\secCounter|countsec0\(3)) # 
-- (\secCounter|countsec0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec0\(2),
	datab => \secCounter|countsec0\(1),
	datac => \secCounter|countsec0\(3),
	datad => \secCounter|countsec0\(0),
	combout => \secCounter|countsec0~3_combout\);

-- Location: FF_X28_Y26_N23
\secCounter|countsec0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \secCounter|countsec0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secCounter|countsec0\(3));

-- Location: LCCOMB_X28_Y26_N18
\secCounter|countsec0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secCounter|countsec0~1_combout\ = (\secCounter|countsec0\(3) & (\secCounter|countsec0\(1) $ (\secCounter|countsec0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secCounter|countsec0\(3),
	datac => \secCounter|countsec0\(1),
	datad => \secCounter|countsec0\(0),
	combout => \secCounter|countsec0~1_combout\);

-- Location: FF_X28_Y26_N19
\secCounter|countsec0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \secCounter|countsec0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secCounter|countsec0\(1));

-- Location: LCCOMB_X28_Y26_N20
\secCounter|countsec0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secCounter|countsec0~2_combout\ = (\secCounter|countsec0\(3) & (\secCounter|countsec0\(2) $ (((\secCounter|countsec0\(1) & \secCounter|countsec0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec0\(3),
	datab => \secCounter|countsec0\(1),
	datac => \secCounter|countsec0\(2),
	datad => \secCounter|countsec0\(0),
	combout => \secCounter|countsec0~2_combout\);

-- Location: FF_X28_Y26_N21
\secCounter|countsec0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \secCounter|countsec0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secCounter|countsec0\(2));

-- Location: LCCOMB_X30_Y28_N0
\sec_digSeg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_digSeg|Mux6~0_combout\ = (!\secCounter|countsec0\(1) & (\secCounter|countsec0\(3) & (\secCounter|countsec0\(0) $ (\secCounter|countsec0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec0\(0),
	datab => \secCounter|countsec0\(1),
	datac => \secCounter|countsec0\(3),
	datad => \secCounter|countsec0\(2),
	combout => \sec_digSeg|Mux6~0_combout\);

-- Location: FF_X30_Y28_N1
\sec_digSeg|dis[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_digSeg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_digSeg|dis\(0));

-- Location: LCCOMB_X28_Y26_N0
\sec_digSeg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_digSeg|Mux5~0_combout\ = (\secCounter|countsec0\(2) & (\secCounter|countsec0\(3) & (\secCounter|countsec0\(1) $ (\secCounter|countsec0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec0\(2),
	datab => \secCounter|countsec0\(1),
	datac => \secCounter|countsec0\(0),
	datad => \secCounter|countsec0\(3),
	combout => \sec_digSeg|Mux5~0_combout\);

-- Location: FF_X28_Y26_N1
\sec_digSeg|dis[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_digSeg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_digSeg|dis\(1));

-- Location: LCCOMB_X28_Y26_N26
\sec_digSeg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_digSeg|Mux4~0_combout\ = (!\secCounter|countsec0\(0) & (\secCounter|countsec0\(1) & (!\secCounter|countsec0\(2) & \secCounter|countsec0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec0\(0),
	datab => \secCounter|countsec0\(1),
	datac => \secCounter|countsec0\(2),
	datad => \secCounter|countsec0\(3),
	combout => \sec_digSeg|Mux4~0_combout\);

-- Location: FF_X28_Y26_N27
\sec_digSeg|dis[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_digSeg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_digSeg|dis\(2));

-- Location: LCCOMB_X28_Y26_N12
\sec_digSeg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_digSeg|Mux3~0_combout\ = (\secCounter|countsec0\(3) & ((\secCounter|countsec0\(0) & (\secCounter|countsec0\(1) $ (!\secCounter|countsec0\(2)))) # (!\secCounter|countsec0\(0) & (!\secCounter|countsec0\(1) & \secCounter|countsec0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec0\(0),
	datab => \secCounter|countsec0\(1),
	datac => \secCounter|countsec0\(2),
	datad => \secCounter|countsec0\(3),
	combout => \sec_digSeg|Mux3~0_combout\);

-- Location: FF_X28_Y26_N13
\sec_digSeg|dis[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_digSeg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_digSeg|dis\(3));

-- Location: LCCOMB_X28_Y26_N14
\sec_digSeg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_digSeg|Mux2~0_combout\ = (\secCounter|countsec0\(0)) # ((\secCounter|countsec0\(1) & ((!\secCounter|countsec0\(3)))) # (!\secCounter|countsec0\(1) & (\secCounter|countsec0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec0\(0),
	datab => \secCounter|countsec0\(1),
	datac => \secCounter|countsec0\(2),
	datad => \secCounter|countsec0\(3),
	combout => \sec_digSeg|Mux2~0_combout\);

-- Location: FF_X28_Y26_N15
\sec_digSeg|dis[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_digSeg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_digSeg|dis\(4));

-- Location: LCCOMB_X30_Y28_N2
\sec_digSeg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_digSeg|Mux1~0_combout\ = (\secCounter|countsec0\(3) & ((\secCounter|countsec0\(0) & ((\secCounter|countsec0\(1)) # (!\secCounter|countsec0\(2)))) # (!\secCounter|countsec0\(0) & (\secCounter|countsec0\(1) & !\secCounter|countsec0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec0\(0),
	datab => \secCounter|countsec0\(1),
	datac => \secCounter|countsec0\(3),
	datad => \secCounter|countsec0\(2),
	combout => \sec_digSeg|Mux1~0_combout\);

-- Location: FF_X30_Y28_N3
\sec_digSeg|dis[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_digSeg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_digSeg|dis\(5));

-- Location: LCCOMB_X30_Y28_N4
\sec_digSeg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_digSeg|Mux0~0_combout\ = (\secCounter|countsec0\(3) & ((\secCounter|countsec0\(1) & (\secCounter|countsec0\(0) & \secCounter|countsec0\(2))) # (!\secCounter|countsec0\(1) & ((!\secCounter|countsec0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec0\(0),
	datab => \secCounter|countsec0\(1),
	datac => \secCounter|countsec0\(3),
	datad => \secCounter|countsec0\(2),
	combout => \sec_digSeg|Mux0~0_combout\);

-- Location: FF_X30_Y28_N5
\sec_digSeg|dis[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_digSeg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_digSeg|dis\(6));

-- Location: LCCOMB_X28_Y27_N26
\secCounter|countsec1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secCounter|countsec1~2_combout\ = (\secCounter|countsec1\(2) & (\secCounter|countsec1\(0) $ (!\secCounter|countsec1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec1\(0),
	datab => \secCounter|countsec1\(2),
	datac => \secCounter|countsec1\(1),
	combout => \secCounter|countsec1~2_combout\);

-- Location: LCCOMB_X28_Y26_N30
\secCounter|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secCounter|Equal1~0_combout\ = (\secCounter|countsec0\(0) & (!\secCounter|countsec0\(2) & (!\secCounter|countsec0\(3) & !\secCounter|countsec0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec0\(0),
	datab => \secCounter|countsec0\(2),
	datac => \secCounter|countsec0\(3),
	datad => \secCounter|countsec0\(1),
	combout => \secCounter|Equal1~0_combout\);

-- Location: FF_X28_Y27_N27
\secCounter|countsec1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \secCounter|countsec1~2_combout\,
	ena => \secCounter|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secCounter|countsec1\(1));

-- Location: LCCOMB_X28_Y27_N8
\secCounter|countsec1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secCounter|countsec1~1_combout\ = (\secCounter|countsec1\(0) & ((\secCounter|countsec1\(2)) # (\secCounter|countsec1\(1)))) # (!\secCounter|countsec1\(0) & ((!\secCounter|countsec1\(1)) # (!\secCounter|countsec1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec1\(0),
	datac => \secCounter|countsec1\(2),
	datad => \secCounter|countsec1\(1),
	combout => \secCounter|countsec1~1_combout\);

-- Location: FF_X28_Y27_N9
\secCounter|countsec1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \secCounter|countsec1~1_combout\,
	ena => \secCounter|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secCounter|countsec1\(2));

-- Location: LCCOMB_X28_Y27_N30
\secCounter|countsec1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secCounter|countsec1~0_combout\ = ((!\secCounter|countsec1\(2) & \secCounter|countsec1\(1))) # (!\secCounter|countsec1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secCounter|countsec1\(2),
	datac => \secCounter|countsec1\(0),
	datad => \secCounter|countsec1\(1),
	combout => \secCounter|countsec1~0_combout\);

-- Location: FF_X28_Y27_N31
\secCounter|countsec1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \secCounter|countsec1~0_combout\,
	ena => \secCounter|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secCounter|countsec1\(0));

-- Location: LCCOMB_X28_Y27_N0
\sec_tenSeg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_tenSeg|Mux6~0_combout\ = (!\secCounter|countsec1\(1) & (\secCounter|countsec1\(2) $ (\secCounter|countsec1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secCounter|countsec1\(2),
	datac => \secCounter|countsec1\(0),
	datad => \secCounter|countsec1\(1),
	combout => \sec_tenSeg|Mux6~0_combout\);

-- Location: FF_X28_Y27_N1
\sec_tenSeg|dis[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_tenSeg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_tenSeg|dis\(0));

-- Location: LCCOMB_X28_Y27_N18
\sec_tenSeg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_tenSeg|Mux5~0_combout\ = (!\secCounter|countsec1\(2) & (\secCounter|countsec1\(0) $ (!\secCounter|countsec1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secCounter|countsec1\(2),
	datac => \secCounter|countsec1\(0),
	datad => \secCounter|countsec1\(1),
	combout => \sec_tenSeg|Mux5~0_combout\);

-- Location: FF_X28_Y27_N19
\sec_tenSeg|dis[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_tenSeg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_tenSeg|dis\(1));

-- Location: LCCOMB_X28_Y27_N28
\sec_tenSeg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_tenSeg|Mux4~0_combout\ = (\secCounter|countsec1\(2) & (\secCounter|countsec1\(0) & \secCounter|countsec1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secCounter|countsec1\(2),
	datac => \secCounter|countsec1\(0),
	datad => \secCounter|countsec1\(1),
	combout => \sec_tenSeg|Mux4~0_combout\);

-- Location: FF_X28_Y27_N29
\sec_tenSeg|dis[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_tenSeg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_tenSeg|dis\(2));

-- Location: LCCOMB_X28_Y27_N22
\sec_tenSeg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_tenSeg|Mux3~0_combout\ = (\secCounter|countsec1\(2) & (!\secCounter|countsec1\(0) & !\secCounter|countsec1\(1))) # (!\secCounter|countsec1\(2) & (\secCounter|countsec1\(0) $ (\secCounter|countsec1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secCounter|countsec1\(2),
	datac => \secCounter|countsec1\(0),
	datad => \secCounter|countsec1\(1),
	combout => \sec_tenSeg|Mux3~0_combout\);

-- Location: FF_X28_Y27_N23
\sec_tenSeg|dis[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_tenSeg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_tenSeg|dis\(3));

-- Location: LCCOMB_X28_Y27_N24
\sec_tenSeg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_tenSeg|Mux2~0_combout\ = ((!\secCounter|countsec1\(2) & !\secCounter|countsec1\(1))) # (!\secCounter|countsec1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secCounter|countsec1\(2),
	datac => \secCounter|countsec1\(0),
	datad => \secCounter|countsec1\(1),
	combout => \sec_tenSeg|Mux2~0_combout\);

-- Location: FF_X28_Y27_N25
\sec_tenSeg|dis[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_tenSeg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_tenSeg|dis\(4));

-- Location: LCCOMB_X28_Y27_N10
\sec_tenSeg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_tenSeg|Mux1~0_combout\ = (\secCounter|countsec1\(2) & ((\secCounter|countsec1\(1)) # (!\secCounter|countsec1\(0)))) # (!\secCounter|countsec1\(2) & (!\secCounter|countsec1\(0) & \secCounter|countsec1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secCounter|countsec1\(2),
	datac => \secCounter|countsec1\(0),
	datad => \secCounter|countsec1\(1),
	combout => \sec_tenSeg|Mux1~0_combout\);

-- Location: FF_X28_Y27_N11
\sec_tenSeg|dis[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_tenSeg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_tenSeg|dis\(5));

-- Location: LCCOMB_X28_Y27_N4
\sec_tenSeg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_tenSeg|Mux0~0_combout\ = (\secCounter|countsec1\(2) & ((!\secCounter|countsec1\(1)))) # (!\secCounter|countsec1\(2) & (!\secCounter|countsec1\(0) & \secCounter|countsec1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secCounter|countsec1\(2),
	datac => \secCounter|countsec1\(0),
	datad => \secCounter|countsec1\(1),
	combout => \sec_tenSeg|Mux0~0_combout\);

-- Location: FF_X28_Y27_N5
\sec_tenSeg|dis[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \sec_tenSeg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_tenSeg|dis\(6));

-- Location: LCCOMB_X29_Y26_N12
\minCounter|countsec0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minCounter|countsec0~3_combout\ = (\minCounter|countsec0\(2) & (((!\minCounter|countsec0\(0)) # (!\minCounter|countsec0\(3))) # (!\minCounter|countsec0\(1)))) # (!\minCounter|countsec0\(2) & ((\minCounter|countsec0\(1)) # ((\minCounter|countsec0\(3)) # 
-- (\minCounter|countsec0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minCounter|countsec0\(2),
	datab => \minCounter|countsec0\(1),
	datac => \minCounter|countsec0\(3),
	datad => \minCounter|countsec0\(0),
	combout => \minCounter|countsec0~3_combout\);

-- Location: LCCOMB_X28_Y26_N6
\secCounter|Co\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secCounter|Co~combout\ = (!\secCounter|countsec1\(0) & (!\secCounter|countsec1\(2) & (\secCounter|Equal1~0_combout\ & !\secCounter|countsec1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secCounter|countsec1\(0),
	datab => \secCounter|countsec1\(2),
	datac => \secCounter|Equal1~0_combout\,
	datad => \secCounter|countsec1\(1),
	combout => \secCounter|Co~combout\);

-- Location: FF_X29_Y26_N13
\minCounter|countsec0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \minCounter|countsec0~3_combout\,
	ena => \secCounter|Co~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minCounter|countsec0\(3));

-- Location: LCCOMB_X29_Y26_N6
\minCounter|countsec0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minCounter|countsec0~0_combout\ = (!\minCounter|countsec0\(0) & ((\minCounter|countsec0\(3)) # ((!\minCounter|countsec0\(2) & !\minCounter|countsec0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minCounter|countsec0\(2),
	datab => \minCounter|countsec0\(1),
	datac => \minCounter|countsec0\(0),
	datad => \minCounter|countsec0\(3),
	combout => \minCounter|countsec0~0_combout\);

-- Location: FF_X29_Y26_N7
\minCounter|countsec0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \minCounter|countsec0~0_combout\,
	ena => \secCounter|Co~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minCounter|countsec0\(0));

-- Location: LCCOMB_X29_Y26_N16
\minCounter|countsec0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minCounter|countsec0~1_combout\ = (\minCounter|countsec0\(3) & (\minCounter|countsec0\(0) $ (\minCounter|countsec0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minCounter|countsec0\(0),
	datac => \minCounter|countsec0\(1),
	datad => \minCounter|countsec0\(3),
	combout => \minCounter|countsec0~1_combout\);

-- Location: FF_X29_Y26_N17
\minCounter|countsec0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \minCounter|countsec0~1_combout\,
	ena => \secCounter|Co~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minCounter|countsec0\(1));

-- Location: LCCOMB_X29_Y26_N10
\minCounter|countsec0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minCounter|countsec0~2_combout\ = (\minCounter|countsec0\(3) & (\minCounter|countsec0\(2) $ (((\minCounter|countsec0\(0) & \minCounter|countsec0\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minCounter|countsec0\(0),
	datab => \minCounter|countsec0\(1),
	datac => \minCounter|countsec0\(2),
	datad => \minCounter|countsec0\(3),
	combout => \minCounter|countsec0~2_combout\);

-- Location: FF_X29_Y26_N11
\minCounter|countsec0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \minCounter|countsec0~2_combout\,
	ena => \secCounter|Co~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minCounter|countsec0\(2));

-- Location: LCCOMB_X29_Y26_N24
\min_digSeg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_digSeg|Mux6~0_combout\ = (\minCounter|countsec0\(3) & (!\minCounter|countsec0\(1) & (\minCounter|countsec0\(0) $ (\minCounter|countsec0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minCounter|countsec0\(3),
	datab => \minCounter|countsec0\(1),
	datac => \minCounter|countsec0\(0),
	datad => \minCounter|countsec0\(2),
	combout => \min_digSeg|Mux6~0_combout\);

-- Location: FF_X29_Y26_N25
\min_digSeg|dis[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_digSeg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_digSeg|dis\(0));

-- Location: LCCOMB_X29_Y26_N18
\min_digSeg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_digSeg|Mux5~0_combout\ = (\minCounter|countsec0\(3) & (\minCounter|countsec0\(2) & (\minCounter|countsec0\(1) $ (\minCounter|countsec0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minCounter|countsec0\(3),
	datab => \minCounter|countsec0\(1),
	datac => \minCounter|countsec0\(0),
	datad => \minCounter|countsec0\(2),
	combout => \min_digSeg|Mux5~0_combout\);

-- Location: FF_X29_Y26_N19
\min_digSeg|dis[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_digSeg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_digSeg|dis\(1));

-- Location: LCCOMB_X29_Y26_N20
\min_digSeg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_digSeg|Mux4~0_combout\ = (\minCounter|countsec0\(3) & (\minCounter|countsec0\(1) & (!\minCounter|countsec0\(0) & !\minCounter|countsec0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minCounter|countsec0\(3),
	datab => \minCounter|countsec0\(1),
	datac => \minCounter|countsec0\(0),
	datad => \minCounter|countsec0\(2),
	combout => \min_digSeg|Mux4~0_combout\);

-- Location: FF_X29_Y26_N21
\min_digSeg|dis[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_digSeg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_digSeg|dis\(2));

-- Location: LCCOMB_X29_Y26_N30
\min_digSeg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_digSeg|Mux3~0_combout\ = (\minCounter|countsec0\(3) & ((\minCounter|countsec0\(1) & (\minCounter|countsec0\(0) & \minCounter|countsec0\(2))) # (!\minCounter|countsec0\(1) & (\minCounter|countsec0\(0) $ (\minCounter|countsec0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minCounter|countsec0\(3),
	datab => \minCounter|countsec0\(1),
	datac => \minCounter|countsec0\(0),
	datad => \minCounter|countsec0\(2),
	combout => \min_digSeg|Mux3~0_combout\);

-- Location: FF_X29_Y26_N31
\min_digSeg|dis[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_digSeg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_digSeg|dis\(3));

-- Location: LCCOMB_X29_Y26_N8
\min_digSeg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_digSeg|Mux2~0_combout\ = (\minCounter|countsec0\(0)) # ((\minCounter|countsec0\(1) & (!\minCounter|countsec0\(3))) # (!\minCounter|countsec0\(1) & ((\minCounter|countsec0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minCounter|countsec0\(3),
	datab => \minCounter|countsec0\(1),
	datac => \minCounter|countsec0\(0),
	datad => \minCounter|countsec0\(2),
	combout => \min_digSeg|Mux2~0_combout\);

-- Location: FF_X29_Y26_N9
\min_digSeg|dis[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_digSeg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_digSeg|dis\(4));

-- Location: LCCOMB_X29_Y26_N26
\min_digSeg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_digSeg|Mux1~0_combout\ = (\minCounter|countsec0\(3) & ((\minCounter|countsec0\(1) & ((\minCounter|countsec0\(0)) # (!\minCounter|countsec0\(2)))) # (!\minCounter|countsec0\(1) & (\minCounter|countsec0\(0) & !\minCounter|countsec0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minCounter|countsec0\(3),
	datab => \minCounter|countsec0\(1),
	datac => \minCounter|countsec0\(0),
	datad => \minCounter|countsec0\(2),
	combout => \min_digSeg|Mux1~0_combout\);

-- Location: FF_X29_Y26_N27
\min_digSeg|dis[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_digSeg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_digSeg|dis\(5));

-- Location: LCCOMB_X29_Y26_N4
\min_digSeg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_digSeg|Mux0~0_combout\ = (\minCounter|countsec0\(3) & ((\minCounter|countsec0\(1) & (\minCounter|countsec0\(0) & \minCounter|countsec0\(2))) # (!\minCounter|countsec0\(1) & ((!\minCounter|countsec0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minCounter|countsec0\(3),
	datab => \minCounter|countsec0\(1),
	datac => \minCounter|countsec0\(0),
	datad => \minCounter|countsec0\(2),
	combout => \min_digSeg|Mux0~0_combout\);

-- Location: FF_X29_Y26_N5
\min_digSeg|dis[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_digSeg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_digSeg|dis\(6));

-- Location: LCCOMB_X28_Y26_N8
\minCounter|countsec1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minCounter|countsec1~0_combout\ = ((\minCounter|countsec1\(1) & !\minCounter|countsec1\(2))) # (!\minCounter|countsec1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minCounter|countsec1\(1),
	datac => \minCounter|countsec1\(0),
	datad => \minCounter|countsec1\(2),
	combout => \minCounter|countsec1~0_combout\);

-- Location: LCCOMB_X28_Y26_N16
\secCounter|Co~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secCounter|Co~2_combout\ = (!\secCounter|countsec1\(1) & !\secCounter|countsec1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \secCounter|countsec1\(1),
	datad => \secCounter|countsec1\(2),
	combout => \secCounter|Co~2_combout\);

-- Location: LCCOMB_X28_Y26_N28
\minCounter|countsec1[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minCounter|countsec1[3]~2_combout\ = (\minCounter|countsec1[3]~1_combout\ & (\secCounter|Equal1~0_combout\ & (!\secCounter|countsec1\(0) & \secCounter|Co~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minCounter|countsec1[3]~1_combout\,
	datab => \secCounter|Equal1~0_combout\,
	datac => \secCounter|countsec1\(0),
	datad => \secCounter|Co~2_combout\,
	combout => \minCounter|countsec1[3]~2_combout\);

-- Location: FF_X28_Y26_N9
\minCounter|countsec1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \minCounter|countsec1~0_combout\,
	ena => \minCounter|countsec1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minCounter|countsec1\(0));

-- Location: LCCOMB_X28_Y26_N4
\minCounter|countsec1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minCounter|countsec1~4_combout\ = (\minCounter|countsec1\(2) & (\minCounter|countsec1\(0) $ (!\minCounter|countsec1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minCounter|countsec1\(0),
	datac => \minCounter|countsec1\(1),
	datad => \minCounter|countsec1\(2),
	combout => \minCounter|countsec1~4_combout\);

-- Location: FF_X28_Y26_N5
\minCounter|countsec1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \minCounter|countsec1~4_combout\,
	ena => \minCounter|countsec1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minCounter|countsec1\(1));

-- Location: LCCOMB_X28_Y26_N2
\minCounter|countsec1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minCounter|countsec1~3_combout\ = (\minCounter|countsec1\(1) & ((\minCounter|countsec1\(0)) # (!\minCounter|countsec1\(2)))) # (!\minCounter|countsec1\(1) & ((\minCounter|countsec1\(2)) # (!\minCounter|countsec1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minCounter|countsec1\(1),
	datac => \minCounter|countsec1\(2),
	datad => \minCounter|countsec1\(0),
	combout => \minCounter|countsec1~3_combout\);

-- Location: FF_X28_Y26_N3
\minCounter|countsec1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \minCounter|countsec1~3_combout\,
	ena => \minCounter|countsec1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minCounter|countsec1\(2));

-- Location: LCCOMB_X24_Y28_N8
\min_tenSeg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tenSeg|Mux6~0_combout\ = (!\minCounter|countsec1\(1) & (\minCounter|countsec1\(2) $ (\minCounter|countsec1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minCounter|countsec1\(2),
	datac => \minCounter|countsec1\(0),
	datad => \minCounter|countsec1\(1),
	combout => \min_tenSeg|Mux6~0_combout\);

-- Location: FF_X24_Y28_N9
\min_tenSeg|dis[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_tenSeg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_tenSeg|dis\(0));

-- Location: LCCOMB_X24_Y28_N2
\min_tenSeg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tenSeg|Mux5~0_combout\ = (!\minCounter|countsec1\(2) & (\minCounter|countsec1\(0) $ (!\minCounter|countsec1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minCounter|countsec1\(2),
	datac => \minCounter|countsec1\(0),
	datad => \minCounter|countsec1\(1),
	combout => \min_tenSeg|Mux5~0_combout\);

-- Location: FF_X24_Y28_N3
\min_tenSeg|dis[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_tenSeg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_tenSeg|dis\(1));

-- Location: LCCOMB_X24_Y28_N20
\min_tenSeg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tenSeg|Mux4~0_combout\ = (\minCounter|countsec1\(2) & (\minCounter|countsec1\(0) & \minCounter|countsec1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minCounter|countsec1\(2),
	datac => \minCounter|countsec1\(0),
	datad => \minCounter|countsec1\(1),
	combout => \min_tenSeg|Mux4~0_combout\);

-- Location: FF_X24_Y28_N21
\min_tenSeg|dis[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_tenSeg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_tenSeg|dis\(2));

-- Location: LCCOMB_X24_Y28_N22
\min_tenSeg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tenSeg|Mux3~0_combout\ = (\minCounter|countsec1\(2) & (!\minCounter|countsec1\(0) & !\minCounter|countsec1\(1))) # (!\minCounter|countsec1\(2) & (\minCounter|countsec1\(0) $ (\minCounter|countsec1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minCounter|countsec1\(2),
	datac => \minCounter|countsec1\(0),
	datad => \minCounter|countsec1\(1),
	combout => \min_tenSeg|Mux3~0_combout\);

-- Location: FF_X24_Y28_N23
\min_tenSeg|dis[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_tenSeg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_tenSeg|dis\(3));

-- Location: LCCOMB_X24_Y28_N0
\min_tenSeg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tenSeg|Mux2~0_combout\ = ((!\minCounter|countsec1\(2) & !\minCounter|countsec1\(1))) # (!\minCounter|countsec1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minCounter|countsec1\(2),
	datac => \minCounter|countsec1\(0),
	datad => \minCounter|countsec1\(1),
	combout => \min_tenSeg|Mux2~0_combout\);

-- Location: FF_X24_Y28_N1
\min_tenSeg|dis[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_tenSeg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_tenSeg|dis\(4));

-- Location: LCCOMB_X24_Y28_N26
\min_tenSeg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tenSeg|Mux1~0_combout\ = (\minCounter|countsec1\(2) & ((\minCounter|countsec1\(1)) # (!\minCounter|countsec1\(0)))) # (!\minCounter|countsec1\(2) & (!\minCounter|countsec1\(0) & \minCounter|countsec1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minCounter|countsec1\(2),
	datac => \minCounter|countsec1\(0),
	datad => \minCounter|countsec1\(1),
	combout => \min_tenSeg|Mux1~0_combout\);

-- Location: FF_X24_Y28_N27
\min_tenSeg|dis[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_tenSeg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_tenSeg|dis\(5));

-- Location: LCCOMB_X24_Y28_N12
\min_tenSeg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tenSeg|Mux0~0_combout\ = (\minCounter|countsec1\(2) & ((!\minCounter|countsec1\(1)))) # (!\minCounter|countsec1\(2) & (!\minCounter|countsec1\(0) & \minCounter|countsec1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minCounter|countsec1\(2),
	datac => \minCounter|countsec1\(0),
	datad => \minCounter|countsec1\(1),
	combout => \min_tenSeg|Mux0~0_combout\);

-- Location: FF_X24_Y28_N13
\min_tenSeg|dis[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divid50M|temp~clkctrl_outclk\,
	d => \min_tenSeg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_tenSeg|dis\(6));

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

ww_dot <= \dot~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;
END structure;


