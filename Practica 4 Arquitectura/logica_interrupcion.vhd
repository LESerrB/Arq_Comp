library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity logica_interrupcion is
Port ( B: in STD_LOGIC;
		 A: in STD_LOGIC;
		 dir_out: out STD_LOGIC_VECTOR (3 downto 0)
		 );
end logica_interrupcion;

architecture Behavioral of logica_interrupcion is
signal valor1 : STD_LOGIC_VECTOR (3 downto 0) := B"0000";
begin
	
	process(A, B)
	begin
		if A='0' AND B = '0' then valor1 <= B"0110"; --estado 6
		else valor1 <= B"1011"; 	--estado 11
		end if;
	end process;

	process (valor1)
	begin
		dir_out <= valor1;
	end process;
	
end Behavioral;