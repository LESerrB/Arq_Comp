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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/12/2018 22:24:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Practica2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica2_vhd_vec_tst IS
END Practica2_vhd_vec_tst;
ARCHITECTURE Practica2_arch OF Practica2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL adelante : STD_LOGIC;
SIGNAL atras : STD_LOGIC;
SIGNAL giro_der : STD_LOGIC;
SIGNAL giro_izq : STD_LOGIC;
SIGNAL out_state : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reloj : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(0 TO 1);
COMPONENT Practica2
	PORT (
	adelante : OUT STD_LOGIC;
	atras : OUT STD_LOGIC;
	giro_der : OUT STD_LOGIC;
	giro_izq : OUT STD_LOGIC;
	out_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reloj : IN STD_LOGIC;
	RESET : IN STD_LOGIC;
	S : IN STD_LOGIC_VECTOR(0 TO 1)
	);
END COMPONENT;
BEGIN
	i1 : Practica2
	PORT MAP (
-- list connections between master ports and signals
	adelante => adelante,
	atras => atras,
	giro_der => giro_der,
	giro_izq => giro_izq,
	out_state => out_state,
	reloj => reloj,
	RESET => RESET,
	S => S
	);

-- reloj
t_prcs_reloj: PROCESS
BEGIN
	reloj <= '0';
WAIT;
END PROCESS t_prcs_reloj;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
	S(1) <= '0';
WAIT;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
	S(0) <= '0';
WAIT;
END PROCESS t_prcs_S_0;
END Practica2_arch;
