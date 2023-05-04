-- NUSP = 11256816, N#=116

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.wisdom_package.all;

entity stimuli_fsm_main is
	generic
	(
	WIDTH			:         NATURAL := 8;
	CLK_PERIOD		: TIME	:=  10ns
	);

	port
	(
	clk				: out STD_LOGIC;			--system generatiom
	res				: out STD_LOGIC;			--system generatiom
	en_disc        	: out STD_LOGIC;			--emulatimg user/player
	fsm_i_done		: out STD_LOGIC;			--emulatimg fsm_init
	end_of_guru		: out STD_LOGIC;			--emulatimg datapath	
	end_of_disc		: out STD_LOGIC;			--emulatimg disciple circuit
	duo_formed		: out STD_LOGIC;			--emulatimg datapath
	cnt_prepare_f	: out STD_LOGIC;			--emulatinh timer timer; signaling
	cnt_start_f	    : out STD_LOGIC;  			--emulating timer; signaling
	con_sel			: in CONTROL_SELECT;		--emulating the mux selector
	en_cnt_step    	: in STD_LOGIC;				--emulating cnt_rdy trigger in stepcounter
	cnt_prepare_i	: in STD_LOGIC;				--emualting wait in timer
	cnt_start_i	    : in STD_LOGIC;  			--emualting wait in timer
	fsm_i_start		: in STD_LOGIC;				--emulating fsm_init
	fsm_s_start		: in STD_LOGIC				--emulating fsm_init guru or disciple step machines 
	);

end stimuli_fsm_main ;

architecture test of stimuli_fsm_main is
	signal clk_s : STD_LOGIC;

	component clock_generator
		generic (
		CLK_PERIOD		: TIME	:= 10ns
		);

		port (	
		clk		: out STD_LOGIC
		);

end component ;

begin


	clk <=clk_s;

	clock: clock_generator
		port map
		(
		clk		=> clk_s
		);


	sim : process
	
-- procedure to check fsm protocol

procedure activate_protocol(fsm_i_done_value, prepare_f_value, start_f_value	: in STD_LOGIC)	is
		begin
			-- Assign values to estimuli_module´s outputs.
			fsm_i_done <= fsm_i_done_value; 
			cnt_prepare_f <= prepare_f_value;
			cnt_start_f <= start_f_value;

			wait until rising_edge (clk_s);
			-- Events at the rising edge of next clock cycle
			end procedure activate_protocol;
			
-- procedure to evaluate options/decisions
			
procedure activate_status(en_disc_value, end_of_guru_value, end_of_disc_value, duo_formed_value	: in STD_LOGIC)	is
		begin
			-- Assign values to estimuli_module´s outputs.
			en_disc <= en_disc_value; 
			end_of_guru <= end_of_guru_value;
			end_of_disc <= end_of_disc_value;
			duo_formed <= duo_formed_value; 

			end procedure activate_status;
			
			
		procedure reset_activate is    -- reset activation procedure
		begin
			wait until falling_edge(CLK_s);
			res <= '1';
			wait for CLK_PERIOD;
			res <= '0';
		end procedure reset_activate;


	begin
		-- Apply test vectors
		
		activate_protocol('0','0','0');    -- analyze state transitions
		reset_activate;

--==============================
	-- **initialization state** protocol
	
		wait for 5*CLK_PERIOD;	
	
		activate_status('0','0','0','0');   -- activate_status refers to environment telling to fsm_main the status of guru and disciple walking
												-- through en_disc, end_of_guru, end_of_disc, duo_formed; no end contition happens at this moment
		
		while (fsm_i_start /= '1') 
			loop
			activate_protocol('0','0','0');    -- guaranteeing fsm_i_done='0'; emulating fsm_init is in its idle condition		
		end loop;
		
		-- fsm_main sends fsm_i_start ='1; emulating fsm_init that starts action to initialize memory - it lasts for 50 cicles...
		
		wait for 50*CLK_PERIOD;		

		-- emulating end of memory initialization in fsm_init with fsm_i_done='1' and wait for fsm_main acknowledge with fsm_i_start='0'
		
		while (fsm_i_start /= '0') 
			loop
			activate_protocol('1','0','0');    -- verifying fsm_i_start returned to '0' and guaranteeing fsm_i_done='0'		
		end loop;

		activate_protocol('1','0','0');     -- still forcing fsm_i_done='1' -> end of fsm_init and fsm_main goes to PREPARATION PHASE 		

