LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
----------------------------------------------
ENTITY fulladder IS
	PORT  (x, y, c_in:  IN std_logic;
		    sum, c_out: OUT std_logic);
END;
----------------------------------------------
ARCHITECTURE logicfunc OF fulladder IS
BEGIN
  sum <= x XOR y XOR c_in;
  c_out <=(x AND y)OR(c_in AND x)OR(c_in AND y);
END;
