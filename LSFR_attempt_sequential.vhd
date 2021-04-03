library ieee;
use ieee.std_logic_1164.all;

ENTITY LSFR IS

PORT( rand_num: OUT std_logic_vector(15 DOWNTO 0)
);
END LSFR;

ARCHITECTURE rand_gen OF LSFR IS
CONSTANT seed: std_logic_vector(15 DOWNTO 0):= "0101110100100100";
SIGNAL shift: std_logic_vector(15 DOWNTO 0):= seed;
SIGNAL pull_one: std_logic:= shift(5);
SIGNAL pull_two: std_logic:= shift(10);
SIGNAL pull_three: std_logic:= shift(13);

BEGIN
	PROCESS
		WAIT UNTIL(vsync'event AND (vsync = '1'))
			pull_one <= shift(3);
			pull_two <= shift(6);
			pull_three <= shift(11);
			for i in 0 to 14 loop
				rand_num(i+1) <= shift(i);
			END loop;
			rand_num(0) <= ((((shift(15)XOR pull_three) XOR pull_two) XOR pull_three));
			shift <= rand_num;
	END PROCESS;
END;
	