--==============================================
	-- prepare wait protocol
	
		while (cnt_prepare_i /= '1') 
			loop
			activate_protocol('1','0','0');    -- guaranteeing cnt_prepare_f='0' and maintaining fsm_i_done='1'	
		end loop;
		
		
	-- here fsm_main indicates preparation phase should start;  testbench emulates an expected delay to starr a new round - a shorter version is adopted- only 80 cicles...
		
		wait for 80*CLK_PERIOD;		
		
		activate_protocol('0','1','0');         ---- testbench emulates end of delay with cnt_prepare_f='1'  and forcing fsm_main to go to STEP_ACTIVATION 

		-- forcing cnt_prepare_f='1'
		
		while (cnt_prepare_i /= '0') 
			loop
			activate_protocol('0','1','0');    -- verifying cnt_prepare_i returned to '0' and maintaining cnt_prepare_f='1'	
		end loop;
				

		activate_protocol('0','1','0');     -- fsm_main indicates the STEP_ACTIVATION has started
											-- still cnt_prepare_f='1' 		

--==============================	
	-- **step** protocol
		
		while (fsm_s_start /= '1') 
			loop
			activate_protocol('0','0','0');  --  it goes to START wait STATE if true		
		end loop;
		
		-- fsm_main automatically goes to CNT_START 
		
		wait for 50*CLK_PERIOD;   -- optional delay
		

--========================================
		
	-- start wait protocol
	
		while (cnt_start_i /= '1') 
			loop
			activate_protocol('0','0','0');    -- guaranteeing cnt_start_f='0' 	
		end loop;
		

	--  here fsm_main indicates start phase should start;  
	--  testbench emulates an expected delay to allow player to prepare himself to decide  - a shorter version is adopted- only 30 cicles...
		
		wait for 30*CLK_PERIOD;		

		-- forcing cnt_start_f='1'
		
		activate_protocol('0','0','1');   -- cnt_start_f='1' -> tell fsm_main it is end of delay and guru marches in CHECH_END state
		
		while (cnt_start_i /= '0') 
			loop
			activate_protocol('0','0','1');    -- verifying cnt_start_i returned to '0' and maintaining cnt_start_f='1'	
		end loop;
				

		
		activate_protocol('0','0','0');     -- cnt_start_f='0' -> no protocol active at this moment while guru walks 	


--========================================

	-- CHECK_END options
	---   activate_status refers to en_disc, end_of_guru, end_of_disc, duo_formed
	---   the user must choose the condition to leave CHECK_END
		
	--	activate_status ('0','0','0','0');    -- option 0: forcing end_of_guru=end_of_disc='0' forcing fsm_main to stay in CHECK_END
	
	--	activate_status('1','1','0','0');    -- option 1: forcing en_disc='1' and end_of_guru='1' and end_of_disc='0'  (guru ended, but disciple still walking) 
											-- forcing fsm_main to stay in CHECK_END
		
	--	activate_status('0','0','1','0');    -- option 2: forcing en_disc='1' and end_of_guru='0' and end_of_disc='1' (guru still walking, while disciple ended)
											-- forcing fsm_main to stay in CHECK_END 
		
	--	activate_status('1','1','1','0');    -- option 3: forcing en_disc='1' and end_of_guru='1' and end_of_disc='1' plus duo_formed='0' (both ended but no meet) 
											--forcing fsm_main to return to PREPARATION PHASE
		
	--	activate_status('1','1','1','0');    -- option 4:forcing en_disc='0' and end_of_guru='1' and end_of_disc='0' plus duo_formed='0' (guru ended and disciple never walked) 
											--forcing fsm_main to return to PREPARATION PHASE	
	
	--	activate_status('1','1','1','1');    -- option 5:forcing en_disc='1' and end_of_guru='1' and end_of_disc='1' plus duo_formed='1' (successful play) 
											--forcing fsm_main to return to HIT_POINT
			
		wait for 1*CLK_PERIOD;	
	
--   ==============================
	-- CHECK_END option 1, then option 3
	
	activate_status('1','1','0','0');
	
	wait for 80*CLK_PERIOD;	
	
	activate_status('1','1','1','0');    -- fsm_main should go to  PREPARATION PHASE again
	
	wait for 50*CLK_PERIOD;	


