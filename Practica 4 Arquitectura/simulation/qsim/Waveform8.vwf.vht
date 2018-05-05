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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/26/2017 15:26:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          secuen_completo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY secuen_completo_vhd_vec_tst IS
END secuen_completo_vhd_vec_tst;
ARCHITECTURE secuen_completo_arch OF secuen_completo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL est_pres : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL SALIDAS : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sensa_boton : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT secuen_completo
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	est_pres : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RESET : IN STD_LOGIC;
	SALIDAS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sensa_boton : IN STD_LOGIC;
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : secuen_completo
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	CLK => CLK,
	est_pres => est_pres,
	RESET => RESET,
	SALIDAS => SALIDAS,
	sensa_boton => sensa_boton,
	X => X,
	Y => Y
	);

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '1';
WAIT;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
	Y <= '0';
WAIT;
END PROCESS t_prcs_Y;

-- sensa_boton
t_prcs_sensa_boton: PROCESS
BEGIN
LOOP
	sensa_boton <= '0';
	WAIT FOR 25000 ps;
	sensa_boton <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sensa_boton;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
END secuen_completo_arch;
