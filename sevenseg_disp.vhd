-- Seven Segment Decoder 
-- Hunter Mason, Joey Koblitz
-- Monday January 8th 2018
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- imports library--

entity sevenseg_disp is 
	port( input: in STD_LOGIC_VECTOR(3 downto 0); 
			output: out STD_LOGIC_VECTOR(6 downto 0)  );
-- declaring how many pins will handle input and output values 
end;

architecture endcoding of sevenseg_disp is 
	signal internal: STD_LOGIC_VECTOR(7 downto 0);
--internal is being declared as an eight-value array. It will convert
--binary input to hex to indicate the values to be displayed.
	begin
		with input select
			internal <= x"40" when "0000",
							x"79" when "0001",
							x"24" when "0010",
							x"30" when "0011",
							x"19" when "0100",
							x"12" when "0101",
							x"02" when "0110",
							x"78" when "0111",
							x"00" when "1000",
							x"18" when "1001",
							x"09" when others;
-- x"[hex output]" when X"[binary input]"
		output <= internal(6 downto 0); 
-- Sending the hex to be displayed 
	end;