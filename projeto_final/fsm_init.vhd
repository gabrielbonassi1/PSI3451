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


entity fsm_init is 
	port
	(
	clk				: in STD_LOGIC;			--from system
	res				: in STD_LOGIC;			--from system
	start_init		: in STD_LOGIC;			--from fsm internal
	ovf_of_y		   : in STD_LOGIC;			--from system
	done_init		: out STD_LOGIC; 		   --to fsm internal
	flags_2_dp		: out ctrl_2_dp_flags;	--to datapath
	flags_2_mem		: out base_2_mem_flags	--to memory
	);
end fsm_init;


architecture arch of fsm_init is

-- SYMBOLIC ENCODED FSM STATES
type STATE_TYPE_INIT is (IDLE, ZERO, MEM_WALK, DONE);

signal STATE, NEXT_STATE: STATE_TYPE_INIT;

-- Declarations of pre-registered internal signals

begin

------------------------------------
-- Next State Logic (combinatorial)
------------------------------------

upd_next_state:	process (start_init, ovf_of_y, STATE)
				begin
					case STATE is
						when IDLE	=> 	if(start_init = '0') then
												NEXT_STATE <= IDLE;
											else
			    								NEXT_STATE <= ZERO;
											end if;
		
						when ZERO	=> 	NEXT_STATE <= MEM_WALK;	
						
						when MEM_WALK 			=> 	if (ovf_of_y = '0') then 
												NEXT_STATE <= MEM_WALK;
											else  
												NEXT_STATE <= DONE;
											end if;
											
						when DONE 		=> 	NEXT_STATE <= IDLE;
												
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
							STATE <= IDLE;
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
					when IDLE	=> 	done_init				<= '0';
										flags_2_dp.ng_rand_zero	<= '0';
										flags_2_dp.ng_cte_incr	<= '0';
										flags_2_dp.rb_init_en	<= '0';
										flags_2_dp.rb_out_sel	<= INIT_OUT;
										flags_2_dp.alu_ctrl     <= '0';
										flags_2_mem.mem_wr_en	<= '0';
										flags_2_mem.cg_sel		<= BLANK;
									
					when ZERO	=>  done_init			   	<= '0';
										flags_2_dp.ng_rand_zero	<= '1';
										flags_2_dp.ng_cte_incr	<= '0';
										flags_2_dp.rb_init_en	<= '1';
										flags_2_dp.rb_out_sel	<= INIT_OUT;
										flags_2_dp.alu_ctrl     <= '0';
										flags_2_mem.mem_wr_en	<= '1';
										flags_2_mem.cg_sel		<= BLANK;
									
					when MEM_WALK 	=>	done_init				<= '0';
									flags_2_dp.ng_rand_zero	<= '1';
									flags_2_dp.ng_cte_incr	<= '1';
									flags_2_dp.rb_init_en	<= '1';
									flags_2_dp.rb_out_sel	<= INIT_OUT;
									flags_2_dp.alu_ctrl     <= '1';
									flags_2_mem.mem_wr_en	<= '1';
									flags_2_mem.cg_sel		<= BLANK;
									
					when DONE 		=> 	done_init			<= '1';
									flags_2_dp.ng_rand_zero	<= '1';
									flags_2_dp.ng_cte_incr	<= '1';
									flags_2_dp.rb_init_en	<= '0';
									flags_2_dp.rb_out_sel	<= INIT_OUT;
									flags_2_dp.alu_ctrl     <= '0';
									flags_2_mem.mem_wr_en	<= '0';
									flags_2_mem.cg_sel		<= BLANK;
		
					when others				=> null;
			
				end case;
			end process;

					
				
end arch;
					
				
