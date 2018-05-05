-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/26/2017 15:26:21"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	secuen_completo IS
    PORT (
	est_pres : OUT std_logic_vector(3 DOWNTO 0);
	X : IN std_logic;
	Y : IN std_logic;
	sensa_boton : IN std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	B : IN std_logic;
	A : IN std_logic;
	SALIDAS : OUT std_logic_vector(3 DOWNTO 0)
	);
END secuen_completo;

-- Design Ports Information
-- est_pres[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est_pres[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est_pres[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est_pres[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDAS[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDAS[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDAS[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDAS[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensa_boton	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF secuen_completo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_est_pres : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_sensa_boton : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_SALIDAS : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|reloj~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \est_pres[3]~output_o\ : std_logic;
SIGNAL \est_pres[2]~output_o\ : std_logic;
SIGNAL \est_pres[1]~output_o\ : std_logic;
SIGNAL \est_pres[0]~output_o\ : std_logic;
SIGNAL \SALIDAS[3]~output_o\ : std_logic;
SIGNAL \SALIDAS[2]~output_o\ : std_logic;
SIGNAL \SALIDAS[1]~output_o\ : std_logic;
SIGNAL \SALIDAS[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \sensa_boton~input_o\ : std_logic;
SIGNAL \inst17|esiguiente~feeder_combout\ : std_logic;
SIGNAL \inst17|esiguiente~q\ : std_logic;
SIGNAL \inst17|reloj~0_combout\ : std_logic;
SIGNAL \inst17|reloj~q\ : std_logic;
SIGNAL \inst17|reloj~clkctrl_outclk\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst5|valor[0]~0_combout\ : std_logic;
SIGNAL \inst3|valor_interno[2]~0_combout\ : std_logic;
SIGNAL \inst8|Equal0~1_combout\ : std_logic;
SIGNAL \inst8|Equal0~2_combout\ : std_logic;
SIGNAL \inst8|Equal0~3_combout\ : std_logic;
SIGNAL \inst8|palabra[12]~7_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|palabra[12]~5_combout\ : std_logic;
SIGNAL \inst8|comb~23_combout\ : std_logic;
SIGNAL \inst3|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst6|Y[1]~6_combout\ : std_logic;
SIGNAL \inst6|Y[1]~7_combout\ : std_logic;
SIGNAL \inst8|Equal0~4_combout\ : std_logic;
SIGNAL \inst8|palabra[6]~19_combout\ : std_logic;
SIGNAL \inst8|palabra[6]~20_combout\ : std_logic;
SIGNAL \inst8|palabra[12]~6_combout\ : std_logic;
SIGNAL \inst8|comb~17_combout\ : std_logic;
SIGNAL \inst8|comb~16_combout\ : std_logic;
SIGNAL \inst13|valor~q\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \inst8|palabra[5]~21_combout\ : std_logic;
SIGNAL \inst8|palabra[5]~26_combout\ : std_logic;
SIGNAL \inst8|palabra[8]~17_combout\ : std_logic;
SIGNAL \inst8|palabra[5]~22_combout\ : std_logic;
SIGNAL \inst8|palabra[12]~25_combout\ : std_logic;
SIGNAL \inst8|comb~19_combout\ : std_logic;
SIGNAL \inst8|comb~18_combout\ : std_logic;
SIGNAL \inst14|salida_mux~0_combout\ : std_logic;
SIGNAL \inst6|Y[2]~3_combout\ : std_logic;
SIGNAL \inst8|palabra[9]~24_combout\ : std_logic;
SIGNAL \inst8|palabra[9]~23_combout\ : std_logic;
SIGNAL \inst8|palabra[12]~14_combout\ : std_logic;
SIGNAL \inst8|comb~21_combout\ : std_logic;
SIGNAL \inst8|comb~22_combout\ : std_logic;
SIGNAL \inst6|Y[0]~8_combout\ : std_logic;
SIGNAL \inst6|Y[0]~9_combout\ : std_logic;
SIGNAL \inst8|Equal0~6_combout\ : std_logic;
SIGNAL \inst8|Equal0~5_combout\ : std_logic;
SIGNAL \inst8|palabra[8]~18_combout\ : std_logic;
SIGNAL \inst8|comb~15_combout\ : std_logic;
SIGNAL \inst8|comb~14_combout\ : std_logic;
SIGNAL \inst6|Y[2]~2_combout\ : std_logic;
SIGNAL \inst2|Add0~1_combout\ : std_logic;
SIGNAL \inst8|comb~20_combout\ : std_logic;
SIGNAL \inst6|Y[2]~4_combout\ : std_logic;
SIGNAL \inst6|Y[2]~5_combout\ : std_logic;
SIGNAL \inst8|palabra[2]~9_combout\ : std_logic;
SIGNAL \inst8|palabra[7]~15_combout\ : std_logic;
SIGNAL \inst8|palabra[7]~16_combout\ : std_logic;
SIGNAL \inst8|comb~13_combout\ : std_logic;
SIGNAL \inst8|comb~12_combout\ : std_logic;
SIGNAL \inst8|comb~10_combout\ : std_logic;
SIGNAL \inst8|comb~11_combout\ : std_logic;
SIGNAL \inst6|Y[3]~0_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst7|palabra[3]~0_combout\ : std_logic;
SIGNAL \inst6|Y[3]~1_combout\ : std_logic;
SIGNAL \inst8|palabra[3]~4_combout\ : std_logic;
SIGNAL \inst8|comb~3_combout\ : std_logic;
SIGNAL \inst8|comb~2_combout\ : std_logic;
SIGNAL \inst8|palabra[2]~8_combout\ : std_logic;
SIGNAL \inst8|palabra[2]~10_combout\ : std_logic;
SIGNAL \inst8|comb~5_combout\ : std_logic;
SIGNAL \inst8|comb~4_combout\ : std_logic;
SIGNAL \inst8|palabra[1]~11_combout\ : std_logic;
SIGNAL \inst8|palabra[1]~12_combout\ : std_logic;
SIGNAL \inst8|comb~7_combout\ : std_logic;
SIGNAL \inst8|comb~6_combout\ : std_logic;
SIGNAL \inst8|palabra[0]~13_combout\ : std_logic;
SIGNAL \inst8|comb~9_combout\ : std_logic;
SIGNAL \inst8|comb~8_combout\ : std_logic;
SIGNAL \inst5|valor\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|valor\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|valor\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|dir_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|palabra\ : std_logic_vector(12 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

est_pres <= ww_est_pres;
ww_X <= X;
ww_Y <= Y;
ww_sensa_boton <= sensa_boton;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_B <= B;
ww_A <= A;
SALIDAS <= ww_SALIDAS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst17|reloj~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst17|reloj~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X40_Y34_N2
\est_pres[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Y[3]~1_combout\,
	devoe => ww_devoe,
	o => \est_pres[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\est_pres[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Y[2]~5_combout\,
	devoe => ww_devoe,
	o => \est_pres[2]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\est_pres[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Y[1]~7_combout\,
	devoe => ww_devoe,
	o => \est_pres[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\est_pres[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Y[0]~9_combout\,
	devoe => ww_devoe,
	o => \est_pres[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\SALIDAS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|palabra\(3),
	devoe => ww_devoe,
	o => \SALIDAS[3]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\SALIDAS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|palabra\(2),
	devoe => ww_devoe,
	o => \SALIDAS[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\SALIDAS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|palabra\(1),
	devoe => ww_devoe,
	o => \SALIDAS[1]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\SALIDAS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|palabra\(0),
	devoe => ww_devoe,
	o => \SALIDAS[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G18
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

-- Location: IOIBUF_X0_Y16_N8
\sensa_boton~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensa_boton,
	o => \sensa_boton~input_o\);

-- Location: LCCOMB_X24_Y33_N18
\inst17|esiguiente~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|esiguiente~feeder_combout\ = \sensa_boton~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sensa_boton~input_o\,
	combout => \inst17|esiguiente~feeder_combout\);

-- Location: FF_X24_Y33_N19
\inst17|esiguiente\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17|esiguiente~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|esiguiente~q\);

-- Location: LCCOMB_X24_Y33_N0
\inst17|reloj~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|reloj~0_combout\ = (!\sensa_boton~input_o\ & \inst17|esiguiente~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensa_boton~input_o\,
	datad => \inst17|esiguiente~q\,
	combout => \inst17|reloj~0_combout\);

-- Location: FF_X24_Y33_N1
\inst17|reloj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17|reloj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|reloj~q\);

-- Location: CLKCTRL_G11
\inst17|reloj~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|reloj~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|reloj~clkctrl_outclk\);

-- Location: IOIBUF_X25_Y34_N8
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X27_Y21_N24
\inst|dir_out[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dir_out\(2) = (\B~input_o\) # (\A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~input_o\,
	datad => \A~input_o\,
	combout => \inst|dir_out\(2));

-- Location: IOIBUF_X53_Y14_N1
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X27_Y21_N25
\inst3|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	d => \inst|dir_out\(2),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(0));

-- Location: LCCOMB_X27_Y21_N0
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (\A~input_o\) # (!\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~input_o\,
	datad => \A~input_o\,
	combout => \inst1|process_0~0_combout\);

-- Location: FF_X27_Y21_N1
\inst4|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	d => \inst1|process_0~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor_interno\(0));

-- Location: LCCOMB_X27_Y21_N14
\inst5|valor[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|valor[0]~0_combout\ = !\inst6|Y[0]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Y[0]~9_combout\,
	combout => \inst5|valor[0]~0_combout\);

-- Location: FF_X27_Y21_N15
\inst5|valor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	d => \inst5|valor[0]~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|valor\(0));

-- Location: LCCOMB_X27_Y21_N10
\inst3|valor_interno[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|valor_interno[2]~0_combout\ = !\inst|dir_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dir_out\(2),
	combout => \inst3|valor_interno[2]~0_combout\);

-- Location: FF_X27_Y21_N11
\inst3|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	d => \inst3|valor_interno[2]~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(2));

-- Location: LCCOMB_X29_Y23_N6
\inst8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~1_combout\ = (!\inst6|Y[3]~1_combout\ & (\inst6|Y[0]~9_combout\ & (!\inst6|Y[2]~5_combout\ & \inst6|Y[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[1]~7_combout\,
	combout => \inst8|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y23_N20
\inst8|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~2_combout\ = (!\inst6|Y[2]~5_combout\ & (\inst6|Y[0]~9_combout\ & (!\inst6|Y[1]~7_combout\ & \inst6|Y[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[2]~5_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[1]~7_combout\,
	datad => \inst6|Y[3]~1_combout\,
	combout => \inst8|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y23_N18
\inst8|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~3_combout\ = (!\inst6|Y[2]~5_combout\ & (\inst6|Y[0]~9_combout\ & (\inst6|Y[1]~7_combout\ & \inst6|Y[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[2]~5_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[1]~7_combout\,
	datad => \inst6|Y[3]~1_combout\,
	combout => \inst8|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y23_N14
\inst8|palabra[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[12]~7_combout\ = (\inst8|Equal0~4_combout\) # ((\inst8|Equal0~2_combout\) # ((\inst8|Equal0~3_combout\) # (!\inst6|Y[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~4_combout\,
	datab => \inst8|Equal0~2_combout\,
	datac => \inst8|Equal0~3_combout\,
	datad => \inst6|Y[0]~9_combout\,
	combout => \inst8|palabra[12]~7_combout\);

-- Location: LCCOMB_X29_Y23_N28
\inst8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = (!\inst6|Y[3]~1_combout\ & (\inst6|Y[0]~9_combout\ & (!\inst6|Y[2]~5_combout\ & !\inst6|Y[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[1]~7_combout\,
	combout => \inst8|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y23_N4
\inst8|palabra[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[12]~5_combout\ = (!\inst6|Y[3]~1_combout\ & (\inst6|Y[0]~9_combout\ & \inst6|Y[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[2]~5_combout\,
	combout => \inst8|palabra[12]~5_combout\);

-- Location: LCCOMB_X29_Y23_N22
\inst8|comb~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~23_combout\ = (!\inst8|Equal0~1_combout\ & ((\inst8|palabra[12]~7_combout\) # ((\inst8|Equal0~0_combout\) # (\inst8|palabra[12]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[12]~7_combout\,
	datab => \inst8|Equal0~0_combout\,
	datac => \inst8|palabra[12]~5_combout\,
	datad => \inst8|Equal0~1_combout\,
	combout => \inst8|comb~23_combout\);

-- Location: LCCOMB_X29_Y23_N20
\inst8|palabra[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(10) = (!\inst8|comb~23_combout\ & ((\inst8|Equal0~1_combout\) # (\inst8|palabra\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~1_combout\,
	datac => \inst8|comb~23_combout\,
	datad => \inst8|palabra\(10),
	combout => \inst8|palabra\(10));

-- Location: FF_X28_Y21_N31
\inst10|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	asdata => \inst8|palabra\(10),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|valor_interno\(1));

-- Location: LCCOMB_X27_Y21_N8
\inst3|valor_interno[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|valor_interno[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|valor_interno[1]~feeder_combout\);

-- Location: FF_X27_Y21_N9
\inst3|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	d => \inst3|valor_interno[1]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(1));

-- Location: LCCOMB_X28_Y21_N12
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = \inst6|Y[1]~7_combout\ $ (\inst6|Y[0]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Y[1]~7_combout\,
	datad => \inst6|Y[0]~9_combout\,
	combout => \inst2|Add0~2_combout\);

-- Location: FF_X28_Y21_N13
\inst5|valor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	d => \inst2|Add0~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|valor\(1));

-- Location: LCCOMB_X28_Y21_N6
\inst6|Y[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Y[1]~6_combout\ = (\inst6|Y[2]~3_combout\ & (((\inst6|Y[2]~2_combout\)))) # (!\inst6|Y[2]~3_combout\ & ((\inst6|Y[2]~2_combout\ & (\inst3|valor_interno\(1))) # (!\inst6|Y[2]~2_combout\ & ((\inst5|valor\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|valor_interno\(1),
	datab => \inst6|Y[2]~3_combout\,
	datac => \inst5|valor\(1),
	datad => \inst6|Y[2]~2_combout\,
	combout => \inst6|Y[1]~6_combout\);

-- Location: LCCOMB_X28_Y21_N30
\inst6|Y[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Y[1]~7_combout\ = (\inst6|Y[2]~3_combout\ & ((\inst6|Y[1]~6_combout\ & (\inst3|valor_interno\(2))) # (!\inst6|Y[1]~6_combout\ & ((\inst10|valor_interno\(1)))))) # (!\inst6|Y[2]~3_combout\ & (((\inst6|Y[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|valor_interno\(2),
	datab => \inst6|Y[2]~3_combout\,
	datac => \inst10|valor_interno\(1),
	datad => \inst6|Y[1]~6_combout\,
	combout => \inst6|Y[1]~7_combout\);

-- Location: LCCOMB_X28_Y23_N0
\inst8|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~4_combout\ = (\inst6|Y[2]~5_combout\ & (\inst6|Y[0]~9_combout\ & (!\inst6|Y[1]~7_combout\ & \inst6|Y[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[2]~5_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[1]~7_combout\,
	datad => \inst6|Y[3]~1_combout\,
	combout => \inst8|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y24_N24
\inst8|palabra[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[6]~19_combout\ = (!\inst6|Y[1]~7_combout\ & ((\inst6|Y[3]~1_combout\ & (!\inst6|Y[2]~5_combout\ & \inst6|Y[0]~9_combout\)) # (!\inst6|Y[3]~1_combout\ & (\inst6|Y[2]~5_combout\ & !\inst6|Y[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[1]~7_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[0]~9_combout\,
	combout => \inst8|palabra[6]~19_combout\);

-- Location: LCCOMB_X28_Y24_N22
\inst8|palabra[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[6]~20_combout\ = (\inst8|palabra[6]~19_combout\) # ((\inst6|Y[3]~1_combout\ & (\inst8|Equal0~4_combout\ & \inst6|Y[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst8|Equal0~4_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst8|palabra[6]~19_combout\,
	combout => \inst8|palabra[6]~20_combout\);

-- Location: LCCOMB_X29_Y23_N18
\inst8|palabra[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[12]~6_combout\ = (\inst8|Equal0~0_combout\) # ((\inst8|palabra[12]~5_combout\) # (\inst8|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Equal0~0_combout\,
	datac => \inst8|palabra[12]~5_combout\,
	datad => \inst8|Equal0~1_combout\,
	combout => \inst8|palabra[12]~6_combout\);

-- Location: LCCOMB_X28_Y24_N10
\inst8|comb~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~17_combout\ = (\inst8|palabra[6]~20_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[6]~20_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~17_combout\);

-- Location: LCCOMB_X28_Y24_N8
\inst8|comb~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~16_combout\ = (!\inst8|palabra[6]~20_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[6]~20_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~16_combout\);

-- Location: LCCOMB_X28_Y24_N20
\inst8|palabra[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(4) = (!\inst8|comb~16_combout\ & ((\inst8|comb~17_combout\) # (\inst8|palabra\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|comb~17_combout\,
	datac => \inst8|comb~16_combout\,
	datad => \inst8|palabra\(4),
	combout => \inst8|palabra\(4));

-- Location: FF_X28_Y21_N1
\inst13|valor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	asdata => \inst8|palabra\(4),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|valor~q\);

-- Location: IOIBUF_X0_Y16_N22
\X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\Y~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: LCCOMB_X28_Y24_N6
\inst8|palabra[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(6) = (!\inst8|comb~16_combout\ & ((\inst8|comb~17_combout\) # (\inst8|palabra\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|comb~17_combout\,
	datac => \inst8|comb~16_combout\,
	datad => \inst8|palabra\(6),
	combout => \inst8|palabra\(6));

-- Location: FF_X28_Y21_N3
\inst12|valor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	asdata => \inst8|palabra\(6),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|valor\(1));

-- Location: LCCOMB_X29_Y23_N30
\inst8|palabra[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[5]~21_combout\ = (!\inst6|Y[3]~1_combout\ & (!\inst6|Y[2]~5_combout\ & (\inst6|Y[0]~9_combout\ $ (\inst6|Y[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[1]~7_combout\,
	combout => \inst8|palabra[5]~21_combout\);

-- Location: LCCOMB_X28_Y23_N24
\inst8|palabra[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[5]~26_combout\ = (!\inst6|Y[2]~5_combout\ & (!\inst6|Y[3]~1_combout\ & ((\inst6|Y[0]~9_combout\) # (\inst6|Y[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[2]~5_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[1]~7_combout\,
	datad => \inst6|Y[3]~1_combout\,
	combout => \inst8|palabra[5]~26_combout\);

-- Location: LCCOMB_X29_Y23_N0
\inst8|palabra[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[8]~17_combout\ = (!\inst6|Y[1]~7_combout\ & ((\inst6|Y[3]~1_combout\ & (\inst6|Y[0]~9_combout\ & !\inst6|Y[2]~5_combout\)) # (!\inst6|Y[3]~1_combout\ & (!\inst6|Y[0]~9_combout\ & \inst6|Y[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[1]~7_combout\,
	combout => \inst8|palabra[8]~17_combout\);

-- Location: LCCOMB_X28_Y23_N26
\inst8|palabra[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[5]~22_combout\ = (!\inst8|Equal0~6_combout\ & ((\inst8|palabra[5]~26_combout\ & (!\inst8|palabra[5]~21_combout\)) # (!\inst8|palabra[5]~26_combout\ & ((\inst8|palabra[8]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[5]~21_combout\,
	datab => \inst8|palabra[5]~26_combout\,
	datac => \inst8|palabra[8]~17_combout\,
	datad => \inst8|Equal0~6_combout\,
	combout => \inst8|palabra[5]~22_combout\);

-- Location: LCCOMB_X29_Y23_N24
\inst8|palabra[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[12]~25_combout\ = (\inst8|palabra[12]~7_combout\) # ((\inst8|Equal0~0_combout\) # ((\inst8|palabra[12]~5_combout\) # (\inst8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[12]~7_combout\,
	datab => \inst8|Equal0~0_combout\,
	datac => \inst8|palabra[12]~5_combout\,
	datad => \inst8|Equal0~1_combout\,
	combout => \inst8|palabra[12]~25_combout\);

-- Location: LCCOMB_X28_Y23_N2
\inst8|comb~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~19_combout\ = (\inst8|palabra[5]~22_combout\ & \inst8|palabra[12]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|palabra[5]~22_combout\,
	datad => \inst8|palabra[12]~25_combout\,
	combout => \inst8|comb~19_combout\);

-- Location: LCCOMB_X28_Y23_N28
\inst8|comb~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~18_combout\ = (!\inst8|palabra[5]~22_combout\ & \inst8|palabra[12]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|palabra[5]~22_combout\,
	datad => \inst8|palabra[12]~25_combout\,
	combout => \inst8|comb~18_combout\);

-- Location: LCCOMB_X28_Y21_N28
\inst8|palabra[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(5) = (!\inst8|comb~18_combout\ & ((\inst8|comb~19_combout\) # (\inst8|palabra\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|comb~19_combout\,
	datac => \inst8|comb~18_combout\,
	datad => \inst8|palabra\(5),
	combout => \inst8|palabra\(5));

-- Location: FF_X28_Y21_N29
\inst12|valor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	d => \inst8|palabra\(5),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|valor\(0));

-- Location: LCCOMB_X28_Y21_N2
\inst14|salida_mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|salida_mux~0_combout\ = (\inst12|valor\(1) & (((\Y~input_o\) # (\inst12|valor\(0))))) # (!\inst12|valor\(1) & (\X~input_o\ & ((\inst12|valor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \Y~input_o\,
	datac => \inst12|valor\(1),
	datad => \inst12|valor\(0),
	combout => \inst14|salida_mux~0_combout\);

-- Location: LCCOMB_X28_Y21_N0
\inst6|Y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Y[2]~3_combout\ = (\inst9|valor\(0) & (!\inst9|valor\(1) & (\inst13|valor~q\ $ (!\inst14|salida_mux~0_combout\)))) # (!\inst9|valor\(0) & (\inst9|valor\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|valor\(0),
	datab => \inst9|valor\(1),
	datac => \inst13|valor~q\,
	datad => \inst14|salida_mux~0_combout\,
	combout => \inst6|Y[2]~3_combout\);

-- Location: LCCOMB_X29_Y23_N10
\inst8|palabra[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[9]~24_combout\ = (\inst6|Y[3]~1_combout\ & (!\inst6|Y[0]~9_combout\ & (!\inst6|Y[2]~5_combout\ & \inst6|Y[1]~7_combout\))) # (!\inst6|Y[3]~1_combout\ & (\inst6|Y[0]~9_combout\ & (\inst6|Y[2]~5_combout\ & !\inst6|Y[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[1]~7_combout\,
	combout => \inst8|palabra[9]~24_combout\);

-- Location: LCCOMB_X29_Y23_N16
\inst8|palabra[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[9]~23_combout\ = (\inst6|Y[2]~5_combout\ & (\inst6|Y[3]~1_combout\)) # (!\inst6|Y[2]~5_combout\ & (((\inst6|Y[0]~9_combout\ & \inst6|Y[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[1]~7_combout\,
	combout => \inst8|palabra[9]~23_combout\);

-- Location: LCCOMB_X29_Y23_N8
\inst8|palabra[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[12]~14_combout\ = (\inst6|Y[3]~1_combout\ & ((\inst6|Y[0]~9_combout\ & (!\inst6|Y[2]~5_combout\ & \inst6|Y[1]~7_combout\)) # (!\inst6|Y[0]~9_combout\ & (\inst6|Y[2]~5_combout\ & !\inst6|Y[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[1]~7_combout\,
	combout => \inst8|palabra[12]~14_combout\);

-- Location: LCCOMB_X29_Y23_N12
\inst8|comb~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~21_combout\ = (!\inst8|palabra[9]~24_combout\ & (\inst8|palabra[12]~25_combout\ & ((\inst8|palabra[12]~14_combout\) # (!\inst8|palabra[9]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[9]~24_combout\,
	datab => \inst8|palabra[9]~23_combout\,
	datac => \inst8|palabra[12]~14_combout\,
	datad => \inst8|palabra[12]~25_combout\,
	combout => \inst8|comb~21_combout\);

-- Location: LCCOMB_X29_Y23_N26
\inst8|comb~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~22_combout\ = (\inst8|palabra[12]~25_combout\ & ((\inst8|palabra[9]~24_combout\) # ((\inst8|palabra[9]~23_combout\ & !\inst8|palabra[12]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[9]~24_combout\,
	datab => \inst8|palabra[9]~23_combout\,
	datac => \inst8|palabra[12]~14_combout\,
	datad => \inst8|palabra[12]~25_combout\,
	combout => \inst8|comb~22_combout\);

-- Location: LCCOMB_X29_Y23_N2
\inst8|palabra[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(9) = (!\inst8|comb~21_combout\ & ((\inst8|comb~22_combout\) # (\inst8|palabra\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|comb~21_combout\,
	datac => \inst8|comb~22_combout\,
	datad => \inst8|palabra\(9),
	combout => \inst8|palabra\(9));

-- Location: FF_X28_Y21_N17
\inst10|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	asdata => \inst8|palabra\(9),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|valor_interno\(0));

-- Location: LCCOMB_X28_Y21_N16
\inst6|Y[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Y[0]~8_combout\ = (\inst6|Y[2]~3_combout\ & (((\inst10|valor_interno\(0)) # (\inst6|Y[2]~2_combout\)))) # (!\inst6|Y[2]~3_combout\ & (\inst5|valor\(0) & ((!\inst6|Y[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|valor\(0),
	datab => \inst6|Y[2]~3_combout\,
	datac => \inst10|valor_interno\(0),
	datad => \inst6|Y[2]~2_combout\,
	combout => \inst6|Y[0]~8_combout\);

-- Location: LCCOMB_X28_Y21_N18
\inst6|Y[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Y[0]~9_combout\ = (\inst6|Y[2]~2_combout\ & ((\inst6|Y[0]~8_combout\ & ((\inst4|valor_interno\(0)))) # (!\inst6|Y[0]~8_combout\ & (\inst3|valor_interno\(0))))) # (!\inst6|Y[2]~2_combout\ & (((\inst6|Y[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[2]~2_combout\,
	datab => \inst3|valor_interno\(0),
	datac => \inst4|valor_interno\(0),
	datad => \inst6|Y[0]~8_combout\,
	combout => \inst6|Y[0]~9_combout\);

-- Location: LCCOMB_X28_Y23_N6
\inst8|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~6_combout\ = (!\inst6|Y[2]~5_combout\ & (!\inst6|Y[0]~9_combout\ & (!\inst6|Y[1]~7_combout\ & !\inst6|Y[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[2]~5_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[1]~7_combout\,
	datad => \inst6|Y[3]~1_combout\,
	combout => \inst8|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y23_N14
\inst8|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~5_combout\ = (!\inst6|Y[3]~1_combout\ & (!\inst6|Y[0]~9_combout\ & (!\inst6|Y[2]~5_combout\ & \inst6|Y[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[1]~7_combout\,
	combout => \inst8|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y23_N12
\inst8|palabra[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[8]~18_combout\ = (!\inst8|Equal0~6_combout\ & ((\inst8|palabra[5]~26_combout\ & ((\inst8|Equal0~5_combout\))) # (!\inst8|palabra[5]~26_combout\ & (\inst8|palabra[8]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~6_combout\,
	datab => \inst8|palabra[8]~17_combout\,
	datac => \inst8|Equal0~5_combout\,
	datad => \inst8|palabra[5]~26_combout\,
	combout => \inst8|palabra[8]~18_combout\);

-- Location: LCCOMB_X28_Y23_N16
\inst8|comb~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~15_combout\ = (\inst8|palabra[8]~18_combout\ & \inst8|palabra[12]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[8]~18_combout\,
	datad => \inst8|palabra[12]~25_combout\,
	combout => \inst8|comb~15_combout\);

-- Location: LCCOMB_X28_Y23_N22
\inst8|comb~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~14_combout\ = (!\inst8|palabra[8]~18_combout\ & \inst8|palabra[12]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[8]~18_combout\,
	datad => \inst8|palabra[12]~25_combout\,
	combout => \inst8|comb~14_combout\);

-- Location: LCCOMB_X28_Y23_N10
\inst8|palabra[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(8) = (!\inst8|comb~14_combout\ & ((\inst8|comb~15_combout\) # (\inst8|palabra\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|comb~15_combout\,
	datac => \inst8|comb~14_combout\,
	datad => \inst8|palabra\(8),
	combout => \inst8|palabra\(8));

-- Location: FF_X28_Y21_N5
\inst9|valor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	asdata => \inst8|palabra\(8),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|valor\(1));

-- Location: LCCOMB_X28_Y21_N10
\inst6|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Y[2]~2_combout\ = (\inst9|valor\(1) & ((\inst13|valor~q\ $ (!\inst14|salida_mux~0_combout\)) # (!\inst9|valor\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|valor\(0),
	datab => \inst9|valor\(1),
	datac => \inst13|valor~q\,
	datad => \inst14|salida_mux~0_combout\,
	combout => \inst6|Y[2]~2_combout\);

-- Location: FF_X28_Y21_N9
\inst4|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	asdata => \A~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor_interno\(2));

-- Location: LCCOMB_X28_Y21_N14
\inst2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_combout\ = \inst6|Y[2]~5_combout\ $ (((\inst6|Y[0]~9_combout\ & \inst6|Y[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[1]~7_combout\,
	combout => \inst2|Add0~1_combout\);

-- Location: FF_X28_Y21_N15
\inst5|valor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	d => \inst2|Add0~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|valor\(2));

-- Location: LCCOMB_X28_Y22_N8
\inst8|comb~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~20_combout\ = (!\inst8|Equal0~4_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Equal0~4_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~20_combout\);

-- Location: LCCOMB_X28_Y22_N6
\inst8|palabra[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(11) = (!\inst8|comb~20_combout\ & ((\inst8|Equal0~4_combout\) # (\inst8|palabra\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Equal0~4_combout\,
	datac => \inst8|comb~20_combout\,
	datad => \inst8|palabra\(11),
	combout => \inst8|palabra\(11));

-- Location: FF_X28_Y21_N21
\inst10|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	asdata => \inst8|palabra\(11),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|valor_interno\(2));

-- Location: LCCOMB_X28_Y21_N20
\inst6|Y[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Y[2]~4_combout\ = (\inst6|Y[2]~3_combout\ & (((\inst10|valor_interno\(2)) # (\inst6|Y[2]~2_combout\)))) # (!\inst6|Y[2]~3_combout\ & (\inst5|valor\(2) & ((!\inst6|Y[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|valor\(2),
	datab => \inst6|Y[2]~3_combout\,
	datac => \inst10|valor_interno\(2),
	datad => \inst6|Y[2]~2_combout\,
	combout => \inst6|Y[2]~4_combout\);

-- Location: LCCOMB_X28_Y21_N8
\inst6|Y[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Y[2]~5_combout\ = (\inst6|Y[2]~2_combout\ & ((\inst6|Y[2]~4_combout\ & ((\inst4|valor_interno\(2)))) # (!\inst6|Y[2]~4_combout\ & (\inst3|valor_interno\(2))))) # (!\inst6|Y[2]~2_combout\ & (((\inst6|Y[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[2]~2_combout\,
	datab => \inst3|valor_interno\(2),
	datac => \inst4|valor_interno\(2),
	datad => \inst6|Y[2]~4_combout\,
	combout => \inst6|Y[2]~5_combout\);

-- Location: LCCOMB_X28_Y23_N30
\inst8|palabra[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[2]~9_combout\ = (\inst6|Y[3]~1_combout\ & ((\inst6|Y[2]~5_combout\) # ((\inst6|Y[0]~9_combout\ & \inst6|Y[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[2]~5_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[1]~7_combout\,
	datad => \inst6|Y[3]~1_combout\,
	combout => \inst8|palabra[2]~9_combout\);

-- Location: LCCOMB_X28_Y23_N8
\inst8|palabra[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[7]~15_combout\ = (\inst6|Y[3]~1_combout\ & (!\inst6|Y[2]~5_combout\ & (\inst6|Y[0]~9_combout\ $ (\inst6|Y[1]~7_combout\)))) # (!\inst6|Y[3]~1_combout\ & ((\inst6|Y[1]~7_combout\ & ((\inst6|Y[0]~9_combout\))) # (!\inst6|Y[1]~7_combout\ & 
-- (\inst6|Y[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[2]~5_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[1]~7_combout\,
	datad => \inst6|Y[3]~1_combout\,
	combout => \inst8|palabra[7]~15_combout\);

-- Location: LCCOMB_X28_Y22_N30
\inst8|palabra[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[7]~16_combout\ = (\inst8|palabra[7]~15_combout\) # ((\inst8|palabra[2]~9_combout\ & !\inst8|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[2]~9_combout\,
	datac => \inst8|Equal0~3_combout\,
	datad => \inst8|palabra[7]~15_combout\,
	combout => \inst8|palabra[7]~16_combout\);

-- Location: LCCOMB_X28_Y22_N26
\inst8|comb~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~13_combout\ = (\inst8|palabra[7]~16_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[7]~16_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~13_combout\);

-- Location: LCCOMB_X28_Y22_N4
\inst8|comb~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~12_combout\ = (!\inst8|palabra[7]~16_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[7]~16_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~12_combout\);

-- Location: LCCOMB_X28_Y22_N20
\inst8|palabra[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(7) = (!\inst8|comb~12_combout\ & ((\inst8|comb~13_combout\) # (\inst8|palabra\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|comb~13_combout\,
	datac => \inst8|comb~12_combout\,
	datad => \inst8|palabra\(7),
	combout => \inst8|palabra\(7));

-- Location: FF_X28_Y21_N23
\inst9|valor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	asdata => \inst8|palabra\(7),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|valor\(0));

-- Location: LCCOMB_X28_Y22_N18
\inst8|comb~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~10_combout\ = (\inst8|palabra[12]~7_combout\ & ((\inst8|palabra[12]~14_combout\) # ((!\inst8|palabra[2]~9_combout\)))) # (!\inst8|palabra[12]~7_combout\ & (\inst8|palabra[12]~6_combout\ & ((\inst8|palabra[12]~14_combout\) # 
-- (!\inst8|palabra[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[12]~7_combout\,
	datab => \inst8|palabra[12]~14_combout\,
	datac => \inst8|palabra[2]~9_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~10_combout\);

-- Location: LCCOMB_X28_Y22_N28
\inst8|comb~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~11_combout\ = (!\inst8|palabra[12]~14_combout\ & (\inst8|palabra[2]~9_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[12]~7_combout\,
	datab => \inst8|palabra[12]~14_combout\,
	datac => \inst8|palabra[2]~9_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~11_combout\);

-- Location: LCCOMB_X28_Y22_N10
\inst8|palabra[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(12) = (!\inst8|comb~10_combout\ & ((\inst8|comb~11_combout\) # (\inst8|palabra\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|comb~10_combout\,
	datac => \inst8|comb~11_combout\,
	datad => \inst8|palabra\(12),
	combout => \inst8|palabra\(12));

-- Location: FF_X28_Y21_N25
\inst10|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	asdata => \inst8|palabra\(12),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|valor_interno\(3));

-- Location: LCCOMB_X28_Y21_N24
\inst6|Y[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Y[3]~0_combout\ = (\inst9|valor\(0) & ((\inst9|valor\(1) & ((\inst3|valor_interno\(0)))) # (!\inst9|valor\(1) & (\inst10|valor_interno\(3))))) # (!\inst9|valor\(0) & (((\inst3|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|valor\(0),
	datab => \inst9|valor\(1),
	datac => \inst10|valor_interno\(3),
	datad => \inst3|valor_interno\(0),
	combout => \inst6|Y[3]~0_combout\);

-- Location: LCCOMB_X28_Y21_N26
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst6|Y[3]~1_combout\ $ (((\inst6|Y[0]~9_combout\ & (\inst6|Y[2]~5_combout\ & \inst6|Y[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[1]~7_combout\,
	combout => \inst2|Add0~0_combout\);

-- Location: FF_X28_Y21_N27
\inst5|valor[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|reloj~clkctrl_outclk\,
	d => \inst2|Add0~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|valor\(3));

-- Location: LCCOMB_X28_Y21_N4
\inst7|palabra[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|palabra[3]~0_combout\ = (\inst9|valor\(0) & (\inst13|valor~q\ $ (((!\inst14|salida_mux~0_combout\))))) # (!\inst9|valor\(0) & (((\inst9|valor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|valor\(0),
	datab => \inst13|valor~q\,
	datac => \inst9|valor\(1),
	datad => \inst14|salida_mux~0_combout\,
	combout => \inst7|palabra[3]~0_combout\);

-- Location: LCCOMB_X28_Y21_N22
\inst6|Y[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Y[3]~1_combout\ = (\inst7|palabra[3]~0_combout\ & (\inst6|Y[3]~0_combout\)) # (!\inst7|palabra[3]~0_combout\ & ((\inst5|valor\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~0_combout\,
	datab => \inst5|valor\(3),
	datad => \inst7|palabra[3]~0_combout\,
	combout => \inst6|Y[3]~1_combout\);

-- Location: LCCOMB_X28_Y24_N28
\inst8|palabra[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[3]~4_combout\ = (\inst6|Y[3]~1_combout\ & (((\inst6|Y[2]~5_combout\) # (\inst6|Y[0]~9_combout\)))) # (!\inst6|Y[3]~1_combout\ & ((\inst6|Y[1]~7_combout\) # ((!\inst6|Y[2]~5_combout\ & \inst6|Y[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[1]~7_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[0]~9_combout\,
	combout => \inst8|palabra[3]~4_combout\);

-- Location: LCCOMB_X28_Y24_N0
\inst8|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~3_combout\ = (!\inst8|palabra[3]~4_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|palabra[3]~4_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~3_combout\);

-- Location: LCCOMB_X28_Y24_N30
\inst8|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~2_combout\ = (\inst8|palabra[3]~4_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|palabra[3]~4_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~2_combout\);

-- Location: LCCOMB_X28_Y24_N16
\inst8|palabra[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(3) = (!\inst8|comb~2_combout\ & ((\inst8|comb~3_combout\) # (\inst8|palabra\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|comb~3_combout\,
	datac => \inst8|comb~2_combout\,
	datad => \inst8|palabra\(3),
	combout => \inst8|palabra\(3));

-- Location: LCCOMB_X28_Y23_N4
\inst8|palabra[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[2]~8_combout\ = (\inst6|Y[0]~9_combout\ & (((!\inst6|Y[1]~7_combout\ & !\inst6|Y[3]~1_combout\)))) # (!\inst6|Y[0]~9_combout\ & (!\inst6|Y[2]~5_combout\ & (\inst6|Y[1]~7_combout\ $ (!\inst6|Y[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[2]~5_combout\,
	datab => \inst6|Y[0]~9_combout\,
	datac => \inst6|Y[1]~7_combout\,
	datad => \inst6|Y[3]~1_combout\,
	combout => \inst8|palabra[2]~8_combout\);

-- Location: LCCOMB_X28_Y22_N24
\inst8|palabra[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[2]~10_combout\ = (\inst8|palabra[2]~8_combout\) # ((\inst8|palabra[2]~9_combout\ & \inst8|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[2]~9_combout\,
	datab => \inst8|Equal0~3_combout\,
	datac => \inst8|palabra[2]~8_combout\,
	combout => \inst8|palabra[2]~10_combout\);

-- Location: LCCOMB_X28_Y22_N0
\inst8|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~5_combout\ = (\inst8|palabra[2]~10_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|palabra[2]~10_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~5_combout\);

-- Location: LCCOMB_X28_Y22_N22
\inst8|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~4_combout\ = (!\inst8|palabra[2]~10_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|palabra[2]~10_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~4_combout\);

-- Location: LCCOMB_X28_Y22_N2
\inst8|palabra[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(2) = (!\inst8|comb~4_combout\ & ((\inst8|comb~5_combout\) # (\inst8|palabra\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|comb~5_combout\,
	datac => \inst8|comb~4_combout\,
	datad => \inst8|palabra\(2),
	combout => \inst8|palabra\(2));

-- Location: LCCOMB_X28_Y24_N18
\inst8|palabra[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[1]~11_combout\ = (!\inst6|Y[3]~1_combout\ & ((\inst6|Y[2]~5_combout\ & (\inst6|Y[1]~7_combout\ & !\inst6|Y[0]~9_combout\)) # (!\inst6|Y[2]~5_combout\ & ((\inst6|Y[0]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[1]~7_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[0]~9_combout\,
	combout => \inst8|palabra[1]~11_combout\);

-- Location: LCCOMB_X28_Y24_N4
\inst8|palabra[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[1]~12_combout\ = (\inst8|palabra[1]~11_combout\) # ((\inst8|Equal0~4_combout\ & \inst6|Y[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Equal0~4_combout\,
	datac => \inst6|Y[3]~1_combout\,
	datad => \inst8|palabra[1]~11_combout\,
	combout => \inst8|palabra[1]~12_combout\);

-- Location: LCCOMB_X28_Y24_N12
\inst8|comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~7_combout\ = (\inst8|palabra[1]~12_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|palabra[1]~12_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~7_combout\);

-- Location: LCCOMB_X28_Y24_N26
\inst8|comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~6_combout\ = (!\inst8|palabra[1]~12_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|palabra[1]~12_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~6_combout\);

-- Location: LCCOMB_X28_Y24_N2
\inst8|palabra[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(1) = (!\inst8|comb~6_combout\ & ((\inst8|comb~7_combout\) # (\inst8|palabra\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|comb~7_combout\,
	datac => \inst8|comb~6_combout\,
	datad => \inst8|palabra\(1),
	combout => \inst8|palabra\(1));

-- Location: LCCOMB_X28_Y24_N14
\inst8|palabra[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra[0]~13_combout\ = (\inst6|Y[1]~7_combout\ & (\inst6|Y[3]~1_combout\ $ (((\inst6|Y[2]~5_combout\) # (!\inst6|Y[0]~9_combout\))))) # (!\inst6|Y[1]~7_combout\ & (\inst6|Y[3]~1_combout\ & (\inst6|Y[2]~5_combout\ & !\inst6|Y[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Y[3]~1_combout\,
	datab => \inst6|Y[1]~7_combout\,
	datac => \inst6|Y[2]~5_combout\,
	datad => \inst6|Y[0]~9_combout\,
	combout => \inst8|palabra[0]~13_combout\);

-- Location: LCCOMB_X28_Y22_N12
\inst8|comb~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~9_combout\ = (\inst8|palabra[0]~13_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[0]~13_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~9_combout\);

-- Location: LCCOMB_X28_Y22_N14
\inst8|comb~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|comb~8_combout\ = (!\inst8|palabra[0]~13_combout\ & ((\inst8|palabra[12]~7_combout\) # (\inst8|palabra[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|palabra[0]~13_combout\,
	datac => \inst8|palabra[12]~7_combout\,
	datad => \inst8|palabra[12]~6_combout\,
	combout => \inst8|comb~8_combout\);

-- Location: LCCOMB_X28_Y22_N16
\inst8|palabra[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|palabra\(0) = (!\inst8|comb~8_combout\ & ((\inst8|comb~9_combout\) # (\inst8|palabra\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|comb~9_combout\,
	datac => \inst8|comb~8_combout\,
	datad => \inst8|palabra\(0),
	combout => \inst8|palabra\(0));

ww_est_pres(3) <= \est_pres[3]~output_o\;

ww_est_pres(2) <= \est_pres[2]~output_o\;

ww_est_pres(1) <= \est_pres[1]~output_o\;

ww_est_pres(0) <= \est_pres[0]~output_o\;

ww_SALIDAS(3) <= \SALIDAS[3]~output_o\;

ww_SALIDAS(2) <= \SALIDAS[2]~output_o\;

ww_SALIDAS(1) <= \SALIDAS[1]~output_o\;

ww_SALIDAS(0) <= \SALIDAS[0]~output_o\;
END structure;


