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

-- DATE "05/02/2018 23:41:19"

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

ENTITY 	practica3 IS
    PORT (
	div_clk : OUT std_logic;
	clk : IN std_logic;
	reloj : OUT std_logic;
	boton : IN std_logic;
	dir_mem : OUT std_logic_vector(5 DOWNTO 0);
	s : IN std_logic_vector(1 DOWNTO 0);
	Estados : OUT std_logic_vector(3 DOWNTO 0);
	mem : OUT std_logic_vector(7 DOWNTO 0);
	reg_estados : OUT std_logic_vector(3 DOWNTO 0);
	reg_salidas : OUT std_logic_vector(3 DOWNTO 0);
	s_pwm : OUT std_logic_vector(1 DOWNTO 0);
	salidas10 : OUT std_logic_vector(3 DOWNTO 0);
	salidas_reg : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica3;

-- Design Ports Information
-- div_clk	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_mem[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_mem[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_mem[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_mem[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_mem[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_mem[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Estados[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Estados[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Estados[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Estados[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_estados[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_estados[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_estados[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_estados[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_salidas[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_salidas[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_salidas[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_salidas[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_pwm[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_pwm[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas10[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas10[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas10[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas10[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas_reg[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas_reg[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas_reg[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas_reg[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_div_clk : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_boton : std_logic;
SIGNAL ww_dir_mem : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Estados : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mem : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reg_estados : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_reg_salidas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s_pwm : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_salidas10 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_salidas_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|cuenta[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div_clk~output_o\ : std_logic;
SIGNAL \reloj~output_o\ : std_logic;
SIGNAL \dir_mem[5]~output_o\ : std_logic;
SIGNAL \dir_mem[4]~output_o\ : std_logic;
SIGNAL \dir_mem[3]~output_o\ : std_logic;
SIGNAL \dir_mem[2]~output_o\ : std_logic;
SIGNAL \dir_mem[1]~output_o\ : std_logic;
SIGNAL \dir_mem[0]~output_o\ : std_logic;
SIGNAL \Estados[3]~output_o\ : std_logic;
SIGNAL \Estados[2]~output_o\ : std_logic;
SIGNAL \Estados[1]~output_o\ : std_logic;
SIGNAL \Estados[0]~output_o\ : std_logic;
SIGNAL \mem[7]~output_o\ : std_logic;
SIGNAL \mem[6]~output_o\ : std_logic;
SIGNAL \mem[5]~output_o\ : std_logic;
SIGNAL \mem[4]~output_o\ : std_logic;
SIGNAL \mem[3]~output_o\ : std_logic;
SIGNAL \mem[2]~output_o\ : std_logic;
SIGNAL \mem[1]~output_o\ : std_logic;
SIGNAL \mem[0]~output_o\ : std_logic;
SIGNAL \reg_estados[3]~output_o\ : std_logic;
SIGNAL \reg_estados[2]~output_o\ : std_logic;
SIGNAL \reg_estados[1]~output_o\ : std_logic;
SIGNAL \reg_estados[0]~output_o\ : std_logic;
SIGNAL \reg_salidas[3]~output_o\ : std_logic;
SIGNAL \reg_salidas[2]~output_o\ : std_logic;
SIGNAL \reg_salidas[1]~output_o\ : std_logic;
SIGNAL \reg_salidas[0]~output_o\ : std_logic;
SIGNAL \s_pwm[1]~output_o\ : std_logic;
SIGNAL \s_pwm[0]~output_o\ : std_logic;
SIGNAL \salidas10[3]~output_o\ : std_logic;
SIGNAL \salidas10[2]~output_o\ : std_logic;
SIGNAL \salidas10[1]~output_o\ : std_logic;
SIGNAL \salidas10[0]~output_o\ : std_logic;
SIGNAL \salidas_reg[3]~output_o\ : std_logic;
SIGNAL \salidas_reg[2]~output_o\ : std_logic;
SIGNAL \salidas_reg[1]~output_o\ : std_logic;
SIGNAL \salidas_reg[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~51\ : std_logic;
SIGNAL \inst5|Add0~52_combout\ : std_logic;
SIGNAL \inst5|cuenta~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~53\ : std_logic;
SIGNAL \inst5|Add0~54_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|Equal0~7_combout\ : std_logic;
SIGNAL \inst5|Equal0~8_combout\ : std_logic;
SIGNAL \inst5|cuenta~0_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst5|Add0~33\ : std_logic;
SIGNAL \inst5|Add0~34_combout\ : std_logic;
SIGNAL \inst5|Add0~35\ : std_logic;
SIGNAL \inst5|Add0~36_combout\ : std_logic;
SIGNAL \inst5|Add0~37\ : std_logic;
SIGNAL \inst5|Add0~38_combout\ : std_logic;
SIGNAL \inst5|Add0~39\ : std_logic;
SIGNAL \inst5|Add0~40_combout\ : std_logic;
SIGNAL \inst5|Add0~41\ : std_logic;
SIGNAL \inst5|Add0~42_combout\ : std_logic;
SIGNAL \inst5|Add0~43\ : std_logic;
SIGNAL \inst5|Add0~44_combout\ : std_logic;
SIGNAL \inst5|Add0~45\ : std_logic;
SIGNAL \inst5|Add0~46_combout\ : std_logic;
SIGNAL \inst5|Add0~47\ : std_logic;
SIGNAL \inst5|Add0~48_combout\ : std_logic;
SIGNAL \inst5|Add0~49\ : std_logic;
SIGNAL \inst5|Add0~50_combout\ : std_logic;
SIGNAL \boton~input_o\ : std_logic;
SIGNAL \inst4|esiguiente~feeder_combout\ : std_logic;
SIGNAL \inst4|esiguiente~q\ : std_logic;
SIGNAL \inst4|reloj~0_combout\ : std_logic;
SIGNAL \inst4|reloj~q\ : std_logic;
SIGNAL \inst5|cuenta[25]~clkctrl_outclk\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \inst1|Q[0]~1_combout\ : std_logic;
SIGNAL \inst2|output[5]~3_combout\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \inst1|Q[1]~0_combout\ : std_logic;
SIGNAL \inst2|output[5]~4_combout\ : std_logic;
SIGNAL \inst2|output[5]~5_combout\ : std_logic;
SIGNAL \inst2|comb~5_combout\ : std_logic;
SIGNAL \inst2|comb~4_combout\ : std_logic;
SIGNAL \inst2|output[6]~1_combout\ : std_logic;
SIGNAL \inst2|output[6]~0_combout\ : std_logic;
SIGNAL \inst2|output[6]~2_combout\ : std_logic;
SIGNAL \inst2|comb~2_combout\ : std_logic;
SIGNAL \inst2|comb~3_combout\ : std_logic;
SIGNAL \inst2|output[4]~6_combout\ : std_logic;
SIGNAL \inst2|output[4]~7_combout\ : std_logic;
SIGNAL \inst2|comb~6_combout\ : std_logic;
SIGNAL \inst2|comb~7_combout\ : std_logic;
SIGNAL \inst2|comb~1_combout\ : std_logic;
SIGNAL \inst2|comb~0_combout\ : std_logic;
SIGNAL \inst2|comb~8_combout\ : std_logic;
SIGNAL \inst2|comb~9_combout\ : std_logic;
SIGNAL \inst2|comb~11_combout\ : std_logic;
SIGNAL \inst2|comb~10_combout\ : std_logic;
SIGNAL \inst2|comb~13_combout\ : std_logic;
SIGNAL \inst2|comb~12_combout\ : std_logic;
SIGNAL \inst2|comb~14_combout\ : std_logic;
SIGNAL \inst2|comb~15_combout\ : std_logic;
SIGNAL \inst14|Add0~0_combout\ : std_logic;
SIGNAL \inst14|cuenta~2_combout\ : std_logic;
SIGNAL \inst14|Add0~1\ : std_logic;
SIGNAL \inst14|Add0~2_combout\ : std_logic;
SIGNAL \inst14|Add0~3\ : std_logic;
SIGNAL \inst14|Add0~4_combout\ : std_logic;
SIGNAL \inst14|Add0~5\ : std_logic;
SIGNAL \inst14|Add0~6_combout\ : std_logic;
SIGNAL \inst14|cuenta~3_combout\ : std_logic;
SIGNAL \inst14|Add0~7\ : std_logic;
SIGNAL \inst14|Add0~8_combout\ : std_logic;
SIGNAL \inst14|cuenta~0_combout\ : std_logic;
SIGNAL \inst14|Add0~9\ : std_logic;
SIGNAL \inst14|Add0~10_combout\ : std_logic;
SIGNAL \inst14|Add0~11\ : std_logic;
SIGNAL \inst14|Add0~12_combout\ : std_logic;
SIGNAL \inst14|Add0~13\ : std_logic;
SIGNAL \inst14|Add0~14_combout\ : std_logic;
SIGNAL \inst14|cuenta~1_combout\ : std_logic;
SIGNAL \inst14|Add0~15\ : std_logic;
SIGNAL \inst14|Add0~16_combout\ : std_logic;
SIGNAL \inst14|Add0~17\ : std_logic;
SIGNAL \inst14|Add0~18_combout\ : std_logic;
SIGNAL \inst14|cuenta~4_combout\ : std_logic;
SIGNAL \inst14|Add0~19\ : std_logic;
SIGNAL \inst14|Add0~20_combout\ : std_logic;
SIGNAL \inst14|cuenta~5_combout\ : std_logic;
SIGNAL \inst14|Add0~21\ : std_logic;
SIGNAL \inst14|Add0~22_combout\ : std_logic;
SIGNAL \inst14|cuenta~6_combout\ : std_logic;
SIGNAL \inst14|Add0~23\ : std_logic;
SIGNAL \inst14|Add0~24_combout\ : std_logic;
SIGNAL \inst14|Add0~25\ : std_logic;
SIGNAL \inst14|Add0~26_combout\ : std_logic;
SIGNAL \inst14|Add0~27\ : std_logic;
SIGNAL \inst14|Add0~28_combout\ : std_logic;
SIGNAL \inst14|Add0~29\ : std_logic;
SIGNAL \inst14|Add0~30_combout\ : std_logic;
SIGNAL \inst14|cuenta~7_combout\ : std_logic;
SIGNAL \inst14|Equal0~1_combout\ : std_logic;
SIGNAL \inst14|Equal0~2_combout\ : std_logic;
SIGNAL \inst14|Add0~31\ : std_logic;
SIGNAL \inst14|Add0~33\ : std_logic;
SIGNAL \inst14|Add0~34_combout\ : std_logic;
SIGNAL \inst14|Add0~35\ : std_logic;
SIGNAL \inst14|Add0~36_combout\ : std_logic;
SIGNAL \inst14|Add0~37\ : std_logic;
SIGNAL \inst14|Add0~38_combout\ : std_logic;
SIGNAL \inst14|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|Equal0~4_combout\ : std_logic;
SIGNAL \inst14|Equal0~3_combout\ : std_logic;
SIGNAL \inst14|Equal0~5_combout\ : std_logic;
SIGNAL \inst14|Equal0~6_combout\ : std_logic;
SIGNAL \inst14|Add0~32_combout\ : std_logic;
SIGNAL \inst14|cuenta~8_combout\ : std_logic;
SIGNAL \inst14|LessThan0~3_combout\ : std_logic;
SIGNAL \inst14|LessThan0~0_combout\ : std_logic;
SIGNAL \inst14|LessThan0~1_combout\ : std_logic;
SIGNAL \inst14|LessThan0~2_combout\ : std_logic;
SIGNAL \inst14|LessThan0~4_combout\ : std_logic;
SIGNAL \inst14|LessThan0~5_combout\ : std_logic;
SIGNAL \inst14|t_on[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst1|Q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst14|t_on\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|cuenta\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst2|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

div_clk <= ww_div_clk;
ww_clk <= clk;
reloj <= ww_reloj;
ww_boton <= boton;
dir_mem <= ww_dir_mem;
ww_s <= s;
Estados <= ww_Estados;
mem <= ww_mem;
reg_estados <= ww_reg_estados;
reg_salidas <= ww_reg_salidas;
s_pwm <= ww_s_pwm;
salidas10 <= ww_salidas10;
salidas_reg <= ww_salidas_reg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|cuenta[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|cuenta\(25));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst2|ALT_INV_output\(0) <= NOT \inst2|output\(0);
\inst2|ALT_INV_output\(1) <= NOT \inst2|output\(1);
\inst2|ALT_INV_output\(2) <= NOT \inst2|output\(2);
\inst2|ALT_INV_output\(3) <= NOT \inst2|output\(3);
\inst2|ALT_INV_output\(4) <= NOT \inst2|output\(4);
\inst2|ALT_INV_output\(5) <= NOT \inst2|output\(5);
\inst2|ALT_INV_output\(6) <= NOT \inst2|output\(6);
\inst2|ALT_INV_output\(7) <= NOT \inst2|output\(7);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N23
\div_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|cuenta\(25),
	devoe => ww_devoe,
	o => \div_clk~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\reloj~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|reloj~q\,
	devoe => ww_devoe,
	o => \reloj~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\dir_mem[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(5),
	devoe => ww_devoe,
	o => \dir_mem[5]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\dir_mem[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(4),
	devoe => ww_devoe,
	o => \dir_mem[4]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\dir_mem[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(3),
	devoe => ww_devoe,
	o => \dir_mem[3]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\dir_mem[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(2),
	devoe => ww_devoe,
	o => \dir_mem[2]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\dir_mem[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(1),
	devoe => ww_devoe,
	o => \dir_mem[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\dir_mem[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(0),
	devoe => ww_devoe,
	o => \dir_mem[0]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\Estados[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(7),
	devoe => ww_devoe,
	o => \Estados[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\Estados[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(6),
	devoe => ww_devoe,
	o => \Estados[2]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\Estados[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(5),
	devoe => ww_devoe,
	o => \Estados[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\Estados[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(4),
	devoe => ww_devoe,
	o => \Estados[0]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\mem[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(7),
	devoe => ww_devoe,
	o => \mem[7]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\mem[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(6),
	devoe => ww_devoe,
	o => \mem[6]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\mem[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(5),
	devoe => ww_devoe,
	o => \mem[5]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\mem[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(4),
	devoe => ww_devoe,
	o => \mem[4]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\mem[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(3),
	devoe => ww_devoe,
	o => \mem[3]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\mem[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(2),
	devoe => ww_devoe,
	o => \mem[2]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\mem[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(1),
	devoe => ww_devoe,
	o => \mem[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\mem[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(0),
	devoe => ww_devoe,
	o => \mem[0]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\reg_estados[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_output\(7),
	devoe => ww_devoe,
	o => \reg_estados[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\reg_estados[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_output\(6),
	devoe => ww_devoe,
	o => \reg_estados[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\reg_estados[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_output\(5),
	devoe => ww_devoe,
	o => \reg_estados[1]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\reg_estados[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_output\(4),
	devoe => ww_devoe,
	o => \reg_estados[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\reg_salidas[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_output\(3),
	devoe => ww_devoe,
	o => \reg_salidas[3]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\reg_salidas[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_output\(2),
	devoe => ww_devoe,
	o => \reg_salidas[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\reg_salidas[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_output\(1),
	devoe => ww_devoe,
	o => \reg_salidas[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\reg_salidas[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_output\(0),
	devoe => ww_devoe,
	o => \reg_salidas[0]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\s_pwm[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|t_on\(1),
	devoe => ww_devoe,
	o => \s_pwm[1]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\s_pwm[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|t_on\(0),
	devoe => ww_devoe,
	o => \s_pwm[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\salidas10[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(3),
	devoe => ww_devoe,
	o => \salidas10[3]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\salidas10[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(2),
	devoe => ww_devoe,
	o => \salidas10[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\salidas10[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(1),
	devoe => ww_devoe,
	o => \salidas10[1]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\salidas10[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|output\(0),
	devoe => ww_devoe,
	o => \salidas10[0]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\salidas_reg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Q\(3),
	devoe => ww_devoe,
	o => \salidas_reg[3]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\salidas_reg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Q\(2),
	devoe => ww_devoe,
	o => \salidas_reg[2]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\salidas_reg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Q\(1),
	devoe => ww_devoe,
	o => \salidas_reg[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\salidas_reg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Q\(0),
	devoe => ww_devoe,
	o => \salidas_reg[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X19_Y4_N4
\inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|cuenta\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X19_Y3_N22
\inst5|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~50_combout\ = (\inst5|cuenta\(25) & (!\inst5|Add0~49\)) # (!\inst5|cuenta\(25) & ((\inst5|Add0~49\) # (GND)))
-- \inst5|Add0~51\ = CARRY((!\inst5|Add0~49\) # (!\inst5|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(25),
	datad => VCC,
	cin => \inst5|Add0~49\,
	combout => \inst5|Add0~50_combout\,
	cout => \inst5|Add0~51\);

-- Location: LCCOMB_X19_Y3_N24
\inst5|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~52_combout\ = (\inst5|cuenta\(26) & (\inst5|Add0~51\ $ (GND))) # (!\inst5|cuenta\(26) & (!\inst5|Add0~51\ & VCC))
-- \inst5|Add0~53\ = CARRY((\inst5|cuenta\(26) & !\inst5|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(26),
	datad => VCC,
	cin => \inst5|Add0~51\,
	combout => \inst5|Add0~52_combout\,
	cout => \inst5|Add0~53\);

-- Location: LCCOMB_X19_Y3_N28
\inst5|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|cuenta~1_combout\ = (!\inst5|Equal0~8_combout\ & \inst5|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~8_combout\,
	datad => \inst5|Add0~52_combout\,
	combout => \inst5|cuenta~1_combout\);

-- Location: FF_X19_Y3_N29
\inst5|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(26));

-- Location: LCCOMB_X18_Y3_N0
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (!\inst5|cuenta\(16) & (!\inst5|cuenta\(19) & (!\inst5|cuenta\(18) & !\inst5|cuenta\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(16),
	datab => \inst5|cuenta\(19),
	datac => \inst5|cuenta\(18),
	datad => \inst5|cuenta\(17),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y3_N26
\inst5|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~54_combout\ = \inst5|cuenta\(27) $ (\inst5|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(27),
	cin => \inst5|Add0~53\,
	combout => \inst5|Add0~54_combout\);

-- Location: FF_X19_Y3_N27
\inst5|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(27));

-- Location: LCCOMB_X18_Y4_N8
\inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (!\inst5|cuenta\(2) & (!\inst5|cuenta\(0) & (!\inst5|cuenta\(1) & !\inst5|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(2),
	datab => \inst5|cuenta\(0),
	datac => \inst5|cuenta\(1),
	datad => \inst5|cuenta\(3),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y4_N2
\inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|cuenta\(4) & (!\inst5|cuenta\(7) & (!\inst5|cuenta\(5) & !\inst5|cuenta\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(4),
	datab => \inst5|cuenta\(7),
	datac => \inst5|cuenta\(5),
	datad => \inst5|cuenta\(6),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y4_N2
\inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|cuenta\(8) & (!\inst5|cuenta\(10) & (!\inst5|cuenta\(11) & !\inst5|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(8),
	datab => \inst5|cuenta\(10),
	datac => \inst5|cuenta\(11),
	datad => \inst5|cuenta\(9),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y3_N30
\inst5|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (!\inst5|cuenta\(20) & (!\inst5|cuenta\(22) & (!\inst5|cuenta\(21) & !\inst5|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(20),
	datab => \inst5|cuenta\(22),
	datac => \inst5|cuenta\(21),
	datad => \inst5|cuenta\(23),
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X18_Y4_N0
\inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (!\inst5|cuenta\(13) & (!\inst5|cuenta\(12) & (!\inst5|cuenta\(15) & !\inst5|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(13),
	datab => \inst5|cuenta\(12),
	datac => \inst5|cuenta\(15),
	datad => \inst5|cuenta\(14),
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y4_N10
\inst5|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (\inst5|Equal0~2_combout\ & (\inst5|Equal0~3_combout\ & (\inst5|Equal0~5_combout\ & \inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~2_combout\,
	datab => \inst5|Equal0~3_combout\,
	datac => \inst5|Equal0~5_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y4_N12
\inst5|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (!\inst5|cuenta\(24) & (!\inst5|cuenta\(27) & (\inst5|Equal0~1_combout\ & \inst5|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(24),
	datab => \inst5|cuenta\(27),
	datac => \inst5|Equal0~1_combout\,
	datad => \inst5|Equal0~6_combout\,
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y4_N18
\inst5|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~8_combout\ = (\inst5|cuenta\(26) & (\inst5|Equal0~0_combout\ & (!\inst5|cuenta\(25) & \inst5|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(26),
	datab => \inst5|Equal0~0_combout\,
	datac => \inst5|cuenta\(25),
	datad => \inst5|Equal0~7_combout\,
	combout => \inst5|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y4_N0
\inst5|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|cuenta~0_combout\ = (\inst5|Add0~0_combout\ & !\inst5|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~0_combout\,
	datac => \inst5|Equal0~8_combout\,
	combout => \inst5|cuenta~0_combout\);

-- Location: FF_X19_Y4_N1
\inst5|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(0));

-- Location: LCCOMB_X19_Y4_N6
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|cuenta\(1) & (!\inst5|Add0~1\)) # (!\inst5|cuenta\(1) & ((\inst5|Add0~1\) # (GND)))
-- \inst5|Add0~3\ = CARRY((!\inst5|Add0~1\) # (!\inst5|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: FF_X19_Y4_N7
\inst5|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(1));

-- Location: LCCOMB_X19_Y4_N8
\inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|cuenta\(2) & (\inst5|Add0~3\ $ (GND))) # (!\inst5|cuenta\(2) & (!\inst5|Add0~3\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst5|cuenta\(2) & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: FF_X19_Y4_N9
\inst5|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(2));

-- Location: LCCOMB_X19_Y4_N10
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|cuenta\(3) & (!\inst5|Add0~5\)) # (!\inst5|cuenta\(3) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst5|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: FF_X19_Y4_N11
\inst5|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(3));

-- Location: LCCOMB_X19_Y4_N12
\inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|cuenta\(4) & (\inst5|Add0~7\ $ (GND))) # (!\inst5|cuenta\(4) & (!\inst5|Add0~7\ & VCC))
-- \inst5|Add0~9\ = CARRY((\inst5|cuenta\(4) & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: FF_X19_Y4_N13
\inst5|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(4));

-- Location: LCCOMB_X19_Y4_N14
\inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|cuenta\(5) & (!\inst5|Add0~9\)) # (!\inst5|cuenta\(5) & ((\inst5|Add0~9\) # (GND)))
-- \inst5|Add0~11\ = CARRY((!\inst5|Add0~9\) # (!\inst5|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: FF_X19_Y4_N15
\inst5|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(5));

-- Location: LCCOMB_X19_Y4_N16
\inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|cuenta\(6) & (\inst5|Add0~11\ $ (GND))) # (!\inst5|cuenta\(6) & (!\inst5|Add0~11\ & VCC))
-- \inst5|Add0~13\ = CARRY((\inst5|cuenta\(6) & !\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: FF_X19_Y4_N17
\inst5|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(6));

-- Location: LCCOMB_X19_Y4_N18
\inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|cuenta\(7) & (!\inst5|Add0~13\)) # (!\inst5|cuenta\(7) & ((\inst5|Add0~13\) # (GND)))
-- \inst5|Add0~15\ = CARRY((!\inst5|Add0~13\) # (!\inst5|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: FF_X19_Y4_N19
\inst5|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(7));

-- Location: LCCOMB_X19_Y4_N20
\inst5|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|cuenta\(8) & (\inst5|Add0~15\ $ (GND))) # (!\inst5|cuenta\(8) & (!\inst5|Add0~15\ & VCC))
-- \inst5|Add0~17\ = CARRY((\inst5|cuenta\(8) & !\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: FF_X19_Y4_N21
\inst5|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(8));

-- Location: LCCOMB_X19_Y4_N22
\inst5|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|cuenta\(9) & (!\inst5|Add0~17\)) # (!\inst5|cuenta\(9) & ((\inst5|Add0~17\) # (GND)))
-- \inst5|Add0~19\ = CARRY((!\inst5|Add0~17\) # (!\inst5|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: FF_X19_Y4_N23
\inst5|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(9));

-- Location: LCCOMB_X19_Y4_N24
\inst5|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|cuenta\(10) & (\inst5|Add0~19\ $ (GND))) # (!\inst5|cuenta\(10) & (!\inst5|Add0~19\ & VCC))
-- \inst5|Add0~21\ = CARRY((\inst5|cuenta\(10) & !\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: FF_X19_Y4_N25
\inst5|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(10));

-- Location: LCCOMB_X19_Y4_N26
\inst5|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|cuenta\(11) & (!\inst5|Add0~21\)) # (!\inst5|cuenta\(11) & ((\inst5|Add0~21\) # (GND)))
-- \inst5|Add0~23\ = CARRY((!\inst5|Add0~21\) # (!\inst5|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: FF_X19_Y4_N27
\inst5|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(11));

-- Location: LCCOMB_X19_Y4_N28
\inst5|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|cuenta\(12) & (\inst5|Add0~23\ $ (GND))) # (!\inst5|cuenta\(12) & (!\inst5|Add0~23\ & VCC))
-- \inst5|Add0~25\ = CARRY((\inst5|cuenta\(12) & !\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: FF_X19_Y4_N29
\inst5|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(12));

-- Location: LCCOMB_X19_Y4_N30
\inst5|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|cuenta\(13) & (!\inst5|Add0~25\)) # (!\inst5|cuenta\(13) & ((\inst5|Add0~25\) # (GND)))
-- \inst5|Add0~27\ = CARRY((!\inst5|Add0~25\) # (!\inst5|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: FF_X19_Y4_N31
\inst5|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(13));

-- Location: LCCOMB_X19_Y3_N0
\inst5|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|cuenta\(14) & (\inst5|Add0~27\ $ (GND))) # (!\inst5|cuenta\(14) & (!\inst5|Add0~27\ & VCC))
-- \inst5|Add0~29\ = CARRY((\inst5|cuenta\(14) & !\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: FF_X19_Y3_N1
\inst5|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(14));

-- Location: LCCOMB_X19_Y3_N2
\inst5|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = (\inst5|cuenta\(15) & (!\inst5|Add0~29\)) # (!\inst5|cuenta\(15) & ((\inst5|Add0~29\) # (GND)))
-- \inst5|Add0~31\ = CARRY((!\inst5|Add0~29\) # (!\inst5|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(15),
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: FF_X19_Y3_N3
\inst5|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(15));

-- Location: LCCOMB_X19_Y3_N4
\inst5|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = (\inst5|cuenta\(16) & (\inst5|Add0~31\ $ (GND))) # (!\inst5|cuenta\(16) & (!\inst5|Add0~31\ & VCC))
-- \inst5|Add0~33\ = CARRY((\inst5|cuenta\(16) & !\inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(16),
	datad => VCC,
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\,
	cout => \inst5|Add0~33\);

-- Location: FF_X19_Y3_N5
\inst5|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(16));

-- Location: LCCOMB_X19_Y3_N6
\inst5|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~34_combout\ = (\inst5|cuenta\(17) & (!\inst5|Add0~33\)) # (!\inst5|cuenta\(17) & ((\inst5|Add0~33\) # (GND)))
-- \inst5|Add0~35\ = CARRY((!\inst5|Add0~33\) # (!\inst5|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(17),
	datad => VCC,
	cin => \inst5|Add0~33\,
	combout => \inst5|Add0~34_combout\,
	cout => \inst5|Add0~35\);

-- Location: FF_X19_Y3_N7
\inst5|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(17));

-- Location: LCCOMB_X19_Y3_N8
\inst5|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~36_combout\ = (\inst5|cuenta\(18) & (\inst5|Add0~35\ $ (GND))) # (!\inst5|cuenta\(18) & (!\inst5|Add0~35\ & VCC))
-- \inst5|Add0~37\ = CARRY((\inst5|cuenta\(18) & !\inst5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(18),
	datad => VCC,
	cin => \inst5|Add0~35\,
	combout => \inst5|Add0~36_combout\,
	cout => \inst5|Add0~37\);

-- Location: FF_X19_Y3_N9
\inst5|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(18));

-- Location: LCCOMB_X19_Y3_N10
\inst5|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~38_combout\ = (\inst5|cuenta\(19) & (!\inst5|Add0~37\)) # (!\inst5|cuenta\(19) & ((\inst5|Add0~37\) # (GND)))
-- \inst5|Add0~39\ = CARRY((!\inst5|Add0~37\) # (!\inst5|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(19),
	datad => VCC,
	cin => \inst5|Add0~37\,
	combout => \inst5|Add0~38_combout\,
	cout => \inst5|Add0~39\);

-- Location: FF_X19_Y3_N11
\inst5|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(19));

-- Location: LCCOMB_X19_Y3_N12
\inst5|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~40_combout\ = (\inst5|cuenta\(20) & (\inst5|Add0~39\ $ (GND))) # (!\inst5|cuenta\(20) & (!\inst5|Add0~39\ & VCC))
-- \inst5|Add0~41\ = CARRY((\inst5|cuenta\(20) & !\inst5|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(20),
	datad => VCC,
	cin => \inst5|Add0~39\,
	combout => \inst5|Add0~40_combout\,
	cout => \inst5|Add0~41\);

-- Location: FF_X19_Y3_N13
\inst5|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(20));

-- Location: LCCOMB_X19_Y3_N14
\inst5|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~42_combout\ = (\inst5|cuenta\(21) & (!\inst5|Add0~41\)) # (!\inst5|cuenta\(21) & ((\inst5|Add0~41\) # (GND)))
-- \inst5|Add0~43\ = CARRY((!\inst5|Add0~41\) # (!\inst5|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(21),
	datad => VCC,
	cin => \inst5|Add0~41\,
	combout => \inst5|Add0~42_combout\,
	cout => \inst5|Add0~43\);

-- Location: FF_X19_Y3_N15
\inst5|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(21));

-- Location: LCCOMB_X19_Y3_N16
\inst5|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~44_combout\ = (\inst5|cuenta\(22) & (\inst5|Add0~43\ $ (GND))) # (!\inst5|cuenta\(22) & (!\inst5|Add0~43\ & VCC))
-- \inst5|Add0~45\ = CARRY((\inst5|cuenta\(22) & !\inst5|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(22),
	datad => VCC,
	cin => \inst5|Add0~43\,
	combout => \inst5|Add0~44_combout\,
	cout => \inst5|Add0~45\);

-- Location: FF_X19_Y3_N17
\inst5|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(22));

-- Location: LCCOMB_X19_Y3_N18
\inst5|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~46_combout\ = (\inst5|cuenta\(23) & (!\inst5|Add0~45\)) # (!\inst5|cuenta\(23) & ((\inst5|Add0~45\) # (GND)))
-- \inst5|Add0~47\ = CARRY((!\inst5|Add0~45\) # (!\inst5|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(23),
	datad => VCC,
	cin => \inst5|Add0~45\,
	combout => \inst5|Add0~46_combout\,
	cout => \inst5|Add0~47\);

-- Location: FF_X19_Y3_N19
\inst5|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(23));

-- Location: LCCOMB_X19_Y3_N20
\inst5|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~48_combout\ = (\inst5|cuenta\(24) & (\inst5|Add0~47\ $ (GND))) # (!\inst5|cuenta\(24) & (!\inst5|Add0~47\ & VCC))
-- \inst5|Add0~49\ = CARRY((\inst5|cuenta\(24) & !\inst5|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(24),
	datad => VCC,
	cin => \inst5|Add0~47\,
	combout => \inst5|Add0~48_combout\,
	cout => \inst5|Add0~49\);

-- Location: FF_X19_Y3_N21
\inst5|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(24));

-- Location: FF_X19_Y3_N23
\inst5|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(25));

-- Location: IOIBUF_X53_Y14_N1
\boton~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton,
	o => \boton~input_o\);

-- Location: LCCOMB_X52_Y14_N18
\inst4|esiguiente~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|esiguiente~feeder_combout\ = \boton~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton~input_o\,
	combout => \inst4|esiguiente~feeder_combout\);

-- Location: FF_X52_Y14_N19
\inst4|esiguiente\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|esiguiente~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|esiguiente~q\);

-- Location: LCCOMB_X52_Y14_N20
\inst4|reloj~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reloj~0_combout\ = (!\boton~input_o\ & \inst4|esiguiente~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \boton~input_o\,
	datad => \inst4|esiguiente~q\,
	combout => \inst4|reloj~0_combout\);

-- Location: FF_X52_Y14_N21
\inst4|reloj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|reloj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reloj~q\);

-- Location: CLKCTRL_G19
\inst5|cuenta[25]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|cuenta[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|cuenta[25]~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N22
\s[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

-- Location: LCCOMB_X9_Y30_N4
\inst1|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Q[0]~1_combout\ = !\s[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s[0]~input_o\,
	combout => \inst1|Q[0]~1_combout\);

-- Location: FF_X9_Y30_N5
\inst1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|cuenta[25]~clkctrl_outclk\,
	d => \inst1|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(0));

-- Location: LCCOMB_X8_Y30_N10
\inst2|output[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[5]~3_combout\ = (\inst1|Q\(2) & (((!\inst1|Q\(4) & !\inst1|Q\(3))))) # (!\inst1|Q\(2) & (\inst1|Q\(3) & (\inst1|Q\(5) $ (\inst1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst1|Q\(5),
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(3),
	combout => \inst2|output[5]~3_combout\);

-- Location: IOIBUF_X27_Y0_N15
\s[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

-- Location: LCCOMB_X23_Y33_N8
\inst1|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Q[1]~0_combout\ = !\s[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s[1]~input_o\,
	combout => \inst1|Q[1]~0_combout\);

-- Location: FF_X23_Y33_N9
\inst1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|cuenta[25]~clkctrl_outclk\,
	d => \inst1|Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(1));

-- Location: LCCOMB_X17_Y33_N4
\inst2|output[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[5]~4_combout\ = (\inst1|Q\(2)) # ((\inst1|Q\(1) & (!\inst1|Q\(4) & !\inst1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst1|Q\(2),
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(0),
	combout => \inst2|output[5]~4_combout\);

-- Location: LCCOMB_X17_Y33_N22
\inst2|output[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[5]~5_combout\ = (\inst2|output[5]~3_combout\) # ((\inst2|output[5]~4_combout\ & (!\inst1|Q\(3) & !\inst1|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[5]~3_combout\,
	datab => \inst2|output[5]~4_combout\,
	datac => \inst1|Q\(3),
	datad => \inst1|Q\(5),
	combout => \inst2|output[5]~5_combout\);

-- Location: LCCOMB_X17_Y33_N6
\inst2|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~5_combout\ = (\inst2|output[5]~5_combout\ & ((!\inst1|Q\(5)) # (!\inst1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[5]~5_combout\,
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(5),
	combout => \inst2|comb~5_combout\);

-- Location: LCCOMB_X17_Y33_N20
\inst2|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~4_combout\ = (!\inst2|output[5]~5_combout\ & ((!\inst1|Q\(5)) # (!\inst1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[5]~5_combout\,
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(5),
	combout => \inst2|comb~4_combout\);

-- Location: LCCOMB_X17_Y33_N10
\inst2|output[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output\(5) = (!\inst2|comb~4_combout\ & ((\inst2|comb~5_combout\) # (\inst2|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|comb~5_combout\,
	datac => \inst2|comb~4_combout\,
	datad => \inst2|output\(5),
	combout => \inst2|output\(5));

-- Location: FF_X17_Y33_N11
\inst1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|cuenta[25]~clkctrl_outclk\,
	d => \inst2|output\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(3));

-- Location: LCCOMB_X17_Y33_N24
\inst2|output[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[6]~1_combout\ = (\inst1|Q\(3) & (((\inst1|Q\(4))))) # (!\inst1|Q\(3) & (\inst1|Q\(0) & (!\inst1|Q\(4) & \inst1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst1|Q\(3),
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(1),
	combout => \inst2|output[6]~1_combout\);

-- Location: LCCOMB_X17_Y33_N18
\inst2|output[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[6]~0_combout\ = (\inst1|Q\(2) & (!\inst1|Q\(5) & (\inst1|Q\(4) $ (\inst1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst1|Q\(2),
	datac => \inst1|Q\(3),
	datad => \inst1|Q\(5),
	combout => \inst2|output[6]~0_combout\);

-- Location: LCCOMB_X17_Y33_N30
\inst2|output[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[6]~2_combout\ = (\inst2|output[6]~0_combout\) # ((!\inst1|Q\(5) & (\inst2|output[6]~1_combout\ & !\inst1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(5),
	datab => \inst2|output[6]~1_combout\,
	datac => \inst1|Q\(2),
	datad => \inst2|output[6]~0_combout\,
	combout => \inst2|output[6]~2_combout\);

-- Location: LCCOMB_X17_Y33_N16
\inst2|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~2_combout\ = (!\inst2|output[6]~2_combout\ & ((!\inst1|Q\(5)) # (!\inst1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[6]~2_combout\,
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(5),
	combout => \inst2|comb~2_combout\);

-- Location: LCCOMB_X17_Y33_N14
\inst2|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~3_combout\ = (\inst2|output[6]~2_combout\ & ((!\inst1|Q\(5)) # (!\inst1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[6]~2_combout\,
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(5),
	combout => \inst2|comb~3_combout\);

-- Location: LCCOMB_X17_Y33_N12
\inst2|output[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output\(6) = (!\inst2|comb~2_combout\ & ((\inst2|comb~3_combout\) # (\inst2|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|comb~2_combout\,
	datac => \inst2|comb~3_combout\,
	datad => \inst2|output\(6),
	combout => \inst2|output\(6));

-- Location: FF_X17_Y33_N13
\inst1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|cuenta[25]~clkctrl_outclk\,
	d => \inst2|output\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(4));

-- Location: LCCOMB_X17_Y33_N8
\inst2|output[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[4]~6_combout\ = (\inst1|Q\(5)) # ((!\inst1|Q\(3) & ((\inst1|Q\(0)) # (\inst1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst1|Q\(3),
	datac => \inst1|Q\(5),
	datad => \inst1|Q\(1),
	combout => \inst2|output[4]~6_combout\);

-- Location: LCCOMB_X17_Y33_N2
\inst2|output[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[4]~7_combout\ = (!\inst1|Q\(2) & ((\inst1|Q\(4) & (\inst1|Q\(3) & !\inst2|output[4]~6_combout\)) # (!\inst1|Q\(4) & ((\inst2|output[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst1|Q\(3),
	datac => \inst1|Q\(2),
	datad => \inst2|output[4]~6_combout\,
	combout => \inst2|output[4]~7_combout\);

-- Location: LCCOMB_X17_Y33_N0
\inst2|comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~6_combout\ = (!\inst2|output[4]~7_combout\ & ((!\inst1|Q\(4)) # (!\inst1|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(5),
	datab => \inst2|output[4]~7_combout\,
	datac => \inst1|Q\(4),
	combout => \inst2|comb~6_combout\);

-- Location: LCCOMB_X17_Y33_N26
\inst2|comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~7_combout\ = (\inst2|output[4]~7_combout\ & ((!\inst1|Q\(4)) # (!\inst1|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(5),
	datab => \inst2|output[4]~7_combout\,
	datac => \inst1|Q\(4),
	combout => \inst2|comb~7_combout\);

-- Location: LCCOMB_X17_Y33_N28
\inst2|output[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output\(4) = (!\inst2|comb~6_combout\ & ((\inst2|comb~7_combout\) # (\inst2|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|comb~6_combout\,
	datac => \inst2|comb~7_combout\,
	datad => \inst2|output\(4),
	combout => \inst2|output\(4));

-- Location: FF_X17_Y33_N29
\inst1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|cuenta[25]~clkctrl_outclk\,
	d => \inst2|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(2));

-- Location: LCCOMB_X8_Y30_N4
\inst2|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~1_combout\ = (\inst1|Q\(5) & (!\inst1|Q\(4) & ((!\inst1|Q\(3)) # (!\inst1|Q\(2))))) # (!\inst1|Q\(5) & (\inst1|Q\(2) & (\inst1|Q\(4) & \inst1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst1|Q\(5),
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(3),
	combout => \inst2|comb~1_combout\);

-- Location: LCCOMB_X8_Y30_N26
\inst2|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~0_combout\ = (\inst1|Q\(2) & ((\inst1|Q\(3) & ((!\inst1|Q\(4)))) # (!\inst1|Q\(3) & (!\inst1|Q\(5))))) # (!\inst1|Q\(2) & (!\inst1|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst1|Q\(5),
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(3),
	combout => \inst2|comb~0_combout\);

-- Location: LCCOMB_X8_Y30_N20
\inst2|output[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output\(7) = (!\inst2|comb~0_combout\ & ((\inst2|comb~1_combout\) # (\inst2|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|comb~1_combout\,
	datac => \inst2|comb~0_combout\,
	datad => \inst2|output\(7),
	combout => \inst2|output\(7));

-- Location: FF_X8_Y30_N21
\inst1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|cuenta[25]~clkctrl_outclk\,
	d => \inst2|output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(5));

-- Location: LCCOMB_X8_Y30_N12
\inst2|comb~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~8_combout\ = (\inst1|Q\(5) & (((!\inst1|Q\(4))))) # (!\inst1|Q\(5) & (!\inst1|Q\(2) & ((!\inst1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst1|Q\(5),
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(3),
	combout => \inst2|comb~8_combout\);

-- Location: LCCOMB_X8_Y30_N18
\inst2|comb~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~9_combout\ = (!\inst1|Q\(5) & ((\inst1|Q\(2)) # (\inst1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(5),
	datac => \inst1|Q\(2),
	datad => \inst1|Q\(3),
	combout => \inst2|comb~9_combout\);

-- Location: LCCOMB_X8_Y30_N6
\inst2|output[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output\(3) = (!\inst2|comb~8_combout\ & ((\inst2|comb~9_combout\) # (\inst2|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|comb~8_combout\,
	datab => \inst2|comb~9_combout\,
	datad => \inst2|output\(3),
	combout => \inst2|output\(3));

-- Location: LCCOMB_X8_Y30_N30
\inst2|comb~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~11_combout\ = (\inst1|Q\(5) & (((!\inst1|Q\(4))))) # (!\inst1|Q\(5) & (!\inst1|Q\(2) & (\inst1|Q\(4) & !\inst1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst1|Q\(5),
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(3),
	combout => \inst2|comb~11_combout\);

-- Location: LCCOMB_X8_Y30_N0
\inst2|comb~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~10_combout\ = (!\inst1|Q\(5) & ((\inst1|Q\(2)) # ((\inst1|Q\(3)) # (!\inst1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst1|Q\(5),
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(3),
	combout => \inst2|comb~10_combout\);

-- Location: LCCOMB_X8_Y30_N28
\inst2|output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output\(2) = (!\inst2|comb~10_combout\ & ((\inst2|comb~11_combout\) # (\inst2|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|comb~11_combout\,
	datab => \inst2|comb~10_combout\,
	datad => \inst2|output\(2),
	combout => \inst2|output\(2));

-- Location: LCCOMB_X8_Y30_N22
\inst2|comb~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~13_combout\ = (\inst1|Q\(5) & (((!\inst1|Q\(4) & \inst1|Q\(3))))) # (!\inst1|Q\(5) & ((\inst1|Q\(4) & ((!\inst1|Q\(3)))) # (!\inst1|Q\(4) & (\inst1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst1|Q\(5),
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(3),
	combout => \inst2|comb~13_combout\);

-- Location: LCCOMB_X8_Y30_N8
\inst2|comb~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~12_combout\ = (\inst1|Q\(5) & (((!\inst1|Q\(4) & !\inst1|Q\(3))))) # (!\inst1|Q\(5) & ((\inst1|Q\(4) & ((\inst1|Q\(3)))) # (!\inst1|Q\(4) & (!\inst1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst1|Q\(5),
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(3),
	combout => \inst2|comb~12_combout\);

-- Location: LCCOMB_X8_Y30_N2
\inst2|output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output\(1) = (!\inst2|comb~12_combout\ & ((\inst2|comb~13_combout\) # (\inst2|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|comb~13_combout\,
	datac => \inst2|comb~12_combout\,
	datad => \inst2|output\(1),
	combout => \inst2|output\(1));

-- Location: LCCOMB_X8_Y30_N24
\inst2|comb~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~14_combout\ = (\inst1|Q\(3) & (!\inst1|Q\(4) & ((\inst1|Q\(2)) # (\inst1|Q\(5))))) # (!\inst1|Q\(3) & (((!\inst1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst1|Q\(5),
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(3),
	combout => \inst2|comb~14_combout\);

-- Location: LCCOMB_X8_Y30_N14
\inst2|comb~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~15_combout\ = (\inst1|Q\(5) & (((!\inst1|Q\(4) & !\inst1|Q\(3))))) # (!\inst1|Q\(5) & (\inst1|Q\(3) & ((\inst1|Q\(4)) # (!\inst1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst1|Q\(5),
	datac => \inst1|Q\(4),
	datad => \inst1|Q\(3),
	combout => \inst2|comb~15_combout\);

-- Location: LCCOMB_X8_Y30_N16
\inst2|output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output\(0) = (!\inst2|comb~14_combout\ & ((\inst2|comb~15_combout\) # (\inst2|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|comb~14_combout\,
	datac => \inst2|comb~15_combout\,
	datad => \inst2|output\(0),
	combout => \inst2|output\(0));

-- Location: LCCOMB_X11_Y28_N12
\inst14|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~0_combout\ = \inst14|cuenta\(0) $ (VCC)
-- \inst14|Add0~1\ = CARRY(\inst14|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(0),
	datad => VCC,
	combout => \inst14|Add0~0_combout\,
	cout => \inst14|Add0~1\);

-- Location: LCCOMB_X11_Y28_N2
\inst14|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cuenta~2_combout\ = (\inst14|Add0~0_combout\ & \inst14|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~0_combout\,
	datad => \inst14|Equal0~6_combout\,
	combout => \inst14|cuenta~2_combout\);

-- Location: FF_X11_Y28_N3
\inst14|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(0));

-- Location: LCCOMB_X11_Y28_N14
\inst14|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~2_combout\ = (\inst14|cuenta\(1) & (!\inst14|Add0~1\)) # (!\inst14|cuenta\(1) & ((\inst14|Add0~1\) # (GND)))
-- \inst14|Add0~3\ = CARRY((!\inst14|Add0~1\) # (!\inst14|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(1),
	datad => VCC,
	cin => \inst14|Add0~1\,
	combout => \inst14|Add0~2_combout\,
	cout => \inst14|Add0~3\);

-- Location: FF_X11_Y28_N15
\inst14|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(1));

-- Location: LCCOMB_X11_Y28_N16
\inst14|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~4_combout\ = (\inst14|cuenta\(2) & (\inst14|Add0~3\ $ (GND))) # (!\inst14|cuenta\(2) & (!\inst14|Add0~3\ & VCC))
-- \inst14|Add0~5\ = CARRY((\inst14|cuenta\(2) & !\inst14|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(2),
	datad => VCC,
	cin => \inst14|Add0~3\,
	combout => \inst14|Add0~4_combout\,
	cout => \inst14|Add0~5\);

-- Location: FF_X11_Y28_N17
\inst14|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(2));

-- Location: LCCOMB_X11_Y28_N18
\inst14|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~6_combout\ = (\inst14|cuenta\(3) & (!\inst14|Add0~5\)) # (!\inst14|cuenta\(3) & ((\inst14|Add0~5\) # (GND)))
-- \inst14|Add0~7\ = CARRY((!\inst14|Add0~5\) # (!\inst14|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(3),
	datad => VCC,
	cin => \inst14|Add0~5\,
	combout => \inst14|Add0~6_combout\,
	cout => \inst14|Add0~7\);

-- Location: LCCOMB_X11_Y28_N0
\inst14|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cuenta~3_combout\ = (\inst14|Add0~6_combout\ & \inst14|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|Add0~6_combout\,
	datad => \inst14|Equal0~6_combout\,
	combout => \inst14|cuenta~3_combout\);

-- Location: FF_X11_Y28_N1
\inst14|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(3));

-- Location: LCCOMB_X11_Y28_N20
\inst14|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~8_combout\ = (\inst14|cuenta\(4) & (\inst14|Add0~7\ $ (GND))) # (!\inst14|cuenta\(4) & (!\inst14|Add0~7\ & VCC))
-- \inst14|Add0~9\ = CARRY((\inst14|cuenta\(4) & !\inst14|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(4),
	datad => VCC,
	cin => \inst14|Add0~7\,
	combout => \inst14|Add0~8_combout\,
	cout => \inst14|Add0~9\);

-- Location: LCCOMB_X11_Y28_N8
\inst14|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cuenta~0_combout\ = (\inst14|Add0~8_combout\ & \inst14|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|Add0~8_combout\,
	datad => \inst14|Equal0~6_combout\,
	combout => \inst14|cuenta~0_combout\);

-- Location: FF_X11_Y28_N9
\inst14|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(4));

-- Location: LCCOMB_X11_Y28_N22
\inst14|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~10_combout\ = (\inst14|cuenta\(5) & (!\inst14|Add0~9\)) # (!\inst14|cuenta\(5) & ((\inst14|Add0~9\) # (GND)))
-- \inst14|Add0~11\ = CARRY((!\inst14|Add0~9\) # (!\inst14|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(5),
	datad => VCC,
	cin => \inst14|Add0~9\,
	combout => \inst14|Add0~10_combout\,
	cout => \inst14|Add0~11\);

-- Location: FF_X11_Y28_N23
\inst14|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(5));

-- Location: LCCOMB_X11_Y28_N24
\inst14|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~12_combout\ = (\inst14|cuenta\(6) & (\inst14|Add0~11\ $ (GND))) # (!\inst14|cuenta\(6) & (!\inst14|Add0~11\ & VCC))
-- \inst14|Add0~13\ = CARRY((\inst14|cuenta\(6) & !\inst14|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(6),
	datad => VCC,
	cin => \inst14|Add0~11\,
	combout => \inst14|Add0~12_combout\,
	cout => \inst14|Add0~13\);

-- Location: FF_X11_Y28_N25
\inst14|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(6));

-- Location: LCCOMB_X11_Y28_N26
\inst14|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~14_combout\ = (\inst14|cuenta\(7) & (!\inst14|Add0~13\)) # (!\inst14|cuenta\(7) & ((\inst14|Add0~13\) # (GND)))
-- \inst14|Add0~15\ = CARRY((!\inst14|Add0~13\) # (!\inst14|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(7),
	datad => VCC,
	cin => \inst14|Add0~13\,
	combout => \inst14|Add0~14_combout\,
	cout => \inst14|Add0~15\);

-- Location: LCCOMB_X11_Y28_N10
\inst14|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cuenta~1_combout\ = (\inst14|Add0~14_combout\ & \inst14|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|Add0~14_combout\,
	datad => \inst14|Equal0~6_combout\,
	combout => \inst14|cuenta~1_combout\);

-- Location: FF_X11_Y28_N11
\inst14|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(7));

-- Location: LCCOMB_X11_Y28_N28
\inst14|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~16_combout\ = (\inst14|cuenta\(8) & (\inst14|Add0~15\ $ (GND))) # (!\inst14|cuenta\(8) & (!\inst14|Add0~15\ & VCC))
-- \inst14|Add0~17\ = CARRY((\inst14|cuenta\(8) & !\inst14|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(8),
	datad => VCC,
	cin => \inst14|Add0~15\,
	combout => \inst14|Add0~16_combout\,
	cout => \inst14|Add0~17\);

-- Location: FF_X11_Y28_N29
\inst14|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(8));

-- Location: LCCOMB_X11_Y28_N30
\inst14|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~18_combout\ = (\inst14|cuenta\(9) & (!\inst14|Add0~17\)) # (!\inst14|cuenta\(9) & ((\inst14|Add0~17\) # (GND)))
-- \inst14|Add0~19\ = CARRY((!\inst14|Add0~17\) # (!\inst14|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(9),
	datad => VCC,
	cin => \inst14|Add0~17\,
	combout => \inst14|Add0~18_combout\,
	cout => \inst14|Add0~19\);

-- Location: LCCOMB_X12_Y28_N20
\inst14|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cuenta~4_combout\ = (\inst14|Equal0~6_combout\ & \inst14|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|Equal0~6_combout\,
	datad => \inst14|Add0~18_combout\,
	combout => \inst14|cuenta~4_combout\);

-- Location: FF_X12_Y28_N21
\inst14|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(9));

-- Location: LCCOMB_X11_Y27_N0
\inst14|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~20_combout\ = (\inst14|cuenta\(10) & (\inst14|Add0~19\ $ (GND))) # (!\inst14|cuenta\(10) & (!\inst14|Add0~19\ & VCC))
-- \inst14|Add0~21\ = CARRY((\inst14|cuenta\(10) & !\inst14|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(10),
	datad => VCC,
	cin => \inst14|Add0~19\,
	combout => \inst14|Add0~20_combout\,
	cout => \inst14|Add0~21\);

-- Location: LCCOMB_X11_Y27_N24
\inst14|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cuenta~5_combout\ = (\inst14|Add0~20_combout\ & \inst14|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|Add0~20_combout\,
	datad => \inst14|Equal0~6_combout\,
	combout => \inst14|cuenta~5_combout\);

-- Location: FF_X11_Y27_N25
\inst14|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(10));

-- Location: LCCOMB_X11_Y27_N2
\inst14|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~22_combout\ = (\inst14|cuenta\(11) & (!\inst14|Add0~21\)) # (!\inst14|cuenta\(11) & ((\inst14|Add0~21\) # (GND)))
-- \inst14|Add0~23\ = CARRY((!\inst14|Add0~21\) # (!\inst14|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(11),
	datad => VCC,
	cin => \inst14|Add0~21\,
	combout => \inst14|Add0~22_combout\,
	cout => \inst14|Add0~23\);

-- Location: LCCOMB_X11_Y27_N26
\inst14|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cuenta~6_combout\ = (\inst14|Add0~22_combout\ & \inst14|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|Add0~22_combout\,
	datad => \inst14|Equal0~6_combout\,
	combout => \inst14|cuenta~6_combout\);

-- Location: FF_X11_Y27_N27
\inst14|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(11));

-- Location: LCCOMB_X11_Y27_N4
\inst14|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~24_combout\ = (\inst14|cuenta\(12) & (\inst14|Add0~23\ $ (GND))) # (!\inst14|cuenta\(12) & (!\inst14|Add0~23\ & VCC))
-- \inst14|Add0~25\ = CARRY((\inst14|cuenta\(12) & !\inst14|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(12),
	datad => VCC,
	cin => \inst14|Add0~23\,
	combout => \inst14|Add0~24_combout\,
	cout => \inst14|Add0~25\);

-- Location: FF_X11_Y27_N5
\inst14|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(12));

-- Location: LCCOMB_X11_Y27_N6
\inst14|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~26_combout\ = (\inst14|cuenta\(13) & (!\inst14|Add0~25\)) # (!\inst14|cuenta\(13) & ((\inst14|Add0~25\) # (GND)))
-- \inst14|Add0~27\ = CARRY((!\inst14|Add0~25\) # (!\inst14|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(13),
	datad => VCC,
	cin => \inst14|Add0~25\,
	combout => \inst14|Add0~26_combout\,
	cout => \inst14|Add0~27\);

-- Location: FF_X11_Y27_N7
\inst14|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(13));

-- Location: LCCOMB_X11_Y27_N8
\inst14|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~28_combout\ = (\inst14|cuenta\(14) & (\inst14|Add0~27\ $ (GND))) # (!\inst14|cuenta\(14) & (!\inst14|Add0~27\ & VCC))
-- \inst14|Add0~29\ = CARRY((\inst14|cuenta\(14) & !\inst14|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(14),
	datad => VCC,
	cin => \inst14|Add0~27\,
	combout => \inst14|Add0~28_combout\,
	cout => \inst14|Add0~29\);

-- Location: FF_X11_Y27_N9
\inst14|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(14));

-- Location: LCCOMB_X11_Y27_N10
\inst14|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~30_combout\ = (\inst14|cuenta\(15) & (!\inst14|Add0~29\)) # (!\inst14|cuenta\(15) & ((\inst14|Add0~29\) # (GND)))
-- \inst14|Add0~31\ = CARRY((!\inst14|Add0~29\) # (!\inst14|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(15),
	datad => VCC,
	cin => \inst14|Add0~29\,
	combout => \inst14|Add0~30_combout\,
	cout => \inst14|Add0~31\);

-- Location: LCCOMB_X11_Y27_N30
\inst14|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cuenta~7_combout\ = (\inst14|Equal0~6_combout\ & \inst14|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~6_combout\,
	datad => \inst14|Add0~30_combout\,
	combout => \inst14|cuenta~7_combout\);

-- Location: FF_X11_Y27_N31
\inst14|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(15));

-- Location: LCCOMB_X11_Y27_N22
\inst14|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~1_combout\ = (\inst14|cuenta\(15) & (\inst14|cuenta\(16) & (!\inst14|cuenta\(12) & !\inst14|cuenta\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(15),
	datab => \inst14|cuenta\(16),
	datac => \inst14|cuenta\(12),
	datad => \inst14|cuenta\(13),
	combout => \inst14|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y28_N18
\inst14|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~2_combout\ = (!\inst14|cuenta\(0) & (!\inst14|cuenta\(5) & (!\inst14|cuenta\(2) & !\inst14|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(0),
	datab => \inst14|cuenta\(5),
	datac => \inst14|cuenta\(2),
	datad => \inst14|cuenta\(1),
	combout => \inst14|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y27_N12
\inst14|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~32_combout\ = (\inst14|cuenta\(16) & (\inst14|Add0~31\ $ (GND))) # (!\inst14|cuenta\(16) & (!\inst14|Add0~31\ & VCC))
-- \inst14|Add0~33\ = CARRY((\inst14|cuenta\(16) & !\inst14|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(16),
	datad => VCC,
	cin => \inst14|Add0~31\,
	combout => \inst14|Add0~32_combout\,
	cout => \inst14|Add0~33\);

-- Location: LCCOMB_X11_Y27_N14
\inst14|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~34_combout\ = (\inst14|cuenta\(17) & (!\inst14|Add0~33\)) # (!\inst14|cuenta\(17) & ((\inst14|Add0~33\) # (GND)))
-- \inst14|Add0~35\ = CARRY((!\inst14|Add0~33\) # (!\inst14|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(17),
	datad => VCC,
	cin => \inst14|Add0~33\,
	combout => \inst14|Add0~34_combout\,
	cout => \inst14|Add0~35\);

-- Location: FF_X11_Y27_N15
\inst14|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(17));

-- Location: LCCOMB_X11_Y27_N16
\inst14|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~36_combout\ = (\inst14|cuenta\(18) & (\inst14|Add0~35\ $ (GND))) # (!\inst14|cuenta\(18) & (!\inst14|Add0~35\ & VCC))
-- \inst14|Add0~37\ = CARRY((\inst14|cuenta\(18) & !\inst14|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(18),
	datad => VCC,
	cin => \inst14|Add0~35\,
	combout => \inst14|Add0~36_combout\,
	cout => \inst14|Add0~37\);

-- Location: FF_X11_Y27_N17
\inst14|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(18));

-- Location: LCCOMB_X11_Y27_N18
\inst14|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~38_combout\ = \inst14|Add0~37\ $ (\inst14|cuenta\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|cuenta\(19),
	cin => \inst14|Add0~37\,
	combout => \inst14|Add0~38_combout\);

-- Location: FF_X11_Y27_N19
\inst14|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(19));

-- Location: LCCOMB_X11_Y27_N28
\inst14|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~0_combout\ = (!\inst14|cuenta\(14) & (!\inst14|cuenta\(19) & (!\inst14|cuenta\(17) & !\inst14|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(14),
	datab => \inst14|cuenta\(19),
	datac => \inst14|cuenta\(17),
	datad => \inst14|cuenta\(18),
	combout => \inst14|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y28_N28
\inst14|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~4_combout\ = (\inst14|cuenta\(9) & !\inst14|cuenta\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(9),
	datad => \inst14|cuenta\(8),
	combout => \inst14|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y28_N6
\inst14|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~3_combout\ = (\inst14|cuenta\(7) & (\inst14|cuenta\(3) & (\inst14|cuenta\(4) & !\inst14|cuenta\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(7),
	datab => \inst14|cuenta\(3),
	datac => \inst14|cuenta\(4),
	datad => \inst14|cuenta\(6),
	combout => \inst14|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y28_N2
\inst14|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~5_combout\ = (\inst14|cuenta\(11) & (\inst14|Equal0~4_combout\ & (\inst14|Equal0~3_combout\ & \inst14|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(11),
	datab => \inst14|Equal0~4_combout\,
	datac => \inst14|Equal0~3_combout\,
	datad => \inst14|cuenta\(10),
	combout => \inst14|Equal0~5_combout\);

-- Location: LCCOMB_X12_Y28_N24
\inst14|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~6_combout\ = (((!\inst14|Equal0~5_combout\) # (!\inst14|Equal0~0_combout\)) # (!\inst14|Equal0~2_combout\)) # (!\inst14|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~1_combout\,
	datab => \inst14|Equal0~2_combout\,
	datac => \inst14|Equal0~0_combout\,
	datad => \inst14|Equal0~5_combout\,
	combout => \inst14|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y27_N20
\inst14|cuenta~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cuenta~8_combout\ = (\inst14|Equal0~6_combout\ & \inst14|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~6_combout\,
	datad => \inst14|Add0~32_combout\,
	combout => \inst14|cuenta~8_combout\);

-- Location: FF_X11_Y27_N21
\inst14|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cuenta~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(16));

-- Location: LCCOMB_X12_Y28_N26
\inst14|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~3_combout\ = (!\inst14|cuenta\(9) & (!\inst14|cuenta\(10) & !\inst14|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(9),
	datac => \inst14|cuenta\(10),
	datad => \inst14|cuenta\(11),
	combout => \inst14|LessThan0~3_combout\);

-- Location: LCCOMB_X11_Y28_N4
\inst14|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~0_combout\ = (((!\inst14|cuenta\(5) & !\inst14|cuenta\(4))) # (!\inst14|cuenta\(7))) # (!\inst14|cuenta\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(5),
	datab => \inst14|cuenta\(6),
	datac => \inst14|cuenta\(4),
	datad => \inst14|cuenta\(7),
	combout => \inst14|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y28_N0
\inst14|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~1_combout\ = (!\inst14|cuenta\(5) & (!\inst14|cuenta\(2) & ((!\inst14|cuenta\(1)) # (!\inst14|cuenta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(0),
	datab => \inst14|cuenta\(5),
	datac => \inst14|cuenta\(2),
	datad => \inst14|cuenta\(1),
	combout => \inst14|LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y28_N6
\inst14|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~2_combout\ = ((\inst14|LessThan0~0_combout\) # ((!\inst14|cuenta\(3) & \inst14|LessThan0~1_combout\))) # (!\inst14|cuenta\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(3),
	datab => \inst14|cuenta\(8),
	datac => \inst14|LessThan0~0_combout\,
	datad => \inst14|LessThan0~1_combout\,
	combout => \inst14|LessThan0~2_combout\);

-- Location: LCCOMB_X12_Y28_N16
\inst14|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~4_combout\ = (((\inst14|LessThan0~3_combout\ & \inst14|LessThan0~2_combout\)) # (!\inst14|cuenta\(13))) # (!\inst14|cuenta\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(12),
	datab => \inst14|cuenta\(13),
	datac => \inst14|LessThan0~3_combout\,
	datad => \inst14|LessThan0~2_combout\,
	combout => \inst14|LessThan0~4_combout\);

-- Location: LCCOMB_X12_Y28_N10
\inst14|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~5_combout\ = (!\inst14|cuenta\(16) & (!\inst14|cuenta\(15) & (\inst14|Equal0~0_combout\ & \inst14|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(16),
	datab => \inst14|cuenta\(15),
	datac => \inst14|Equal0~0_combout\,
	datad => \inst14|LessThan0~4_combout\,
	combout => \inst14|LessThan0~5_combout\);

-- Location: LCCOMB_X12_Y28_N8
\inst14|t_on[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|t_on[1]~feeder_combout\ = \inst14|LessThan0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|LessThan0~5_combout\,
	combout => \inst14|t_on[1]~feeder_combout\);

-- Location: FF_X12_Y28_N9
\inst14|t_on[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|t_on[1]~feeder_combout\,
	ena => \inst14|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|t_on\(1));

-- Location: FF_X12_Y28_N11
\inst14|t_on[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|LessThan0~5_combout\,
	ena => \inst14|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|t_on\(0));

-- Location: FF_X8_Y30_N7
\inst6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|cuenta[25]~clkctrl_outclk\,
	d => \inst2|output\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Q\(3));

-- Location: FF_X8_Y30_N29
\inst6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|cuenta[25]~clkctrl_outclk\,
	d => \inst2|output\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Q\(2));

-- Location: FF_X8_Y30_N3
\inst6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|cuenta[25]~clkctrl_outclk\,
	d => \inst2|output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Q\(1));

-- Location: FF_X8_Y30_N17
\inst6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|cuenta[25]~clkctrl_outclk\,
	d => \inst2|output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Q\(0));

ww_div_clk <= \div_clk~output_o\;

ww_reloj <= \reloj~output_o\;

ww_dir_mem(5) <= \dir_mem[5]~output_o\;

ww_dir_mem(4) <= \dir_mem[4]~output_o\;

ww_dir_mem(3) <= \dir_mem[3]~output_o\;

ww_dir_mem(2) <= \dir_mem[2]~output_o\;

ww_dir_mem(1) <= \dir_mem[1]~output_o\;

ww_dir_mem(0) <= \dir_mem[0]~output_o\;

ww_Estados(3) <= \Estados[3]~output_o\;

ww_Estados(2) <= \Estados[2]~output_o\;

ww_Estados(1) <= \Estados[1]~output_o\;

ww_Estados(0) <= \Estados[0]~output_o\;

ww_mem(7) <= \mem[7]~output_o\;

ww_mem(6) <= \mem[6]~output_o\;

ww_mem(5) <= \mem[5]~output_o\;

ww_mem(4) <= \mem[4]~output_o\;

ww_mem(3) <= \mem[3]~output_o\;

ww_mem(2) <= \mem[2]~output_o\;

ww_mem(1) <= \mem[1]~output_o\;

ww_mem(0) <= \mem[0]~output_o\;

ww_reg_estados(3) <= \reg_estados[3]~output_o\;

ww_reg_estados(2) <= \reg_estados[2]~output_o\;

ww_reg_estados(1) <= \reg_estados[1]~output_o\;

ww_reg_estados(0) <= \reg_estados[0]~output_o\;

ww_reg_salidas(3) <= \reg_salidas[3]~output_o\;

ww_reg_salidas(2) <= \reg_salidas[2]~output_o\;

ww_reg_salidas(1) <= \reg_salidas[1]~output_o\;

ww_reg_salidas(0) <= \reg_salidas[0]~output_o\;

ww_s_pwm(1) <= \s_pwm[1]~output_o\;

ww_s_pwm(0) <= \s_pwm[0]~output_o\;

ww_salidas10(3) <= \salidas10[3]~output_o\;

ww_salidas10(2) <= \salidas10[2]~output_o\;

ww_salidas10(1) <= \salidas10[1]~output_o\;

ww_salidas10(0) <= \salidas10[0]~output_o\;

ww_salidas_reg(3) <= \salidas_reg[3]~output_o\;

ww_salidas_reg(2) <= \salidas_reg[2]~output_o\;

ww_salidas_reg(1) <= \salidas_reg[1]~output_o\;

ww_salidas_reg(0) <= \salidas_reg[0]~output_o\;
END structure;


