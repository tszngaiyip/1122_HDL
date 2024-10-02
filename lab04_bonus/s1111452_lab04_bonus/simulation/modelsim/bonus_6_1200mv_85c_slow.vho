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

-- DATE "03/15/2024 11:51:36"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bonus IS
    PORT (
	d0 : IN std_logic;
	d1 : IN std_logic;
	d2 : IN std_logic;
	d3 : IN std_logic;
	d4 : IN std_logic;
	d5 : IN std_logic;
	d6 : IN std_logic;
	d7 : IN std_logic;
	en : IN std_logic;
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic
	);
END bonus;

-- Design Ports Information
-- d0	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d6	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d5	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d7	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF bonus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d0 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_d4 : std_logic;
SIGNAL ww_d5 : std_logic;
SIGNAL ww_d6 : std_logic;
SIGNAL ww_d7 : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL \d0~input_o\ : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \d6~input_o\ : std_logic;
SIGNAL \d4~input_o\ : std_logic;
SIGNAL \d7~input_o\ : std_logic;
SIGNAL \d5~input_o\ : std_logic;
SIGNAL \a~0_combout\ : std_logic;
SIGNAL \a~1_combout\ : std_logic;
SIGNAL \d3~input_o\ : std_logic;
SIGNAL \d2~input_o\ : std_logic;
SIGNAL \b~0_combout\ : std_logic;
SIGNAL \b~1_combout\ : std_logic;
SIGNAL \d1~input_o\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;

BEGIN

ww_d0 <= d0;
ww_d1 <= d1;
ww_d2 <= d2;
ww_d3 <= d3;
ww_d4 <= d4;
ww_d5 <= d5;
ww_d6 <= d6;
ww_d7 <= d7;
ww_en <= en;
a <= ww_a;
b <= ww_b;
c <= ww_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X7_Y0_N9
\a~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a~1_combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\b~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b~1_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~0_combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOIBUF_X0_Y25_N1
\en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\d6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d6,
	o => \d6~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\d4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d4,
	o => \d4~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\d7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d7,
	o => \d7~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\d5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d5,
	o => \d5~input_o\);

-- Location: LCCOMB_X1_Y25_N0
\a~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a~0_combout\ = (!\d7~input_o\ & !\d5~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d7~input_o\,
	datad => \d5~input_o\,
	combout => \a~0_combout\);

-- Location: LCCOMB_X1_Y25_N2
\a~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a~1_combout\ = (\en~input_o\ & ((\d6~input_o\) # ((\d4~input_o\) # (!\a~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \d6~input_o\,
	datac => \d4~input_o\,
	datad => \a~0_combout\,
	combout => \a~1_combout\);

-- Location: IOIBUF_X0_Y23_N8
\d3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3,
	o => \d3~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\d2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2,
	o => \d2~input_o\);

-- Location: LCCOMB_X1_Y25_N12
\b~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b~0_combout\ = (\d7~input_o\) # ((\d6~input_o\) # ((\d3~input_o\) # (\d2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d7~input_o\,
	datab => \d6~input_o\,
	datac => \d3~input_o\,
	datad => \d2~input_o\,
	combout => \b~0_combout\);

-- Location: LCCOMB_X1_Y25_N14
\b~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b~1_combout\ = (\en~input_o\ & \b~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datad => \b~0_combout\,
	combout => \b~1_combout\);

-- Location: IOIBUF_X0_Y22_N15
\d1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1,
	o => \d1~input_o\);

-- Location: LCCOMB_X1_Y25_N24
\c~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c~0_combout\ = (\en~input_o\ & ((\d1~input_o\) # ((\d3~input_o\) # (!\a~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \d1~input_o\,
	datac => \d3~input_o\,
	datad => \a~0_combout\,
	combout => \c~0_combout\);

-- Location: IOIBUF_X0_Y22_N8
\d0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0,
	o => \d0~input_o\);

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;
END structure;


