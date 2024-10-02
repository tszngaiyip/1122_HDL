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

-- DATE "03/22/2024 11:15:51"

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

ENTITY 	lab05 IS
    PORT (
	DIN : IN std_logic;
	CLK : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic
	);
END lab05;

-- Design Ports Information
-- S0	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab05 IS
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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL ww_S5 : std_logic;
SIGNAL ww_S6 : std_logic;
SIGNAL ww_S7 : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S4~output_o\ : std_logic;
SIGNAL \S5~output_o\ : std_logic;
SIGNAL \S6~output_o\ : std_logic;
SIGNAL \S7~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIN~input_o\ : std_logic;
SIGNAL \FF0|Q~q\ : std_logic;
SIGNAL \FF1|Q~feeder_combout\ : std_logic;
SIGNAL \FF1|Q~q\ : std_logic;
SIGNAL \FF2|Q~feeder_combout\ : std_logic;
SIGNAL \FF2|Q~q\ : std_logic;
SIGNAL \FF3|Q~feeder_combout\ : std_logic;
SIGNAL \FF3|Q~q\ : std_logic;
SIGNAL \FF4|Q~feeder_combout\ : std_logic;
SIGNAL \FF4|Q~q\ : std_logic;
SIGNAL \FF5|Q~feeder_combout\ : std_logic;
SIGNAL \FF5|Q~q\ : std_logic;
SIGNAL \FF6|Q~feeder_combout\ : std_logic;
SIGNAL \FF6|Q~q\ : std_logic;
SIGNAL \FF7|Q~feeder_combout\ : std_logic;
SIGNAL \FF7|Q~q\ : std_logic;

BEGIN

ww_DIN <= DIN;
ww_CLK <= CLK;
S0 <= ww_S0;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
S4 <= ww_S4;
S5 <= ww_S5;
S6 <= ww_S6;
S7 <= ww_S7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X7_Y0_N23
\S0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF7|Q~q\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\S1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF6|Q~q\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\S2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF5|Q~q\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\S3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF4|Q~q\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\S4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF3|Q~q\,
	devoe => ww_devoe,
	o => \S4~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\S5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF2|Q~q\,
	devoe => ww_devoe,
	o => \S5~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\S6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF1|Q~q\,
	devoe => ww_devoe,
	o => \S6~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\S7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF0|Q~q\,
	devoe => ww_devoe,
	o => \S7~output_o\);

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

-- Location: IOIBUF_X0_Y23_N1
\DIN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN,
	o => \DIN~input_o\);

-- Location: FF_X1_Y26_N7
\FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF0|Q~q\);

-- Location: LCCOMB_X1_Y26_N12
\FF1|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF1|Q~feeder_combout\ = \FF0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FF0|Q~q\,
	combout => \FF1|Q~feeder_combout\);

-- Location: FF_X1_Y26_N13
\FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FF1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF1|Q~q\);

-- Location: LCCOMB_X1_Y26_N10
\FF2|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF2|Q~feeder_combout\ = \FF1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FF1|Q~q\,
	combout => \FF2|Q~feeder_combout\);

-- Location: FF_X1_Y26_N11
\FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FF2|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF2|Q~q\);

-- Location: LCCOMB_X1_Y26_N0
\FF3|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF3|Q~feeder_combout\ = \FF2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FF2|Q~q\,
	combout => \FF3|Q~feeder_combout\);

-- Location: FF_X1_Y26_N1
\FF3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FF3|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF3|Q~q\);

-- Location: LCCOMB_X1_Y26_N30
\FF4|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF4|Q~feeder_combout\ = \FF3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FF3|Q~q\,
	combout => \FF4|Q~feeder_combout\);

-- Location: FF_X1_Y26_N31
\FF4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FF4|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF4|Q~q\);

-- Location: LCCOMB_X1_Y26_N28
\FF5|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF5|Q~feeder_combout\ = \FF4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FF4|Q~q\,
	combout => \FF5|Q~feeder_combout\);

-- Location: FF_X1_Y26_N29
\FF5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FF5|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF5|Q~q\);

-- Location: LCCOMB_X1_Y26_N2
\FF6|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF6|Q~feeder_combout\ = \FF5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FF5|Q~q\,
	combout => \FF6|Q~feeder_combout\);

-- Location: FF_X1_Y26_N3
\FF6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FF6|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF6|Q~q\);

-- Location: LCCOMB_X1_Y26_N24
\FF7|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FF7|Q~feeder_combout\ = \FF6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FF6|Q~q\,
	combout => \FF7|Q~feeder_combout\);

-- Location: FF_X1_Y26_N25
\FF7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FF7|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF7|Q~q\);

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_S4 <= \S4~output_o\;

ww_S5 <= \S5~output_o\;

ww_S6 <= \S6~output_o\;

ww_S7 <= \S7~output_o\;
END structure;


