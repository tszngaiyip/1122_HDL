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

-- DATE "05/17/2024 11:47:43"

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

ENTITY 	PWM_LED IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	duty : IN std_logic_vector(2 DOWNTO 0);
	led : OUT std_logic
	);
END PWM_LED;

-- Design Ports Information
-- led	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF PWM_LED IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_duty : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[5]~26_combout\ : std_logic;
SIGNAL \count[14]~45\ : std_logic;
SIGNAL \count[15]~46_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \duty[1]~input_o\ : std_logic;
SIGNAL \count[0]~16_combout\ : std_logic;
SIGNAL \count[0]~17\ : std_logic;
SIGNAL \count[1]~18_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \count[1]~19\ : std_logic;
SIGNAL \count[2]~20_combout\ : std_logic;
SIGNAL \count[2]~21\ : std_logic;
SIGNAL \count[3]~23\ : std_logic;
SIGNAL \count[4]~24_combout\ : std_logic;
SIGNAL \count[4]~25\ : std_logic;
SIGNAL \count[5]~27\ : std_logic;
SIGNAL \count[6]~28_combout\ : std_logic;
SIGNAL \count[6]~29\ : std_logic;
SIGNAL \count[7]~30_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \count[7]~31\ : std_logic;
SIGNAL \count[8]~32_combout\ : std_logic;
SIGNAL \count[8]~33\ : std_logic;
SIGNAL \count[9]~34_combout\ : std_logic;
SIGNAL \count[9]~35\ : std_logic;
SIGNAL \count[10]~36_combout\ : std_logic;
SIGNAL \count[10]~37\ : std_logic;
SIGNAL \count[11]~39\ : std_logic;
SIGNAL \count[12]~40_combout\ : std_logic;
SIGNAL \count[12]~41\ : std_logic;
SIGNAL \count[13]~43\ : std_logic;
SIGNAL \count[14]~44_combout\ : std_logic;
SIGNAL \count[13]~42_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \count[11]~38_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \duty[0]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \duty[2]~input_o\ : std_logic;
SIGNAL \led~1_combout\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \count[3]~22_combout\ : std_logic;
SIGNAL \led~2_combout\ : std_logic;
SIGNAL count : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_enable <= enable;
ww_duty <= duty;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;

