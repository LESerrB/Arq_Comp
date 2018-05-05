library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mod_senal is
Port (  senal : in STD_LOGIC_VECTOR(3 DOWNTO 0);
			s0 : buffer STD_LOGIC_VECTOR(3 DOWNTO 0);
			salida : out STD_LOGIC_VECTOR(3 DOWNTO 0) );
end mod_senal;

architecture Behavioral of mod_senal is

begin
	process (senal)

	begin
		case senal is
			
			when X"0" =>	--DETENIDO
				s0 <= "0000";
				
			when X"1" =>	--ADELANTE
				s0 <= "0101";	

			when x"2" =>	--ATRAS
				s0 <= "1010";
				
			when X"4" =>	--IZQUIERDA
				s0 <= "0110";
				
			when x"8" =>	--DERECHA
				s0 <= "1001";

			when others => null;

		end case;

		salida <= s0;
		
	end process;
end Behavioral;