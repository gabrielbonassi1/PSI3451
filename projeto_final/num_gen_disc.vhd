LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.numeric_std.all;
USE work.wisdom_package.all;


ENTITY num_gen_disc IS
	GENERIC(
		WIDTH	   	: NATURAL := 8
			
	);
	
	PORT(
		clk			: IN  STD_LOGIC;
		reset 		: IN  STD_LOGIC;
		alu_result	: IN  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
		ng_cte_incr	: in STD_LOGIC;
		ng_2_rb		: OUT STD_LOGIC_VECTOR (WIDTH-1 downto 0)
	);
END num_gen_disc ;

ARCHITECTURE arch OF num_gen_disc IS
	 
	
	COMPONENT rand_num_disc IS
	generic
		(
			width : natural := 8
		);
		port(
			clk: in std_logic;
			rst: in std_logic;
			rand_num_output : out std_logic_vector(width-1 downto 0)
		);
	END  COMPONENT;
	
	SIGNAL rand_num_output_s         : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	SIGNAL ng_2_rb_s        		 : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	SIGNAL alu_result_s       		 : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	SIGNAL reset_s 		   			 : STD_LOGIC;
	
	
	BEGIN
		reset_s 	    <= not reset;
		alu_result_s   <= alu_result;
		
		rand_num_output_gen : rand_num_disc 
			GENERIC MAP(  WIDTH )
			PORT MAP(
					clk      => clk,
					rst    => reset_s,
					rand_num_output => rand_num_output_s 	  
			);				 

							 
		ng_2_rb_s	<=	rand_num_output_s  when (ng_cte_incr = '0') else
						alu_result_s     when (ng_cte_incr = '1') else
						(others => 'X' );					
		

		ng_2_rb      <= ng_2_rb_s;
		
end arch;