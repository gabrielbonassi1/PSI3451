library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.wisdom_package.all;

entity disciple_circuit is 
	generic
	(
		WIDTH				   : NATURAL	:= 8
	);
	port
	(
		clk					: in  STD_LOGIC;						--from system
		res					: in  STD_LOGIC;						--from system
		cnt_disc_rdy		: in  STD_LOGIC;					
		start_step     		: in  STD_LOGIC;					
		go_disc             : in  STD_LOGIC;
		duo_formed          : in  STD_LOGIC;
		guru_right_behind   : in  STD_LOGIC;
		disc_wr_en 		 	: out STD_LOGIC;
		disc_address_2_mem	: out STD_LOGIC_VECTOR(WIDTH-3 downto 0);
		disc_data			: out STD_LOGIC_VECTOR(WIDTH-1 downto 0);-- Dado para o porto a de mem_2port, com dado (8 bits)correspondente a um dos 3 códigos: DISCIPLE, BLANK ou DUO. 
		end_of_disc			: out STD_LOGIC;
		disc_addr_prev	: out STD_LOGIC_VECTOR(WIDTH-3 downto 0);
		disc_addr		: out STD_LOGIC_VECTOR(WIDTH-3 downto 0)
		
	);
end  disciple_circuit;



architecture arch of  disciple_circuit is


--***********************************
--*	COMPONENT DECLARATIONS			*
--***********************************

	component disc_control is 
		port
		(
			clock				: in  STD_LOGIC;						
			reset				: in  STD_LOGIC;						
			cnt_disc_rdy		: in  STD_LOGIC;					
			start_step     		: in  STD_LOGIC;					
			go_disc             : in  STD_LOGIC;
			duo_formed          : in  STD_LOGIC;
			guru_right_behind   : in  STD_LOGIC;
			end_of_disc			: in STD_LOGIC;
			disc_wr_en 		 	: out STD_LOGIC;
			cg_sel				: out CODE;
			ng_cte_incr			: out STD_LOGIC;
			alu_ctrl			: out STD_LOGIC;
			rb_disc_en			: out STD_LOGIC;
			rb_disc_prev_en		: out STD_LOGIC;
			reg_out_sel			: out RB_SEL
	
		);
	
	end component;
	
	
	component disc_datapath is 
		generic
            (
            WIDTH		: NATURAL	:= 8
            );
        
            port
            (
                clk			   	    : in STD_LOGIC;											--from system
                res				  	: in  STD_LOGIC;										   --from system
                cg_sel				: in CODE;
                ng_cte_incr			: in STD_LOGIC;
                alu_ctrl			: in STD_LOGIC;
                rb_disc_en			: in STD_LOGIC;
                rb_disc_prev_en		: in STD_LOGIC;
                reg_out_sel			: in RB_SEL;
                duo_formed			: in STD_LOGIC;
                disc_address_2_mem	: out STD_LOGIC_VECTOR(5 downto 0);
                disc_data			: out STD_LOGIC_VECTOR(WIDTH-1 downto 0);-- Dado para o porto a de mem_2port, com dado (8 bits)correspondente a um dos 3 c�digos: DISCIPLE, BLANK ou DUO. 
                end_of_disc			: out STD_LOGIC;
                disc_addr_prev	    : out STD_LOGIC_VECTOR(5 downto 0);
                disc_addr		    : out STD_LOGIC_VECTOR(5 downto 0)
            );
	end component;




--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************

   signal clk_s,res_s,end_of_disc_s,duo_formed_s: STD_LOGIC;
	signal cg_sel_s : CODE;
	signal reg_out_sel_s : RB_SEL;
   signal ng_cte_incr_s,alu_ctrl_s,rb_disc_en_s,rb_disc_prev_en_s : STD_LOGIC;
	
	

begin

	--*******************************
	--*	COMPONENT INSTANTIATIONS	*
	--*******************************

	control : disc_control 
		port map
		(
			clock				=> clk_s,			
			reset				=> res_s,					
			cnt_disc_rdy		=> cnt_disc_rdy,
			start_step     		=> start_step,				
			go_disc             => go_disc,
			duo_formed          => duo_formed_s,
			guru_right_behind   => guru_right_behind,
			end_of_disc			=> end_of_disc_s,
			disc_wr_en 		 	=> disc_wr_en,
			cg_sel				=> cg_sel_s,
			ng_cte_incr			=> ng_cte_incr_s,
			alu_ctrl			=> alu_ctrl_s,
			rb_disc_en			=> rb_disc_en_s,
			rb_disc_prev_en		=> rb_disc_prev_en_s,
			reg_out_sel			=> reg_out_sel_s
		);

	data : disc_datapath
		port map
		(
			clk			   	    => clk_s,
			res				  	=> res_s,
			cg_sel				=> cg_sel_s,
			ng_cte_incr			=> ng_cte_incr_s,
			alu_ctrl			=> alu_ctrl_s,
			rb_disc_en			=> rb_disc_en_s,
			rb_disc_prev_en		=> rb_disc_prev_en_s,
			reg_out_sel			=> reg_out_sel_s,
			duo_formed			=> duo_formed_s,
			disc_address_2_mem	=> disc_address_2_mem,
			disc_data			=> disc_data,
			end_of_disc			=> end_of_disc_s,
			disc_addr_prev	    => disc_addr_prev,
			disc_addr			=> disc_addr
		);

	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	clk_s  <= clk;
	res_s  <= res;
	duo_formed_s <= duo_formed;
	end_of_disc <= end_of_disc_s;

	
end arch;