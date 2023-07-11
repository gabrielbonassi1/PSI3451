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


entity fsm_main is 
	port
	(
	clk					: in STD_LOGIC;			--from system
	res					: in STD_LOGIC;			--from system
	en_disc        	: in STD_LOGIC;
	fsm_i_done			: in STD_LOGIC;			--from fsm internal
	end_of_guru			: in STD_LOGIC;			--from datapath	
	end_of_disc			: in STD_LOGIC;			--from system; disciple circuit
	duo_formed			: in STD_LOGIC;			--from datapath
	cnt_prepare_f	   : in STD_LOGIC;
	cnt_start_f	      : in STD_LOGIC;  
	con_sel        	: out CONTROL_SELECT;
	en_cnt_step    	: out STD_LOGIC;
	cnt_prepare_i	   : out STD_LOGIC;
	cnt_start_i	      : out STD_LOGIC;  
	fsm_i_start			: out STD_LOGIC;		   --to fsm internal
	fsm_s_start			: out STD_LOGIC			--to fsm internal
	);
end fsm_main;


architecture arch of fsm_main is

-- SYMBOLIC ENCODED FSM STATES
type STATE_TYPE_MAIN is (
    INIT_ACTIVATION, STEP_ACTIVATION, CHECK_END, HIT_POINT,CNT_PREPARE, CNT_START);

signal STATE, NEXT_STATE: STATE_TYPE_MAIN;

-- Declarations of pre-registered internal signals

begin

------------------------------------
-- Next State Logic (combinatorial)
------------------------------------

upd_next_state:	process (fsm_i_done, end_of_guru, end_of_disc, en_disc, duo_formed, cnt_prepare_f, cnt_start_f, STATE)
				begin
					case STATE is
						when INIT_ACTIVATION	=> 	if(fsm_i_done = '1') then
																NEXT_STATE <= CNT_PREPARE;
															else
																NEXT_STATE <= INIT_ACTIVATION;
															end if;
															
						when CNT_PREPARE   	=> 	if(cnt_prepare_f = '1') then
																NEXT_STATE <= STEP_ACTIVATION;
															else
																NEXT_STATE <= CNT_PREPARE;
															end if;
						
						when STEP_ACTIVATION	=> 	NEXT_STATE <= CNT_START;	
						
						when CNT_START     	=> 	if(cnt_start_f = '1') then
																NEXT_STATE <= CHECK_END;
															else
																NEXT_STATE <= CNT_START;
															end if;
						
						when CHECK_END 		=> 	if (end_of_guru = '1') AND (end_of_disc = '1') AND (duo_formed = '1') AND (en_disc = '1') then 
																NEXT_STATE <= HIT_POINT; 
															elsif ((end_of_guru = '1') AND (end_of_disc = '1') AND (duo_formed = '0') AND (en_disc = '1'))
																	OR ((end_of_guru = '1') AND (en_disc = '0') AND (duo_formed = '0'))then
																NEXT_STATE <= CNT_PREPARE;  
															else     
																NEXT_STATE <= CHECK_END;
															end if;
											
						when HIT_POINT 		=> 	NEXT_STATE <= CNT_PREPARE;
												
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
							STATE <= INIT_ACTIVATION;
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
					when INIT_ACTIVATION	=> 	fsm_i_start	<= '1';
														fsm_s_start	<= '0';
														con_sel     <= INIT_CONTR;
														en_cnt_step <= '0';
													   cnt_prepare_i  <= '0';
														cnt_start_i    <= '0';
														
					when CNT_PREPARE 		=> 	fsm_i_start	<= '0';
														fsm_s_start	<= '0';
														con_sel     <= GURU_CONTR;
														en_cnt_step <= '0';
														cnt_prepare_i  <= '1';
														cnt_start_i    <= '0';
					
					when STEP_ACTIVATION	=>  	fsm_i_start <= '0';
														fsm_s_start	<= '1';
														con_sel     <= GURU_CONTR;
														en_cnt_step <= '0';
														cnt_prepare_i  <= '0';
														cnt_start_i    <= '0';
														
					when CNT_START 		=> 	fsm_i_start	<= '0';
														fsm_s_start	<= '0';
														con_sel     <= GURU_CONTR;
														en_cnt_step <= '0';
														cnt_prepare_i  <= '0';
														cnt_start_i    <= '1';
						
					when CHECK_END 		=> 	fsm_i_start	<= '0';
														fsm_s_start	<= '0';
														con_sel     <= GURU_CONTR;
														en_cnt_step <= '1';
														cnt_prepare_i  <= '0';
														cnt_start_i    <= '0';
														
					when HIT_POINT 		=> 	fsm_i_start	<= '0';
														fsm_s_start	<= '0';
														con_sel     <= GURU_CONTR;
														en_cnt_step <= '0';
														cnt_prepare_i  <= '0';
														cnt_start_i    <= '0';
		
					when others				=> null;
			
				end case;
			end process;

					
				
end arch;
