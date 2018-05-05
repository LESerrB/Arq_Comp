library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity reg_out is
Port ( CLK : in STD_LOGIC;
		 RESET : in STD_LOGIC;
		 salida_in: in STD_LOGIC_VECTOR (3 downto 0);
		 salida_out: out STD_LOGIC_VECTOR (3 downto 0)
		 );
end reg_out;

architecture Behavioral of reg_out is
signal valor : STD_LOGIC_VECTOR (3 downto 0) := B"0000";
begin
	
	process(CLK, RESET, salida_in)
	begin
		if RESET = '0' then valor <= "0000";
		elsif rising_edge(CLK) then valor <= salida_in;
		end if;
	end process;
process (valor)
begin
		salida_out <= valor;
	end process;
end Behavioral;