LIBRARY IEEE;
USE work.wisdom_package.all;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.numeric_std.all;


ENTITY rand_num IS
	GENERIC(
			WIDTH	   	: NATURAL := 8;
			SEED_i   	: NATURAL := 4095;   -- semente  bINaria 111111111111      --   
			TAP_i    	: NATURAL := 1237;  -- --
			FFBIT    	: NATURAL := 1;
			DELAY_T  		: TIME     := 4ns
	);
	
	PORT(
			clk			: IN  STD_LOGIC;
			reset 		: IN  STD_LOGIC;
			rand_number		: OUT STD_LOGIC_VECTOR (WIDTH-1 downto 0)
	);
END rand_num ;

ARCHITECTURE arch OF rand_num IS
	 
	
	 COMPONENT Galois_2bits IS
		GENERIC(
				WIDTH	   		: NATURAL  := 8;
				SEED_i  		   : NATURAL  := 4095;   -- semente  bINaria 111111111111      --   
				TAP_i    		: NATURAL  := 1237;  --  --
				FFBIT    		: NATURAL  := 1;
				DELAY_T  		: TIME     := 4ns
		);
		
		port(
				clk, clear     : IN  STD_LOGIC; -- reset foi apagado
				two_bits  	   : OUT STD_LOGIC_VECTOR(1 downto 0)  
			 );
			 
	END  COMPONENT;
	
	SIGNAL two_bits_s   	   : STD_LOGIC_VECTOR(1 downto 0);  

	SIGNAL reset_s 		   : STD_LOGIC;
	
	
	BEGIN
		reset_s 	    <= NOT reset;
		
		LFSR : Galois_2bits 
						GENERIC MAP(  WIDTH, SEED_i, TAP_i, FFBIT,0 ns )
						PORT MAP(
								clk      => clk,
								clear    => reset_s,
								two_bits => two_bits_s 	  
							);				 
					

		rand_number  <= "000000" & two_bits_s;
							
		
end arch;