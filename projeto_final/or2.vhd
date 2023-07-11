Library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY or_2 IS
	GENERIC(t_or : time := 4 ns);
	PORT( x, y: IN STD_LOGIC;
		    z: OUT STD_LOGIC);
END or_2;

ARCHITECTURE dataflow OF or_2 IS

BEGIN 
	z <= x or y AFTER t_or;
END dataflow;