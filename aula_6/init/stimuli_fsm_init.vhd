-- NUSP = 11256816, N#=116

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.wisdom_package.all;

entity stimuli_fsm_init is
	generic
	(
	CLK_PERIOD		: TIME	:=  10ns
	);

	port
	(
	clk				: out STD_LOGIC;			--emulating system
	rst				: out STD_LOGIC;			--emulating system
	start_init		: out STD_LOGIC;			--emulating fsm main
	ovf_of_y		: out STD_LOGIC;			--emulating dp
	done_init		: in STD_LOGIC; 			--from fsm init
	flags_2_dp		: in ctrl_2_dp_flags;		--from fsm init; emulating datapath
	flags_2_mem		: in base_2_mem_flags		--from fsm init; emulating memory
	);

end stimuli_fsm_init ;

architecture test of stimuli_fsm_init is
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
	

procedure assign_condition(start_init_value, ovf_of_y_value	: in STD_LOGIC)	is
		begin
			-- Assign values to estimuli_module´s outputs.
			start_init <= start_init_value; 
			ovf_of_y <= ovf_of_y_value;

			wait until rising_edge (clk_s);
			-- Events at the rising edge of next clock cycle
			end procedure assign_condition;

		procedure reset_activate is    -- reset activation procedure
		begin
			wait until falling_edge(CLK_s);
			rst <= '1';
			wait for CLK_PERIOD;
			rst <= '0';
		end procedure reset_activate;


	begin
		-- Apply test vectors
		
		assign_condition('0','0');    -- set start_init='0' and ovf_of_y='0' state transitions
		reset_activate;
		
	-- **initialization state** protocol ; fsm_init is in idle
	
		wait for 10*CLK_PERIOD;		

		assert done_init='1' report "'0' is initialized for done_init" severity note;	   -- in case done_init/='1' message is issued
																						-- fsm_init sets done_init='0' indicating the mem walk has not finished
		
		assign_condition('1','0');     -- forcing start_init ='1' -> fsm_init will walk on the memory and write 		

		--INICIO DA MODIFICACAO:
		--trecho removido:
		--wait for 50*CLK_PERIOD;		 -- the number of memory address walked depends on this wait time 
		wait for 117*CLK_PERIOD; -- N#=116, adicionamos 1 no wait para esperar a transição de estados de IDLE para ZERO
			
		assign_condition('0','1');     -- forcing ovf_of_y ='1' -> due to overflow, fsm_init will finish the walk and make done_init='1' 
		wait for CLK_PERIOD/2;	
		
		assert done_init='0' report "'1' is set for done_init" severity note;		 -- in case done_init/='0' message is issued
																					-- fsm_init sets done_init='1' indicating the mem walk has finished		
		
		wait for 10*CLK_PERIOD;		
		wait for CLK_PERIOD/2;	
		


		
		
	end process sim;
end architecture test;