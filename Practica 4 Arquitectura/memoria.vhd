library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria is
Port ( direccion : in STD_LOGIC_VECTOR (3 downto 0);
		 liga : out STD_LOGIC_VECTOR (3 downto 0);
		 instruccion : out STD_LOGIC_VECTOR (1 downto 0);
		 prueba : out STD_LOGIC_VECTOR (1 downto 0);
		 vf : out STD_LOGIC;
		 s:out STD_LOGIC_VECTOR(3 downto 0)
		 );
end memoria;

architecture Behavioral of memoria is
signal palabra: STD_LOGIC_VECTOR (12 downto 0);
begin
	
	process(direccion)
	begin-----------------------------------------------
			if direccion="0000" then palabra <= "0000000000101";--0
		elsif direccion="0001" then palabra <= "0000000000101";--1
		elsif direccion="0010" then palabra <= "0000100001001";--2
		elsif direccion="0011" then palabra <= "0011010100110";--3
		elsif direccion="0100" then palabra <= "0000111111010";--4
		elsif direccion="0101" then palabra <= "0001010000101";--5
		elsif direccion="0110" then palabra <= "0000000000101";--6
		elsif direccion="0111" then palabra <= "0000010001001";--7
		elsif direccion="1000" then palabra <= "0000000001010";--8
		elsif direccion="1001" then palabra <= "0000111110000";--9
		elsif direccion="1010" then palabra <= "0001010000101";--10
		elsif direccion="1011" then palabra <= "0000000000101";--11
		elsif direccion="1100" then palabra <= "0000010001001";--12
		elsif direccion="1101" then palabra <= "1101011010110";--13
		elsif direccion="1110" then palabra <= "1001010000000";--14
		
		
		end if;
	end process;
	
	process(palabra)
	begin
		liga <= palabra(12 downto 9);
		instruccion <= palabra(8 downto 7);
		prueba <= palabra(6 downto 5);
		vf <= palabra(4);
		s <= palabra (3 downto 0);
	end process;
end Behavioral;