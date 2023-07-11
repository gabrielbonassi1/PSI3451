library IEEE;
use IEEE.std_logic_1164.all;
use work.wisdom_package.all;


entity reg_bank_disc is 
	generic
	(
	    WIDTH		: NATURAL	:= 8
	);

	port
	(
	    clk			    : in STD_LOGIC;
	    res			    : in STD_LOGIC;
	    ng_2_rb         : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	    load_DISC	    : in STD_LOGIC;
	    load_PREV_DISC  : in STD_LOGIC;
	    out_sel		    : in RB_SEL;
	    disc_addr       : out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	    disc_prev_addr  : out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	    rb_out		    : out STD_LOGIC_VECTOR(WIDTH-1 downto 0)
	);
end reg_bank_disc;


architecture arch of reg_bank_disc is

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
        q	 : out STD_LOGIC_VECTOR(WIDTH-1 downto 0)
   );
end component;


signal DISC_out_s		: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
signal PREV_DISC_out_s	: STD_LOGIC_VECTOR(WIDTH-1 downto 0);


begin
	reg_DISC:	reg		generic map
		(
		    WIDTH	=> WIDTH
		)
		
		port map
		(
			clk	     => clk , 
			clr      => res,
			load     => load_DISC, 
			d        => ng_2_rb,
			q        => DISC_out_s
		);
	
	
	
	reg_PREV_DISC:	reg		generic map
		(
		    WIDTH	=> WIDTH
		)
		
		port map
		(
			clk	     => clk , 
			clr      => res,
			load     => load_PREV_DISC, 
			d        => DISC_out_s,
			q        => PREV_DISC_out_s
		);
	
	rb_out			   <= 	DISC_out_s			when (out_sel = DISC_OUT) else
							PREV_DISC_out_s 	when (out_sel = DISC_PREV_OUT) else
							(others => 'X');
			
	disc_addr 	      <=    DISC_out_s;
	disc_prev_addr 	  <=    PREV_DISC_out_s;

end arch;