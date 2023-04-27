Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity rc_adder_2 is
	generic
	(
	WIDTH	: natural := 8
	);
	port
	(
	a_i, b_i		:	in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
	z_out		:	out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
	c_i			:	in STD_LOGIC;
	c_o			:	out STD_LOGIC
	);
	
end rc_adder_2;


architecture structural of rc_adder_2 is


	COMPONENT full_adder_1 
		port ( a_in, b_in, c_in		:	in STD_LOGIC;
				z_out, c_out		:	out STD_LOGIC);
	END COMPONENT;
	
  
  
signal carry	: STD_LOGIC_VECTOR (WIDTH-1 downto 0);  -- auxiliary signal carry(x) means carry_out of stage x

begin

-- a seguir, template e versao incompleta

-- FOR generate para todos os bits

	G_ALL : FOR N IN WIDTH-1 DOWNTO 0 GENERATE
	
--      IF generate para caso LSB- codificar para N=0
		G_LSB: IF (N=0) GENERATE
			F_LSB: full_adder_1
			PORT MAP(
				a_in => a_i(N),
				b_in => b_i(N),
				c_in => c_i,
				z_out => z_out(N),
				c_out => carry(N)
			);
			END GENERATE G_LSB;
--		fechar IF 



--      IF generate para caso MSB- codificar para N=WIDTH-1
		G_MSB: IF (N=WIDTH-1) GENERATE
			F_MSB: full_adder_1
			PORT MAP(
				a_in => a_i(N),
				b_in => b_i(N),
				c_in => carry(N-1),
				z_out => z_out(N),
				c_out => c_o
			);
			END GENERATE G_MSB;
--		fechar IF 

		
--		IF generate para demais casos
		
		G_CENTRAL : IF (N < WIDTH-1 AND N > 0) GENERATE
			fa_central : full_adder_1
				PORT MAP (a_i(N), b_i(N), carry (N-1), z_out(N), carry (N)); 
		END GENERATE G_CENTRAL;
				
--		fechar IF 
		
	END GENERATE G_ALL;

-- fechar FOR



end structural;
