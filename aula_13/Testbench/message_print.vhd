library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
use work.wisdom_package.all;

entity message_print is
	generic
	(
		CLK_PERIOD		: TIME	:=  10ns
	);

	port
		(
		clk					: in STD_LOGIC;			--system generatiom
		fase           	: in  INTEGER;
		write_fifo_number_1 :  IN INTEGER;		
		write_fifo_number_2 :  IN INTEGER;
		write_fifo_number_3 :  IN INTEGER;
		write_fifo_address : IN INTEGER
				
		);

end message_print ;

architecture test of message_print  is

	
	component fifo_1
	PORT
	(
		clock		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		rdreq		: IN STD_LOGIC ;
		wrreq		: IN STD_LOGIC ;
		empty		: OUT STD_LOGIC ;
		full		: OUT STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		usedw		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;
	
--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************	
	signal clk_s 	 		          : STD_LOGIC;
	type  mux_sel_type IS (STIMULI, AL_CHECK, STEP_CHECK);
    signal mux_sel: mux_sel_type:=STIMULI;
	signal full_s, empty_s			: STD_LOGIC;
   signal cnt_disc_rdy_s      	 : STD_LOGIC;
   signal fase_s, address_number_s:  INTEGER  := 0;
   	signal	data_s, data_1_s, data_2_s, data_3_s		: STD_LOGIC_VECTOR (15 DOWNTO 0);
	signal	rdreq_s		: STD_LOGIC ;
	signal	wrreq_s, wrreq_1_s, wrreq_2_s, wrreq_3_s		: STD_LOGIC ;
	signal	q_s		: STD_LOGIC_VECTOR (15 DOWNTO 0);
	signal 	ack_1, ack_2, ack_3	: STD_LOGIC :='0' ;
	signal 	req_1, req_2, req_3	: STD_LOGIC :='0' ;
	signal	usedw_s		: STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal  aux  		: STD_LOGIC ;

    signal fifo_read_number :  INTEGER:=0;      --all 16 bits read from FIFO

   
	file l_file			   : TEXT;
	
	
	
begin


	clk_s              <= clk;
	
	-- Process to avoid writing conflict on fifo
			
	aux <= req_1 or req_2 or req_3;	

	fifo: fifo_1
		PORT map
		(
		clock		=> clk_s,
		data		=> data_s,
		rdreq		=> rdreq_s,
		wrreq		=> wrreq_s,
		empty		=> empty_s,
		full		=> full_s,
		q		=> q_s,
		usedw	=> usedw_s
		);
		
		
	arbiter_fifo: process 
		begin
			

			if  aux /= '1' then 

				wait on aux; 
			
			end if;
			
				if req_1='1' then
					ack_1<='1';
					mux_sel<= STIMULI;
					wait for 3 ns;
					while (req_1='1') loop 
						wait for 10 ns;
					end loop;	
					ack_1<= '0';
					wait for 1ns;
				end if;
		
		if req_2='1' then

					ack_2<='1';
					mux_sel<= AL_CHECK;
					wait for 3 ns;
					while (req_2='1') loop 
						wait for 10 ns;
					end loop;
					ack_2<= '0';
					wait for 1ns;					
				end if;
				
				if req_3='1' then
				
					ack_3<='1';
					mux_sel<= STEP_CHECK;
					wait for 3 ns;
					while (req_3='1') loop 
						wait for 10 ns;
					end loop;	
					ack_3<= '0';
					wait for 1ns;
				end if;

			

		end process arbiter_fifo;
		
		
-- mux for fifo


		data_s <=  	data_1_s WHEN (mux_sel=STIMULI) else
					data_2_s WHEN (mux_sel= AL_CHECK) else
					data_3_s WHEN (mux_sel= STEP_CHECK) else
					(others => 'X');


		wrreq_s <=  wrreq_1_s WHEN (mux_sel=STIMULI) else
					wrreq_2_s WHEN (mux_sel= AL_CHECK) else
					wrreq_3_s WHEN (mux_sel= STEP_CHECK) else
					'X';
	
	
  
	access_fifo_stimuli: process
		begin
						
		wrreq_1_s <='0';
		
		wait on write_fifo_number_1;
		
		if write_fifo_number_1 /= 0 then
			while full_s='1' loop
				wait for 10 ns;
				end loop;
			
			req_1 <='1';
			while (ack_1='0') loop
				wait for 1 ns;
			end loop;
			wrreq_1_s <='1';
			data_1_s <= std_logic_vector (to_unsigned (write_fifo_number_1, 16));
			wait for 1 ns;
			req_1 <='0';
			wait for 6 ns;	
		end if;
	end process access_fifo_stimuli;
	

	access_fifo_alert_check: process
		begin
						
		wrreq_2_s <='0';
		
		wait on write_fifo_number_2;
		
		if write_fifo_number_2 /= 0 then
			while full_s='1' loop
				wait for 10 ns;
				end loop;
			
			req_2 <='1';
			while (ack_2='0') loop
				wait for 1 ns;
			end loop;
			
			wrreq_2_s <='1';
			data_2_s <= '1' & std_logic_vector (to_unsigned (write_fifo_address,7)) & std_logic_vector (to_unsigned (write_fifo_number_2, 8));
						

			wait for 1 ns;
			req_2 <='0';
			wait for 6 ns;	
		end if;

		end process access_fifo_alert_check;
	
	
	access_fifo_step_addr_check: process
		begin
						
		wrreq_3_s <='0';
		
		wait on write_fifo_number_3;
		
		if write_fifo_number_3 /= 0 then
			while full_s='1' loop
				wait for 10 ns;
				end loop;
			
			req_3 <='1';
			while (ack_3='0') loop
				wait for 1 ns;
			end loop;
			wrreq_3_s <='1';
			data_3_s <= std_logic_vector (to_unsigned (write_fifo_number_3, 16));
			wait for 1 ns;
			req_3 <='0';
			wait for 6 ns;	
		end if;

		end process access_fifo_step_addr_check;

		
		
	print_fifo: process 
			variable fifo_read_number_first  :  INTEGER:=0;      --first 8 bits  (MSBs) read from FIFO
			variable fifo_read_number_last  :  INTEGER:=0;       --last 8 bits  (LSBs) read from FIFO
			variable fifo_read_number_msb 	:  STD_LOGIC ;
			variable f_status: FILE_OPEN_STATUS;
			variable buf	 : line;
		begin
						
			rdreq_s <='0';
		
			wait on fase;
		
			while empty_s /='1' loop
			
				rdreq_s <='1';
				wait for 1 ns;
				fifo_read_number_msb := q_s(15);
				fifo_read_number_first := to_integer( unsigned(q_s(14 downto 8)));     --   address
				fifo_read_number_last := to_integer( unsigned(q_s(7 downto 0)));     --   address

				file_open (f_status, l_file, "disc_log.txt", append_mode);
					
				
			if (fifo_read_number_msb ='1' ) then					
				if (fifo_read_number_last = 1 or fifo_read_number_last = 22 or fifo_read_number_last = 36) then
					write(buf, string'("GERACAO DE NUMERO ALEATORIO" & lf & lf));
				elsif (fifo_read_number_last = 2 or fifo_read_number_last = 3 ) then				
--					write(buf, string'("PASSO ") & integer'image(fase_s) & LF & LF);
					write(buf, string'(" NOVO PASSO ") & LF & LF);
				elsif ((fifo_read_number_last >3 and fifo_read_number_last<9) or (fifo_read_number_last>9 and fifo_read_number_last<15) or (fifo_read_number_last> 23 and fifo_read_number_last <29)) then				
					write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
				elsif (fifo_read_number_last =9 or fifo_read_number_last =23) then				
					write(buf, string'("INDO PARA A PRIMEIRA LINHA" & lf & lf));
				elsif ((fifo_read_number_last>15 and fifo_read_number_last <21) or  (fifo_read_number_last >29 and fifo_read_number_last <35) or ( fifo_read_number_last >37 and fifo_read_number_last <43)) then				
					write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
				elsif (fifo_read_number_last  =15) then				
					write(buf, string'("PRIMEIRA LINHA CRUZADA" & lf & lf));
				elsif (fifo_read_number_last  =21) then				
					write(buf, string'("NOVA RODADA PARA VERIFICAR DUO-FORMED" & lf & lf));
				elsif (fifo_read_number_last  =29 or fifo_read_number_last  =37) then				
					write(buf, string'("ULTRAPASSADA A PRIMEIRA LINHA" & lf & lf));
				elsif (fifo_read_number_last  =35) then				
					write(buf, string'("NOVA RODADA PARA VERIFICAR RIGHT-BEHIND" & lf & lf));
				elsif (fifo_read_number_last  =43) then				
					write(buf, string'("*** FASE 1 - ERRO: rand fora do intervalo {60,63}" & LF));
				elsif (fifo_read_number_last  =44 or fifo_read_number_last  =48) then				
					write(buf, string'("***  FASE 1 - ERRO: dado incorreto escrito na memoria" & LF));
				elsif (fifo_read_number_last  =45 or fifo_read_number_last  =49) then				
					write(buf, string'("  Escrita realizada" & LF));
				elsif (fifo_read_number_last  =46 or fifo_read_number_last  =51 or fifo_read_number_last  =58 or fifo_read_number_last  =67 or fifo_read_number_last  =73) then			
					write(buf, string'("***  ABANDONO: muitas reescritas" & LF));
				elsif (fifo_read_number_last  =47) then				
					write(buf, string'("***  FASE 1 - ERRO: enderecos diferentes escritos na memoria" & LF));
				elsif (fifo_read_number_last  =50 or fifo_read_number_last  =57 or fifo_read_number_last  =66 or fifo_read_number_last  =72) then				
					write(buf, string'("*** ERRO: A posicao da fase ") & integer'image(fase_s-1) &  string'("nao foi escrita na memoria ou a posicao previa nao foi limpa"& LF));
				elsif (fifo_read_number_last  =52 or fifo_read_number_last  =59 ) then				
					write(buf, string'("  Escrita realizada para DISC" & LF));
				elsif (fifo_read_number_last  =53 or fifo_read_number_last  =60) then				
					write(buf, string'("*** ERRO:  DISC incorretamente nao escrito na memoria" & LF));
				elsif (fifo_read_number_last  =54 or fifo_read_number_last  =63 or fifo_read_number_last  =69) then				
					write(buf, string'("  Escrita realizada para BLANK" & LF));
				elsif (fifo_read_number_last  =55 or fifo_read_number_last  =64) then				
					write(buf, string'("*** ERRO:  BLANK incorretamente nao escrito na memoria" & LF));
				elsif (fifo_read_number_last  =56 or fifo_read_number_last  =65 or fifo_read_number_last  =71) then				
					write(buf, string'("***" & LF));
				elsif (fifo_read_number_last  =61) then				
					write(buf, string'("  Escrita realizada para DUO" & LF));
				elsif (fifo_read_number_last  =62) then				
					write(buf, string'("*** ERRO:  DUO incorretamente nao escrito na memoria" & LF));
				elsif (fifo_read_number_last  =68) then				
					write(buf, string'("*** ERRO:  BLANK  incorretamente não foi escrito na memoria" & LF));
				elsif (fifo_read_number_last  =70) then				
					write(buf, string'("*** ERRO:  Não é para escrever após no caso de right BEHIND memoria" & LF));
				elsif (fifo_read_number_last  =74) then				
					write(buf, string'("*** OBSERV:  Testbench agindo após a borda após a borda" & LF));
				elsif (fifo_read_number_last  =75) then				
					write(buf, string'(" *** ERRO: Rand gerado erradamente." & LF));
				elsif (fifo_read_number_last  =76 or fifo_read_number_last  =78 or fifo_read_number_last  =83 ) then				
					write(buf,string'("fase: ") & integer'image(fase_s) & string'("*** ERRO: Endereco atual errado." & lf ));
				elsif (fifo_read_number_last  =77 or fifo_read_number_last  =79 or fifo_read_number_last  =84) then				
					write(buf,string'("fase: ") & integer'image(fase_s) & string'("*** ERRO: Endereco anterior errado." & lf ));
				elsif (fifo_read_number_last  =80) then				
					write(buf,string'("fase: ") & integer'image(fase_s) & string'("*** ERRO: Sinal end of disciple não ativado" & lf ));
				elsif (fifo_read_number_last  =81) then				
					write(buf,string'("fase: ") & integer'image(fase_s) & string'("  end of disciple foi gerado" & lf ));
				elsif (fifo_read_number_last  =82 or fifo_read_number_last  =85 ) then				
					write(buf,string'("segue " & lf ));
				elsif (fifo_read_number_last  =86) then				
					write(buf, string'("PASSO 1   ")  & LF & LF);
				elsif (fifo_read_number_last  =87) then				
					write(buf, string'("*** ERRO: Sinal end_of_disciple não ocorreu no passo 9 " & lf));
				end if;
				
					write(buf, string'("  Endereço atual= ") & integer'image(fifo_read_number_first) & lf & lf);
		
				
			elsif (fifo_read_number_msb /='1' ) then	
				if (fifo_read_number_last = 1 or fifo_read_number_last = 22 or fifo_read_number_last = 36) then
					write(buf, string'("GERACAO DE NUMERO ALEATORIO" & lf & lf));
				elsif (fifo_read_number_last = 2 or fifo_read_number_last = 3 ) then				
--					write(buf, string'("PASSO ") & integer'image(fase_s) & LF & LF);
					write(buf, string'(" NOVO PASSO ") & LF & LF);
				elsif ((fifo_read_number_last >3 and fifo_read_number_last<9) or (fifo_read_number_last>9 and fifo_read_number_last<15) or (fifo_read_number_last> 23 and fifo_read_number_last <29)) then				
					write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
				elsif (fifo_read_number_last =9 or fifo_read_number_last =23) then				
					write(buf, string'("INDO PARA A PRIMEIRA LINHA" & lf & lf));
				elsif ((fifo_read_number_last>15 and fifo_read_number_last <21) or  (fifo_read_number_last >29 and fifo_read_number_last <35) or ( fifo_read_number_last >37 and fifo_read_number_last <43)) then				
					write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
				elsif (fifo_read_number_last  =15) then				
					write(buf, string'("PRIMEIRA LINHA CRUZADA" & lf & lf));
				elsif (fifo_read_number_last  =21) then				
					write(buf, string'("NOVA RODADA PARA VERIFICAR DUO-FORMED" & lf & lf));
				elsif (fifo_read_number_last  =29 or fifo_read_number_last  =37) then				
					write(buf, string'("ULTRAPASSADA A PRIMEIRA LINHA" & lf & lf));
				elsif (fifo_read_number_last  =35) then				
					write(buf, string'("NOVA RODADA PARA VERIFICAR RIGHT-BEHIND" & lf & lf));
				elsif (fifo_read_number_last  =43) then				
					write(buf, string'("*** FASE 1 - ERRO: rand fora do intervalo {60,63}" & LF));
				elsif (fifo_read_number_last  =44 or fifo_read_number_last  =48) then				
					write(buf, string'("***  FASE 1 - ERRO: dado incorreto escrito na memoria" & LF));
				elsif (fifo_read_number_last  =45 or fifo_read_number_last  =49) then				
					write(buf, string'("  Escrita realizada" & LF));
				elsif (fifo_read_number_last  =46 or fifo_read_number_last  =51 or fifo_read_number_last  =58 or fifo_read_number_last  =67 or fifo_read_number_last  =73) then			
					write(buf, string'("***  ABANDONO: muitas reescritas" & LF));
				elsif (fifo_read_number_last  =47) then				
					write(buf, string'("***  FASE 1 - ERRO: enderecos diferentes escritos na memoria" & LF));
				elsif (fifo_read_number_last  =50 or fifo_read_number_last  =57 or fifo_read_number_last  =66 or fifo_read_number_last  =72) then				
					write(buf, string'("*** ERRO: A posicao da fase ") & integer'image(fase_s-1) &  string'("nao foi escrita na memoria ou a posicao previa nao foi limpa"& LF));
				elsif (fifo_read_number_last  =52 or fifo_read_number_last  =59 ) then				
					write(buf, string'("  Escrita realizada para DISC" & LF));
				elsif (fifo_read_number_last  =53 or fifo_read_number_last  =60) then				
					write(buf, string'("*** ERRO:  DISC incorretamente nao escrito na memoria" & LF));
				elsif (fifo_read_number_last  =54 or fifo_read_number_last  =63 or fifo_read_number_last  =69) then				
					write(buf, string'("  Escrita realizada para BLANK" & LF));
				elsif (fifo_read_number_last  =55 or fifo_read_number_last  =64) then				
					write(buf, string'("*** ERRO:  BLANK incorretamente nao escrito na memoria" & LF));
				elsif (fifo_read_number_last  =56 or fifo_read_number_last  =65 or fifo_read_number_last  =71) then				
					write(buf, string'("***" & LF));
				elsif (fifo_read_number_last  =61) then				
					write(buf, string'("  Escrita realizada para DUO" & LF));
				elsif (fifo_read_number_last  =62) then				
					write(buf, string'("*** ERRO:  DUO incorretamente nao escrito na memoria" & LF));
				elsif (fifo_read_number_last  =68) then				
					write(buf, string'("*** ERRO:  BLANK  incorretamente não foi escrito na memoria" & LF));
				elsif (fifo_read_number_last  =70) then				
					write(buf, string'("*** ERRO:  Não é para escrever após no caso de right BEHIND memoria" & LF));
				elsif (fifo_read_number_last  =74) then				
					write(buf, string'("*** OBSERV:  Testbench agindo após a borda após a borda" & LF));
				elsif (fifo_read_number_last  =75) then				
					write(buf, string'(" *** ERRO: Rand gerado erradamente." & LF));
				elsif (fifo_read_number_last  =76 or fifo_read_number_last  =78 or fifo_read_number_last  =83 ) then				
					write(buf,string'("fase: ") & integer'image(fase_s) & string'("*** ERRO: Endereco atual errado." & lf ));
				elsif (fifo_read_number_last  =77 or fifo_read_number_last  =79 or fifo_read_number_last  =84) then				
					write(buf,string'("fase: ") & integer'image(fase_s) & string'("*** ERRO: Endereco anterior errado." & lf ));
				elsif (fifo_read_number_last  =80) then				
					write(buf,string'("fase: ") & integer'image(fase_s) & string'("*** ERRO: Sinal end of disciple não ativado" & lf ));
				elsif (fifo_read_number_last  =81) then				
					write(buf,string'("fase: ") & integer'image(fase_s) & string'("  end of disciple foi gerado" & lf ));
				elsif (fifo_read_number_last  =82 or fifo_read_number_last  =85 ) then				
					write(buf,string'("segue " & lf ));
				elsif (fifo_read_number_last  =86) then				
					write(buf, string'("PASSO 1   ")  & LF & LF);
				elsif (fifo_read_number_last  =87) then				
					write(buf, string'("*** ERRO: Sinal end_of_disciple não ocorreu no passo 9 " & lf & lf));
				end if;	
			end if;
				
				
		
			writeline(l_file, buf);
			file_close (l_file);		
				
				wait for 9 ns;
				
				rdreq_s <= '0';
				
				wait for CLK_PERIOD;
				end loop;

		end process print_fifo;		
		


end architecture test;