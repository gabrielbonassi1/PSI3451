library ieee;
use ieee.std_logic_1164.all;

entity holder is

port(clk, reset     : in std_logic;
     inSig, releaseS: in std_logic;
	 holdedOut         : out std_logic );
end holder;

architecture fsm_arch of holder is


    type state_type is (idle, holding);
    signal state_reg, state_next: state_type;


begin

		
-----------------------------------------------------------------------------------	

   --state storage (ASYNC RESET (?!))
    process(clk, reset)
    begin
  	 if reset = '1' then
  		 state_reg <= idle;
   	 elsif (clk'event and clk='1') then
   		 state_reg <= state_next;
   	 end if;
    end process;

	
	
-- next state logic
process (inSig,releaseS, state_reg) -- always *
begin
	case state_reg is
	
		when idle =>
			if inSig = '1' then
				if releaseS = '0' then
					state_next   <= holding;
				end if;
			else
				state_next   <= idle;
			end if;

		when holding =>
			if releaseS = '1' then
				state_next   <= idle;			
			else
				state_next   <= holding;			
			end if;


		when OTHERS =>
			state_next <= idle;
	end case;
	
end process;


    -- output logic
   process (state_reg, inSig,releaseS)
   variable myout:  std_logic;
   begin
	 myout := '0';

   	 case state_reg is
			
		when idle =>	
			myout := '0' ;
			
		when holding =>	
			myout := '1' ;
		
			
   		when OTHERS =>
			myout := '0' ;
			
   	 end case;
	 
			--holdedOut <=  myout; -- for Moore like output (for full moore => change to "process (state_reg)" only) 
			--holdedOut <= (myout OR inSig); -- to anticipate the rising
			--holdedOut <= inSig OR (myout AND (NOT releaseS)); -- to anticipate the rising and falling
			holdedOut <= reject 50 ps inertial inSig OR (myout AND (NOT releaseS)) after 150 ps; --rejecting glitches
	 
   end process;



end fsm_arch;