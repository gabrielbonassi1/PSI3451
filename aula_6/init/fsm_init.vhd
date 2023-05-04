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
use IEEE.STD_LOGIC_1164.all; 

package wisdom_package is 
	
	type CONTROL_SELECT is
	(
	INIT_CONTR,
	GURU_CONTR
	);
  
	type RB_SEL is	(
					INIT_OUT,
					REG_GURU_OUT,
					REG_GURU_PREV_OUT
					);
	
	
	type CODE is 	(
					BLANK,
					GURU,
					DISCIPLE,
					DUO
					);

	constant BLANK_VEC		: STD_LOGIC_VECTOR(7 downto 0) := "00000001";
	constant GURU_VEC	: STD_LOGIC_VECTOR(7 downto 0) := "00000010";
	constant DISC_VEC	: STD_LOGIC_VECTOR(7 downto 0) := "00000100";
	constant DUO_VEC	: STD_LOGIC_VECTOR(7 downto 0) := "00001000";
  	   
	type CODE_BITS is array (CODE) of STD_LOGIC_VECTOR(7 downto 0);
	constant CODE_VECTORS	: CODE_BITS	:= (BLANK_VEC, GURU_VEC, DISC_VEC, DUO_VEC);
					


	type ctrl_2_dp_flags is
	record
		ng_rand_INIT		: STD_LOGIC;
		ng_cte_incr		: STD_LOGIC;
		rb_init_en		: STD_LOGIC;
		rb_out_sel		: RB_SEL;
		alu_ctrl		: STD_LOGIC;
		cg_sel			: CODE;
	end record;
	
	type dp_2_ctrl_flags is
	record
		ovf_of_x		: STD_LOGIC;
		end_of_guru	: STD_LOGIC;
		ovf_of_y		: STD_LOGIC;
		duo_formed		: STD_LOGIC;
	end record;

	type disc_2_base_flags is
	record
		end_of_disc	: STD_LOGIC;
	end record;

	type base_2_mem_flags is
	record
		mem_wr_en	: STD_LOGIC;
		cg_sel			: CODE;
	end record;
	
end wisdom_package ; 




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
	ovf_of_y		: in STD_LOGIC;			--from system
	done_init		: out STD_LOGIC; 		--to fsm internal
	flags_2_dp		: out ctrl_2_dp_flags;	--to datapath
	flags_2_mem		: out base_2_mem_flags	--to memory
	);
end fsm_init;



-- Abaixo, template de Máquina de Moore


ARCHITECTURE fsm_init_arch OF fsm_init IS
	TYPE state_type IS (IDLE, ZERO, MEM_WALK, DONE);  -- veja quantos estados hah no seu projeto
	SIGNAL state, next_state : state_type;
	
BEGIN
	------------------------Lógica Sequencial-----------------------
	SEQ: PROCESS (res, clk) -- res, não rst como tava antes
	BEGIN
		IF (res='1') THEN
			state <= IDLE;
		ELSIF Rising_Edge(clk) THEN
			state <= next_state;
		END IF;
	END PROCESS SEQ;
	-----------------------Lógica Combinacional do estado siguinte--
	COMB: PROCESS (start_init, ovf_of_y, state)  -- completar com sinais de entrada + state
	BEGIN
		CASE state IS
	-- para cada estado, preencha as condicoes para transicao de estado
			WHEN IDLE =>
				IF (start_init='1') THEN
					next_state <= ZERO;
				ELSE
					next_state <= IDLE;
				END IF;
			WHEN ZERO =>
				next_state <= MEM_WALK;
			WHEN MEM_WALK =>
				IF (ovf_of_y='1') THEN
					next_state <= DONE;
				ELSE
					next_state <= MEM_WALK;
				END IF;
			when DONE =>
				next_state<=IDLE;
		END CASE;
	END PROCESS COMB;

	-----------------------Lógica Combinacional saidas---------------------
	SAI: PROCESS (state)
	BEGIN
		CASE state IS
-- para cada estado, defina as atribuicoes de saida (*de todos os sinais*)
-- saídas: done_init, flags_2_dp, flags_2_mem
-- flags_2_dp: ng_rand_INIT, ng_cte_incr, rb_init_en, rb_out_sel, alu_ctrl, cg_sel
-- flags_2_mem: mem_wr_en, cg_sel
			WHEN IDLE =>
				done_init <= '0';
				flags_2_dp.ng_rand_INIT <= '0';
				flags_2_dp.ng_cte_incr <= '0';
				flags_2_dp.rb_init_en <= '0';
				flags_2_dp.rb_out_sel <= INIT_OUT;
				flags_2_dp.alu_ctrl <= '0';
				flags_2_mem.mem_wr_en <= '0';
				flags_2_mem.cg_sel <= BLANK;
			WHEN ZERO =>
				done_init <= '0';
				flags_2_dp.ng_rand_INIT <= '1';
				flags_2_dp.ng_cte_incr <= '0';
				flags_2_dp.rb_init_en <= '1';
				flags_2_dp.rb_out_sel <= INIT_OUT;
				flags_2_dp.alu_ctrl <= '0';
				flags_2_mem.mem_wr_en <= '1';
				flags_2_mem.cg_sel <= BLANK;
			WHEN MEM_WALK =>
				done_init <= '0';
				flags_2_dp.ng_rand_INIT <= '1';
				flags_2_dp.ng_cte_incr <= '1';
				flags_2_dp.rb_init_en <= '1';
				flags_2_dp.rb_out_sel <= INIT_OUT;
				flags_2_dp.alu_ctrl <= '1';
				flags_2_mem.mem_wr_en <= '1';
				flags_2_mem.cg_sel <= BLANK;
			when DONE =>
				done_init <= '1';
				flags_2_dp.ng_rand_INIT <= '1';
				flags_2_dp.ng_cte_incr <= '1';
				flags_2_dp.rb_init_en <= '0';
				flags_2_dp.rb_out_sel <= INIT_OUT;
				flags_2_dp.alu_ctrl <= '1';
				flags_2_mem.mem_wr_en <= '0';
				flags_2_mem.cg_sel <= BLANK;

			
		END CASE;
	END PROCESS SAI; -- tava escrito SAL ao inves de SAI hein

END fsm_init_arch;
					
				
