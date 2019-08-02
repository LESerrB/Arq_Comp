library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria_programa is
	Port( dir : in std_logic_vector(15 downto 0);
			data_in : in std_logic_vector(7 downto 0);
			nRW : in std_logic;
			data_out : out std_logic_vector(7 downto 0);
			data_out_X0 : out std_logic_vector(7 downto 0);
			data_out_X1 : out std_logic_vector(7 downto 0);
			data_out_X2 : out std_logic_vector(7 downto 0);
			data_out_P7 : out std_logic_vector(7 downto 0);
			data_out_P8 : out std_logic_vector(7 downto 0);
			data_out_P9 : out std_logic_vector(7 downto 0);
			data_out_P10 : out std_logic_vector(7 downto 0);
			data_out_P11 : out std_logic_vector(7 downto 0);
			data_out_P12 : out std_logic_vector(7 downto 0);
			data_out_P13 : out std_logic_vector(7 downto 0);
			data_out_P14 : out std_logic_vector(7 downto 0);
			data_out_P15 : out std_logic_vector(7 downto 0)
			);
end memoria_programa;

architecture Behavioral of memoria_programa is
	type memory is array(0 to 512) of std_logic_vector(7 downto 0);
	signal memoria : memory;
	
	-- La pila empieza en la última posición de la memoria 255 = FF, entonces la direccion es 00FF
	-- El tamaño de la pila es de 16 bytes (arbitrario)
	-- La pila termina en EF
	begin
		process(dir,nRW)
			begin
		-- Programa HARDCODE PRUEBAS
		   memoria(20) <= X"86"; -- LDAA
			memoria(21) <= X"0C"; -- 12%  pwm 
			memoria(22) <= X"A9"; -- STAA
			memoria(23) <= X"0D"; -- mueve a la direccion 13
			memoria(24) <= X"C6"; -- LDAB
			memoria(25) <= X"05"; -- hacia enfrentre
			memoria(26) <= X"A7"; -- STAB
			memoria(27) <= X"0C"; -- mueve a la direccion 12 
			memoria(28) <= X"01"; -- NOP
			memoria(29) <= X"01"; -- NOP
			memoria(30) <= X"01"; -- NOP
			memoria(31) <= X"01"; -- NOP
			memoria(32) <= X"01"; -- NOP
			memoria(33) <= X"01"; -- NOP
			memoria(34) <= X"01"; -- NOP
			memoria(35) <= X"01"; -- NOP
			memoria(36) <= X"01"; -- NOP
			memoria(37) <= X"01"; -- NOP

			
			memoria(38) <= X"C6"; -- LDAB
			memoria(39) <= X"00"; -- detener
			memoria(40) <= X"A7"; -- STAB
			memoria(41) <= X"0C";
			
			memoria(42) <= X"86"; -- LDAA
			memoria(43) <= X"0C"; -- 25% pwm 
			memoria(44) <= X"A9"; -- STAA
			memoria(45) <= X"0D"; -- mueve a la direccion  13
		   memoria(46) <= X"C6"; -- LDAB
			memoria(47) <= X"06"; -- move giro izquierda
			memoria(48) <= X"A7"; -- STAB
			memoria(49) <= X"0C";

			memoria(50) <= X"86"; -- LDAA
			memoria(51) <= X"0C"; -- 12%  pwm 
			memoria(52) <= X"A9"; -- STAA
			memoria(53) <= X"0D"; -- mueve a la direccion 13
			memoria(54) <= X"C6"; -- LDAB
			memoria(55) <= X"05"; -- hacia enfrentre
			memoria(56) <= X"A7"; -- STAB
			memoria(57) <= X"0C"; -- mueve a la direccion 12 
			memoria(58) <= X"01"; -- NOP
			memoria(59) <= X"01"; -- NOP
			memoria(60) <= X"01"; -- NOP
			memoria(61) <= X"01"; -- NOP
			
			
			memoria(62) <= X"C6"; -- LDAB
			memoria(63) <= X"00"; -- detener
			memoria(64) <= X"A7"; -- STAB
			memoria(65) <= X"0C";
	
			memoria(66) <= X"86"; -- LDAA
			memoria(67) <= X"0C"; -- 50% pwm 
			memoria(68) <= X"A9"; -- STAA
			memoria(69) <= X"0D"; -- guarda en la direccion 13 
			memoria(70) <= X"C6"; -- LDAB
			memoria(71) <= X"09"; -- move giro derecha
			memoria(72) <= X"A7"; -- STAB
			memoria(73) <= X"0C";
		
			memoria(74) <= X"86"; -- LDAA
			memoria(75) <= X"0C"; -- 12%  pwm 
			memoria(76) <= X"A9"; -- STAA
			memoria(77) <= X"0D"; -- mueve a la direccion 13
			memoria(78) <= X"C6"; -- LDAB
			memoria(79) <= X"05"; -- hacia enfrentre
			memoria(80) <= X"A7"; -- STAB
			memoria(81) <= X"0C"; -- mueve a la direccion 12 
			memoria(82) <= X"01"; -- NOP
			memoria(83) <= X"01"; -- NOP
			memoria(84) <= X"01"; -- NOP
			memoria(85) <= X"01"; -- NOP
	
			
			memoria(86) <= X"C6"; -- LDAB
			memoria(87) <= X"00"; -- detener
			memoria(88) <= X"A7"; -- STAB
			memoria(89) <= X"0C";
		
		
			memoria(90) <= X"86"; -- LDAA
			memoria(91) <= X"0C"; -- 50% pwm 
			memoria(92) <= X"A9"; -- STAA
			memoria(93) <= X"0D"; -- guarda en la direccion 13 
			memoria(94) <= X"C6"; -- LDAB
			memoria(95) <= X"09"; -- move giro derecha
			memoria(96) <= X"A7"; -- STAB
			memoria(97) <= X"0C";
			memoria(98) <= X"20"; -- BRA FIN
		   memoria(99) <= X"32"; -- DIRECCION  150 
			
			memoria(150) <= X"86"; -- LDAA
			memoria(151) <= X"0C"; -- 12%  pwm 
			memoria(152) <= X"A9"; -- STAA
			memoria(153) <= X"0D"; -- mueve a la direccion 13
			memoria(154) <= X"C6"; -- LDAB
			memoria(155) <= X"05"; -- hacia enfrentre
			memoria(156) <= X"A7"; -- STAB
			memoria(157) <= X"0C"; -- mueve a la direccion 12 
			memoria(158) <= X"01"; -- NOP
			memoria(159) <= X"01"; -- NOP
			memoria(160) <= X"01"; -- NOP
			memoria(161) <= X"01"; -- NOP
		
			
			memoria(162) <= X"C6"; -- LDAB
			memoria(163) <= X"00"; -- detener
			memoria(164) <= X"A7"; -- STAB
			memoria(165) <= X"0C";
			
			memoria(166) <= X"86"; -- LDAA
			memoria(167) <= X"0C"; -- 25% pwm 
			memoria(168) <= X"A9"; -- STAA
			memoria(169) <= X"0D"; -- mueve a la direccion  13
		   memoria(170) <= X"C6"; -- LDAB
			memoria(171) <= X"06"; -- move giro izquierda
			memoria(172) <= X"A7"; -- STAB
			memoria(173) <= X"0C";
			
			memoria(174) <= X"86"; -- LDAA
			memoria(175) <= X"19"; -- 12%  pwm 
			memoria(176) <= X"A9"; -- STAA
			memoria(177) <= X"0D"; -- mueve a la direccion 13
			memoria(178) <= X"C6"; -- LDAB
			memoria(179) <= X"05"; -- hacia enfrentre
			memoria(180) <= X"A7"; -- STAB
			memoria(181) <= X"0C"; -- mueve a la direccion 12 
			memoria(182) <= X"01"; -- NOP
			memoria(183) <= X"01"; -- NOP
			memoria(184) <= X"01"; -- NOP
			memoria(185) <= X"01"; -- NOP
			memoria(186) <= X"01"; -- NOP
			memoria(187) <= X"01"; -- NOP
			memoria(188) <= X"01"; -- NOP
			memoria(189) <= X"01"; -- NOP
			memoria(190) <= X"01"; -- NOP
			memoria(191) <= X"01"; -- NOP
			memoria(192) <= X"01"; -- NOP
			memoria(193) <= X"01"; -- NOP
			memoria(194) <= X"01"; -- NOP
			memoria(195) <= X"01"; -- NOP
			memoria(196) <= X"01"; -- NOP
			memoria(197) <= X"01"; -- NOP
			memoria(198) <= X"01"; -- NOP
			memoria(199) <= X"01"; -- NOP
			memoria(200) <= X"01"; -- NOP
			memoria(201) <= X"01"; -- NOP
			memoria(202) <= X"01"; -- NOP
			
			
			memoria(203) <= X"C6"; -- LDAB
			memoria(204) <= X"00"; -- detener
			memoria(205) <= X"A7"; -- STAB
			memoria(206) <= X"0C";
			
			memoria(207) <= X"86"; -- LDAA
			memoria(208) <= X"0C"; -- 12%  pwm 
			memoria(209) <= X"A9"; -- STAA
			memoria(210) <= X"0D"; -- mueve a la direccion 13
			memoria(211) <= X"C6"; -- LDAB
			memoria(212) <= X"05"; -- hacia enfrentre
			memoria(213) <= X"A7"; -- STAB
			memoria(214) <= X"0C"; -- mueve a la direccion 12 
			memoria(215) <= X"01"; -- NOP
			memoria(216) <= X"01"; -- NOP
	
			
			---------------------Estacionarse ------:3 ---
			memoria(217) <= X"86"; -- LDAA
			memoria(218) <= X"0C"; -- 50% pwm 
			memoria(219) <= X"A9"; -- STAA
			memoria(220) <= X"0D"; -- guarda en la direccion 13 
			memoria(221) <= X"C6"; -- LDAB
			memoria(222) <= X"09"; -- move giro derecha
			memoria(223) <= X"A7"; -- STAB
			memoria(224) <= X"0C";
			
			memoria(225) <= X"C6"; -- LDAB
			memoria(226) <= X"00"; -- detener
			memoria(227) <= X"A7"; -- STAB
			memoria(228) <= X"0C";
			
		   memoria(229) <= X"86"; -- LDAA
			memoria(230) <= X"0C"; -- 12%  pwm 
			memoria(231) <= X"A9"; -- STAA
			memoria(232) <= X"0D"; -- mueve a la direccion 13
			memoria(233) <= X"C6"; -- LDAB
			memoria(234) <= X"0A"; -- hacia atras 
			memoria(235) <= X"A7"; -- STAB
			memoria(236) <= X"0C"; -- mueve a la direccion 12 
			memoria(237) <= X"01"; -- NOP
			memoria(238) <= X"01"; -- NOP
			
			
			memoria(239) <= X"C6"; -- LDAB
			memoria(240) <= X"00"; -- detener
			memoria(241) <= X"A7"; -- STAB
			memoria(242) <= X"0C";
			
			memoria(243) <= X"20"; -- BRA FIN
		   memoria(244) <= X"FE";
			
			
			-- DRIVERS DE INTERRUPCIONES
			-- Driver X Externo (0064 H)
			memoria(100) <= X"CE"; -- LDX
			memoria(101) <= X"00";
			memoria(102) <= X"20";
			memoria(103) <= X"B6"; -- LDAA Dir_6_bits
			memoria(104) <= X"00";
			memoria(105) <= X"30";
			memoria(106) <= X"A7"; -- STAA
			memoria(107) <= X"00";
			memoria(108) <= X"3B"; -- RTI
			
			-- Driver Y Interno (006D H)
			memoria(109) <= X"C6"; -- LDX
			memoria(110) <= X"00";
			memoria(112) <= X"A7"; -- LDAB Dir_6_bits
			memoria(113) <= X"0C";
			memoria(114) <= X"01"; -- STAB
			memoria(115) <= X"01"; -- 
			memoria(116) <= X"3B"; -- RTI
			
			
			--FUNCION DE LA MEMORIA
			if(nRW = '0') then -- Modo escritura
				memoria(conv_integer(unsigned(dir))) <= data_in;
			else -- Modo lectura
				data_out <= memoria(conv_integer(unsigned(dir)));
			end if;
			
			-- DEBUG
			data_out_X0 <= memoria(12);  -- X"000C"
			data_out_X1 <= memoria(13);  -- X"000C" + 1
			data_out_X2 <= memoria(14);  -- X"000C" + 2
			
			-- PILA
			data_out_P7 <= memoria(247);
			data_out_P8 <= memoria(248);
			data_out_P9 <= memoria(249);
			data_out_P10 <= memoria(250);
			data_out_P11 <= memoria(251);
			data_out_P12 <= memoria(252);
			data_out_P13 <= memoria(253);

			data_out_P14 <= memoria(254);
			data_out_P15 <= memoria(255);
		end process;
end Behavioral;

