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
	a_i, b_i	: 	out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	c_i			:	out STD_LOGIC
	);
end stimuli_module ;

architecture test of stimuli_module  is
-- "Time" that will elapse between test vectors we submit to the component.
constant TIME_DELTA : time := 100 ns;      -- choose any value


begin

simulation : process

-- procedure for vector generation

procedure assign_input_words(constant a, b: in integer) is
begin
-- Assign values to estimuli_module´s outputs.
a_i <= std_logic_vector(to_unsigned(a,WIDTH));
b_i <= std_logic_vector(to_unsigned(b,WIDTH));

wait for TIME_DELTA;
end procedure assign_input_words;


procedure assign_carry_in (constant a: in STD_LOGIC) is
begin
-- Assign values to estimuli_module´s outputs.
c_i <= a;

wait for TIME_DELTA;
end procedure assign_carry_in;

begin

-- test vectors application

assign_input_words(53, 127);
assign_carry_in('0');

assign_input_words(147, 211); -- carry_in = 0 e carry_out = 1
assign_carry_in('0');

assign_input_words(147, 54); -- carry_in = 1 e carry_out = 0
assign_carry_in('1');

assign_input_words(147, 54); -- carry_in = 0 e carry_out = 0
assign_carry_in('0');

assign_input_words(255, 2); -- overflow
assign_carry_in('1');


wait;
end process simulation;
end architecture test;