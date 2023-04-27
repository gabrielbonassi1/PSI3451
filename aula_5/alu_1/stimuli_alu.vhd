library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stimuli_module is
	generic
	(
	WIDTH	: natural := 8
	);
	
	port
	(
	one_op		     : out STD_LOGIC_VECTOR(WIDTH-1 downto 0); 
	rb_op	: 	out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	alu_ctrl         : out STD_LOGIC      
	);
	
end stimuli_module ;

architecture test of stimuli_module  is
-- "Time" that will elapse between test vectors we submit to the component.
constant TIME_DELTA : time := 100 ns;      -- choose any value

 
begin

simulation : process

-- procedure for vector generation (as input, one_op ,  rb_op and alu_ctrl)
procedure assign_input_words (constant a: in integer; constant b: in STD_LOGIC) is
begin

	one_op <= std_logic_vector(to_unsigned(1, rb_op'length));
	rb_op <= std_logic_vector(to_unsigned(a, WIDTH));
	alu_ctrl <= b;

	wait for TIME_DELTA;
end procedure assign_input_words;


begin

-- test vectors application
-- you may use the following syntax

--		for i in decimal_1 to decimal_2 loop
--          any command
--		end loop;

assign_input_words(147, '0');

for i in 147 to 255 loop
	assign_input_words(i, '1');
end loop;




wait;
end process simulation;
end architecture test;