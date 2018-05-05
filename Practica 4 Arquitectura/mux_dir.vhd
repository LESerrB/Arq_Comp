library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_direccion is
Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
		 estado_siguiente: in STD_LOGIC_VECTOR (3 downto 0);
		 selector: in STD_LOGIC;
		 Y : out STD_LOGIC_VECTOR (3 downto 0)
		 );
end mux_direccion;

architecture Behavioral of mux_direccion is
begin
	
	process(selector, D, estado_siguiente)
	begin
		if selector='0' then Y <= D;	--liga
		else Y <= estado_siguiente;	--incrementa
		end if;
	end process;

end Behavioral;