LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.NUMERIC_STD.ALL;


ENTITY Galois_2bits IS
		GENERIC(
				WIDTH	    : NATURAL  := 8;
				SEED_i    : NATURAL  := 4095;   -- semente  binaria 111111111111      --   
				TAP_i     : NATURAL  := 1237;   --
				FFBIT     : NATURAL  := 1;
				DELAY_T   : TIME     := 4ns
		
		);
		PORT(
				clk, clear : IN  STD_LOGIC; -- res foi apagado
				two_bits   : OUT STD_LOGIC_VECTOR(1 downto 0)  
		);
			 
END Galois_2bits;
		
ARCHITECTURE arch OF Galois_2bits IS

	COMPONENT reg IS 
		GENERIC(
				WIDTH    : NATURAL  := 8
		);
		
		PORT(
				clk 	 	: IN  STD_LOGIC;
				clr  		: IN  STD_LOGIC;
				load 		: IN  STD_LOGIC;
				d    		: IN  STD_LOGIC_VECTOR(WIDTH-1 downto 0);
				q	  		: OUT STD_LOGIC_VECTOR(WIDTH-1 downto 0)
		);
	END COMPONENT;

	COMPONENT xor2 IS
		GENERIC(
				 t_xor    : TIME := 4 ns
		);
		PORT( 
				 x, y     : IN  STD_LOGIC;
				    z     : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT or_2 IS
		GENERIC(
				  t_or     : TIME := 4 ns
		);
		PORT(
				  x, y	  : IN STD_LOGIC;
				     z	  : OUT STD_LOGIC
		);
	END Component;

	
	
	
SIGNAL two_bits_s						           : STD_LOGIC_VECTOR(1 downto 0) := "00";
SIGNAL q_s, d_s, shift_s, or_S,xor_s, tap_s : STD_LOGIC_VECTOR(11 downto 0);
SIGNAL load_s, clr_s  	   	 				  : STD_LOGIC;




BEGIN

	  clr_s      <= clear;			
--      clr_s      <= NOT clear;
		two_bits   <= two_bits_s;
		load_s     <= '1'; -- antigo SET
	   tap_s      <= STD_LOGIC_VECTOR(TO_UNSIGNED(TAP_i , 12)) WHEN q_s(11) = '1' ELSE "000000000000";
						    
	  
		                      
		Select_Ds:	                                -- implementa a funcao do efeito do CLEAR --
			FOR I IN 0 TO 11 GENERATE             
				or_comp : or_2 GENERIC MAP(delay_t) PORT MAP(
																			 x 	  => q_s(I),
																			 y		  => clr_s,    -- clear = 1 => saida = SEED
																			 z 	  => or_s(I)   -- clear = 0 => saida = q_s
																  );		
			END GENERATE;
			
		
			
		DFFs: 
			FOR I IN 0 TO 11 GENERATE  
					  FF	: reg GENERIC MAP(FFBIT)  PORT MAP(	  
																			clk	   => clk, 
																			clr      => '0',
																			load     => load_s, 
																			d(0)     => d_s(I),
																			q(0)     => q_s(I)
														 );
														 
			 END GENERATE;
		
	   TAP_XOR:	
			FOR I IN 0 TO 11 GENERATE  
				 xor_tap  : xor2 GENERIC MAP(delay_t) PORT MAP(
																				 x 	=> or_s(I),
																				 y 	=> tap_s(I),
																				 z 	=> xor_s(I)  -- funciona como mux 2 ja que o tap_s pode ser 0 
																  );		
			END GENERATE;
			
			
		Left_shift:
			FOR I IN 1 TO 11 GENERATE
					shift_s(I) <= xor_s(I-1);
			END GENERATE;
			shift_s(0) <= xor_s(11);
			d_s 		  <= shift_s;
				
			
		OUT_0_1:			     -- usa somente os 2 primeiros bits
		   FOR I IN 0 TO 1
					GENERATE 
						two_bits_s(I)   <=  shift_s(I);
					END GENERATE;
			
			
END arch;