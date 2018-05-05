library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity log_interna is
Port ( I : in STD_LOGIC_VECTOR(1 downto 0);
		 CC : in STD_LOGIC;
		 selector : out STD_LOGIC;
		 PL : out STD_LOGIC;
		 MAP1 : out STD_LOGIC;
		 VECT : out STD_LOGIC
		 );
end log_interna;

architecture Behavioral of log_interna is
signal palabra :STD_LOGIC_VECTOR (3 downto 0);
begin
	
	process(I, CC)
	begin
		if I="00" then palabra<="1111";
		
		elsif I="01" and CC='0' then palabra<="0011";
		elsif I="01" and CC='1' then palabra<="1011";
		
		elsif I="10" then palabra<="0101";
		
		elsif I="11" and CC='0' then palabra<="0110";
		elsif I="11" and CC='1' then palabra<="1110";
		end if;
	end process;

	process (palabra)
	begin
		selector <= palabra(3);
		PL <= palabra(2);
		MAP1 <= palabra(1);
		VECT <= palabra(0);
	end process;
	
end Behavioral;