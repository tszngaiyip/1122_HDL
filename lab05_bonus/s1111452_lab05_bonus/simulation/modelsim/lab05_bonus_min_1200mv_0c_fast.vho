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

-- DATE "03/27/2024 20:22:59"

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

ENTITY 	lab05_bonus IS
    PORT (
	SIN : IN std_logic;
	CLK : IN std_logic;
	Preset : IN std_logic;
	Clear : IN std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic
	);
END lab05_bonus;

-- Design Ports Information
-- QA	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QB	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QC	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QD	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIN	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Preset	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab05_bonus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SIN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Preset : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL ww_QA : std_logic;
SIGNAL ww_QB : std_logic;
SIGNAL ww_QC : std_logic;
SIGNAL ww_QD : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FF0|Q_internal~clear_lutclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \Preset~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \QA~output_o\ : std_logic;
SIGNAL \QB~output_o\ : std_logic;
SIGNAL \QC~output_o\ : std_logic;
SIGNAL \QD~output_o\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \FF3|process_0~2_combout\ : std_logic;
SIGNAL \FF3|process_0~1_combout\ : std_logic;
SIGNAL \FF0|Q_internal~latch_combout\ : std_logic;
SIGNAL \SIN~input_o\ : std_logic;
SIGNAL \FF0|Q_internal~data_lut_combout\ : std_logic;
SIGNAL \FF0|Q_internal~clear_lut_combout\ : std_logic;
SIGNAL \FF0|Q_internal~clear_lutclkctrl_outclk\ : std_logic;
SIGNAL \FF3|process_0~0_combout\ : std_logic;
SIGNAL \FF0|Q_internal~_emulated_q\ : std_logic;
SIGNAL \FF0|Q_internal~head_lut_combout\ : std_logic;
SIGNAL \FF1|Q_internal~data_lut_combout\ : std_logic;
SIGNAL \FF1|Q_internal~_emulated_q\ : std_logic;
SIGNAL \FF1|Q_internal~head_lut_combout\ : std_logic;
SIGNAL \FF2|Q_internal~data_lut_combout\ : std_logic;
SIGNAL \FF2|Q_internal~_emulated_q\ : std_logic;
SIGNAL \FF2|Q_internal~head_lut_combout\ : std_logic;
SIGNAL \FF3|Q_internal~data_lut_combout\ : std_logic;
SIGNAL \FF3|Q_internal~_emulated_q\ : std_logic;
SIGNAL \FF3|Q_internal~head_lut_combout\ : std_logic;
SIGNAL \FF0|ALT_INV_Q_internal~clear_lutclkctrl_outclk\ : std_logic;

BEGIN

ww_SIN <= SIN;
ww_CLK <= CLK;
ww_Preset <= Preset;
ww_Clear <= Clear;
QA <= ww_QA;
QB <= ww_QB;
QC <= ww_QC;
QD <= ww_QD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\FF0|Q_internal~clear_lutclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FF0|Q_internal~clear_lut_combout\);
\FF0|ALT_INV_Q_internal~clear_lutclkctrl_outclk\ <= NOT \FF0|Q_internal~clear_lutclkctrl_outclk\;

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

-- Location: IOIBUF_X0_Y4_N8
\Preset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Preset,
	o => \Preset~input_o\);

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

-- Location: IOOBUF_X0_Y4_N16
\QA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF0|Q_internal~head_lut_combout\,
	devoe => ww_devoe,
	o => \QA~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\QB~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF1|Q_internal~head_lut_combout\,
	devoe => ww_devoe,
	o => \QB~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\QC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF2|Q_internal~head_lut_combout\,
	devoe => ww_devoe,
	o => \QC~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\QD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF3|Q_internal~head_lut_combout\,
	devoe => ww_devoe,
	o => \QD~output_o\);

-- Location: IOIBUF_X9_Y0_N15
\Clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: LCCOMB_X1_Y4_N22
\FF3|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF3|process_0~2_combout\ = (\Preset~input_o\ & !\Clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datad => \Clear~input_o\,
	combout => \FF3|process_0~2_combout\);

-- Location: LCCOMB_X1_Y4_N20
\FF3|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF3|process_0~1_combout\ = (!\Preset~input_o\ & \Clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datad => \Clear~input_o\,
	combout => \FF3|process_0~1_combout\);

-- Location: LCCOMB_X1_Y4_N24
\FF0|Q_internal~latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF0|Q_internal~latch_combout\ = (!\FF3|process_0~2_combout\ & ((\FF3|process_0~1_combout\) # (\FF0|Q_internal~latch_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FF3|process_0~1_combout\,
	datac => \FF3|process_0~2_combout\,
	datad => \FF0|Q_internal~latch_combout\,
	combout => \FF0|Q_internal~latch_combout\);

-- Location: IOIBUF_X0_Y4_N22
\SIN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIN,
	o => \SIN~input_o\);

-- Location: LCCOMB_X1_Y4_N30
\FF0|Q_internal~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF0|Q_internal~data_lut_combout\ = \FF0|Q_internal~latch_combout\ $ (\SIN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FF0|Q_internal~latch_combout\,
	datad => \SIN~input_o\,
	combout => \FF0|Q_internal~data_lut_combout\);

