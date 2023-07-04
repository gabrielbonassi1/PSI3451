Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity rc_adder is
	generic
	(
	WIDTH	: natural := 8
	);
	port
	(
	a_i, b_i		:	in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
	z_o		   :	out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
	c_i			:	in STD_LOGIC;
	c_o			:	out STD_LOGIC
	);
	
end rc_adder;


architecture structural of rc_adder is

	COMPONENT full_adder_1 
		port
		(
		a_in, b_in, c_in	:	in STD_LOGIC;
		z_out, c_out		:	out STD_LOGIC
		);
	
END COMPONENT;
		

	signal a, b,cout, c_in,aux_xor ,aux_and_1 , aux_and_2,aux_and_3  : std_logic;
    signal c_out, z :  STD_LOGIC_VECTOR (WIDTH-1 downto 0);


	begin
		adder_1: full_adder_1 PORT MAP (a_i(0) ,b_i(0) ,  c_i     ,  z(0), c_out(0) ); 
		adder_2: full_adder_1 PORT MAP (a_i(1) ,b_i(1) ,  c_out(0),  z(1), c_out(1) );
		adder_3: full_adder_1 PORT MAP (a_i(2) ,b_i(2) ,  c_out(1),  z(2), c_out(2) );  
		adder_4: full_adder_1 PORT MAP (a_i(3) ,b_i(3) ,  c_out(2),  z(3), c_out(3) );  
		adder_5: full_adder_1 PORT MAP (a_i(4) ,b_i(4) ,  c_out(3),  z(4), c_out(4) );  
		adder_6: full_adder_1 PORT MAP (a_i(5) ,b_i(5) ,  c_out(4),  z(5), c_out(5) );  
		adder_7: full_adder_1 PORT MAP (a_i(6) ,b_i(6) ,  c_out(5),  z(6), c_out(6) );  
		adder_8: full_adder_1 PORT MAP (a_i(7) ,b_i(7) ,  c_out(6),  z(7), c_out(7) );  
		
	    z_o <= z;
	    c_o <= c_out(7);
end structural;