-- 	===============================
--   ====================================

		-- **step** protocol 2nd time *********
		
	-- prepare wait protocol
	
		activate_status('0','0','0','0');    -- no end status again	

		-- Estamos em CNT_PREPARE na segunda iteração
		-- Vamos fazer um reset depois de 116 ciclos de clock, antes de continuar o código
		-- Como lá em cima já rolou um wait de 50 ciclos de clock, vamos fazer um wait de 116-50=66 ciclos de clock
	
		-- INÍCIO DA MODIFICAÇÃO:
		wait for 66*CLK_PERIOD;
		reset_activate;
		-- FIM DA MODIFICAÇÃO.
		while (cnt_prepare_i /= '1') 
			loop
			activate_protocol('1','0','0');    -- guaranteeing cnt_prepare_f='0' and maintaining fsm_i_done='1'	
		end loop;
		
		
	-- here fsm_main indicates preparation phase should start;  testbench emulates an expected delay to starr a new round - a shorter version is adopted- only 80 cicles...
		
		wait for 80*CLK_PERIOD;		
		
		activate_protocol('0','1','0');         ---- testbench emulates end of delay with cnt_prepare_f='1'  and forcing fsm_main to go to STEP_ACTIVATION 

		-- forcing cnt_prepare_f='1'
		
		while (cnt_prepare_i /= '0') 
			loop
			activate_protocol('0','1','0');    -- verifying cnt_prepare_i returned to '0' and maintaining cnt_prepare_f='1'	
		end loop;
				

		activate_protocol('0','1','0');     -- fsm_main indicates the STEP_ACTIVATION has started
											-- still cnt_prepare_f='1' 		

--==============================	
	-- **step** protocol
		
		while (fsm_s_start /= '1') 
			loop
			activate_protocol('0','0','0');  --  it goes to START wait STATE if true		
		end loop;
		
		-- fsm_main automatically goes to CNT_START 
		
		wait for 50*CLK_PERIOD;   -- optional delay
		

--========================================
		
	-- start wait protocol
	
		while (cnt_start_i /= '1') 
			loop
			activate_protocol('0','0','0');    -- guaranteeing cnt_start_f='0' 	
		end loop;
		

	--  here fsm_main indicates start phase should start;  
	--  testbench emulates an expected delay to allow player to prepare himself to decide  - a shorter version is adopted- only 30 cicles...
		
		wait for 30*CLK_PERIOD;		

		-- forcing cnt_start_f='1'
		
		activate_protocol('0','0','1');   -- cnt_start_f='1' -> tell fsm_main it is end of delay and guru marches in CHECH_END state
		
		while (cnt_start_i /= '0') 
			loop
			activate_protocol('0','0','1');    -- verifying cnt_start_i returned to '0' and maintaining cnt_start_f='1'	
		end loop;
				

		
		activate_protocol('0','0','0');     -- cnt_start_f='0' -> no protocol active at this moment while guru walks 	


	--========================================

	-- CHECK_END options
	---   activate_status refers to en_disc, end_of_guru, end_of_disc, duo_formed
	---   the user must choose the condition to leave CHECK_END
		
	--	activate_status ('0','0','0','0');    -- option 0: forcing end_of_guru=end_of_disc='0' forcing fsm_main to stay in CHECK_END
	
	--	activate_status('1','1','0','0');    -- option 1: forcing en_disc='1' and end_of_guru='1' and end_of_disc='0'  (guru ended, but disciple still walking) 
											-- forcing fsm_main to stay in CHECK_END
		
	--	activate_status('0','0','1','0');    -- option 2: forcing en_disc='1' and end_of_guru='0' and end_of_disc='1' (guru still walking, while disciple ended)
											-- forcing fsm_main to stay in CHECK_END 
		
	--	activate_status('1','1','1','0');    -- option 3: forcing en_disc='1' and end_of_guru='1' and end_of_disc='1' plus duo_formed='0' (both ended but no meet) 
											--forcing fsm_main to return to PREPARATION PHASE
		
	--	activate_status('1','1','1','0');    -- option 4:forcing en_disc='0' and end_of_guru='1' and end_of_disc='0' plus duo_formed='0' (guru ended and disciple never walked) 
											--forcing fsm_main to return to PREPARATION PHASE	
	
	--	activate_status('1','1','1','1');    -- option 5:forcing en_disc='1' and end_of_guru='1' and end_of_disc='1' plus duo_formed='1' (successful play) 
											--forcing fsm_main to return to HIT_POINT
			
		wait for 1*CLK_PERIOD;	
	
--   ==============================
	-- CHECK_END option 4
	
	activate_status('0','1','0','0');
	
	wait for 50*CLK_PERIOD;	  -- fsm_main should go to  PREPARATION PHASE again
	

	
