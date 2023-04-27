library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_alu is

GENERIC (WIDTH: natural :=8);

end tb_alu;

architecture test of tb_alu is

component stimuli_module 
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
end component ;

component alu 
	generic
	(
	WIDTH : integer := 8
	);
	
	port
	(
	one_op		     : in STD_LOGIC_VECTOR(WIDTH-1 downto 0); 
	rb_op			     : in STD_LOGIC_VECTOR(WIDTH-1 downto 0); 
	alu_ctrl         : in STD_LOGIC;                         
	alu_result		  : out STD_LOGIC_VECTOR(WIDTH-1 downto 0) 
	);
end component ;

	signal one_op_s, rb_op_s, alu_result_s : STD_LOGIC_VECTOR(WIDTH-1 downto 0); 
	signal alu_ctrl_s : STD_LOGIC; 

begin

-- Instantiate DUT
	dut : alu
		generic map(WIDTH => WIDTH)
		port map(one_op	 		=> one_op_s, 
				 rb_op	 		=> rb_op_s, 
				 alu_ctrl		=> alu_ctrl_s,
				alu_result 			=> alu_result_s);

-- Instantiate test module
	test : stimuli_module
		generic map(WIDTH => WIDTH)
		port map(one_op	 		=> one_op_s, 
				 rb_op	 		=> rb_op_s, 
				 alu_ctrl		=> alu_ctrl_s);


end architecture test;