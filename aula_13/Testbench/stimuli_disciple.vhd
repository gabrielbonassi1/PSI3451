library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
use work.wisdom_package.all;

entity stimuli_disciple is
	generic
	(
			WIDTH			: NATURAL := 8;
		CLK_PERIOD		: TIME	:=  10ns
	);

	port
		(
		clk					: out STD_LOGIC;			--system generatiom
		rst					: out STD_LOGIC;			--system generatiom						
		cnt_disc_rdy		: out STD_LOGIC;
		start_step        : out  STD_LOGIC;		
		go_disc           : out STD_LOGIC;
		duo_formed        : out STD_LOGIC;
		step_check_time   : out STD_LOGIC;
		fase              : out INTEGER;
		guru_right_behind  : out STD_LOGIC;
		end_of_disciple  	: in STD_LOGIC;
		wr_en             : in  STD_LOGIC;
		write_fifo_number_1 	: out  INTEGER

		);

end stimuli_disciple ;

architecture test of stimuli_disciple  is

	component clock_generator
		generic (
		CLK_PERIOD		: TIME	:= 10ns
		);

		port (	
		clk		: out STD_LOGIC
		);

    end component ;
	 
	

	
--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************	
	signal clk_s 	 		          : STD_LOGIC;
	signal rst_s 	 		          : STD_LOGIC;
   signal cnt_disc_rdy_s      	 : STD_LOGIC;
   signal fase_s:  INTEGER  := 0;
   signal write_fifo_number 	: INTEGER :=0 ;
   signal end_of_disc_ocurred	: STD_LOGIC:='0' ;
   signal go_disc_s				: STD_LOGIC:='0';
  
   
	file l_file			   : TEXT;
	
	
	
