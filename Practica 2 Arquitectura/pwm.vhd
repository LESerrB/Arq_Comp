library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pwm is
	Port (	reloj : in std_logic;
				sal_pwm : out std_logic_vector (1 DOWNTO 0)	);
end pwm;

architecture Behavioral of pwm is
	begin
	process (reloj)
		variable cuenta: std_logic_vector (19 downto 0):=X"00000";
		variable t_on: std_logic_vector (1 downto 0):=B"00";
		begin
			if rising_edge (reloj) then
				if cuenta= X"18E98" then	--CICLO COMPLETO
					cuenta:= X"00000";
				elsif cuenta< X"31D3" then	--CICLO 25% ENCENDIDO
					cuenta:= cuenta+1;
					t_on:=B"11";
				else
					cuenta:= cuenta+1;
					t_on:=B"00";
				end if;
			end if;
		sal_pwm <= t_on;
	end process;
end Behavioral;
