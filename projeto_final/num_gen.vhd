LIBRARY IEEE;
USE work.wisdom_package.all;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.numeric_std.all;


ENTITY num_gen IS
	GENERIC(
			WIDTH	   	: NATURAL := 8;
			SEED_i   	: NATURAL := 4095;   -- semente  bINaria 111111111111      --   
			TAP_i    	: NATURAL  := 1380;  -- n_usp 9837924 => mod(n_usp , 1380) --
			FFBIT    	: NATURAL := 1;
			DELAY_T  		: TIME     := 4ns
	);
	
	PORT(
			clk			: IN  STD_LOGIC;
			reset 		: IN  STD_LOGIC;
			alu_2_ng	   : IN  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
			canal    	: IN  ctrl_2_dp_flags; --datapath_ctrl_flags;
			ng_2_RB		: OUT STD_LOGIC_VECTOR (WIDTH-1 downto 0)
	);
END num_gen ;

ARCHITECTURE arch OF num_gen IS
	 
	
	 COMPONENT rand_num IS
	GENERIC(
			WIDTH	   	: NATURAL := 8;
			SEED_i   	: NATURAL := 4095;   -- semente  bINaria 111111111111      --   
			TAP_i    	: NATURAL := 1237;  --  --
			FFBIT    	: NATURAL := 1;
			DELAY_T  		: TIME     := 4ns
	);
	
	PORT(
			clk			: IN  STD_LOGIC;
			reset 		: IN  STD_LOGIC;
			rand_number		: OUT STD_LOGIC_VECTOR (WIDTH-1 downto 0)
	);
			 
	END  COMPONENT;
	
	SIGNAL rand_number_s         : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	SIGNAL number_s         : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	SIGNAL ng_2_RB_s        : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	SIGNAL alu_2_ng_s       : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	SIGNAL reset_s 		   : STD_LOGIC;
	
	
	BEGIN
		reset_s 	    <= NOT reset;
		alu_2_ng_s   <= alu_2_ng;
		
		rand_number_gen : rand_num 
						GENERIC MAP(  WIDTH, SEED_i, TAP_i, FFBIT,0 ns )
						PORT MAP(
								clk      => clk,
								reset    => reset_s,
								rand_number => rand_number_s 	  
							);				 

		number_s	<=	rand_number_s	 when (canal.ng_rand_zero = '0') else	
							"00000000"	 when (canal.ng_rand_zero = '1') else
							(others => 'X' );						
							 
		ng_2_RB_s	<=	number_s	      when (canal.ng_cte_incr = '0') else
							alu_2_ng_s     when (canal.ng_cte_incr = '1') else
							(others => 'X' );					
		

		ng_2_RB      <= ng_2_RB_s;
		
end arch;