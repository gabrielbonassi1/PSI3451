-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : Wisdom
-------------------------------------------------------------------------------
--
--
-- Description : 
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.wisdom_package.all;


entity fsm_guru is 
	port
	(
	clk				: in STD_LOGIC;			--from system
	res				: in STD_LOGIC;			--from system
	fsm_sg_start   : in STD_LOGIC;			--from fsm internal
	end_of_guru		: in STD_LOGIC;			--from datapath	
	cnt_guru_rdy	: in STD_LOGIC;	
	duo_formed		: in STD_LOGIC;			--from datapath
	go_guru        : in STD_LOGIC;
	flags_2_dp		: out ctrl_2_dp_flags;	--to datapath
	flags_2_mem		: out base_2_mem_flags	--to memory
	
	);
end fsm_guru;


architecture arch of fsm_guru is

-- SYMBOLIC ENCODED FSM STATES
type STATE_TYPE_MAIN is (
     START_WALKING,  RAND,WRITE_RAND, WAIT_COUNT_GURU ,  INCR,  CHECK_SAME_ADDR,  WRITE_DUO, WRITE_GURU ,CHECK_LAST, LAST , CLEAR_PREV );

signal STATE, NEXT_STATE: STATE_TYPE_MAIN;

-- Declarations of pre-registered internal signals

begin

------------------------------------
-- Next State Logic (combinatorial)
------------------------------------

upd_next_state:	process (fsm_sg_start ,cnt_guru_rdy, end_of_guru,go_guru , duo_formed, STATE)
				begin
					case STATE is
						when  START_WALKING	=> 	if(fsm_sg_start = '1') then
																	NEXT_STATE <= RAND;
																else
																	NEXT_STATE <= START_WALKING;
																end if;
		
						when RAND					=> 	NEXT_STATE <= WRITE_RAND;	
						when WRITE_RAND			=> 	NEXT_STATE <= WAIT_COUNT_GURU;	
						
						when WAIT_COUNT_GURU	   => 	if(cnt_guru_rdy = '1') then
																	NEXT_STATE <= INCR;
																else
																	NEXT_STATE <= WAIT_COUNT_GURU;
																end if;
						
						when INCR					 => 	NEXT_STATE <= CHECK_LAST;
															
						
						when CHECK_LAST	   	 => 	if (end_of_guru = '0' and go_guru = '1')  then 
																	NEXT_STATE <= CHECK_SAME_ADDR;
																elsif (end_of_guru = '1' and go_guru = '1') then   
																	NEXT_STATE <= LAST;
																else
																	NEXT_STATE <= CHECK_LAST;
																end if;
											
						when CHECK_SAME_ADDR 	 => 	if (duo_formed = '0')  then 
																	NEXT_STATE <= WRITE_GURU;
																else     
																	NEXT_STATE <= WRITE_DUO;
																end if;
																
						when WRITE_GURU	   	 => 	NEXT_STATE <= CLEAR_PREV ;

						when WRITE_DUO 	   	 => 	NEXT_STATE <= CLEAR_PREV;		
						
						when CLEAR_PREV 	   	 => 	NEXT_STATE <= WAIT_COUNT_GURU;
						
						when LAST      	   	 => 	NEXT_STATE <= START_WALKING;
																
						
						when others		=> null;
				
					end case;
				end process;
------------------------------------
-- Current State Logic (sequential)
------------------------------------
upd_state:	process (clk, res)
				begin
					if clk'event and clk = '1' then
						if(res = '1')	then
							STATE <=  START_WALKING;
						else
							STATE <= NEXT_STATE;
						end if;
					end if;
				end process;


