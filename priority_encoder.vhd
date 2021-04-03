-- Priority Encoder --

library IEEE;
use IEEE.std_logic_1164.all;

entity encoder_entity is 
	port(   d: in std_logic_vector(7 downto 1);
		y: out std_logic_vector(2 downto 0) );
end;

architecture encoder_arch of encoder_entity is
begin
	y <= "111" when d(7)='1'
	else "110" when d(6)='1'
	else "101" when d(5)='1'
	else "100" when d(4)='1'
	else "011" when d(3)='1'
	else "010" when d(2)='1'
	else "001" when d(1)='1'
	else "000";
end;
