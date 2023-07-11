library IEEE;
use IEEE.std_logic_1164.all;
use work.wisdom_package.all;


entity reg_bank is 
	generic
	(
	WIDTH		: NATURAL	:= 8
	);

	port
	(
	clk			    : in STD_LOGIC;
	res			    : in STD_LOGIC;
	ng_2_RB         : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	load_INIT	    : in STD_LOGIC;
	load_GURU	    : in STD_LOGIC;
	load_PRE_GURU   : in STD_LOGIC;
	out_sel		    : in RB_SEL;
	guru_addr       : out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	guru_prev_addr  : out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	rb_out		    : out STD_LOGIC_VECTOR(WIDTH-1 downto 0)
	);
end reg_bank;


architecture arch of reg_bank is

--***********************************
--*	TYPE DECLARATIONS				*
--***********************************

--***********************************
--*	COMPONENT DECLARATIONS			*
--***********************************

component reg
	generic
	(
	WIDTH	: natural  := 8
	);
	
   port
   (
   clk  : in  STD_LOGIC;
   clr  : in  STD_LOGIC;
   load : in  STD_LOGIC;
   d    : in  STD_LOGIC_VECTOR(WIDTH-1 downto 0);
   q	  : out STD_LOGIC_VECTOR(WIDTH-1 downto 0)
   );
end component;


--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************
signal INIT_out_s			: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
signal GURU_out_s			: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
signal PRE_GURU_out_s	: STD_LOGIC_VECTOR(WIDTH-1 downto 0);


begin

	--*******************************
	--*	COMPONENT INSTANTIATIONS	*
	--*******************************
	
	
	reg_INIT:	reg		generic map
						(
						WIDTH	=> WIDTH
						)
						
						port map
						(
									clk	   => clk , 
		                     clr      => res,
		                     load     => load_INIT, 
									d        => ng_2_RB,
									q        => INIT_out_s
						);
	

	
	reg_GURU:	reg		generic map
						(
						WIDTH	=> WIDTH
						)
						
						port map
						(
									clk	   => clk , 
		                     clr      => res,
		                     load     => load_GURU, 
									d        => ng_2_RB,
									q        => GURU_out_s
						);
	
	
	
	reg_PRE_GURU:	reg		generic map
						(
						WIDTH	=> WIDTH
						)
						
						port map
						(
									clk	   => clk , 
		                     clr      => res,
		                     load     => load_PRE_GURU, 
									d        => GURU_out_s,
									q        => PRE_GURU_out_s
						);
	



						
	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	
	rb_out			   <= 	INIT_out_s			when (out_sel = INIT_OUT) else
									GURU_out_s			when (out_sel = GURU_OUT) else
									PRE_GURU_out_s 	when (out_sel = GURU_PREV_OUT) else
									(others => 'X');
			
	guru_addr 	      <=    GURU_out_s;
	guru_prev_addr 	<=    PRE_GURU_out_s;

end arch;
