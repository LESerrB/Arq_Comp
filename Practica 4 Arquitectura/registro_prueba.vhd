library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity reg_prueba is
Port ( CLK : in STD_LOGIC;
		 RESET : in STD_LOGIC;
		 prueba_in: in STD_LOGIC_VECTOR (1 downto 0);
		 prueba_out: out STD_LOGIC_VECTOR (1 downto 0)
		 );
end reg_prueba;

architecture Behavioral of reg_prueba is
signal valor : STD_LOGIC_VECTOR (1 downto 0) := B"00";
begin
	
	process(CLK, RESET, prueba_in)
	begin
		if RESET = '0' then valor <= "00";
		elsif rising_edge(CLK) then valor <= prueba_in;
		end if;
	end process;
process (valor)
begin
		prueba_out <= valor;
	end process;
end Behavioral;