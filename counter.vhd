library ieee;
use ieee.STD_LOGIC_1164.all;

ENTITY counter IS
PORT( clk: IN STD_LOGIC;
	count: OUT INTEGER RANGE 0 to 9);
END counter;


ARCHITECTURE counter OF counter IS
	SIGNAL temp: INTEGER RANGE 0 TO 9;
BEGIN 
	PROCESS(clk)
BEGIN
	IF(clk'EVENT AND clk='1') THEN
		IF(temp=9) THEN
			temp <= 0;
		ELSE
			temp <= temp+1;
		END IF;
	END IF;
	count <= temp;
	END PROCESS;
END counter;
