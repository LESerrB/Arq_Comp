library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity reg_inst is
Port ( CLK : in STD_LOGIC;
		 RESET : in STD_LOGIC;
		 inst_in: in STD_LOGIC_VECTOR (1 downto 0);
		 inst_out: out STD_LOGIC_VECTOR (1 downto 0)
		 );
end reg_inst;

architecture Behavioral of reg_inst is
signal valor : STD_LOGIC_VECTOR (1 downto 0) := B"00";
begin
	
	process(CLK, RESET, inst_in)
	begin
		if RESET = '0' then valor <= "00";
		elsif rising_edge(CLK) then valor <= inst_in;
		end if;
	end process;
process (valor)
begin
		inst_out <= valor;
	end process;
end Behavioral;