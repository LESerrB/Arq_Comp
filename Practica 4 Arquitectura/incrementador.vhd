library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity incrementador is
Port ( Y : in STD_LOGIC_VECTOR (3 downto 0);
		 estado_siguiente : out STD_LOGIC_VECTOR (3 downto 0)
		 );
end incrementador;

architecture Behavioral of incrementador is
begin
	
	process(Y)
	begin
		if Y = "1111" then estado_siguiente <= "0000";
		else estado_siguiente <= Y + '1';
		end if;
	end process;

end Behavioral;