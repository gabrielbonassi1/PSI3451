library ieee;
use ieee.std_logic_1164.all;

entity referee is
	generic
	( WIDTH		: NATURAL	:= 8 );
	
port(clk, reset: in std_logic;
     cnt_disc_rdy, cnt_guru_rdy: in std_logic;
	 guru_addr,disc_addr, guru_prev_addr,disc_prev_addr: in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	 go_guru, go_disc, guru_right_behind, duo_formed: out std_logic );
end referee;

architecture fsm_arch of referee is


    type state_type is (idle, wait50, checkTop, conflict1, detect1 , checkMiddle, go_guru_state, detect, wait50b, conflict, unm_go_discB, unm_godisc_BL, wait55, wait50l, unm_go_guru);
    signal state_reg, state_next: state_type;

    type stateGD_type is (rdy0, rdy1, waitNClk, tick0, waitRdy0);
    signal stateG_reg, stateG_next: stateGD_type;
	signal stateD_reg, stateD_next: stateGD_type;
	
	signal tick_guru, tick_disc,go_disc2: STD_LOGIC;
	
	signal waitNGCountNext,waitNGCount : Integer;
	signal waitNDCountNext,waitNDCount : Integer;
	signal mainCntNext, mainCnt        : Integer;

begin

	
-- TICK GURU  process (FSM)	
   --state storage (ASYNC RESET (?!))
    process(clk, reset)
    begin
  	 if reset = '1' then
  		 stateG_reg <= waitRdy0;
		 waitNGCount <= 0;
   	 elsif (clk'event and clk='1') then
   		 stateG_reg  <= stateG_next;
		 waitNGCount <= waitNGCountNext;
   	 end if;
    end process;

	
-- next state logic
--    process (state_reg, tick_guru, tick_disc)
process (cnt_guru_rdy,waitNGCount,stateG_reg) -- always *
begin
	case stateG_reg is
	
	when rdy0 =>
			if cnt_guru_rdy='1' then
				stateG_next <= rdy1;
			else
				stateG_next <= rdy0;
			end if;
   when rdy1 =>
			stateG_next <= waitNClk;
			
   when waitNClk =>
			if waitNGCount=0 then
				stateG_next <= waitRdy0;
			else
				stateG_next <= waitNClk;
			end if;
			
			
    when waitRdy0 =>
			if cnt_guru_rdy='1' then
				stateG_next <= waitRdy0;
			else
				stateG_next <= rdy0;
			end if;			
			
			
		when OTHERS =>
			stateG_next <= waitRdy0;
	end case;
end process;



    -- moore output logic
process (stateG_reg, waitNGCount)
   begin
   	 case stateG_reg is
   		when rdy0 =>
			tick_guru <= '0';
   		when rdy1 =>
			tick_guru <= '1';
			waitNGCountNext <= 50*2; --NUMBER OF CYCLES TO WAIT
   		when waitNClk =>
			tick_guru <= '1';
			waitNGCountNext <= waitNGCount - 1;			
			
   		when waitRdy0 =>
			tick_guru <= '0';			   			 
   		when OTHERS =>
			tick_guru <= '0';		
	end case;
end process;



--------------------------------------------------------------------------------------

-- TICK DISC  process (FSM)	
   --state storage (ASYNC RESET (?!))
    process(clk, reset)
    begin
  	 if reset = '1' then
  		 stateD_reg <= waitRdy0;
		 waitNDCount <= 0;
   	 elsif (clk'event and clk='1') then
   		 stateD_reg  <= stateD_next;
		 waitNDCount <= waitNDCountNext;
   	 end if;
    end process;

	
-- next state logic
--    process (state_reg, tick_guru, tick_disc)
process (cnt_disc_rdy,waitNDCount,stateD_reg) -- always *
begin
	case stateD_reg is
	
	when rdy0 =>
			if cnt_disc_rdy='1' then
				stateD_next <= rdy1;
			else
				stateD_next <= rdy0;
			end if;
   		when rdy1 =>
			stateD_next <= waitNClk;
			
   		when waitNClk =>
			if waitNDCount=0 then
				stateD_next <= waitRdy0;
			else
				stateD_next <= waitNClk;
			end if;
			
			
   		when waitRdy0 =>
			if cnt_disc_rdy='1' then
				stateD_next <= waitRdy0;
			else
				stateD_next <= rdy0;
			end if;			
			
			
		when OTHERS =>
			stateD_next <= waitRdy0;
	end case;
end process;



    -- moore output logic
process (stateD_reg, waitNDCount)
   begin
   	 case stateD_reg is
   		when rdy0 =>
			tick_disc <= '0';
   		when rdy1 =>
			tick_disc <= '1';
			waitNDCountNext <= 50*2; --NUMBER OF CYCLES TO WAIT
   		when waitNClk =>
			tick_disc <= '1';
			waitNDCountNext <= waitNDCount - 1;			
			
   		when waitRdy0 =>
			tick_disc <= '0';			   			 
   		when OTHERS =>
			tick_disc <= '0';		
	end case;
end process;


	
-----------------------------------------------------------------------------------	
-- MAIN STATE MACHINE FROM FIGURE

   --state storage (ASYNC RESET (?!))
    process(clk, reset)
    begin
  	 if reset = '1' then
  		 state_reg <= idle;
		 mainCnt   <= -1;
   	 elsif (clk'event and clk='1') then
   		 state_reg <= state_next;
		 mainCnt   <= mainCntNext;
   	 end if;
    end process;

	
	
-- next state logic
--    process (state_reg, tick_guru, tick_disc)
process (tick_disc,tick_guru,mainCnt,guru_addr,disc_addr,
--go_disc2,
guru_prev_addr,disc_prev_addr,state_reg ) -- always *
variable mainCntNextV  : Integer;
begin
    mainCntNextV:=0;
	case state_reg is
		when idle =>
			if tick_disc='1' then
				state_next   <= wait50;
				mainCntNextV :=50*2;
			else
				if (tick_guru='1' AND tick_disc='0' ) then
					state_next   <= wait55;
					mainCntNextV :=55*2;
				else
					state_next <= idle;
				end if;
			end if;

		when wait50 =>
			if mainCnt < 1 then
				if tick_guru='0' then
					state_next   <= checkTop;
				else
					state_next   <= checkMiddle;
				end if;
			else
				state_next   <= wait50;
				mainCntNextV := mainCnt - 1; 
			end if;
			
		when checkTop =>
			if guru_addr = disc_prev_addr then
				state_next   <= detect1;
			else
				if disc_addr = guru_addr then
					state_next   <= conflict1;
				else
					state_next <= unm_go_discB;
				end if;
			end if;
			
		when unm_go_discB =>
			state_next <= idle;
			
		when conflict1 =>
--			if go_disc2='1' then
				state_next   <= unm_go_discB;
--			else
--				state_next   <= conflict1;
--			end if;
			
		when detect1  =>
			state_next <= unm_go_discB;			
			
		when checkMiddle =>
			if guru_addr = disc_addr then
				state_next <= conflict;
			else
				if guru_prev_addr = disc_addr then
					state_next <= go_guru_state;
				else
					if disc_prev_addr = guru_addr then
						state_next <= detect;
					else
						state_next <= unm_godisc_BL;
					end if;
				end if;			
			end if;
			
		when go_guru_state =>
			state_next <= wait50b;
			mainCntNextV :=50;
				
		when detect =>
			state_next <= unm_go_discB;			
			
		when wait50b =>			
			if mainCnt < 1 then
				state_next <= unm_go_discB;
			else
				mainCntNextV := mainCnt - 1; 
				state_next <= wait50b;
			end if;
			
		when conflict =>
			state_next <= unm_godisc_BL;	
			
		when unm_godisc_BL =>
			state_next <= wait50l;
			mainCntNextV :=50;			
			
		when wait50l =>			
			if mainCnt < 1 then
				state_next <= unm_go_guru;
			else
				mainCntNextV := mainCnt - 1; 
				state_next <= wait50l;
			end if;
			
		when wait55 =>
			if mainCnt < 1 then
				state_next <= unm_go_guru;
			else
				mainCntNextV := mainCnt - 1; 
				state_next <= wait55;
			end if;			
			
		when unm_go_guru =>
			state_next <= idle;

		when OTHERS =>
			state_next <= idle;
	end case;
	
	mainCntNext <= mainCntNextV;
end process;


    -- moore output logic
   process (state_reg)
   variable guru_right_behindV:  std_logic;
   variable duo_formedV      :  std_logic;
   variable go_guruV:  std_logic;
   variable go_discV      :  std_logic;
   begin
	duo_formedV :='0';
	go_guruV := '0';
	go_discV := '0';
	guru_right_behindV := '0';	
	
   	 case state_reg is
			
		when detect =>	
			guru_right_behindV := '1' ;
			
		when detect1 =>	
			guru_right_behindV := '1' ;
			
		when conflict1 =>
			duo_formedV := '1';
			
		when conflict =>
			duo_formedV := '1';

		when unm_go_guru =>
			go_guruV := '1';
			
		when go_guru_state =>
			go_guruV := '1';
			
		when unm_go_discB =>
			go_discV := '1';

		when unm_godisc_BL =>
			go_discV := '1';
			
   		when OTHERS =>
			duo_formedV :='0';
			go_guruV := '0';
			go_discV := '0';
			guru_right_behindV := '0';
   	 end case;
	 
			guru_right_behind <= guru_right_behindV;
			go_guru <= go_guruV;
			go_disc <= go_discV;
--			go_disc2 <= go_discV;
			duo_formed <= duo_formedV;
	 
   end process;



end fsm_arch;