begin


	clk               <= clk_s;
	rst               <= rst_s;
	fase  			  <= fase_s;
	go_disc			<= go_disc_s;
	
	write_fifo_number_1 <= write_fifo_number;	
	
	clock: clock_generator
									port map
									(
									clk		=> clk_s
									);
   
	end_disc_check	: 	process (end_of_disciple, go_disc_s) is
						begin
						
							if end_of_disciple ='1' then
								if fase_s = 9 then
									end_of_disc_ocurred <= '1';
								end if;
							end if;
							
							if go_disc_s='1' then
								if fase_s = 10 then
									end_of_disc_ocurred <='0';
								end if;
							end if;
							
						end process end_disc_check;
						


	sim : process
	
			variable f_status: FILE_OPEN_STATUS;
			variable buf	 : line;
		   
			procedure reset_activate is    -- reset activation procedure
				begin
					wait until falling_edge(CLK_s);
					rst_s <= '1';
					cnt_disc_rdy		 <= '0';
					start_step         <= '0';	
					go_disc_s            <= '0';
					duo_formed         <= '0';
					step_check_time    <= '0';
					fase_s               <= 0;
					guru_right_behind   <= '0';
					
					wait for CLK_PERIOD;
					rst_s <= '0';
					
				end procedure reset_activate;

		begin
			
			reset_activate; 
			
			file_open (f_status, l_file, "disc_log.txt", write_mode);
			write(buf, string'("INICIO DA SIMULACAO" & lf & lf));
			writeline(l_file, buf);
			file_close (l_file);
			
			write_fifo_number <= 0;
			
			wait for 5*CLK_PERIOD; -- nao deve ocorrer nenhuma escrita na memoria
			
		------------------------------------------------------------------------------------------------------------------	
		-- SIM 1 : gerao da 1 posicao do disc (aleatoria)
--			   fase_s <= 1;
			
			fase_s <= 1;		
			start_step <= '1';
			wait for CLK_PERIOD;
--  print # 86
						
			write_fifo_number <=86;
						
--						file_open (f_status, l_file, "disc_log.txt", append_mode);
--						write(buf, string'("PASSO 1   ")  & LF & LF);
--						writeline(l_file, buf);
--						file_close (l_file);	
			
			wait for 2*CLK_PERIOD;
			start_step <= '0';       -- marca permissão para o discipulo (e guru) começarem os seus passos
									 -- lembrar que os passos do guru são feitas automaticamente enquanto os
									 -- do discipulo são de controle do jogador
			

--  print # 1
			write_fifo_number <=1;
				
--			   	file_open (f_status, l_file, "disc_log.txt", append_mode);
--			   	write(buf, string'("GERACAO DE NUMERO ALEATORIO" & lf & lf));
--				writeline(l_file, buf);
--				file_close (l_file);				
				
				wait for 30*CLK_PERIOD; -- tempo mais que suficiente para se atigir o estado de espera pelo disparo do contador
										-- espera-se, no entanto que o jogador acionará o primeiro disparo apenas após o rand_num do 
										-- do discipulo ter sido gerado
				
				-- acionamento do modulo STEP_ADDR_CHECK
				step_check_time <= '1';
				wait for CLK_PERIOD;   
				step_check_time <= '0';
				
				wait for 2*CLK_PERIOD;
		------------------------------------------------------------------------------------------------------------------	
		-- SIM 2: movimentacao do disc de 2 a 7 posicao
						
				for K in 2 to 7 loop
						fase_s <= K;			
						cnt_disc_rdy <= '1';
						wait for CLK_PERIOD;   
						cnt_disc_rdy <= '0';		
							
--						fase_s <= K;

--  print # 2
						
						write_fifo_number <=2;
						
--						file_open (f_status, l_file, "disc_log.txt", append_mode);
--						write(buf, string'("PASSO ") & integer'image(fase_s-1) & LF & LF);
--						writeline(l_file, buf);
--						file_close (l_file);	

						wait for CLK_PERIOD;   
						
						for i in 1 to 4 loop
							if (end_of_disciple = '1') then 
							
--  print # 3
								write_fifo_number <=3;	
								
							--	file_open (f_status, l_file, "disc_log.txt", append_mode);
							--	write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
							--	writeline(l_file, buf);	
							--	file_close (l_file);
							end if;
						wait for 2* CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s 
						write_fifo_number <=0;						
						end loop;
				
						go_disc_s <= '1';
						
						wait for CLK_PERIOD;  

						if (end_of_disciple = '1') then 
						
--  print # 4
							write_fifo_number <=4;	
						--	file_open (f_status, l_file, "disc_log.txt", append_mode);
						--	write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
						--	writeline(l_file, buf);	
						--	file_close (l_file);
						end if;
						wait for CLK_PERIOD;   
						go_disc_s <= '0';	   
						
--  print # 5
						
						for i in 1 to 5 loop
							wait for CLK_PERIOD; -- no laço, tempo suficiente para atingir o estado de espera pelo disparo do contador
							if (end_of_disciple = '1') then 
								write_fifo_number <=5;	
								
							--	file_open (f_status, l_file, "disc_log.txt", append_mode);
							--	write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
							--	writeline(l_file, buf);	
							--	file_close (l_file);
							end if;
						wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s 
						write_fifo_number <=0;						
						end loop;			 
												-- acionamento do modulo STEP_ADDR_CHECK
						step_check_time <= '1';
						wait for CLK_PERIOD;   
						
						
						for i in 1 to 3 loop
							if (end_of_disciple = '1') then 
							
--  print # 6
								write_fifo_number <=6;	
								
							--	file_open (f_status, l_file, "disc_log.txt", append_mode);
							--	write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
							--	writeline(l_file, buf);	
							--	file_close (l_file);
							end if;
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
								write_fifo_number <=0;									
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s 						
						end loop;

						
						wait for CLK_PERIOD;  

						if (end_of_disciple = '1') then 
						
--  print # 7
							write_fifo_number <=7;	
						--	file_open (f_status, l_file, "disc_log.txt", append_mode);
						--	write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
						--	writeline(l_file, buf);	
						--	file_close (l_file);
						end if;
						
						step_check_time <= '0';
						
						wait for CLK_PERIOD;
								
						for i in 1 to 4 loop
							
							if (end_of_disciple = '1') then 
							
--  print # 8
								write_fifo_number <=8;	
								
							--	file_open (f_status, l_file, "disc_log.txt", append_mode);
							--	write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
							--	writeline(l_file, buf);	
							--	file_close (l_file);
							end if;
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
								write_fifo_number <=0;									
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s 	
						end loop;		
						
				end loop;				
		----------------------------------------------------------------------------------------------------------	
		-- SIM 3 : movimento para a 8 posicao com DUO_FORMED = 0 
				fase_s <= 8;
				cnt_disc_rdy <= '1';
				wait for CLK_PERIOD;   
				cnt_disc_rdy <= '0';		

--  print # 2
						
						write_fifo_number <=2;
						
--						file_open (f_status, l_file, "disc_log.txt", append_mode);
--						write(buf, string'("PASSO ") & integer'image(fase_s-1) & LF & LF);
--						writeline(l_file, buf);
--						file_close (l_file);	

						wait for CLK_PERIOD;   
						
--				fase_s <= 8;

--  print # 9
								write_fifo_number <=9;	
				--file_open (f_status, l_file, "disc_log.txt", append_mode);
				--write(buf, string'("INDO PARA A PRIMEIRA LINHA" & lf & lf));
				--writeline(l_file, buf);
				--file_close (l_file);	
				
				duo_formed 		  <= '0';
				guru_right_behind <= '0';
				
				wait for CLK_PERIOD; 
				
						for i in 1 to 8 loop
							if (end_of_disciple = '1') then 
							
--  print # 10
								write_fifo_number <=10;	
								
							--	file_open (f_status, l_file, "disc_log.txt", append_mode);
							--	write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
							--	writeline(l_file, buf);	
							--	file_close (l_file);
							end if;
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
								write_fifo_number <=0;									
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s 	
						end loop;		
				
						go_disc_s <= '1';

						if (end_of_disciple = '1') then 
	--  print # 11
							write_fifo_number <=11;	
							
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
							--writeline(l_file, buf);	
							--file_close (l_file);
						end if;
						wait for CLK_PERIOD;   
						go_disc_s <= '0';	   
						
						
						for i in 1 to 5 loop
							wait for CLK_PERIOD; -- no laço, tempo suficiente para atingir o estado de espera pelo disparo do contador
							if (end_of_disciple = '1') then 
							
--  print # 12
								write_fifo_number <=12;	
								
							--	file_open (f_status, l_file, "disc_log.txt", append_mode);
							--	write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
							--	writeline(l_file, buf);	
							--	file_close (l_file);
							end if;
						wait for CLK_PERIOD; -- no laço, tempo suficiente para voltar a espera do contador 
						write_fifo_number <=0;		
						end loop;					 
												-- acionamento do modulo STEP_ADDR_CHECK
						step_check_time <= '1';
						wait for CLK_PERIOD;   
						
						if (end_of_disciple = '1') then 
--  print # 13
							write_fifo_number <=13;	
							
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
							--writeline(l_file, buf);	
							--file_close (l_file);
						end if;
						
						step_check_time <= '0';
						
						wait for CLK_PERIOD;
						
						for i in 1 to 4 loop
							wait for CLK_PERIOD; -- no laço, tempo suficiente para voltar a espera do contador
							if (end_of_disciple = '1') then 
--  print # 14
								write_fifo_number <=14;	
								
							--	file_open (f_status, l_file, "disc_log.txt", append_mode);
							--	write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
							--	writeline(l_file, buf);	
							--	file_close (l_file);
							end if;
						wait for CLK_PERIOD; -- no laço, tempo suficiente para voltar a espera do contador 
						write_fifo_number <=0;		
						end loop;				
		
		----------------------------------------------------------------------------------------------------------	
		-- SIM 4 : passando pela borda com guru_right_behind = 0
				fase_s <= 9;
				cnt_disc_rdy <= '1';
				wait for CLK_PERIOD;   
				cnt_disc_rdy <= '0';		
							
--				fase_s <= 9;

--  print # 2
						
						write_fifo_number <=2;
						
--						file_open (f_status, l_file, "disc_log.txt", append_mode);
--						write(buf, string'("PASSO ") & integer'image(fase_s-1) & LF & LF);
--						writeline(l_file, buf);
--						file_close (l_file);	

						wait for CLK_PERIOD;   
				
--  print # 15
				write_fifo_number <=15;	
				--file_open (f_status, l_file, "disc_log.txt", append_mode);
				--write(buf, string'("PRIMEIRA LINHA CRUZADA" & lf & lf));
				--writeline(l_file, buf);
				--file_close (l_file);	
				
				duo_formed 		  <= '0';
				guru_right_behind <= '0';
				
				wait for CLK_PERIOD; 
				

				
				for i in 1 to 8 loop
					if (end_of_disciple = '1') then 
--  print # 16
						write_fifo_number <=16;	
						
						--file_open (f_status, l_file, "disc_log.txt", append_mode);
						--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
						--writeline(l_file, buf);	
						--file_close (l_file);
					end if;
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
								write_fifo_number <=0;									
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s 					
				end loop;
										
			
				go_disc_s <= '1';				
				
				if (end_of_disciple = '1') then 
--  print # 17
						write_fifo_number <=17;	
						--file_open (f_status, l_file, "disc_log.txt", append_mode);
						--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
						--writeline(l_file, buf);	
						--file_close (l_file);
					end if;
					wait for CLK_PERIOD;   
					
					go_disc_s <= '0';	   
						
			
				for i in 1 to 5 loop
					if (end_of_disciple = '1') then 
--  print # 18
						write_fifo_number <=18;	
						
						--file_open (f_status, l_file, "disc_log.txt", append_mode);
						--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
						--writeline(l_file, buf);	
						--file_close (l_file);
					end if;
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
								write_fifo_number <=0;									
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s 
				end loop;
				
												-- acionamento do modulo STEP_ADDR_CHECK
						step_check_time <= '1';
						wait for CLK_PERIOD;   
						
						if (end_of_disciple = '1') then 
--  print # 19
						write_fifo_number <=19;	
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
							--writeline(l_file, buf);	
							--file_close (l_file);
						end if;
						
						step_check_time <= '0';
						
						wait for CLK_PERIOD;
						
						for i in 1 to 4 loop
					if (end_of_disciple = '1') then 
--  print # 20
						write_fifo_number <=20;	
						
						--file_open (f_status, l_file, "disc_log.txt", append_mode);
						--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
						--writeline(l_file, buf);	
						--file_close (l_file);
					end if;
					wait for 2*CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
						write_fifo_number <=0;	
				end loop;
				
		----------------------------------------------------------------------------------------------------------	
		-- SIM 5 : mais passos sem start_step -> nao deve haver movimento do disc
				for K in 10 to 15 loop
						fase_s <= K;
						cnt_disc_rdy <= '1';
						wait for CLK_PERIOD;   
						cnt_disc_rdy <= '0';		
						if fase_s = 10 then
							wait for CLK_PERIOD;

							if end_of_disc_ocurred= '0' then
--  print # 87
								write_fifo_number <=87;	
				--write(buf, string'("END OF DISCIPLE NãO OCORREU" & lf & lf));				
							end if;	
						end if;
				
--						fase_s <= K;
						wait for 5*CLK_PERIOD; -- tempo suficiente para atingir o estado de espera pelo go_disc_s   
						
						go_disc_s <= '1';
						wait for CLK_PERIOD;   
						go_disc_s <= '0';	   
			 
						wait for 30*CLK_PERIOD; -- tempo suficiente para atingir o estado de espera pelo disparo do contador
						
						-- acionamento do modulo STEP_ADDR_CHECK
						step_check_time <= '1';
						wait for CLK_PERIOD;   
						step_check_time <= '0';
						
						wait for 2*CLK_PERIOD;
						
				end loop;	

				
		----------------------------------------------------------------------------------------------------------	
		-- SIM 6 : movimento completo com duo_formed = 1 	

--  print # 21
			write_fifo_number <=21;					
			--file_open (f_status, l_file, "disc_log.txt", append_mode);
			--write(buf, string'("NOVA RODADA PARA VERIFICAR DUO-FORMED" & lf & lf));
			--writeline(l_file, buf);	
			--file_close (l_file);	
			
			fase_s <= 1;

--			fase_s <= 1;			
			
			wait for CLK_PERIOD;  
			
			start_step <= '1';
--  print # 86
						
			write_fifo_number <=86;
						
--						file_open (f_status, l_file, "disc_log.txt", append_mode);
--						write(buf, string'("PASSO 1   ")  & LF & LF);
--						writeline(l_file, buf);
--						file_close (l_file);	
			
			wait for CLK_PERIOD;   		


--  print # 22
			write_fifo_number <=22;				   	
			--file_open (f_status, l_file, "disc_log.txt", append_mode);
			--write(buf, string'("GERACAO DE NUMERO ALEATORIO" & lf & lf));
			--writeline(l_file, buf);
			--file_close (l_file);				
				
			wait for 30*CLK_PERIOD; -- tempo mais que suficiente para se atigir o estado de espera pelo disparo do contador
										-- espera-se, no entanto que o jogador acionará o primeiro disparo apenas após o rand_num do 
										-- do discipulo ter sido gerado
				
				start_step <= '0';
				-- acionamento do modulo STEP_ADDR_CHECK
				step_check_time <= '1';
				wait for CLK_PERIOD;   
				step_check_time <= '0';
				
				wait for 2*CLK_PERIOD;
			
				for K in 2 to 10 loop
						fase_s <= K;
--						fase_s <= K;
						cnt_disc_rdy <= '1';
						wait for CLK_PERIOD; 
--  print # 2					
						write_fifo_number <=2;
						
--						file_open (f_status, l_file, "disc_log.txt", append_mode);
--						write(buf, string'("PASSO ") & integer'image(fase_s) & LF & LF);
--						writeline(l_file, buf);
--						file_close (l_file);						
						cnt_disc_rdy <= '0';		
						

						if K = 8 then								
	
							wait for CLK_PERIOD;   
--  print # 23
							write_fifo_number <=23;							
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("INDO PARA A PRIMEIRA LINHA" & lf & lf));
							--writeline(l_file, buf);	
							--file_close (l_file);	
							duo_formed 		  <= '1';
							guru_right_behind <= '0';
							
							wait for CLK_PERIOD; 
				
							for i in 1 to 8 loop
								if (end_of_disciple = '1') then 
--  print # 24
								write_fifo_number <=24;	
						
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
								--writeline(l_file, buf);	
								--file_close (l_file);
								end if;
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
								write_fifo_number <=0;									
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s 
								
							end loop;							
							
							
							
							
							go_disc_s <= '1';
							if (end_of_disciple = '1') then 
							
--  print # 25
								write_fifo_number <=25;	
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
								--writeline(l_file, buf);	
								--file_close (l_file);
							end if;
							wait for CLK_PERIOD;   
							go_disc_s <= '0';	   
						
						
							for i in 1 to 5 loop
								if (end_of_disciple = '1') then 
--  print # 26
								write_fifo_number <=26;	
						
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
								--writeline(l_file, buf);	
								--file_close (l_file);
								end if;
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
								write_fifo_number <=0;									
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s 
							end loop;							
							  
						
							if (end_of_disciple = '1') then 
--  print # 27
								write_fifo_number <=27;	
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
								--writeline(l_file, buf);	
								--file_close (l_file);
							end if;
						
							step_check_time <= '0';
						
							wait for CLK_PERIOD;
							
							for i in 1 to 4 loop
								if (end_of_disciple = '1') then 
--  print # 28
								write_fifo_number <=28;	
						
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'("ERRO: sinal end_of_disciple ativado em passo errado" & LF));
								--writeline(l_file, buf);	
								--file_close (l_file);
								end if;
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
								write_fifo_number <=0;									
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s 	
							end loop;	
							
						elsif K = 9 then

--  print # 29
							write_fifo_number <=29;	
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'("ULTRAPASSADA A PRIMEIRA LINHA" & lf & lf));
								--writeline(l_file, buf);	
								--file_close (l_file);	
							duo_formed 		  <= '1';
							guru_right_behind <= '0';						
						
							wait for CLK_PERIOD; 

							
							for i in 1 to 8 loop
								if (end_of_disciple = '1') then 
--  print # 30
								write_fifo_number <=30;	
						
						--file_open (f_status, l_file, "disc_log.txt", append_mode);
						--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
						--writeline(l_file, buf);	
						--file_close (l_file);
								end if;
					
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
								write_fifo_number <=0;	
								wait for CLK_PERIOD; 
							end loop;
										
			
							go_disc_s <= '1';				
				
							if (end_of_disciple = '1') then 
--  print # 31
								write_fifo_number <=31;									
									--file_open (f_status, l_file, "disc_log.txt", append_mode);
									--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
									--writeline(l_file, buf);	
									--file_close (l_file);
							end if;
							wait for CLK_PERIOD;   
					
							go_disc_s <= '0';	   
						
			
							for i in 1 to 5 loop
								if (end_of_disciple = '1') then 
--  print # 32
									write_fifo_number <=32;	
						
						--file_open (f_status, l_file, "disc_log.txt", append_mode);
						--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
						--writeline(l_file, buf);	
						--file_close (l_file);
								end if;
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
								write_fifo_number <=0;	
								wait for CLK_PERIOD;
							end loop;
									
				
												-- acionamento do modulo STEP_ADDR_CHECK
							step_check_time <= '1';
							wait for CLK_PERIOD;   
						
							if (end_of_disciple = '1') then 
--  print # 33
								write_fifo_number <=33;	
									--file_open (f_status, l_file, "disc_log.txt", append_mode);
									--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
									--writeline(l_file, buf);	
									--file_close (l_file);
							end if;
						
							step_check_time <= '0';
						
							for i in 1 to 4 loop
								if (end_of_disciple = '1') then 
--  print # 34
								write_fifo_number <=34;	
						
						--file_open (f_status, l_file, "disc_log.txt", append_mode);
						--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
						--writeline(l_file, buf);	
						--file_close (l_file);
								end if;
								wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
								write_fifo_number <=0;	
								wait for CLK_PERIOD;
								end loop;
								

						elsif K = 10 then

						
							duo_formed 		  <= '0';
							guru_right_behind <= '0';
							
							wait for CLK_PERIOD; 	
							
							if end_of_disc_ocurred= '0' then
--  print # 87
								write_fifo_number <=87;	
				--write(buf, string'("END OF DISCIPLE NãO OCORREU" & lf & lf));				
							end if;									
									
							wait for 5*CLK_PERIOD; -- tempo suficiente para atingir o estado de espera pelo go_disc_s   
						
							go_disc_s <= '1';
							wait for CLK_PERIOD;   
							go_disc_s <= '0';	   
			 
							wait for 30*CLK_PERIOD; -- tempo suficiente para atingir o estado de espera pelo disparo do contador
						
							-- acionamento do modulo STEP_ADDR_CHECK
							step_check_time <= '1';
							wait for CLK_PERIOD;   
							step_check_time <= '0';
							
							write_fifo_number <=0;	
						
							wait for 2*CLK_PERIOD;
								
								
						else 
							duo_formed 		  <= '0';
							guru_right_behind <= '0';
							
							wait for 5*CLK_PERIOD; -- tempo suficiente para atingir o estado de espera pelo go_disc_s   
						
							go_disc_s <= '1';
							wait for CLK_PERIOD;   
							go_disc_s <= '0';	   
			 
							wait for 30*CLK_PERIOD; -- tempo suficiente para atingir o estado de espera pelo disparo do contador
						
							-- acionamento do modulo STEP_ADDR_CHECK
							step_check_time <= '1';
							wait for CLK_PERIOD;   
							step_check_time <= '0';
							
							write_fifo_number <=0;	
						
							wait for 2*CLK_PERIOD;
						end if;
								
				end loop;					
		
		----------------------------------------------------------------------------------------------------------	
		-- SIM 7 : movimento completo com guru_right_behind = 1 

--  print # 35
			write_fifo_number <=35;				
			--file_open (f_status, l_file, "disc_log.txt", append_mode);
			--write(buf, string'("NOVA RODADA PARA VERIFICAR RIGHT-BEHIND" & lf & lf));
			--writeline(l_file, buf);	
			--file_close (l_file);	
			
			start_step <= '1';
			fase_s <= 1;
			wait for CLK_PERIOD; 
			
--  print # 86
						
			write_fifo_number <=86;
						
--						file_open (f_status, l_file, "disc_log.txt", append_mode);
--						write(buf, string'("PASSO 1   ")  & LF & LF);
--						writeline(l_file, buf);
--						file_close (l_file);	


--			fase_s <= 1;

			wait for CLK_PERIOD;	
			
--  print # 36
						write_fifo_number <=36;				   	
			--file_open (f_status, l_file, "disc_log.txt", append_mode);
			--write(buf, string'("GERACAO DE NUMERO ALEATORIO" & lf & lf));
			--writeline(l_file, buf);
			--file_close (l_file);		
			
			wait for 30*CLK_PERIOD;   
			start_step <= '0';

			
			
	
				
			wait for 30*CLK_PERIOD; -- tempo mais que suficiente para se atigir o estado de espera pelo disparo do contador
										-- espera-se, no entanto que o jogador acionará o primeiro disparo apenas após o rand_num do 
										-- do discipulo ter sido gerado
				
				-- acionamento do modulo STEP_ADDR_CHECK
			step_check_time <= '1';
			wait for CLK_PERIOD;   
			step_check_time <= '0';
				
			wait for 2*CLK_PERIOD;
			
						
				for K in 2 to 11 loop
					fase_s <= K;	
					cnt_disc_rdy <= '1';
					wait for CLK_PERIOD;   
					cnt_disc_rdy <= '0';		
						
--  print # 2					
			write_fifo_number <=2;
						
--					file_open (f_status, l_file, "disc_log.txt", append_mode);
--					write(buf, string'("PASSO ") & integer'image(fase_s) & LF & LF);
--					writeline(l_file, buf);
--					file_close (l_file);	
						
					wait for CLK_PERIOD;  	
--					fase_s <= K;

					if K = 9 then
--  print # 37
						write_fifo_number <=37;	
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'("ULTRAPASSADA A PRIMEIRA LINHA" & lf & lf));
								--writeline(l_file, buf);	
								--file_close (l_file);	
								duo_formed 		  <= '0';
								guru_right_behind <= '1';						
						
						wait for CLK_PERIOD; 
						

						for i in 1 to 8 loop
							if (end_of_disciple = '1') then 
--  print # 38
								write_fifo_number <=38;	
						
						--file_open (f_status, l_file, "disc_log.txt", append_mode);
						--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
						--writeline(l_file, buf);	
						--file_close (l_file);
							end if;
							wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
							write_fifo_number <=0;	
							wait for CLK_PERIOD;
							
						end loop;
										
			
						go_disc_s <= '1';				
				
						if (end_of_disciple = '1') then 
--  print # 39
							write_fifo_number <=39;	
									--file_open (f_status, l_file, "disc_log.txt", append_mode);
									--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
									--writeline(l_file, buf);	
									--file_close (l_file);
						end if;
						wait for CLK_PERIOD;   
					
						go_disc_s <= '0';	   
						
			
						for i in 1 to 5 loop
							if (end_of_disciple = '1') then 
--  print # 40
								write_fifo_number <=40;	
						
						--file_open (f_status, l_file, "disc_log.txt", append_mode);
						--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
						--writeline(l_file, buf);	
						--file_close (l_file);
							end if;
							wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
							write_fifo_number <=0;	
							wait for CLK_PERIOD;
						end loop;
				
												-- acionamento do modulo STEP_ADDR_CHECK
						step_check_time <= '1';
						wait for CLK_PERIOD;   
						
						if (end_of_disciple = '1') then 
--  print # 41
							write_fifo_number <=41;									
								
									--file_open (f_status, l_file, "disc_log.txt", append_mode);
									--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
									--writeline(l_file, buf);	
									--file_close (l_file);
						end if;
						
						step_check_time <= '0';
						
						for i in 1 to 4 loop
							if (end_of_disciple = '1') then 
--  print # 42
								write_fifo_number <=42;	
						
						--file_open (f_status, l_file, "disc_log.txt", append_mode);
						--write(buf, string'("DETECTADO: sinal end_of_disciple ativado" & LF));
						--writeline(l_file, buf);	
						--file_close (l_file);
							end if;
							wait for CLK_PERIOD; -- no laco, tempo suficiente para atingir o estado de espera pelo go_disc_s  
							write_fifo_number <=0;	
							wait for CLK_PERIOD;
						end loop;
							
					
					elsif K =10 then

						
							duo_formed 		  <= '0';
							guru_right_behind <= '0';
							
							wait for CLK_PERIOD;

							if end_of_disc_ocurred= '0' then
--  print # 87
								write_fifo_number <=87;	
				--write(buf, string'("END OF DISCIPLE NãO OCORREU" & lf & lf));				
							end if;										
							
							wait for 5*CLK_PERIOD; -- tempo suficiente para atingir o estado de espera pelo go_disc_s   
						
							go_disc_s <= '1';
							wait for CLK_PERIOD;   
							go_disc_s <= '0';	   
			 
							wait for 30*CLK_PERIOD; -- tempo suficiente para atingir o estado de espera pelo disparo do contador
						
							-- acionamento do modulo STEP_ADDR_CHECK
							step_check_time <= '1';
							wait for CLK_PERIOD;   
							step_check_time <= '0';
							
							write_fifo_number <=0;	
						
							wait for 2*CLK_PERIOD;
		
					else 
						duo_formed 		  <= '0';
						guru_right_behind <= '0';
						
						
						wait for 5*CLK_PERIOD; -- tempo suficiente para atingir o estado de espera pelo go_disc_s   
						
						go_disc_s <= '1';
						wait for CLK_PERIOD;   
						go_disc_s <= '0';	   
			 
						wait for 30*CLK_PERIOD; -- tempo suficiente para atingir o estado de espera pelo disparo do contador
						
							-- acionamento do modulo STEP_ADDR_CHECK
						step_check_time <= '1';
						wait for CLK_PERIOD;   
						step_check_time <= '0';
						
						write_fifo_number <=0;
									
						wait for 2*CLK_PERIOD;
					end if;
						
				end loop;			
		
			wait ;			

		end process sim;
end architecture test;