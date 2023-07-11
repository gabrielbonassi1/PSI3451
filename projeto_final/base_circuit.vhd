library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.wisdom_package.all;

entity base_circuit is 
	port
	(
	clk					: in  STD_LOGIC;						--from system
	res					: in  STD_LOGIC;						--from system
	en_disc           : in  STD_LOGIC;
	cnt_guru_rdy		: in  STD_LOGIC;						--from counter
	ref_2_base        : in  ref_2_base_flags;				--from referee    		
	disc_2_base    	: in  disc_2_base_flags;
	start_step  		: out STD_LOGIC;	
	en_cnt_step       : out STD_LOGIC;
	base_2_ref  		: out base_2_ref_flags;
	base_2_mem     	: out base_2_mem_flags
	);
end  base_circuit;



architecture arch of  base_circuit is


--***********************************
--*	COMPONENT DECLARATIONS			*
--***********************************

	component base_control is 
		port
		(
			clk				: in  STD_LOGIC;						--from system
			res				: in  STD_LOGIC;						--from system
			en_disc        : in  STD_LOGIC;
			cnt_guru_rdy	: in  STD_LOGIC;						--from counter
			dp_2_ctrl      : in  dp_2_ctrl_flags;
			disc_2_base    : in  disc_2_base_flags;
			ref_2_base     : in  ref_2_base_flags;				--from referee
			en_cnt_step    : out STD_LOGIC;
			start_step  	: out  STD_LOGIC;	
			ctrl_2_dp      : out ctrl_2_dp_flags;
			ctrl_2_mem     : out base_2_mem_flags
	
		);
	
	end component;
	
	
	component base_datapath is 
		generic
		(
		WIDTH						: NATURAL	:= 8
		);

		port
		(
			clk			   	: in  STD_LOGIC;											--from system
			res					: in  STD_LOGIC;										   --from system
			ctrl_ctrl 			: in  ctrl_2_dp_flags;							    	--to datapath
			disc_flags     	: in  disc_2_base_flags;
			base_2_ref  		: out base_2_ref_flags;  
			mem_data         : out base_2_mem_flags;      
			ctrl_flags			: out dp_2_ctrl_flags							     	--to control unit
		);
	end component;




--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************

   signal clk_s, rst_s, start_init_s, done_init_s,cnt_guru_rdy_S, en_disc_s, en_cnt_step_s: STD_LOGIC;
	signal start_step_s        : STD_LOGIC;
	signal ref_2_base_s        : ref_2_base_flags;
	signal base_2_ref_s 		   : base_2_ref_flags;
	signal ctrl_2_dp_s       	: ctrl_2_dp_flags;
	signal dp_2_ctrl_s      	: dp_2_ctrl_flags;
	signal ctrl_2_mem_s        : base_2_mem_flags;
	signal dp_2_mem_s          : base_2_mem_flags;
	signal base_2_mem_s        : base_2_mem_flags;
	signal disc_2_dp_s         : disc_2_base_flags;

begin

	--*******************************
	--*	COMPONENT INSTANTIATIONS	*
	--*******************************

	control : base_control  
		port map
		(
		clk				=> clk_s,			
		res				=> rst_s,
		en_disc        => en_disc_s,
		cnt_guru_rdy	=> cnt_guru_rdy_s,
		dp_2_ctrl      => dp_2_ctrl_s,
		disc_2_base    => disc_2_dp_s,
		ref_2_base     => ref_2_base_s,
		en_cnt_step    => en_cnt_step_s,
		start_step     => start_step_s,
		ctrl_2_dp      => ctrl_2_dp_s,
		ctrl_2_mem     => ctrl_2_mem_s
		);
	
	-- Instantiate DUT complement
	data : base_datapath  
		port map
		(
		clk			  	 	=> clk_s,
		res					=> rst_s,
		ctrl_ctrl 			=> ctrl_2_dp_s,
		disc_flags     	=> disc_2_dp_s,
		base_2_ref  		=> base_2_ref_s,
		mem_data       	=> dp_2_mem_s,  
		ctrl_flags			=> dp_2_ctrl_s
		);

	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	clk_s 						 <= clk;
	rst_s 						 <= res;
	en_disc_s                <= en_disc;
	cnt_guru_rdy_s 			 <= cnt_guru_rdy;
	disc_2_dp_s    		    <= disc_2_base;
	ref_2_base_s     			 <= ref_2_base;
	en_cnt_step              <= en_cnt_step_s;
	base_2_mem     		    <= base_2_mem_s;
	base_2_ref  				 <= base_2_ref_s;
	start_step					 <= start_step_s;
	
	base_2_mem_s.mem_wr_en   <= ctrl_2_mem_s.mem_wr_en;
	base_2_mem_s.cg_sel	    <= ctrl_2_mem_s.cg_sel;	
	base_2_mem_s.mem_a_addr  <= dp_2_mem_s.mem_a_addr;	
	base_2_mem_s.data_a      <= dp_2_mem_s.data_a;	

	
end arch;
