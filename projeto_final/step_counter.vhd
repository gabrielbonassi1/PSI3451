library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.wisdom_package.all;

entity step_counter is 
		generic
		(
	COUNT_MAX_V8_FAST	   : UNSIGNED	:= x"50";    -- 50 hexadecimal and 80 decimal
	COUNT_COUNT_WIDTH 	: NATURAL 	:= 16
	);
		port
	(
	clk		     		   : in  STD_LOGIC;
	res		     		   : in  STD_LOGIC;
	speed_sync		      : in  SPEED;
	en_disc      	   	: in  STD_LOGIC;
	en_cnt      	   	: in  STD_LOGIC;
	cnt_guru_rdy		   : out STD_LOGIC;
	cnt_disc_rdy		   : out STD_LOGIC;
	cnt_value			   : out UNSIGNED(COUNT_COUNT_WIDTH-1 downto 0)    
		);
end step_counter;

architecture arch of step_counter is

--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************

	signal rdy_v1_s	: STD_LOGIC ;    --signal evaluates to '1' when counting reaches 8*COUNT_MAX_V8_FAST
	signal rdy_v2_s	: STD_LOGIC ;    --signal evaluates to '1' when counting reaches 4*COUNT_MAX_V8_FAST
	signal rdy_v4_s	: STD_LOGIC ; 	  --signal evaluates to '1' when counting reaches 2*COUNT_MAX_V8_FAST
	signal rdy_v8_s	: STD_LOGIC ;    --signal evaluates to '1' when counting reaches COUNT_MAX_V8_FAST
	signal cnt_disc_rdy_s : STD_LOGIC;
	
begin

	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	
	cnt_guru_rdy   <=  rdy_v1_s and en_cnt;
	
	cnt_disc_rdy_s <=  rdy_v1_s	when (speed_sync = ONE_X) else
							 rdy_v2_s	when (speed_sync = TWO_X) else
							 rdy_v4_s	when (speed_sync = FOUR_X) else
							 rdy_v8_s	when (speed_sync = EIGHT_X);
	
	cnt_disc_rdy   <=  cnt_disc_rdy_s and en_disc and en_cnt;
	
	

	--*******************************
	--*	PROCESS DEFINITIONS			*
	--*******************************
				
	--increment counter each cycle
	--reset if max reached or clr is set
	
	
	process(clk, res)
		variable cnt_s	: UNSIGNED (COUNT_COUNT_WIDTH-1 downto 0)	:= x"0001";
	begin
		if clk'event and clk = '1' then
			if(res = '1') then
				cnt_s := x"0001";
			elsif(cnt_s = 8*COUNT_MAX_V8_FAST) then
				cnt_s := x"0001";	
				rdy_v1_s <= '1';	
				rdy_v2_s <= '1';	
				rdy_v4_s <= '1';	
				rdy_v8_s <= '1';			
			else
				if (cnt_s = 4*COUNT_MAX_V8_FAST) then
					rdy_v2_s <= '1';	
					rdy_v4_s <= '1';	
					rdy_v8_s <= '1';
				elsif ((cnt_s = 2*COUNT_MAX_V8_FAST) OR (cnt_s = 6*COUNT_MAX_V8_FAST)) then
					rdy_v4_s <= '1';	
					rdy_v8_s <= '1';
				elsif (cnt_s = 1*COUNT_MAX_V8_FAST OR cnt_s = 3*COUNT_MAX_V8_FAST OR cnt_s = 5*COUNT_MAX_V8_FAST OR cnt_s = 7*COUNT_MAX_V8_FAST) then
					rdy_v8_s <= '1';
				else
					rdy_v1_s <= '0';	
					rdy_v2_s <= '0';	
					rdy_v4_s <= '0';	
					rdy_v8_s <= '0';	
				end if;
				cnt_s := cnt_s + 1;	
			end if;
			cnt_value <= cnt_s;
		end if;
	end process;


end arch;
