library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.wisdom_package.all;  


ENTITY disc_control IS
	PORT (
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
END disc_control;

ARCHITECTURE arch OF disc_control IS
	TYPE state_type IS (START,RAND,WRITE_RAND,WAIT_CONT_DISC,INCR,CHECK_LAST,CHECK_DUO,WRITE_DUO,WRITE_DISC,CLEAR_PREV,CHECK_BEHIND_DUO,LAST,LAST_WITH_GURU);
	SIGNAL state, next_state : state_type;
	
BEGIN
	SEQUENTIAL: PROCESS (reset, clock)
	BEGIN
		IF (reset='1') THEN
			state <= START;
		ELSIF Rising_Edge(clock) THEN
			state <= next_state;
		END IF;
	END PROCESS SEQUENTIAL;


	COMBINATIONAL: PROCESS (start_step,cnt_disc_rdy,go_disc,guru_right_behind,duo_formed,end_of_disc,state)
	BEGIN
		CASE state IS
			WHEN START =>
				IF ( start_step = '1') THEN
					next_state <= RAND;
				ELSE 
					next_state <= START;
				END IF;
				
			WHEN RAND =>
				next_state <= WRITE_RAND;
				
			WHEN WRITE_RAND =>
				next_state <= WAIT_CONT_DISC;

			WHEN WAIT_CONT_DISC =>
				IF ( cnt_disc_rdy = '1') THEN
					next_state <= INCR;
				ELSE 
					next_state <= WAIT_CONT_DISC;
				END IF;
				
			WHEN INCR =>
				next_state <= CHECK_LAST;
				
			WHEN CHECK_LAST => 
				IF ( go_disc = '1' and end_of_disc = '0') THEN
					next_state <= CHECK_DUO;
				ELSIF (go_disc = '1' and end_of_disc = '1') THEN
					next_state <= CHECK_BEHIND_DUO;
				ELSE 
					next_state <= CHECK_LAST;
				END IF;
				
			WHEN CHECK_DUO => 
				IF ( duo_formed = '1') THEN
					next_state <= WRITE_DUO;
				ELSE 
					next_state <= WRITE_DISC;
				END IF;
			
			WHEN WRITE_DUO =>
				next_state <= CLEAR_PREV;
				
			WHEN WRITE_DISC =>
				next_state <= CLEAR_PREV;
				
			WHEN CLEAR_PREV =>
				next_state <= WAIT_CONT_DISC;
				
			WHEN CHECK_BEHIND_DUO => 
				IF ( guru_right_behind = '1' or duo_formed = '1') THEN
					next_state <= LAST_WITH_GURU;
				ELSE 
					next_state <= LAST;
				END IF;
			
			WHEN LAST_WITH_GURU =>
				next_state <= START;
				
			WHEN LAST =>
				next_state <= START;
				
		END CASE;
	END PROCESS COMBINATIONAL;

	
	SAI: PROCESS (state)
	BEGIN
		CASE state IS
			WHEN START =>	disc_wr_en 		 	<= '0';
							cg_sel				<= BLANK;
							ng_cte_incr			<= '0';
							alu_ctrl			<= '0' ;
							rb_disc_en			<= '0';
							rb_disc_prev_en		<= '0';
							reg_out_sel			<= DISC_OUT;
														
			WHEN RAND =>	disc_wr_en 		 	<= '0';
							cg_sel				<= DISC;
							ng_cte_incr			<= '0';
							alu_ctrl			<= '0' ;
							rb_disc_en			<= '1';
							rb_disc_prev_en		<= '1';
							reg_out_sel			<= DISC_OUT;
	
			WHEN WRITE_RAND =>	disc_wr_en 		 	<= '1';
								cg_sel				<= DISC;
								ng_cte_incr			<= '0';
								alu_ctrl			<= '0' ;
								rb_disc_en			<= '0';
								rb_disc_prev_en		<= '0';
								reg_out_sel			<= DISC_OUT;
													
			WHEN WAIT_CONT_DISC =>	disc_wr_en 		 	<= '0';
									cg_sel				<= DISC;
									ng_cte_incr			<= '0';
									alu_ctrl			<= '0' ;
									rb_disc_en			<= '0';
									rb_disc_prev_en		<= '0';
									reg_out_sel			<= DISC_OUT;
														
			WHEN INCR =>	disc_wr_en 		 	<= '0';
							cg_sel				<= DISC;
							ng_cte_incr			<= '1'; 
							alu_ctrl			<= '1' ;
							rb_disc_en			<= '1';
							rb_disc_prev_en		<= '1';
							reg_out_sel			<= DISC_OUT;
															

			WHEN CHECK_LAST =>	disc_wr_en 		 	<= '0';
								cg_sel				<= DISC;
								ng_cte_incr			<= '1';
								alu_ctrl			<= '1'; 
								rb_disc_en			<= '0';
								rb_disc_prev_en		<= '0';
								reg_out_sel			<= DISC_OUT;

			WHEN CHECK_DUO =>	disc_wr_en 		 	<= '0';
								cg_sel				<= DISC;
								ng_cte_incr			<= '1';
								alu_ctrl			<= '1'; 
								rb_disc_en			<= '0';
								rb_disc_prev_en		<= '0';
								reg_out_sel			<= DISC_OUT;	
														
			WHEN WRITE_DUO =>	disc_wr_en 		 	<= '1';
								cg_sel				<= DUO;
								ng_cte_incr			<= '1';
								alu_ctrl			<= '1'; 
								rb_disc_en			<= '0';
								rb_disc_prev_en		<= '0';
								reg_out_sel			<= DISC_OUT;
			
			WHEN WRITE_DISC =>	disc_wr_en 		 	<= '1';
								cg_sel				<= DISC;
								ng_cte_incr			<= '1';
								alu_ctrl			<= '1'; 
								rb_disc_en			<= '0';
								rb_disc_prev_en		<= '0';
								reg_out_sel			<= DISC_OUT;

			WHEN CLEAR_PREV =>	disc_wr_en 		 	<= '1';
								cg_sel				<= BLANK;
								ng_cte_incr			<= '1';
								alu_ctrl			<= '1';
								rb_disc_en			<= '0';
								rb_disc_prev_en		<= '0';
								reg_out_sel			<= DISC_PREV_OUT;

			WHEN CHECK_BEHIND_DUO =>	disc_wr_en 		 	<= '0';
										cg_sel				<= DISC;
										ng_cte_incr			<= '1';
										alu_ctrl			<= '1'; 
										rb_disc_en			<= '0';
										rb_disc_prev_en		<= '0';
										reg_out_sel			<= DISC_OUT;

			WHEN LAST_WITH_GURU =>		disc_wr_en 		 	<= '0';
										cg_sel				<= BLANK;
										ng_cte_incr			<= '1';
										alu_ctrl			<= '1'; 
										rb_disc_en			<= '0';
										rb_disc_prev_en		<= '0';
										reg_out_sel			<= DISC_PREV_OUT;

			WHEN LAST =>	disc_wr_en 		 	<= '1'; 
							cg_sel				<= BLANK;
							ng_cte_incr			<= '1';
							alu_ctrl			<= '1'; 
							rb_disc_en			<= '0';
							rb_disc_prev_en		<= '0';
							reg_out_sel			<= DISC_PREV_OUT;

			
		END CASE;
	END PROCESS SAI;

END arch;