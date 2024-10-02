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

-- DATE "03/29/2024 10:27:44"

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

ENTITY 	lab06 IS
    PORT (
	Din : IN std_logic;
	CLK : IN std_logic;
	Reset : IN std_logic;
	Qout : OUT std_logic
	);
END lab06;

-- Design Ports Information
-- Reset	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qout	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab06 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Din : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Qout : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Qout~output_o\ : std_logic;
SIGNAL \Din~input_o\ : std_logic;
SIGNAL \present_state.s3~q\ : std_logic;
SIGNAL \next_state.s1~0_combout\ : std_logic;
SIGNAL \present_state.s1~q\ : std_logic;
SIGNAL \next_state~4_combout\ : std_logic;
SIGNAL \present_state.s2~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \present_state.s0~q\ : std_logic;
SIGNAL \OP~0_combout\ : std_logic;
SIGNAL \ALT_INV_OP~0_combout\ : std_logic;

BEGIN

ww_Din <= Din;
ww_CLK <= CLK;
ww_Reset <= Reset;
Qout <= ww_Qout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_OP~0_combout\ <= NOT \OP~0_combout\;

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y21_N9
\Qout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_OP~0_combout\,
	devoe => ww_devoe,
	o => \Qout~output_o\);

-- Location: IOIBUF_X41_Y21_N8
\Din~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din,
	o => \Din~input_o\);

-- Location: FF_X3_Y21_N1
\present_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \present_state.s2~q\,
	sload => VCC,
	ena => \Din~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s3~q\);

-- Location: LCCOMB_X3_Y21_N22
\next_state.s1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.s1~0_combout\ = (\Din~input_o\ & \present_state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Din~input_o\,
	datad => \present_state.s3~q\,
	combout => \next_state.s1~0_combout\);

-- Location: FF_X3_Y21_N23
\present_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s1~q\);

-- Location: LCCOMB_X3_Y21_N4
\next_state~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state~4_combout\ = (\present_state.s1~q\) # (!\present_state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.s1~q\,
	datad => \present_state.s0~q\,
	combout => \next_state~4_combout\);

-- Location: FF_X3_Y21_N5
\present_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state~4_combout\,
	ena => \Din~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s2~q\);

-- Location: LCCOMB_X3_Y21_N2
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Din~input_o\) # ((\present_state.s2~q\) # (\present_state.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Din~input_o\,
	datac => \present_state.s2~q\,
	datad => \present_state.s3~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X3_Y21_N3
\present_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s0~q\);

-- Location: LCCOMB_X3_Y21_N0
\OP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OP~0_combout\ = (\present_state.s3~q\) # (!\present_state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.s0~q\,
	datac => \present_state.s3~q\,
	combout => \OP~0_combout\);

-- Location: IOIBUF_X0_Y10_N1
\Reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

ww_Qout <= \Qout~output_o\;
END structure;


