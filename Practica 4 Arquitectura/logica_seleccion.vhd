library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity logica_seleccion is
Port ( X : in STD_LOGIC;
		 Y : in STD_LOGIC;
		 Qx : in STD_LOGIC;
		 INT : in STD_LOGIC;
		 vf : in STD_LOGIC;
		 prueba : in STD_LOGIC_VECTOR (1 downto 0);
		 CC : out STD_LOGIC
		 );
end logica_seleccion;

architecture Behavioral of logica_seleccion is

signal salida_mux : STD_LOGIC;

begin
		
	process(X,Y,Qx,INT,prueba)
	begin
		if prueba = "00" then salida_mux <= Qx; -- aux
		elsif prueba = "01" then salida_mux <= X; -- x
		elsif prueba = "10" then salida_mux <= Y;-- y
		elsif prueba = "11" then salida_mux <= INT;-- int
		end if;
	end process;
	
	process (salida_mux, vf)
	begin	
	cc <= salida_mux xor vf;
	end process;
	
end Behavioral;