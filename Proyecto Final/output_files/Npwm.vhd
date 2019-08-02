



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Npwm is 
  Port ( 
  clk : in STD_LOGIC;
  SIzq : out STD_LOGIC;
  SDer : out STD_LOGIC;
  Dir:in STD_LOGIC_VECTOR(7 downto 0);
  duty: in STD_LOGIC_VECTOR( 7 downto 0));
end Npwm;

Architecture Behavioral of Npwm is
begin	  
process(clk,duty)
variable  izq: std_logic:='1';
variable  der: std_logic:='1';
variable dutyI: std_logic_vector(19 downto 0);
variable dutyD: std_logic_vector(19 downto 0);
variable contador: std_logic_vector(19 downto 0):= X"00000";
begin

   if rising_edge (clk) then 

	end if;
     SIzq<=izq;
     SDer<=der;	
end process;
end Behavioral;	