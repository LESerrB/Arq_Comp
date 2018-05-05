-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "10/26/2017 00:34:42"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	interr_trans IS
    PORT (
	dir_interrupcion : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	RESET : IN std_logic;
	VECT : IN std_logic;
	B : IN std_logic;
	A : IN std_logic;
	dir_transformacion : OUT std_logic_vector(3 DOWNTO 0);
	MAP1 : IN std_logic
	);
END interr_trans;

-- Design Ports Information
-- dir_interrupcion[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_interrupcion[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_interrupcion[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_interrupcion[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_transformacion[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_transformacion[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_transformacion[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_transformacion[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VECT	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAP1	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF interr_trans IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dir_interrupcion : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_VECT : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_dir_transformacion : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MAP1 : std_logic;
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \dir_interrupcion[3]~output_o\ : std_logic;
SIGNAL \dir_interrupcion[2]~output_o\ : std_logic;
SIGNAL \dir_interrupcion[1]~output_o\ : std_logic;
SIGNAL \dir_interrupcion[0]~output_o\ : std_logic;
SIGNAL \dir_transformacion[3]~output_o\ : std_logic;
SIGNAL \dir_transformacion[2]~output_o\ : std_logic;
SIGNAL \dir_transformacion[1]~output_o\ : std_logic;
SIGNAL \dir_transformacion[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst4|valor[3]~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \VECT~input_o\ : std_logic;
SIGNAL \inst4|valor[3]~enfeeder_combout\ : std_logic;
SIGNAL \inst4|valor[3]~en_q\ : std_logic;
SIGNAL \inst4|valor[2]~0_combout\ : std_logic;
SIGNAL \inst4|valor[2]~enfeeder_combout\ : std_logic;
SIGNAL \inst4|valor[2]~en_q\ : std_logic;
SIGNAL \inst4|valor[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|valor[1]~enfeeder_combout\ : std_logic;
SIGNAL \inst4|valor[1]~en_q\ : std_logic;
SIGNAL \inst4|valor[0]~enfeeder_combout\ : std_logic;
SIGNAL \inst4|valor[0]~en_q\ : std_logic;
SIGNAL \MAP1~input_o\ : std_logic;
SIGNAL \inst3|valor[3]~enfeeder_combout\ : std_logic;
SIGNAL \inst3|valor[3]~en_q\ : std_logic;
SIGNAL \inst3|valor[2]~enfeeder_combout\ : std_logic;
SIGNAL \inst3|valor[2]~en_q\ : std_logic;
SIGNAL \inst3|valor[1]~enfeeder_combout\ : std_logic;
SIGNAL \inst3|valor[1]~en_q\ : std_logic;
SIGNAL \inst1|comb~0_combout\ : std_logic;
SIGNAL \inst3|valor[0]~enfeeder_combout\ : std_logic;
SIGNAL \inst3|valor[0]~en_q\ : std_logic;
SIGNAL \inst3|valor\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|direccion\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|dir_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|valor\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ALT_INV_valor[0]~en_q\ : std_logic;
SIGNAL \inst3|ALT_INV_valor[1]~en_q\ : std_logic;
SIGNAL \inst3|ALT_INV_valor[2]~en_q\ : std_logic;
SIGNAL \inst3|ALT_INV_valor[3]~en_q\ : std_logic;
SIGNAL \inst4|ALT_INV_valor[0]~en_q\ : std_logic;
SIGNAL \inst4|ALT_INV_valor[1]~en_q\ : std_logic;
SIGNAL \inst4|ALT_INV_valor[2]~en_q\ : std_logic;
SIGNAL \inst4|ALT_INV_valor[3]~en_q\ : std_logic;

BEGIN

dir_interrupcion <= ww_dir_interrupcion;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_VECT <= VECT;
ww_B <= B;
ww_A <= A;
dir_transformacion <= ww_dir_transformacion;
ww_MAP1 <= MAP1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst3|ALT_INV_valor[0]~en_q\ <= NOT \inst3|valor[0]~en_q\;
\inst3|ALT_INV_valor[1]~en_q\ <= NOT \inst3|valor[1]~en_q\;
\inst3|ALT_INV_valor[2]~en_q\ <= NOT \inst3|valor[2]~en_q\;
\inst3|ALT_INV_valor[3]~en_q\ <= NOT \inst3|valor[3]~en_q\;
\inst4|ALT_INV_valor[0]~en_q\ <= NOT \inst4|valor[0]~en_q\;
\inst4|ALT_INV_valor[1]~en_q\ <= NOT \inst4|valor[1]~en_q\;
\inst4|ALT_INV_valor[2]~en_q\ <= NOT \inst4|valor[2]~en_q\;
\inst4|ALT_INV_valor[3]~en_q\ <= NOT \inst4|valor[3]~en_q\;

-- Location: LCCOMB_X1_Y15_N6
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (!\A~input_o\ & \B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~input_o\,
	datac => \B~input_o\,
	combout => \inst1|process_0~0_combout\);

-- Location: IOOBUF_X0_Y12_N9
\dir_interrupcion[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|valor\(3),
	oe => \inst4|ALT_INV_valor[3]~en_q\,
	devoe => ww_devoe,
	o => \dir_interrupcion[3]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\dir_interrupcion[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|valor\(2),
	oe => \inst4|ALT_INV_valor[2]~en_q\,
	devoe => ww_devoe,
	o => \dir_interrupcion[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\dir_interrupcion[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|valor\(1),
	oe => \inst4|ALT_INV_valor[1]~en_q\,
	devoe => ww_devoe,
	o => \dir_interrupcion[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\dir_interrupcion[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|valor\(0),
	oe => \inst4|ALT_INV_valor[0]~en_q\,
	devoe => ww_devoe,
	o => \dir_interrupcion[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\dir_transformacion[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|valor\(3),
	oe => \inst3|ALT_INV_valor[3]~en_q\,
	devoe => ww_devoe,
	o => \dir_transformacion[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\dir_transformacion[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|valor\(2),
	oe => \inst3|ALT_INV_valor[2]~en_q\,
	devoe => ww_devoe,
	o => \dir_transformacion[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\dir_transformacion[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|valor\(1),
	oe => \inst3|ALT_INV_valor[1]~en_q\,
	devoe => ww_devoe,
	o => \dir_transformacion[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\dir_transformacion[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|valor\(0),
	oe => \inst3|ALT_INV_valor[0]~en_q\,
	devoe => ww_devoe,
	o => \dir_transformacion[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X53_Y17_N1
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X1_Y15_N12
\inst|dir_out[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dir_out\(2) = (\A~input_o\) # (\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~input_o\,
	datac => \B~input_o\,
	combout => \inst|dir_out\(2));

-- Location: LCCOMB_X1_Y15_N24
\inst4|valor[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|valor[3]~feeder_combout\ = \inst|dir_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dir_out\(2),
	combout => \inst4|valor[3]~feeder_combout\);

-- Location: IOIBUF_X0_Y16_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X1_Y15_N25
\inst4|valor[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|valor[3]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor\(3));

-- Location: IOIBUF_X0_Y12_N1
\VECT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VECT,
	o => \VECT~input_o\);

-- Location: LCCOMB_X1_Y12_N16
\inst4|valor[3]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|valor[3]~enfeeder_combout\ = \VECT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VECT~input_o\,
	combout => \inst4|valor[3]~enfeeder_combout\);

-- Location: FF_X1_Y12_N17
\inst4|valor[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|valor[3]~enfeeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor[3]~en_q\);

-- Location: LCCOMB_X1_Y15_N26
\inst4|valor[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|valor[2]~0_combout\ = !\inst|dir_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dir_out\(2),
	combout => \inst4|valor[2]~0_combout\);

-- Location: FF_X1_Y15_N27
\inst4|valor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|valor[2]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor\(2));

-- Location: LCCOMB_X1_Y12_N10
\inst4|valor[2]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|valor[2]~enfeeder_combout\ = \VECT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VECT~input_o\,
	combout => \inst4|valor[2]~enfeeder_combout\);

-- Location: FF_X1_Y12_N11
\inst4|valor[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|valor[2]~enfeeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor[2]~en_q\);

-- Location: LCCOMB_X1_Y10_N16
\inst4|valor[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|valor[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst4|valor[1]~feeder_combout\);

-- Location: FF_X1_Y10_N17
\inst4|valor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|valor[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor\(1));

-- Location: LCCOMB_X1_Y12_N28
\inst4|valor[1]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|valor[1]~enfeeder_combout\ = \VECT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VECT~input_o\,
	combout => \inst4|valor[1]~enfeeder_combout\);

-- Location: FF_X1_Y12_N29
\inst4|valor[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|valor[1]~enfeeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor[1]~en_q\);

-- Location: FF_X1_Y15_N13
\inst4|valor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|dir_out\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor\(0));

-- Location: LCCOMB_X1_Y12_N14
\inst4|valor[0]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|valor[0]~enfeeder_combout\ = \VECT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VECT~input_o\,
	combout => \inst4|valor[0]~enfeeder_combout\);

-- Location: FF_X1_Y12_N15
\inst4|valor[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|valor[0]~enfeeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor[0]~en_q\);

-- Location: LCCOMB_X1_Y15_N22
\inst1|direccion[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|direccion\(3) = (\inst|dir_out\(2) & ((\B~input_o\) # (\inst1|direccion\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dir_out\(2),
	datab => \B~input_o\,
	datac => \inst1|direccion\(3),
	combout => \inst1|direccion\(3));

-- Location: FF_X1_Y15_N23
\inst3|valor[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|direccion\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor\(3));

-- Location: IOIBUF_X0_Y23_N15
\MAP1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAP1,
	o => \MAP1~input_o\);

-- Location: LCCOMB_X1_Y11_N16
\inst3|valor[3]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|valor[3]~enfeeder_combout\ = \MAP1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MAP1~input_o\,
	combout => \inst3|valor[3]~enfeeder_combout\);

-- Location: FF_X1_Y11_N17
\inst3|valor[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|valor[3]~enfeeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor[3]~en_q\);

-- Location: LCCOMB_X1_Y15_N16
\inst1|direccion[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|direccion\(2) = (\A~input_o\ & ((\B~input_o\) # (\inst1|direccion\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~input_o\,
	datac => \B~input_o\,
	datad => \inst1|direccion\(2),
	combout => \inst1|direccion\(2));

-- Location: FF_X1_Y15_N17
\inst3|valor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|direccion\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor\(2));

-- Location: LCCOMB_X1_Y11_N26
\inst3|valor[2]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|valor[2]~enfeeder_combout\ = \MAP1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MAP1~input_o\,
	combout => \inst3|valor[2]~enfeeder_combout\);

-- Location: FF_X1_Y11_N27
\inst3|valor[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|valor[2]~enfeeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor[2]~en_q\);

-- Location: LCCOMB_X1_Y15_N18
\inst1|direccion[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|direccion\(1) = (!\B~input_o\ & ((\inst1|direccion\(1)) # (!\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~input_o\,
	datac => \B~input_o\,
	datad => \inst1|direccion\(1),
	combout => \inst1|direccion\(1));

-- Location: FF_X1_Y15_N19
\inst3|valor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|direccion\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor\(1));

-- Location: LCCOMB_X1_Y11_N4
\inst3|valor[1]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|valor[1]~enfeeder_combout\ = \MAP1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MAP1~input_o\,
	combout => \inst3|valor[1]~enfeeder_combout\);

-- Location: FF_X1_Y11_N5
\inst3|valor[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|valor[1]~enfeeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor[1]~en_q\);

-- Location: LCCOMB_X1_Y15_N8
\inst1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|comb~0_combout\ = \A~input_o\ $ (\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~input_o\,
	datac => \B~input_o\,
	combout => \inst1|comb~0_combout\);

-- Location: LCCOMB_X1_Y15_N20
\inst1|direccion[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|direccion\(0) = (!\inst1|process_0~0_combout\ & ((\inst1|direccion\(0)) # (!\inst1|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datac => \inst1|comb~0_combout\,
	datad => \inst1|direccion\(0),
	combout => \inst1|direccion\(0));

-- Location: FF_X1_Y15_N21
\inst3|valor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|direccion\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor\(0));

-- Location: LCCOMB_X1_Y11_N14
\inst3|valor[0]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|valor[0]~enfeeder_combout\ = \MAP1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MAP1~input_o\,
	combout => \inst3|valor[0]~enfeeder_combout\);

-- Location: FF_X1_Y11_N15
\inst3|valor[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|valor[0]~enfeeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor[0]~en_q\);

ww_dir_interrupcion(3) <= \dir_interrupcion[3]~output_o\;

ww_dir_interrupcion(2) <= \dir_interrupcion[2]~output_o\;

ww_dir_interrupcion(1) <= \dir_interrupcion[1]~output_o\;

ww_dir_interrupcion(0) <= \dir_interrupcion[0]~output_o\;

ww_dir_transformacion(3) <= \dir_transformacion[3]~output_o\;

ww_dir_transformacion(2) <= \dir_transformacion[2]~output_o\;

ww_dir_transformacion(1) <= \dir_transformacion[1]~output_o\;

ww_dir_transformacion(0) <= \dir_transformacion[0]~output_o\;
END structure;


