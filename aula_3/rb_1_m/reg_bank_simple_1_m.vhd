--***************************************************************
--*																*
--*	Title	:													*
--*	Design	:													*
--*	Author	:													*
--*	Email	:													*
--*																*
--***************************************************************
--*																*
--*	Description :												*
--*																*
--***************************************************************
package my_package is

	 type RB_SEL is	(
					INIT_OUT,
					GURU_OUT,
					GURU_PREV_OUT
					);
					
end package;



library IEEE;
use IEEE.std_logic_1164.all;

use work.my_package.all;



entity reg_bank_simple is 
  					
	generic
	(
	WIDTH		: NATURAL	:= 8
	);


	port
	(
	out_sel		: in RB_SEL;
	rb_out		: out STD_LOGIC_VECTOR(WIDTH-1 downto 0)
	);
	
end reg_bank_simple;



architecture dataflow_case of reg_bank_simple is

--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************
signal init_out_s	: STD_LOGIC_VECTOR(WIDTH-1 downto 0) 	:= "11111111";
signal guru_out_s	: STD_LOGIC_VECTOR(WIDTH-1 downto 0)	:= "00000000";
signal guru_prev_out_s	: STD_LOGIC_VECTOR(WIDTH-1 downto 0)	:= "01010101";

begin

						
	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	
	rb_out	<= 	init_out_s	when (out_sel = INIT_OUT) else
				guru_out_s	when (out_sel = GURU_OUT) else
				--guru_prev_out_s	when (out_sel = GURU_PREV_OUT) else
				(others => 'X');					-- **  'X'  indica valor indeterminado
	

end dataflow_case;