------------------------------------
-- OUTPUT Logic (combinatorial)
------------------------------------
upd_output:	process (STATE)
			begin
				case STATE is
					when START_WALKING	=> 	flags_2_dp.ng_rand_zero		<= '0';
														flags_2_dp.ng_cte_incr		<= '0';
														flags_2_dp.rb_GURU_en		<= '0';
														flags_2_dp.rb_PRE_GURU_en	<= '0';
														flags_2_dp.rb_out_sel		<= GURU_OUT;
														flags_2_dp.alu_ctrl    	 	<= '0';
														flags_2_dp.cg_sel		      <= BLANK;
														flags_2_mem.mem_wr_en		<= '0';
														flags_2_mem.cg_sel			<= BLANK;
			
					when RAND         	=>  	flags_2_dp.ng_rand_zero		<= '0';
														flags_2_dp.ng_cte_incr		<= '0';
														flags_2_dp.rb_GURU_en		<= '1';
														flags_2_dp.rb_PRE_GURU_en	<= '1';
														flags_2_dp.rb_out_sel		<= GURU_OUT;
														flags_2_dp.alu_ctrl    	 	<= '0';
														flags_2_dp.cg_sel		      <= GURU;
														flags_2_mem.mem_wr_en		<= '0';
														flags_2_mem.cg_sel			<= GURU;
														
					
					when WRITE_RAND     	=>  	flags_2_dp.ng_rand_zero		<= '0';
														flags_2_dp.ng_cte_incr		<= '0';
														flags_2_dp.rb_GURU_en		<= '0';
														flags_2_dp.rb_PRE_GURU_en	<= '0';
														flags_2_dp.rb_out_sel		<= GURU_OUT;
														flags_2_dp.alu_ctrl    	 	<= '0';
														flags_2_dp.cg_sel				<= GURU;
														flags_2_mem.mem_wr_en		<= '1';
														flags_2_mem.cg_sel			<= GURU;
													
						
					when  WAIT_COUNT_GURU => 	flags_2_dp.ng_rand_zero		<= '0';
														flags_2_dp.ng_cte_incr		<= '0';
														flags_2_dp.rb_GURU_en		<= '0';
														flags_2_dp.rb_PRE_GURU_en	<= '0';
														flags_2_dp.rb_out_sel		<= GURU_OUT;
														flags_2_dp.alu_ctrl    	 	<= '0';
														flags_2_dp.cg_sel				<= GURU;
														flags_2_mem.mem_wr_en		<= '0';
														flags_2_mem.cg_sel			<= GURU;
														
														
					when  INCR				 => 	flags_2_dp.ng_rand_zero		<= '0';
														flags_2_dp.ng_cte_incr		<= '1';
														flags_2_dp.rb_GURU_en		<= '1';
														flags_2_dp.rb_PRE_GURU_en	<= '1';
														flags_2_dp.rb_out_sel		<= GURU_OUT;
														flags_2_dp.alu_ctrl    	 	<= '1';
														flags_2_dp.cg_sel				<= GURU;
														flags_2_mem.mem_wr_en		<= '0';
														flags_2_mem.cg_sel			<= GURU;		
														
														
					when  CHECK_LAST		 => 	flags_2_dp.ng_rand_zero		<= '0';
														flags_2_dp.ng_cte_incr		<= '1';
														flags_2_dp.rb_GURU_en		<= '0';
														flags_2_dp.rb_PRE_GURU_en	<= '0';
														flags_2_dp.rb_out_sel		<= GURU_OUT;
														flags_2_dp.alu_ctrl    	 	<= '1';
														flags_2_dp.cg_sel				<= GURU;
														flags_2_mem.mem_wr_en		<= '0';
														flags_2_mem.cg_sel			<= GURU;		
														
							
					when  CHECK_SAME_ADDR => 	flags_2_dp.ng_rand_zero		<= '0';
														flags_2_dp.ng_cte_incr		<= '1';
														flags_2_dp.rb_GURU_en		<= '0';
														flags_2_dp.rb_PRE_GURU_en	<= '0';
														flags_2_dp.rb_out_sel		<= GURU_OUT;
														flags_2_dp.alu_ctrl    	 	<= '1';
														flags_2_dp.cg_sel				<= GURU;
														flags_2_mem.mem_wr_en		<= '0';
														flags_2_mem.cg_sel			<= GURU;		
			
			      when  WRITE_GURU       => 	flags_2_dp.ng_rand_zero		<= '0';
														flags_2_dp.ng_cte_incr		<= '1';
														flags_2_dp.rb_GURU_en		<= '0';
														flags_2_dp.rb_PRE_GURU_en	<= '0';
														flags_2_dp.rb_out_sel		<= GURU_OUT;
														flags_2_dp.alu_ctrl    	 	<= '1';
														flags_2_dp.cg_sel				<= GURU;
														flags_2_mem.mem_wr_en		<= '1';
														flags_2_mem.cg_sel			<= GURU;
														
					when  WRITE_DUO       => 	flags_2_dp.ng_rand_zero		<= '0';
														flags_2_dp.ng_cte_incr		<= '1';
														flags_2_dp.rb_GURU_en		<= '0';
														flags_2_dp.rb_PRE_GURU_en	<= '0';
														flags_2_dp.rb_out_sel		<= GURU_OUT;
														flags_2_dp.alu_ctrl    	 	<= '1';
														flags_2_dp.cg_sel				<= DUO;
														flags_2_mem.mem_wr_en		<= '1';
														flags_2_mem.cg_sel			<= DUO;	
															
							
                when  CLEAR_PREV      => 	flags_2_dp.ng_rand_zero		<= '0';
														flags_2_dp.ng_cte_incr		<= '1';
														flags_2_dp.rb_GURU_en		<= '0';
														flags_2_dp.rb_PRE_GURU_en	<= '0';
														flags_2_dp.rb_out_sel		<= GURU_PREV_OUT;
														flags_2_dp.alu_ctrl    	 	<= '1';
														flags_2_dp.cg_sel				<= BLANK;
														flags_2_mem.mem_wr_en		<= '1';
														flags_2_mem.cg_sel			<= BLANK;
																
									
				   	when  LAST	        => 	flags_2_dp.ng_rand_zero		<= '0';
														flags_2_dp.ng_cte_incr		<= '1';
														flags_2_dp.rb_GURU_en		<= '0';
														flags_2_dp.rb_PRE_GURU_en	<= '0';
														flags_2_dp.rb_out_sel		<= GURU_PREV_OUT;
														flags_2_dp.alu_ctrl    	 	<= '1';
														flags_2_dp.cg_sel				<= BLANK;
														flags_2_mem.mem_wr_en		<= '1';
														flags_2_mem.cg_sel			<= BLANK;
																				
					when others				=> null;
			
				end case;
			end process;

					
				
end arch;
