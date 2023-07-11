--***************************************************************
--*																*
--*	Title	:	Comparator									*
--*	Design	:	snake_hw										*
--*	Author	:	Frederik Luehrs									*
--*	Email	:	luehrs.fred@gmail.com							*
--*																*
--***************************************************************
--*																*
--*	Description :												*
--*																*
--***************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.wisdom_package.all;

entity comparator is 
	port
	(
	dis_pos   	: in STD_LOGIC_VECTOR(7 downto 0);
	guru_pos  	: in STD_LOGIC_VECTOR(7 downto 0);
	comp_out 	: out STD_LOGIC
	);
end comparator;


architecture arch of comparator is

--***********************************
--*	TYPE DECLARATIONS				*
--***********************************

--***********************************
--*	COMPONENT DECLARATIONS			*
--***********************************

--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************
signal comp_out_s		: STD_LOGIC;

begin
   comp_out	<= comp_out_s	;


	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	
	comp_out_s  <= '1' when dis_pos = guru_pos else '0'; 
					

end arch;
