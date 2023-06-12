library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stimuli_rand_num is
	generic
	(
	    CLK_PERIOD : TIME := 10ns
	);
	port
	(
	    clk : out STD_LOGIC;			
	    rst	: out STD_LOGIC	
	);

end stimuli_rand_num;

architecture arch_stimuli of stimuli_rand_num is
	signal clk_s : STD_LOGIC;

	component clock_generator
		generic (
		    CLK_PERIOD : TIME := 10ns
		);

		port (	
		    clk	: out STD_LOGIC
		);

end component ;

begin


	clk <= clk_s;

	clock: clock_generator
		port map
		(
		    clk	=> clk_s
		);


	stimuli : process
	
	    procedure reset_begin is
		begin
		    rst <= '0';
		end procedure reset_begin;
	
		procedure reset_activate is
		begin
			wait until falling_edge(clk_s);
			rst <= '1';
			wait for CLK_PERIOD;
			rst <= '0';
		end procedure reset_activate;
		


	begin
		reset_begin; --inicia sem reset
		wait for CLK_PERIOD;
		reset_activate; --seta o reset para startar o LFSR
		wait for 13*CLK_PERIOD; --espera 13 ciclos e reseta
		reset_activate;
		wait;
	end process stimuli;
end architecture arch_stimuli;