--   ==============================
-- 	===============================
--	================================

			-- **step** protocol 3rd time ***********
			
				-- prepare wait protocol
				
		activate_status('0','0','0','0');    -- no end status again	
						
		while (cnt_prepare_i /= '1') 
			loop
			activate_protocol('1','0','0');    -- guaranteeing cnt_prepare_f='0' and maintaining fsm_i_done='1'	
		end loop;
		
		
	-- here fsm_main indicates preparation phase should start;  testbench emulates an expected delay to starr a new round - a shorter version is adopted- only 80 cicles...
		
		wait for 80*CLK_PERIOD;		
		
		activate_protocol('0','1','0');         ---- testbench emulates end of delay with cnt_prepare_f='1'  and forcing fsm_main to go to STEP_ACTIVATION 

		-- forcing cnt_prepare_f='1'
		
		while (cnt_prepare_i /= '0') 
			loop
			activate_protocol('0','1','0');    -- verifying cnt_prepare_i returned to '0' and maintaining cnt_prepare_f='1'	
		end loop;
				

		activate_protocol('0','1','0');     -- fsm_main indicates the STEP_ACTIVATION has started
											-- still cnt_prepare_f='1' 		

--==============================	
	-- **step** protocol
		
		while (fsm_s_start /= '1') 
			loop
			activate_protocol('0','0','0');  --  it goes to START wait STATE if true		
		end loop;
		
		-- fsm_main automatically goes to CNT_START 
		
		wait for 50*CLK_PERIOD;   -- optional delay
		

--========================================
		
	-- start wait protocol
	
		while (cnt_start_i /= '1') 
			loop
			activate_protocol('0','0','0');    -- guaranteeing cnt_start_f='0' 	
		end loop;
		

	--  here fsm_main indicates start phase should start;  
	--  testbench emulates an expected delay to allow player to prepare himself to decide  - a shorter version is adopted- only 30 cicles...
		
		wait for 30*CLK_PERIOD;		

		-- forcing cnt_start_f='1'
		
		activate_protocol('0','0','1');   -- cnt_start_f='1' -> tell fsm_main it is end of delay and guru marches in CHECH_END state
		
		while (cnt_start_i /= '0') 
			loop
			activate_protocol('0','0','1');    -- verifying cnt_start_i returned to '0' and maintaining cnt_start_f='1'	
		end loop;
				

		
		activate_protocol('0','0','0');     -- cnt_start_f='0' -> no protocol active at this moment while guru walks 	


--========================================

	-- CHECK_END options
	---   activate_status refers to en_disc, end_of_guru, end_of_disc, duo_formed
	---   the user must choose the condition to leave CHECK_END
		
	--	activate_status ('0','0','0','0');    -- option 0: forcing end_of_guru=end_of_disc='0' forcing fsm_main to stay in CHECK_END
	
	--	activate_status('1','1','0','0');    -- option 1: forcing en_disc='1' and end_of_guru='1' and end_of_disc='0'  (guru ended, but disciple still walking) 
											-- forcing fsm_main to stay in CHECK_END
		
	--	activate_status('1','0','1','0');    -- option 2: forcing en_disc='1' and end_of_guru='0' and end_of_disc='1' (guru still walking, while disciple ended)
											-- forcing fsm_main to stay in CHECK_END 
		
	--	activate_status('1','1','1','0');    -- option 3: forcing en_disc='1' and end_of_guru='1' and end_of_disc='1' plus duo_formed='0' (both ended but no meet) 
											--forcing fsm_main to return to PREPARATION PHASE
		
	--	activate_status('1','1','1','0');    -- option 4:forcing en_disc='0' and end_of_guru='1' and end_of_disc='0' plus duo_formed='0' (guru ended and disciple never walked) 
											--forcing fsm_main to return to PREPARATION PHASE	
	
	--	activate_status('1','1','1','1');    -- option 5:forcing en_disc='1' and end_of_guru='1' and end_of_disc='1' plus duo_formed='1' (successful play) 
											--forcing fsm_main to return to HIT_POINT
			
		wait for 1*CLK_PERIOD;	
	
--   ==============================
	-- CHECK_END option 2, then option 5
	
	activate_status('1','0','1','0');
	
	wait for 80*CLK_PERIOD;	
	
	activate_status('1','1','1','1');    -- fsm_main should go to  HIT_POINT status and the to PREPARATION PHASE again
	
	wait for 50*CLK_PERIOD;	
		
--   ==============================
--   ==============================
--   ==============================
--   ==============================

-- Try other options...


		wait;
	end process sim;
end architecture test;