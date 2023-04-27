library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_rc_adder is

GENERIC (WIDTH: natural :=8);

end tb_rc_adder;

architecture test of tb_rc_adder is

component stimuli_module 
	generic
	(
	WIDTH	: natural := 8
	);
	
	port
	(
	a_i, b_i	: 	out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	c_i			:	out STD_LOGIC
	);
end component ;

component rc_adder_2 
	generic
	(
	WIDTH : integer := 8
	);
	
	port
	(
	a_i, b_i	: 	in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	c_i			:	in STD_LOGIC;
	z_out 		: 	out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	c_o			:	out STD_LOGIC
	);
end component ;

	signal a_i_s, b_i_s, z_o_s : STD_LOGIC_VECTOR(WIDTH-1 downto 0); 
	signal c_i_s, c_o_s : STD_LOGIC;

begin

-- Instantiate DUT
	dut : rc_adder_2
		generic map(WIDTH => WIDTH)
		port map(a_i	 		=> a_i_s, 
				b_i 			=> b_i_s,
				c_i 			=> c_i_s,
				z_out 			=> z_o_s,
				c_o 			=> c_o_s);

-- Instantiate test module
	test : stimuli_module
		generic map(WIDTH => WIDTH)
		port map(a_i	 		=> a_i_s, 
				b_i 			=> b_i_s,
				c_i 			=> c_i_s);


end architecture test;