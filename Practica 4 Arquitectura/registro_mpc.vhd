library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registro_mpc is
Port ( RESET : in STD_LOGIC;
		 CLK: in STD_LOGIC;
		 edo_sig_in: in STD_LOGIC_VECTOR (3 downto 0);
		 edo_sig_out : out STD_LOGIC_VECTOR (3 downto 0)
		 );
end registro_mpc;

architecture Behavioral of registro_mpc is
signal valor: STD_LOGIC_VECTOR (3 downto 0):=B"0000";
begin
	
	process(CLK, RESET, edo_sig_in)
	begin
		if RESET='0' then valor <= B"0000";
		elsif rising_edge(CLK) then valor <= edo_sig_in;
		end if;
	end process;
	
	process (valor)
	begin 
		edo_sig_out <= valor;
	end process;

end Behavioral;