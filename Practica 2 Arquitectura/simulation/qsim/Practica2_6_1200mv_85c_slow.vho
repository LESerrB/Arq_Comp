-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "03/12/2018 22:24:34"

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

ENTITY 	Practica2 IS
    PORT (
	atras : OUT std_logic;
	reloj : IN std_logic;
	RESET : IN std_logic;
	S : IN std_logic_vector(0 TO 1);
	adelante : OUT std_logic;
	giro_der : OUT std_logic;
	giro_izq : OUT std_logic;
	out_state : OUT std_logic_vector(3 DOWNTO 0)
	);
END Practica2;

-- Design Ports Information
-- atras	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adelante	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro_der	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro_izq	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_state[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_state[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_state[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_state[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Practica2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_atras : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_S : std_logic_vector(0 TO 1);
SIGNAL ww_adelante : std_logic;
SIGNAL ww_giro_der : std_logic;
SIGNAL ww_giro_izq : std_logic;
SIGNAL ww_out_state : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|cuenta[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \atras~output_o\ : std_logic;
SIGNAL \adelante~output_o\ : std_logic;
SIGNAL \giro_der~output_o\ : std_logic;
SIGNAL \giro_izq~output_o\ : std_logic;
SIGNAL \out_state[3]~output_o\ : std_logic;
SIGNAL \out_state[2]~output_o\ : std_logic;
SIGNAL \out_state[1]~output_o\ : std_logic;
SIGNAL \out_state[0]~output_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~51\ : std_logic;
SIGNAL \inst1|Add0~52_combout\ : std_logic;
SIGNAL \inst1|cuenta~1_combout\ : std_logic;
SIGNAL \inst1|Add0~53\ : std_logic;
SIGNAL \inst1|Add0~54_combout\ : std_logic;
SIGNAL \inst1|Equal0~7_combout\ : std_logic;
SIGNAL \inst1|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|Equal0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|cuenta~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|Add0~45\ : std_logic;
SIGNAL \inst1|Add0~46_combout\ : std_logic;
SIGNAL \inst1|Add0~47\ : std_logic;
SIGNAL \inst1|Add0~48_combout\ : std_logic;
SIGNAL \inst1|Add0~49\ : std_logic;
SIGNAL \inst1|Add0~50_combout\ : std_logic;
SIGNAL \inst1|cuenta[25]~clkctrl_outclk\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \inst|esiguiente[0]~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|esiguiente[0]~1_combout\ : std_logic;
SIGNAL \inst|esiguiente[1]~2_combout\ : std_logic;
SIGNAL \inst|esiguiente[1]~3_combout\ : std_logic;
SIGNAL \inst|esiguiente[1]~4_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|atras~0_combout\ : std_logic;
SIGNAL \inst|atras~q\ : std_logic;
SIGNAL \inst|adelante~0_combout\ : std_logic;
SIGNAL \inst|adelante~1_combout\ : std_logic;
SIGNAL \inst|adelante~2_combout\ : std_logic;
SIGNAL \inst|adelante~q\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|giro_der~q\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|giro_izq~q\ : std_logic;
SIGNAL \inst|out_epresente[3]~feeder_combout\ : std_logic;
SIGNAL \inst|out_epresente[2]~feeder_combout\ : std_logic;
SIGNAL \inst|out_epresente[1]~feeder_combout\ : std_logic;
SIGNAL \inst|out_epresente[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst|out_epresente\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|esiguiente\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_out_epresente\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_adelante~q\ : std_logic;
SIGNAL \inst|ALT_INV_giro_izq~q\ : std_logic;
SIGNAL \inst|ALT_INV_giro_der~q\ : std_logic;
SIGNAL \inst|ALT_INV_atras~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

atras <= ww_atras;
ww_reloj <= reloj;
ww_RESET <= RESET;
ww_S <= S;
adelante <= ww_adelante;
giro_der <= ww_giro_der;
giro_izq <= ww_giro_izq;
out_state <= ww_out_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|cuenta[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|cuenta\(25));

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\inst|ALT_INV_out_epresente\(0) <= NOT \inst|out_epresente\(0);
\inst|ALT_INV_out_epresente\(1) <= NOT \inst|out_epresente\(1);
\inst|ALT_INV_out_epresente\(2) <= NOT \inst|out_epresente\(2);
\inst|ALT_INV_out_epresente\(3) <= NOT \inst|out_epresente\(3);
\inst|ALT_INV_adelante~q\ <= NOT \inst|adelante~q\;
\inst|ALT_INV_giro_izq~q\ <= NOT \inst|giro_izq~q\;
\inst|ALT_INV_giro_der~q\ <= NOT \inst|giro_der~q\;
\inst|ALT_INV_atras~q\ <= NOT \inst|atras~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X49_Y34_N2
\atras~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_atras~q\,
	devoe => ww_devoe,
	o => \atras~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\adelante~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_adelante~q\,
	devoe => ww_devoe,
	o => \adelante~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\giro_der~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_giro_der~q\,
	devoe => ww_devoe,
	o => \giro_der~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\giro_izq~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_giro_izq~q\,
	devoe => ww_devoe,
	o => \giro_izq~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\out_state[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_out_epresente\(3),
	devoe => ww_devoe,
	o => \out_state[3]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\out_state[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_out_epresente\(2),
	devoe => ww_devoe,
	o => \out_state[2]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\out_state[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_out_epresente\(1),
	devoe => ww_devoe,
	o => \out_state[1]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\out_state[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_out_epresente\(0),
	devoe => ww_devoe,
	o => \out_state[0]~output_o\);

-- Location: IOIBUF_X0_Y24_N22
\reloj~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

-- Location: LCCOMB_X1_Y25_N2
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|cuenta\(9) & (!\inst1|cuenta\(8) & (!\inst1|cuenta\(11) & !\inst1|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(9),
	datab => \inst1|cuenta\(8),
	datac => \inst1|cuenta\(11),
	datad => \inst1|cuenta\(10),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y25_N18
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|cuenta\(4) & (!\inst1|cuenta\(7) & (!\inst1|cuenta\(6) & !\inst1|cuenta\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(4),
	datab => \inst1|cuenta\(7),
	datac => \inst1|cuenta\(6),
	datad => \inst1|cuenta\(5),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y25_N8
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|cuenta\(3) & (!\inst1|cuenta\(1) & (!\inst1|cuenta\(0) & !\inst1|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(3),
	datab => \inst1|cuenta\(1),
	datac => \inst1|cuenta\(0),
	datad => \inst1|cuenta\(2),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y25_N28
\inst1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (!\inst1|cuenta\(15) & (!\inst1|cuenta\(13) & (!\inst1|cuenta\(14) & !\inst1|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(15),
	datab => \inst1|cuenta\(13),
	datac => \inst1|cuenta\(14),
	datad => \inst1|cuenta\(12),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y25_N30
\inst1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~2_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|Equal0~0_combout\ & \inst1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y24_N22
\inst1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~50_combout\ = (\inst1|cuenta\(25) & (!\inst1|Add0~49\)) # (!\inst1|cuenta\(25) & ((\inst1|Add0~49\) # (GND)))
-- \inst1|Add0~51\ = CARRY((!\inst1|Add0~49\) # (!\inst1|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(25),
	datad => VCC,
	cin => \inst1|Add0~49\,
	combout => \inst1|Add0~50_combout\,
	cout => \inst1|Add0~51\);

-- Location: LCCOMB_X1_Y24_N24
\inst1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~52_combout\ = (\inst1|cuenta\(26) & (\inst1|Add0~51\ $ (GND))) # (!\inst1|cuenta\(26) & (!\inst1|Add0~51\ & VCC))
-- \inst1|Add0~53\ = CARRY((\inst1|cuenta\(26) & !\inst1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(26),
	datad => VCC,
	cin => \inst1|Add0~51\,
	combout => \inst1|Add0~52_combout\,
	cout => \inst1|Add0~53\);

-- Location: LCCOMB_X1_Y24_N28
\inst1|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cuenta~1_combout\ = (\inst1|Add0~52_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~8_combout\,
	datac => \inst1|Equal0~4_combout\,
	datad => \inst1|Add0~52_combout\,
	combout => \inst1|cuenta~1_combout\);

-- Location: FF_X1_Y24_N29
\inst1|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(26));

-- Location: LCCOMB_X1_Y24_N26
\inst1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~54_combout\ = \inst1|cuenta\(27) $ (\inst1|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(27),
	cin => \inst1|Add0~53\,
	combout => \inst1|Add0~54_combout\);

-- Location: FF_X1_Y24_N27
\inst1|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(27));

-- Location: LCCOMB_X1_Y24_N30
\inst1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~7_combout\ = (!\inst1|cuenta\(27) & (\inst1|cuenta\(26) & (!\inst1|cuenta\(25) & !\inst1|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(27),
	datab => \inst1|cuenta\(26),
	datac => \inst1|cuenta\(25),
	datad => \inst1|cuenta\(24),
	combout => \inst1|Equal0~7_combout\);

-- Location: LCCOMB_X2_Y24_N30
\inst1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~6_combout\ = (!\inst1|cuenta\(21) & (!\inst1|cuenta\(23) & (!\inst1|cuenta\(22) & !\inst1|cuenta\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(21),
	datab => \inst1|cuenta\(23),
	datac => \inst1|cuenta\(22),
	datad => \inst1|cuenta\(20),
	combout => \inst1|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y24_N28
\inst1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (!\inst1|cuenta\(19) & (!\inst1|cuenta\(17) & (!\inst1|cuenta\(16) & !\inst1|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(19),
	datab => \inst1|cuenta\(17),
	datac => \inst1|cuenta\(16),
	datad => \inst1|cuenta\(18),
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y24_N0
\inst1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~8_combout\ = (\inst1|Equal0~7_combout\ & (\inst1|Equal0~6_combout\ & \inst1|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~7_combout\,
	datac => \inst1|Equal0~6_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|Equal0~8_combout\);

-- Location: LCCOMB_X1_Y25_N4
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|cuenta\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X1_Y25_N0
\inst1|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cuenta~0_combout\ = (\inst1|Add0~0_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~8_combout\,
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|cuenta~0_combout\);

-- Location: FF_X1_Y25_N1
\inst1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(0));

-- Location: LCCOMB_X1_Y25_N6
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|cuenta\(1) & (!\inst1|Add0~1\)) # (!\inst1|cuenta\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: FF_X1_Y25_N7
\inst1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(1));

-- Location: LCCOMB_X1_Y25_N8
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|cuenta\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|cuenta\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|cuenta\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: FF_X1_Y25_N9
\inst1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(2));

-- Location: LCCOMB_X1_Y25_N10
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|cuenta\(3) & (!\inst1|Add0~5\)) # (!\inst1|cuenta\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: FF_X1_Y25_N11
\inst1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(3));

-- Location: LCCOMB_X1_Y25_N12
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|cuenta\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|cuenta\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|cuenta\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: FF_X1_Y25_N13
\inst1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(4));

-- Location: LCCOMB_X1_Y25_N14
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|cuenta\(5) & (!\inst1|Add0~9\)) # (!\inst1|cuenta\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: FF_X1_Y25_N15
\inst1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(5));

-- Location: LCCOMB_X1_Y25_N16
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|cuenta\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|cuenta\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|cuenta\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: FF_X1_Y25_N17
\inst1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(6));

-- Location: LCCOMB_X1_Y25_N18
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|cuenta\(7) & (!\inst1|Add0~13\)) # (!\inst1|cuenta\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: FF_X1_Y25_N19
\inst1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(7));

-- Location: LCCOMB_X1_Y25_N20
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|cuenta\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|cuenta\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|cuenta\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: FF_X1_Y25_N21
\inst1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(8));

-- Location: LCCOMB_X1_Y25_N22
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|cuenta\(9) & (!\inst1|Add0~17\)) # (!\inst1|cuenta\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: FF_X1_Y25_N23
\inst1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(9));

-- Location: LCCOMB_X1_Y25_N24
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|cuenta\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|cuenta\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|cuenta\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: FF_X1_Y25_N25
\inst1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(10));

-- Location: LCCOMB_X1_Y25_N26
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|cuenta\(11) & (!\inst1|Add0~21\)) # (!\inst1|cuenta\(11) & ((\inst1|Add0~21\) # (GND)))
-- \inst1|Add0~23\ = CARRY((!\inst1|Add0~21\) # (!\inst1|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: FF_X1_Y25_N27
\inst1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(11));

-- Location: LCCOMB_X1_Y25_N28
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|cuenta\(12) & (\inst1|Add0~23\ $ (GND))) # (!\inst1|cuenta\(12) & (!\inst1|Add0~23\ & VCC))
-- \inst1|Add0~25\ = CARRY((\inst1|cuenta\(12) & !\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: FF_X1_Y25_N29
\inst1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(12));

-- Location: LCCOMB_X1_Y25_N30
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|cuenta\(13) & (!\inst1|Add0~25\)) # (!\inst1|cuenta\(13) & ((\inst1|Add0~25\) # (GND)))
-- \inst1|Add0~27\ = CARRY((!\inst1|Add0~25\) # (!\inst1|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: FF_X1_Y25_N31
\inst1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(13));

-- Location: LCCOMB_X1_Y24_N0
\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|cuenta\(14) & (\inst1|Add0~27\ $ (GND))) # (!\inst1|cuenta\(14) & (!\inst1|Add0~27\ & VCC))
-- \inst1|Add0~29\ = CARRY((\inst1|cuenta\(14) & !\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: FF_X1_Y24_N1
\inst1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(14));

-- Location: LCCOMB_X1_Y24_N2
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|cuenta\(15) & (!\inst1|Add0~29\)) # (!\inst1|cuenta\(15) & ((\inst1|Add0~29\) # (GND)))
-- \inst1|Add0~31\ = CARRY((!\inst1|Add0~29\) # (!\inst1|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: FF_X1_Y24_N3
\inst1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(15));

-- Location: LCCOMB_X1_Y24_N4
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|cuenta\(16) & (\inst1|Add0~31\ $ (GND))) # (!\inst1|cuenta\(16) & (!\inst1|Add0~31\ & VCC))
-- \inst1|Add0~33\ = CARRY((\inst1|cuenta\(16) & !\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: FF_X1_Y24_N5
\inst1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(16));

-- Location: LCCOMB_X1_Y24_N6
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|cuenta\(17) & (!\inst1|Add0~33\)) # (!\inst1|cuenta\(17) & ((\inst1|Add0~33\) # (GND)))
-- \inst1|Add0~35\ = CARRY((!\inst1|Add0~33\) # (!\inst1|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: FF_X1_Y24_N7
\inst1|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(17));

-- Location: LCCOMB_X1_Y24_N8
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|cuenta\(18) & (\inst1|Add0~35\ $ (GND))) # (!\inst1|cuenta\(18) & (!\inst1|Add0~35\ & VCC))
-- \inst1|Add0~37\ = CARRY((\inst1|cuenta\(18) & !\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: FF_X1_Y24_N9
\inst1|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(18));

-- Location: LCCOMB_X1_Y24_N10
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|cuenta\(19) & (!\inst1|Add0~37\)) # (!\inst1|cuenta\(19) & ((\inst1|Add0~37\) # (GND)))
-- \inst1|Add0~39\ = CARRY((!\inst1|Add0~37\) # (!\inst1|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: FF_X1_Y24_N11
\inst1|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(19));

-- Location: LCCOMB_X1_Y24_N12
\inst1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|cuenta\(20) & (\inst1|Add0~39\ $ (GND))) # (!\inst1|cuenta\(20) & (!\inst1|Add0~39\ & VCC))
-- \inst1|Add0~41\ = CARRY((\inst1|cuenta\(20) & !\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: FF_X1_Y24_N13
\inst1|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(20));

-- Location: LCCOMB_X1_Y24_N14
\inst1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|cuenta\(21) & (!\inst1|Add0~41\)) # (!\inst1|cuenta\(21) & ((\inst1|Add0~41\) # (GND)))
-- \inst1|Add0~43\ = CARRY((!\inst1|Add0~41\) # (!\inst1|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: FF_X1_Y24_N15
\inst1|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(21));

-- Location: LCCOMB_X1_Y24_N16
\inst1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|cuenta\(22) & (\inst1|Add0~43\ $ (GND))) # (!\inst1|cuenta\(22) & (!\inst1|Add0~43\ & VCC))
-- \inst1|Add0~45\ = CARRY((\inst1|cuenta\(22) & !\inst1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(22),
	datad => VCC,
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\,
	cout => \inst1|Add0~45\);

-- Location: FF_X1_Y24_N17
\inst1|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(22));

-- Location: LCCOMB_X1_Y24_N18
\inst1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = (\inst1|cuenta\(23) & (!\inst1|Add0~45\)) # (!\inst1|cuenta\(23) & ((\inst1|Add0~45\) # (GND)))
-- \inst1|Add0~47\ = CARRY((!\inst1|Add0~45\) # (!\inst1|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(23),
	datad => VCC,
	cin => \inst1|Add0~45\,
	combout => \inst1|Add0~46_combout\,
	cout => \inst1|Add0~47\);

-- Location: FF_X1_Y24_N19
\inst1|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(23));

-- Location: LCCOMB_X1_Y24_N20
\inst1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~48_combout\ = (\inst1|cuenta\(24) & (\inst1|Add0~47\ $ (GND))) # (!\inst1|cuenta\(24) & (!\inst1|Add0~47\ & VCC))
-- \inst1|Add0~49\ = CARRY((\inst1|cuenta\(24) & !\inst1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(24),
	datad => VCC,
	cin => \inst1|Add0~47\,
	combout => \inst1|Add0~48_combout\,
	cout => \inst1|Add0~49\);

-- Location: FF_X1_Y24_N21
\inst1|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(24));

-- Location: FF_X1_Y24_N23
\inst1|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \inst1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(25));

-- Location: CLKCTRL_G4
\inst1|cuenta[25]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|cuenta[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|cuenta[25]~clkctrl_outclk\);

-- Location: IOIBUF_X20_Y34_N22
\S[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\S[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: LCCOMB_X20_Y30_N18
\inst|esiguiente[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|esiguiente[0]~0_combout\ = (\inst|esiguiente\(1)) # ((\S[1]~input_o\ & (\S[0]~input_o\ & !\inst|esiguiente\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \inst|esiguiente\(2),
	datad => \inst|esiguiente\(1),
	combout => \inst|esiguiente[0]~0_combout\);

-- Location: LCCOMB_X20_Y30_N22
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|esiguiente\(1) & ((\inst|esiguiente\(0) & ((\inst|esiguiente\(2)))) # (!\inst|esiguiente\(0) & (\inst|esiguiente\(3))))) # (!\inst|esiguiente\(1) & (((\inst|esiguiente\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente\(1),
	datab => \inst|esiguiente\(0),
	datac => \inst|esiguiente\(3),
	datad => \inst|esiguiente\(2),
	combout => \inst|Mux4~0_combout\);

-- Location: IOIBUF_X0_Y16_N8
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: FF_X20_Y30_N23
\inst|esiguiente[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	d => \inst|Mux4~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|esiguiente\(3));

-- Location: LCCOMB_X20_Y30_N20
\inst|esiguiente[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|esiguiente[0]~1_combout\ = (\inst|esiguiente\(3) & ((\inst|esiguiente\(0) $ (!\inst|esiguiente\(2))))) # (!\inst|esiguiente\(3) & (!\inst|esiguiente\(0) & (\inst|esiguiente[0]~0_combout\ $ (!\inst|esiguiente\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente[0]~0_combout\,
	datab => \inst|esiguiente\(3),
	datac => \inst|esiguiente\(0),
	datad => \inst|esiguiente\(2),
	combout => \inst|esiguiente[0]~1_combout\);

-- Location: FF_X20_Y30_N21
\inst|esiguiente[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	d => \inst|esiguiente[0]~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|esiguiente\(0));

-- Location: LCCOMB_X20_Y30_N12
\inst|esiguiente[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|esiguiente[1]~2_combout\ = (\inst|esiguiente\(0) & (\inst|esiguiente\(2) & \inst|esiguiente\(3))) # (!\inst|esiguiente\(0) & ((\inst|esiguiente\(2)) # (\inst|esiguiente\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|esiguiente\(0),
	datac => \inst|esiguiente\(2),
	datad => \inst|esiguiente\(3),
	combout => \inst|esiguiente[1]~2_combout\);

-- Location: LCCOMB_X20_Y30_N2
\inst|esiguiente[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|esiguiente[1]~3_combout\ = (\inst|esiguiente\(0)) # ((\S[1]~input_o\ & !\S[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datad => \inst|esiguiente\(0),
	combout => \inst|esiguiente[1]~3_combout\);

-- Location: LCCOMB_X20_Y30_N0
\inst|esiguiente[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|esiguiente[1]~4_combout\ = (\inst|esiguiente[1]~2_combout\ & (\inst|esiguiente\(1))) # (!\inst|esiguiente[1]~2_combout\ & (!\inst|esiguiente\(1) & \inst|esiguiente[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente[1]~2_combout\,
	datac => \inst|esiguiente\(1),
	datad => \inst|esiguiente[1]~3_combout\,
	combout => \inst|esiguiente[1]~4_combout\);

-- Location: FF_X20_Y30_N1
\inst|esiguiente[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	d => \inst|esiguiente[1]~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|esiguiente\(1));

-- Location: LCCOMB_X20_Y30_N6
\inst|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (\inst|esiguiente\(1) & (((\inst|esiguiente\(0))))) # (!\inst|esiguiente\(1) & (!\S[1]~input_o\ & (!\S[0]~input_o\ & !\inst|esiguiente\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \inst|esiguiente\(1),
	datad => \inst|esiguiente\(0),
	combout => \inst|Mux5~1_combout\);

-- Location: LCCOMB_X20_Y30_N24
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst|esiguiente\(2) & ((\inst|esiguiente\(3)) # (\inst|esiguiente\(1) $ (\inst|esiguiente\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente\(1),
	datab => \inst|esiguiente\(0),
	datac => \inst|esiguiente\(2),
	datad => \inst|esiguiente\(3),
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y30_N10
\inst|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~2_combout\ = (\inst|Mux5~0_combout\) # ((\inst|Mux5~1_combout\ & (!\inst|esiguiente\(2) & !\inst|esiguiente\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~1_combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst|esiguiente\(2),
	datad => \inst|esiguiente\(3),
	combout => \inst|Mux5~2_combout\);

-- Location: FF_X20_Y30_N11
\inst|esiguiente[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	d => \inst|Mux5~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|esiguiente\(2));

-- Location: LCCOMB_X19_Y30_N24
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|esiguiente\(0) & ((!\inst|esiguiente\(1)) # (!\inst|esiguiente\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|esiguiente\(2),
	datac => \inst|esiguiente\(1),
	datad => \inst|esiguiente\(0),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y30_N16
\inst|atras~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|atras~0_combout\ = (\RESET~input_o\ & ((!\inst|esiguiente\(2)) # (!\inst|esiguiente\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \inst|esiguiente\(3),
	datad => \inst|esiguiente\(2),
	combout => \inst|atras~0_combout\);

-- Location: FF_X19_Y30_N25
\inst|atras\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	d => \inst|Mux0~0_combout\,
	sclr => \inst|esiguiente\(3),
	ena => \inst|atras~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|atras~q\);

-- Location: LCCOMB_X20_Y30_N26
\inst|adelante~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adelante~0_combout\ = (\inst|esiguiente\(3)) # ((\S[1]~input_o\ & (\S[0]~input_o\ & !\inst|esiguiente\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \inst|esiguiente\(3),
	datad => \inst|esiguiente\(0),
	combout => \inst|adelante~0_combout\);

-- Location: LCCOMB_X20_Y30_N28
\inst|adelante~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adelante~1_combout\ = (\RESET~input_o\ & (!\inst|esiguiente\(2) & !\inst|esiguiente\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \inst|esiguiente\(2),
	datad => \inst|esiguiente\(1),
	combout => \inst|adelante~1_combout\);

-- Location: LCCOMB_X20_Y30_N30
\inst|adelante~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adelante~2_combout\ = (\inst|adelante~0_combout\ & ((\inst|adelante~1_combout\) # ((!\inst|atras~0_combout\ & \inst|adelante~q\)))) # (!\inst|adelante~0_combout\ & (!\inst|atras~0_combout\ & (\inst|adelante~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adelante~0_combout\,
	datab => \inst|atras~0_combout\,
	datac => \inst|adelante~q\,
	datad => \inst|adelante~1_combout\,
	combout => \inst|adelante~2_combout\);

-- Location: FF_X20_Y30_N31
\inst|adelante\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	d => \inst|adelante~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adelante~q\);

-- Location: LCCOMB_X20_Y30_N4
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (!\inst|esiguiente\(0) & (!\inst|esiguiente\(1) & \inst|esiguiente\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|esiguiente\(0),
	datac => \inst|esiguiente\(1),
	datad => \inst|esiguiente\(2),
	combout => \inst|Mux2~0_combout\);

-- Location: FF_X20_Y30_N5
\inst|giro_der\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	d => \inst|Mux2~0_combout\,
	asdata => \inst|esiguiente\(1),
	sload => \inst|esiguiente\(3),
	ena => \inst|atras~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|giro_der~q\);

-- Location: LCCOMB_X19_Y30_N2
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|esiguiente\(1) & ((\inst|esiguiente\(2)) # (!\inst|esiguiente\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|esiguiente\(2),
	datac => \inst|esiguiente\(1),
	datad => \inst|esiguiente\(0),
	combout => \inst|Mux1~0_combout\);

-- Location: FF_X19_Y30_N3
\inst|giro_izq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	d => \inst|Mux1~0_combout\,
	sclr => \inst|esiguiente\(3),
	ena => \inst|atras~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|giro_izq~q\);

-- Location: LCCOMB_X19_Y30_N8
\inst|out_epresente[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|out_epresente[3]~feeder_combout\ = \inst|esiguiente\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|esiguiente\(3),
	combout => \inst|out_epresente[3]~feeder_combout\);

-- Location: FF_X19_Y30_N9
\inst|out_epresente[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	d => \inst|out_epresente[3]~feeder_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_epresente\(3));

-- Location: LCCOMB_X19_Y30_N14
\inst|out_epresente[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|out_epresente[2]~feeder_combout\ = \inst|esiguiente\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|esiguiente\(2),
	combout => \inst|out_epresente[2]~feeder_combout\);

-- Location: FF_X19_Y30_N15
\inst|out_epresente[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	d => \inst|out_epresente[2]~feeder_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_epresente\(2));

-- Location: LCCOMB_X19_Y30_N12
\inst|out_epresente[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|out_epresente[1]~feeder_combout\ = \inst|esiguiente\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|esiguiente\(1),
	combout => \inst|out_epresente[1]~feeder_combout\);

-- Location: FF_X19_Y30_N13
\inst|out_epresente[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	d => \inst|out_epresente[1]~feeder_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_epresente\(1));

-- Location: LCCOMB_X19_Y30_N10
\inst|out_epresente[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|out_epresente[0]~feeder_combout\ = \inst|esiguiente\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|esiguiente\(0),
	combout => \inst|out_epresente[0]~feeder_combout\);

-- Location: FF_X19_Y30_N11
\inst|out_epresente[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	d => \inst|out_epresente[0]~feeder_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_epresente\(0));

ww_atras <= \atras~output_o\;

ww_adelante <= \adelante~output_o\;

ww_giro_der <= \giro_der~output_o\;

ww_giro_izq <= \giro_izq~output_o\;

ww_out_state(3) <= \out_state[3]~output_o\;

ww_out_state(2) <= \out_state[2]~output_o\;

ww_out_state(1) <= \out_state[1]~output_o\;

ww_out_state(0) <= \out_state[0]~output_o\;
END structure;


