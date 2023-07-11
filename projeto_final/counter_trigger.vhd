--***************************************************************
--*																*
--*	Title	   :	Counter_trigger									*
--*	Design	:	wisdom_hw								*
--*	Author	:	Matias F. Siqueira Filho			*
--*	Email	   :	matias.filho@usp.br			      *
--*																*
--***************************************************************
--*																*
--*	Description :											*
--*																*
--***************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;


entity counter_trigger is 
	generic
	(
	COUNT_MAX	: positive	:= 5000
	);

	port
	(
	clk		: in STD_LOGIC;
	res		: in STD_LOGIC;
	trigger	: in STD_LOGIC;
	cnt_rdy	: out STD_LOGIC
	);
end counter_trigger;


architecture arch of counter_trigger is


--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************
signal cnt_s	: UNSIGNED (31 downto 0)	:= to_unsigned(0, 32);
signal clr_s   : std_logic;

type STATE_CNT is ( IDLE, COUNT);
 signal STATE, NEXT_STATE  :  STATE_CNT ;
 
begin

	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	
	cnt_rdy	<= 	'1' when (cnt_s = COUNT_MAX) else '0';	
	
	--*******************************
	--*	PROCESS DEFINITIONS			*
	--*******************************
	
upd_next_state:	process (clk, res)
								begin
									if clk'event and clk = '1' then
										if(res = '1')	then
											STATE <= IDLE;
										else
											STATE <= NEXT_STATE;
										end if;
									end if;
						end process;

	
upd_state:	process(trigger, cnt_s, STATE)
								begin
									case STATE is
										when IDLE => if trigger = '1' then
															NEXT_STATE <= COUNT;
														else
															NEXT_STATE <= IDLE;
														end if;
										when COUNT => if cnt_s = COUNT_MAX then
															NEXT_STATE <= IDLE;
														else
															NEXT_STATE <= COUNT;
														end if;
									end case;
				end process;	
	
upd_output:	process(STATE)
								begin
									case STATE is
										when IDLE  =>  clr_s <= '1';
										
										when COUNT =>  clr_s <= '0';
										
									end case;
				end process;	

	
	
	
counter:	process(clk,clr_s)
			begin
				if clk'event and clk = '1' then
					if(clr_s = '1') then
						cnt_s <= to_unsigned(0, cnt_s'length);			
					else
						if(cnt_s = COUNT_MAX) then
							cnt_s <= to_unsigned(0, cnt_s'length);
						else
							cnt_s <= cnt_s + 1;	
						 end if;
					end if;
				end if;
			end process;

end arch;
