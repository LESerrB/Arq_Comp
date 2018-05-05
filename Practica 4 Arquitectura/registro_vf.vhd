library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity reg_vf is
Port ( CLK : in STD_LOGIC;
		 RESET : in STD_LOGIC;
		 vf_in: in STD_LOGIC;
		 vf_out: out STD_LOGIC
		 );
end reg_vf;

architecture Behavioral of reg_vf is
signal valor : STD_LOGIC:= '0';
begin
	
	process(CLK, RESET, vf_in)
	begin
		if RESET = '0' then valor <= '0';
		elsif rising_edge(CLK) then valor <= vf_in;
		end if;
	end process;
process (valor)
begin
		vf_out <= valor;
	end process;
end Behavioral;