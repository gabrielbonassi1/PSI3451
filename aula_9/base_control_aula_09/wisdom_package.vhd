library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

package wisdom_package is 
	
	type SPEED is
	(
	ONE_X,
	TWO_X,
	FOUR_X,
	EIGHT_X
	);
	
	type CONTROL_SELECT is
	(
	INIT_CONTR,
	GURU_CONTR
	);
  
	type RB_SEL is	(
					INIT_OUT,
					GURU_OUT,
					GURU_PREV_OUT,
					DISC_OUT,
					DISC_PREV_OUT
					);
	
	
	type CODE is 	(
					BLANK,
					GURU,
					DISC,
					DUO
					);

	constant BLANK_VEC		: STD_LOGIC_VECTOR(7 downto 0) := "00000001";
	constant GURU_VEC    	: STD_LOGIC_VECTOR(7 downto 0) := "00000010";
	constant DISC_VEC	      : STD_LOGIC_VECTOR(7 downto 0) := "00000100";
	constant DUO_VEC	      : STD_LOGIC_VECTOR(7 downto 0) := "00001000";
  	   
	type CODE_BITS is array (CODE) of STD_LOGIC_VECTOR(7 downto 0);
	constant CODE_VECTORS	: CODE_BITS	:= (BLANK_VEC, GURU_VEC, DISC_VEC, DUO_VEC);
					
	type ctrl_2_dp_flags  is --ctrl_base_datapath_flags
	record
		ng_cte_incr	   : STD_LOGIC;
		ng_rand_zero	: STD_LOGIC;
		alu_ctrl			: STD_LOGIC;
		rb_INIT_en		: STD_LOGIC;
		rb_GURU_en		: STD_LOGIC;
		rb_PRE_GURU_en : STD_LOGIC;
		rb_out_sel		: RB_SEL;
		cg_sel			: CODE;
	end record;

	
	type dp_2_ctrl_flags is --base_datapath_ctrl_flags
	record
		end_of_guru	      : STD_LOGIC;
		ovf_of_y		      : STD_LOGIC;
	end record;
	
	type disc_ctrl_2_dp_flags  is --ctrl_disciple_datapath_flags
	record
		ng_cte_decr	   : STD_LOGIC;
		rb_DISC_en		: STD_LOGIC;
		rb_PRE_DISC_en : STD_LOGIC;
		rb_out_sel		: RB_SEL;
		cg_sel			: CODE;
	end record;

	
	type disc_dp_2_ctrl_flags is --disciple_datapath_ctrl_flags
	record
		end_of_disc	      : STD_LOGIC;
	end record;
	
	
	type ref_2_base_flags is
	record	
		duo_formed		   : STD_LOGIC;
		go_guru				: STD_LOGIC;
	end record;
	
	type disc_2_base_flags is
	record
		end_of_disc       : STD_LOGIC;
	end record;
	
	type base_2_ref_flags is
	record	
		guru_addr         : STD_LOGIC_VECTOR(7 downto 0);
		guru_prev_addr    : STD_LOGIC_VECTOR(7 downto 0);
	end record;
	
	type ref_2_disc_flags is
	record	
		go_disc           : STD_LOGIC; 
		duo_formed		   : STD_LOGIC;
		guru_right_behind	: STD_LOGIC;
	end record;
	
	type disc_2_ref_flags is
	record	
		end_of_disc       : STD_LOGIC;
		disc_addr         : STD_LOGIC_VECTOR(7 downto 0);
		disc_prev_addr    : STD_LOGIC_VECTOR(7 downto 0);
	end record;
	

	type base_2_mem_flags is
	record
	   mem_a_addr			: STD_LOGIC_VECTOR(5 downto 0);
		mem_wr_en	   	: STD_LOGIC;
		data_a   			: STD_LOGIC_VECTOR(7 downto 0);
		cg_sel				: CODE;
	end record;
	  
	  
	type disc_2_mem_flags is
	record
	   mem_b_addr		   : STD_LOGIC_VECTOR(5 downto 0);
		mem_wr_en	      : STD_LOGIC;
		data_b   			: STD_LOGIC_VECTOR(7 downto 0);
		cg_sel			   : CODE;
	end record;  

	
end wisdom_package ; 



