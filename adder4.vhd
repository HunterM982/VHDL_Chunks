library ieee;
use IEEE.std_logic_1164.all;

ENTITY adder4 IS
	PORT  (a, b: IN std_logic_vector(3 downto 0);
			 carry_in: IN std_logic;
		    total: OUT std_logic_vector(3 downto 0);
			 carry_out: OUT std_logic); 
END adder4;

ARCHITECTURE FourBitAdder of adder4 is
	COMPONENT fulladder IS
		PORT  (x, y, c_in:  IN std_logic;
		    sum, c_out: OUT std_logic);
	END COMPONENT;
	SIGNAL C: std_logic_vector(4 downto 0);

BEGIN
	C(0) <= carry_in;
	carry_out <= C(4);
	adder4: FOR i IN 0 to 3 GENERATE
		FAi: fulladder PORT MAP (a(i),b(i),C(i),total(i),C(i+1));  
	END GENERATE;
END FourBitAdder;