-- Location: FF_X20_Y13_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[5]~26_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: FF_X20_Y13_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[15]~46_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X20_Y13_N10
\count[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~26_combout\ = (count(5) & (!\count[4]~25\)) # (!count(5) & ((\count[4]~25\) # (GND)))
-- \count[5]~27\ = CARRY((!\count[4]~25\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~25\,
	combout => \count[5]~26_combout\,
	cout => \count[5]~27\);

-- Location: LCCOMB_X20_Y13_N28
\count[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[14]~44_combout\ = (count(14) & (\count[13]~43\ $ (GND))) # (!count(14) & (!\count[13]~43\ & VCC))
-- \count[14]~45\ = CARRY((count(14) & !\count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~43\,
	combout => \count[14]~44_combout\,
	cout => \count[14]~45\);

-- Location: LCCOMB_X20_Y13_N30
\count[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~46_combout\ = count(15) $ (\count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	cin => \count[14]~45\,
	combout => \count[15]~46_combout\);

-- Location: LCCOMB_X19_Y13_N30
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((!count(1) & (!count(0) & !count(2)))) # (!count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datac => count(2),
	datad => count(3),
	combout => \LessThan0~3_combout\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOOBUF_X0_Y13_N23
\led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~2_combout\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOIBUF_X0_Y12_N1
\duty[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(1),
	o => \duty[1]~input_o\);

-- Location: LCCOMB_X20_Y13_N0
\count[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~16_combout\ = count(0) $ (VCC)
-- \count[0]~17\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~16_combout\,
	cout => \count[0]~17\);

-- Location: LCCOMB_X20_Y13_N2
\count[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~18_combout\ = (count(1) & (!\count[0]~17\)) # (!count(1) & ((\count[0]~17\) # (GND)))
-- \count[1]~19\ = CARRY((!\count[0]~17\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~17\,
	combout => \count[1]~18_combout\,
	cout => \count[1]~19\);

-- Location: IOIBUF_X0_Y13_N15
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X20_Y13_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[1]~18_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X20_Y13_N4
\count[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~20_combout\ = (count(2) & (\count[1]~19\ $ (GND))) # (!count(2) & (!\count[1]~19\ & VCC))
-- \count[2]~21\ = CARRY((count(2) & !\count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~19\,
	combout => \count[2]~20_combout\,
	cout => \count[2]~21\);

-- Location: FF_X20_Y13_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[2]~20_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X20_Y13_N6
\count[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~22_combout\ = (count(3) & (!\count[2]~21\)) # (!count(3) & ((\count[2]~21\) # (GND)))
-- \count[3]~23\ = CARRY((!\count[2]~21\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~21\,
	combout => \count[3]~22_combout\,
	cout => \count[3]~23\);

-- Location: LCCOMB_X20_Y13_N8
\count[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~24_combout\ = (count(4) & (\count[3]~23\ $ (GND))) # (!count(4) & (!\count[3]~23\ & VCC))
-- \count[4]~25\ = CARRY((count(4) & !\count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~23\,
	combout => \count[4]~24_combout\,
	cout => \count[4]~25\);

-- Location: FF_X20_Y13_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[4]~24_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X20_Y13_N12
\count[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~28_combout\ = (count(6) & (\count[5]~27\ $ (GND))) # (!count(6) & (!\count[5]~27\ & VCC))
-- \count[6]~29\ = CARRY((count(6) & !\count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~27\,
	combout => \count[6]~28_combout\,
	cout => \count[6]~29\);

-- Location: FF_X20_Y13_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[6]~28_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X20_Y13_N14
\count[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~30_combout\ = (count(7) & (!\count[6]~29\)) # (!count(7) & ((\count[6]~29\) # (GND)))
-- \count[7]~31\ = CARRY((!\count[6]~29\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~29\,
	combout => \count[7]~30_combout\,
	cout => \count[7]~31\);

-- Location: FF_X20_Y13_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[7]~30_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X19_Y13_N24
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(5) & (!count(6) & (!count(4) & !count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(6),
	datac => count(4),
	datad => count(7),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y13_N16
\count[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[8]~32_combout\ = (count(8) & (\count[7]~31\ $ (GND))) # (!count(8) & (!\count[7]~31\ & VCC))
-- \count[8]~33\ = CARRY((count(8) & !\count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~31\,
	combout => \count[8]~32_combout\,
	cout => \count[8]~33\);

-- Location: FF_X20_Y13_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[8]~32_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X20_Y13_N18
\count[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~34_combout\ = (count(9) & (!\count[8]~33\)) # (!count(9) & ((\count[8]~33\) # (GND)))
-- \count[9]~35\ = CARRY((!\count[8]~33\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~33\,
	combout => \count[9]~34_combout\,
	cout => \count[9]~35\);

-- Location: FF_X20_Y13_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[9]~34_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X20_Y13_N20
\count[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[10]~36_combout\ = (count(10) & (\count[9]~35\ $ (GND))) # (!count(10) & (!\count[9]~35\ & VCC))
-- \count[10]~37\ = CARRY((count(10) & !\count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~35\,
	combout => \count[10]~36_combout\,
	cout => \count[10]~37\);

-- Location: FF_X20_Y13_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[10]~36_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X20_Y13_N22
\count[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[11]~38_combout\ = (count(11) & (!\count[10]~37\)) # (!count(11) & ((\count[10]~37\) # (GND)))
-- \count[11]~39\ = CARRY((!\count[10]~37\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~37\,
	combout => \count[11]~38_combout\,
	cout => \count[11]~39\);

-- Location: LCCOMB_X20_Y13_N24
\count[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[12]~40_combout\ = (count(12) & (\count[11]~39\ $ (GND))) # (!count(12) & (!\count[11]~39\ & VCC))
-- \count[12]~41\ = CARRY((count(12) & !\count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~39\,
	combout => \count[12]~40_combout\,
	cout => \count[12]~41\);

-- Location: FF_X20_Y13_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[12]~40_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X20_Y13_N26
\count[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[13]~42_combout\ = (count(13) & (!\count[12]~41\)) # (!count(13) & ((\count[12]~41\) # (GND)))
-- \count[13]~43\ = CARRY((!\count[12]~41\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~41\,
	combout => \count[13]~42_combout\,
	cout => \count[13]~43\);

-- Location: FF_X20_Y13_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[14]~44_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: FF_X20_Y13_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[13]~42_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X19_Y13_N4
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!count(15) & (!count(14) & (!count(12) & !count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(14),
	datac => count(12),
	datad => count(13),
	combout => \LessThan0~2_combout\);

-- Location: FF_X20_Y13_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[11]~38_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X19_Y13_N10
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!count(10) & (!count(9) & (!count(8) & !count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(9),
	datac => count(8),
	datad => count(11),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y13_N16
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!\LessThan0~1_combout\) # (!\LessThan0~2_combout\)) # (!\LessThan0~0_combout\)) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: FF_X20_Y13_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[0]~16_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: IOIBUF_X0_Y13_N8
\duty[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(0),
	o => \duty[0]~input_o\);

-- Location: LCCOMB_X19_Y13_N0
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (count(1) & (((count(0) & !\duty[0]~input_o\)) # (!\duty[1]~input_o\))) # (!count(1) & (!\duty[1]~input_o\ & (count(0) & !\duty[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \duty[1]~input_o\,
	datac => count(0),
	datad => \duty[0]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: IOIBUF_X0_Y12_N15
\duty[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(2),
	o => \duty[2]~input_o\);

-- Location: LCCOMB_X19_Y13_N26
\led~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led~1_combout\ = (count(2) & ((\LessThan1~0_combout\) # (!\duty[2]~input_o\))) # (!count(2) & (\LessThan1~0_combout\ & !\duty[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \LessThan1~0_combout\,
	datad => \duty[2]~input_o\,
	combout => \led~1_combout\);

-- Location: LCCOMB_X19_Y13_N22
\led~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (\LessThan0~0_combout\ & (\LessThan0~1_combout\ & \LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	combout => \led~0_combout\);

-- Location: FF_X20_Y13_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \count[3]~22_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X19_Y13_N28
\led~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led~2_combout\ = (\enable~input_o\ & ((\led~1_combout\) # ((count(3)) # (!\led~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led~1_combout\,
	datab => \enable~input_o\,
	datac => \led~0_combout\,
	datad => count(3),
	combout => \led~2_combout\);

ww_led <= \led~output_o\;
END structure;