-- Location: LCCOMB_X1_Y4_N8
\FF0|Q_internal~clear_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF0|Q_internal~clear_lut_combout\ = (\FF3|process_0~2_combout\) # (\FF3|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FF3|process_0~2_combout\,
	datad => \FF3|process_0~1_combout\,
	combout => \FF0|Q_internal~clear_lut_combout\);

-- Location: CLKCTRL_G2
\FF0|Q_internal~clear_lutclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FF0|Q_internal~clear_lutclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FF0|Q_internal~clear_lutclkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N2
\FF3|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF3|process_0~0_combout\ = (\Preset~input_o\ & \Clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datad => \Clear~input_o\,
	combout => \FF3|process_0~0_combout\);

-- Location: FF_X1_Y4_N1
\FF0|Q_internal~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \FF0|Q_internal~data_lut_combout\,
	clrn => \FF0|ALT_INV_Q_internal~clear_lutclkctrl_outclk\,
	sload => VCC,
	ena => \FF3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF0|Q_internal~_emulated_q\);

-- Location: LCCOMB_X1_Y4_N0
\FF0|Q_internal~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF0|Q_internal~head_lut_combout\ = (!\FF3|process_0~2_combout\ & ((\FF3|process_0~1_combout\) # (\FF0|Q_internal~latch_combout\ $ (\FF0|Q_internal~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF3|process_0~2_combout\,
	datab => \FF0|Q_internal~latch_combout\,
	datac => \FF0|Q_internal~_emulated_q\,
	datad => \FF3|process_0~1_combout\,
	combout => \FF0|Q_internal~head_lut_combout\);

-- Location: LCCOMB_X1_Y4_N18
\FF1|Q_internal~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF1|Q_internal~data_lut_combout\ = \FF0|Q_internal~latch_combout\ $ (\FF0|Q_internal~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FF0|Q_internal~latch_combout\,
	datad => \FF0|Q_internal~head_lut_combout\,
	combout => \FF1|Q_internal~data_lut_combout\);

-- Location: FF_X1_Y4_N19
\FF1|Q_internal~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FF1|Q_internal~data_lut_combout\,
	clrn => \FF0|ALT_INV_Q_internal~clear_lutclkctrl_outclk\,
	ena => \FF3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF1|Q_internal~_emulated_q\);

-- Location: LCCOMB_X1_Y4_N28
\FF1|Q_internal~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF1|Q_internal~head_lut_combout\ = (!\FF3|process_0~2_combout\ & ((\FF3|process_0~1_combout\) # (\FF0|Q_internal~latch_combout\ $ (\FF1|Q_internal~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF0|Q_internal~latch_combout\,
	datab => \FF3|process_0~1_combout\,
	datac => \FF3|process_0~2_combout\,
	datad => \FF1|Q_internal~_emulated_q\,
	combout => \FF1|Q_internal~head_lut_combout\);

-- Location: LCCOMB_X1_Y4_N6
\FF2|Q_internal~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF2|Q_internal~data_lut_combout\ = \FF0|Q_internal~latch_combout\ $ (\FF1|Q_internal~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FF0|Q_internal~latch_combout\,
	datad => \FF1|Q_internal~head_lut_combout\,
	combout => \FF2|Q_internal~data_lut_combout\);

-- Location: FF_X1_Y4_N7
\FF2|Q_internal~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FF2|Q_internal~data_lut_combout\,
	clrn => \FF0|ALT_INV_Q_internal~clear_lutclkctrl_outclk\,
	ena => \FF3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF2|Q_internal~_emulated_q\);

-- Location: LCCOMB_X1_Y4_N16
\FF2|Q_internal~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF2|Q_internal~head_lut_combout\ = (!\FF3|process_0~2_combout\ & ((\FF3|process_0~1_combout\) # (\FF0|Q_internal~latch_combout\ $ (\FF2|Q_internal~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF0|Q_internal~latch_combout\,
	datab => \FF3|process_0~1_combout\,
	datac => \FF3|process_0~2_combout\,
	datad => \FF2|Q_internal~_emulated_q\,
	combout => \FF2|Q_internal~head_lut_combout\);

-- Location: LCCOMB_X1_Y4_N10
\FF3|Q_internal~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF3|Q_internal~data_lut_combout\ = \FF0|Q_internal~latch_combout\ $ (\FF2|Q_internal~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FF0|Q_internal~latch_combout\,
	datad => \FF2|Q_internal~head_lut_combout\,
	combout => \FF3|Q_internal~data_lut_combout\);

-- Location: FF_X1_Y4_N11
\FF3|Q_internal~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FF3|Q_internal~data_lut_combout\,
	clrn => \FF0|ALT_INV_Q_internal~clear_lutclkctrl_outclk\,
	ena => \FF3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF3|Q_internal~_emulated_q\);

-- Location: LCCOMB_X1_Y4_N12
\FF3|Q_internal~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF3|Q_internal~head_lut_combout\ = (!\FF3|process_0~2_combout\ & ((\FF3|process_0~1_combout\) # (\FF3|Q_internal~_emulated_q\ $ (\FF0|Q_internal~latch_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF3|Q_internal~_emulated_q\,
	datab => \FF0|Q_internal~latch_combout\,
	datac => \FF3|process_0~2_combout\,
	datad => \FF3|process_0~1_combout\,
	combout => \FF3|Q_internal~head_lut_combout\);

ww_QA <= \QA~output_o\;

ww_QB <= \QB~output_o\;

ww_QC <= \QC~output_o\;

ww_QD <= \QD~output_o\;
END structure;


