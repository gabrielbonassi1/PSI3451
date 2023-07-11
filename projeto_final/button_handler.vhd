--***************************************************************
--*
--*   Version with new assigments for board buttons (from left to rigth): 
--*       1) 1X speed; 
--*       2) 2X speed;
--*       3) 4X speed; 
--*       4) 8X speed.
--*
--**************************************************
--*															   *
--*	Title	:												   *
--*	Design	:											   *
--*	Author	:												* 
--*	Email	:													*
--*																*
--**************************************************
--*																*
--*	Description :											*	*
--*																*
--**************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use work.wisdom_package.all;

entity button_handler is
	port
	(
	clk					: in  STD_LOGIC;
	res					: in  STD_LOGIC;
	enable				: in  STD_LOGIC;
	enable_bypass		: out STD_LOGIC;
	sys_speed    		: in  STD_LOGIC_VECTOR(3 downto 0);
	speed_sync		   : out SPEED
	);
end button_handler;


architecture arch of button_handler is



--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************
signal speed_sync_s		: SPEED;
signal enable_s         : STD_LOGIC;


begin


	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	
	speed_sync     <= speed_sync_s;
	enable_s       <= enable;
	enable_bypass  <= enable_s;

	--*******************************
	--*	PROCESS DEFINITIONS			*
	--*******************************

	process(clk,sys_speed, enable)
	begin
		if clk'event and clk = '1' then
			if(res = '1') then
				speed_sync_s	<= ONE_X; -- reset speed is 1x
			
		
			elsif (enable ='1') then
			
				case sys_speed is
				

					when "0001"	=> speed_sync_s <= ONE_X;
										
					when "0010"	=>	speed_sync_s <= TWO_X;
										
					when "0100"	=>	speed_sync_s <= FOUR_X;
					
					when "1000"	=>	speed_sync_s <= EIGHT_X;
									
					when others => speed_sync_s <= ONE_X; -- if the user dont assign anything it should keep 1X (default)...
					
					--when others => null ;
			
			 end case;	
	
			end if;
		end if;
		
		
	end process;

end arch;
