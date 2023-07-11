library IEEE;
use IEEE.std_logic_1164.all;
use work.wisdom_package.all;

entity base_datapath is 
	generic
	(
	WIDTH		: NATURAL	:= 8
	);

	port
	(
	clk			     : in STD_LOGIC;											--from system
	res				  : in  STD_LOGIC;										   --from system
	ctrl_ctrl 		  : in  ctrl_2_dp_flags;							    	--to datapath
	disc_flags       : in  disc_2_base_flags;
	base_2_ref  	  : out base_2_ref_flags;
	mem_data         : out base_2_mem_flags;       
	ctrl_flags		  : out dp_2_ctrl_flags							     	--to control unit
	);
end base_datapath;


architecture arch of base_datapath is

--***********************************
--*	COMPONENT DECLARATIONS			*
--***********************************

component  num_gen	 is
	generic
	(
	WIDTH	      : NATURAL  := 8;
	SEED_i   	: NATURAL  := 4095;   -- semente  binaria 111111111111      --   
	TAP_i    	: NATURAL  := 1380;  -- n_usp 9837924 => mod(n_usp , 1380) --
	FFBIT    	: NATURAL  := 1
	);
	
	port
	(	
	clk			: IN  STD_LOGIC;
	reset 		: IN  STD_LOGIC;
	alu_2_ng 	: IN  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
	canal    	: IN  ctrl_2_dp_flags; 
	ng_2_RB		: OUT STD_LOGIC_VECTOR (WIDTH-1 downto 0)
	);
end component;

component reg
	generic
	(
	WIDTH	: natural  := 8
	);
	
   port
   (
   clk   : in  STD_LOGIC;
   clr   : in  STD_LOGIC;
   load  : in  STD_LOGIC;
   d   	: in  STD_LOGIC_VECTOR(WIDTH-1 downto 0);
   q	   : out STD_LOGIC_VECTOR(WIDTH-1 downto 0)
   );
end component;

component reg_bank
	generic
	(
	WIDTH			    : NATURAL	:= 8
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
end component;	

component alu
	generic
	(
	WIDTH		: NATURAL	:= 8
	);

	port
	(
	one_op		     : in STD_LOGIC_VECTOR(WIDTH-1 downto 0); -- uma constante (00000001).
	rb_op			     : in STD_LOGIC_VECTOR(WIDTH-1 downto 0); -- operandos Rb_op são oriundos de Reg Bank (saídas de REG_GURU ou REG_INIT).
	alu_ctrl         : in STD_LOGIC;                          -- controle a saida da ula: 
	alu_result		  : out STD_LOGIC_VECTOR(WIDTH-1 downto 0) -- resultado_soma(proxima posicao do GURU) ou posicao atual do GURU
	);
end component;



component code_gen is 
	port
	(
	ctrl_code_sel	: in CODE;
	mem_code_w		: out STD_LOGIC_VECTOR(7 downto 0)
	);
end component;

component coll_ovf is 
	port
	(
	clk			   : in STD_LOGIC;											--from system
	res				: in  STD_LOGIC;										   --from system
	guru_addr      : in  STD_LOGIC_VECTOR(7 downto 0);
	ctrl_flags		: out dp_2_ctrl_flags							     	--to control unit
	);
end component;

--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************
signal ng_2_RB_s		  		: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
signal rb_2_alu_s		  		: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
signal alu_2_ng_s		  		: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
signal base_2_ref_s 	      : base_2_ref_flags;

signal mem_a_data_w_s  		: STD_LOGIC_VECTOR (7 downto 0);
signal ctrl_flags_s   		: dp_2_ctrl_flags;	


begin

	--*******************************
	--*	COMPONENT INSTANTIATIONS	*
	--*******************************

	n_g:	 num_gen			generic map(
														WIDTH	      => WIDTH
											)
											port map(
														clk			=> clk,
														reset			=> res,
														alu_2_ng    => alu_2_ng_s,
														canal	      => ctrl_ctrl,
														ng_2_RB		=> ng_2_RB_s
											);


						
	rb:		reg_bank			
									port map(
												clk					=> clk,
												res					=> res,
												ng_2_RB  			=> ng_2_RB_s,
												load_INIT			=> ctrl_ctrl.rb_INIT_en,
												load_GURU	   	=> ctrl_ctrl.rb_GURU_en,
												load_PRE_GURU		=> ctrl_ctrl.rb_PRE_GURU_en,
												out_sel				=> ctrl_ctrl.rb_out_sel,
												guru_addr      	=> base_2_ref_s.guru_addr,
												guru_prev_addr  	=> base_2_ref_s.guru_prev_addr,
												rb_out		   	=> rb_2_alu_s
									);
		
	
	alu_1:	alu 				generic map(
												WIDTH	=> WIDTH
									)
												port map(
												one_op		=> "00000001",
												rb_op			=> rb_2_alu_s,
												alu_ctrl    => ctrl_ctrl.alu_ctrl,
												alu_result  => alu_2_ng_s
									);

	
	c_g:	code_gen 			port map(
												ctrl_code_sel	=> ctrl_ctrl.cg_sel,
												mem_code_w		=> mem_a_data_w_s
									);

	
	dut :	 coll_ovf		
									port map(
												clk			   => clk,
												res				=> res,
												guru_addr     	=> rb_2_alu_s,
												ctrl_flags		=> ctrl_flags_s
									);
									
	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	ctrl_flags      			  <= ctrl_flags_s;
	mem_data.mem_a_addr       <= rb_2_alu_s (5 downto 0);
	mem_data.cg_sel 		     <= ctrl_ctrl.cg_sel;
	mem_data.data_a           <= mem_a_data_w_s;
	
	base_2_ref   				  <= base_2_ref_s;
	
	
	
end arch;

