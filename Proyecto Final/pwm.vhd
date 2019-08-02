

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pwm is 
  Port ( 
  clk : in STD_LOGIC;
  SIzq : out STD_LOGIC;
  SDer : out STD_LOGIC;
  duty: in STD_LOGIC_VECTOR( 7 downto 0));
end pwm;

Architecture Behavioral of pwm is
begin	  
process(clk,duty)
variable  izq: std_logic:='1';
variable  der: std_logic:='1';
variable dutyI: std_logic_vector(19 downto 0);
variable dutyD: std_logic_vector(19 downto 0);
variable contador: std_logic_vector(19 downto 0):= X"00000";
begin
   if rising_edge (clk) then 
    
		
	if duty= X"0C" then   ------12%  
	    dutyI:=X"031d3";  
	    dutyD:=X"031d3";
      elsif duty= X"19" then   ------25%
		    dutyI:=X"04650";
	       dutyD:=X"031d3";
	   elsif duty= X"32" then  -------50%
	       dutyI:=X"0c350";
	       dutyD:=X"05530";	
	 else
	    dutyI:=X"031d3";  
	    dutyD:=X"0c350";
    end if;
		
    
     
	   if  contador=dutyI and izq='1' then 
		   izq:='0';
	   end if;
	   if contador=dutyD and der='1' then 
	       der:='0';
		end if;
		if contador = X"18E98" and izq='0' then 
		   izq:='1';
		   der:='1';
		   contador:=X"00000";
      else 
	      contador:=contador+1;
      end if;	
  
   end if;  
   SIzq<=izq;
   SDer<=der;
end process;
end Behavioral;
