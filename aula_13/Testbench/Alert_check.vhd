library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.wisdom_package.all;
use std.textio.all;

entity Alert_check is

	port
		(							
		fase           	: in  INTEGER;
		alert				   : in  STD_LOGIC;
		alert_check       : out  STD_LOGIC;	
		duo_formed        : in  STD_LOGIC;
		guru_right_behind  : in  STD_LOGIC;
		disc_addr       	: in STD_LOGIC_VECTOR(5 downto 0);
		disc_prev_addr  	: in STD_LOGIC_VECTOR(5 downto 0);
		data_out       	: in  STD_LOGIC_VECTOR(7 downto 0);
		addr_out       	: in  STD_LOGIC_VECTOR(5 downto 0);
		write_fifo_number_2		: out INTEGER;
		write_fifo_address		: out INTEGER
		);

end Alert_check  ;

architecture test of Alert_check   is
file l_file			   : TEXT open write_mode is string'("disc_log.txt");

--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************	
-- signal first,fase_ok, ok1, ok2	   : std_logic := '0'; -- primeiro wr_en
-- signal este_rand , contador      	: integer:=0;
constant max                        : integer := 5;

signal write_fifo_number :  INTEGER:=0;

begin

	write_fifo_number_2 <= write_fifo_number;

	sim : process 
		variable buf							: line;
		variable first,fase_ok, ok1, ok2	   : std_logic := '0'; -- primeiro wr_en
		variable este_rand , contador      	: integer:=0;
		variable f_status: FILE_OPEN_STATUS;		
		
		begin

			alert_check <= '0';	
--			wait for 30 ns;
			wait until alert='1';
--			wait on alert ;
--			if (alert ='1') then
--			wait for 10 ns	;
			wait for 1 ns;
			write_fifo_number <= 0;
			alert_check <= '1';
			wait for 2 ns;
			alert_check <= '0';

			wait for 5 ns;	
			
				if (fase= 1) then
					if(first ='0') then 
						este_rand :=  to_integer(unsigned(addr_out));
						if (este_rand <60 or este_rand >63 )then
--  print # 43
						write_fifo_number <=43;	
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'("*** FASE 1 - ERRO: rand fora do intervalo {60,63}" & LF));
								--writeline(l_file, buf);
								--file_close (l_file);
						elsif data_out = CODE_VECTORS(DISC) then
								fase_ok:= '1'; 
--  print # 45
								write_fifo_number <=45;	
								write_fifo_address <= este_rand;
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("  Escrita realizada" & LF));
							--writeline(l_file, buf);	
							--file_close (l_file);
						    -- fase_ok- 1 certificando que houve escrita nesta fase 
				
						else -- data_out /= CODE_VECTORS(DISC))	then 
--  print # 44
								write_fifo_number <=44;	
								write_fifo_address <= este_rand;
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'("***  FASE 1 - ERRO: DISC incorretamente nao escrito na memoria" & LF));
								--writeline(l_file, buf);	
								--file_close (l_file);							
						end if;

						first := '1';
						contador := 1;
						ok1:='1';
						ok2:='1';
					
					else      -- first = 1
						if contador > max	then
--  print # 46
							write_fifo_number <=46;	
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'("***  FASE 1 - ABANDONO: muitas reescritas" & LF));
								--writeline(l_file, buf);	
								--file_close (l_file);
						else
							if (este_rand >59 or este_rand < 64 ) and data_out = CODE_VECTORS(DISC) then
								fase_ok:= '1'; 
--  print # 49
						write_fifo_number <=49;	
						write_fifo_address <= este_rand;
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("  Escrita realizada na FAse 1" & LF));
							--writeline(l_file, buf);	
							--file_close (l_file);
									 -- fase_ok- 1 certificando que houve escrita nesta fase 		
							
							elsif (este_rand /=  to_integer(unsigned(addr_out)))	then 
--  print # 47
								write_fifo_number <=47;	
								write_fifo_address <= este_rand;
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'("***  FASE 1 - ERRO: enderecos diferentes escritos na memoria" & LF));
								--writeline(l_file, buf);	
								--file_close (l_file);
							else 
								if(data_out /= CODE_VECTORS(DISC))	then 
--  print # 48
								write_fifo_number <=48;	
								write_fifo_address <= este_rand;
								--ile_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'("***  FASE 1 - ERRO: DISC  incorretamente  escrito na memoria" & LF));
								--writeline(l_file, buf);	
								--file_close (l_file);
								end if;
							end if;
										
							contador := contador+1;
						end if;
					end if;
				end if;

				
				if fase >= 2 and fase <= 7 then
					if (ok1='1' and ok2= '1') then
						if(fase_ok /='1')then
--  print # 50
--						write_fifo_number <=50;							
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("*** ERRO: A posicao da fase ") & integer'image(fase-1) &  string'("nao foi escrita na memoria ou a posicao previa nao foi limpa"& LF));
							--writeline(l_file, buf);	
							--file_close (l_file);						
						end if;
						ok1:='0';
						ok2:='0';
					end if;

					
					if contador > 2*max then
--  print # 51
							write_fifo_number <=51;						
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("*** ABANDONO: muitas reescritas" & LF));
							--writeline(l_file, buf);
							--file_close (l_file);
					
					else
					
						if(addr_out = disc_addr)then
							if(data_out = CODE_VECTORS(DISC)) then
								ok1 := '1';       -- ok- 1 certificando que houve dado ok nesta fase 
--  print # 52
								write_fifo_number <=52;		
								write_fifo_address <= to_integer(unsigned(addr_out));
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("  Escrita realizada para DISC" & LF));
							--writeline(l_file, buf);	
							--file_close (l_file);
							else
--  print # 53
									write_fifo_number <=53;
									write_fifo_address <= to_integer(unsigned(addr_out));
								--file_open (f_status, l_file, "disc_log.txt", append_mode);			
								--write(buf, string'("*** ERRO:  dado DISC incorretamente nao escrito na memoria" & LF));
								--writeline(l_file, buf);
								--file_close (l_file);						
							end if;	
						else
							if (addr_out = disc_prev_addr)then
								if(data_out = CODE_VECTORS(BLANK)) then
								ok2 := '1';  -- ok- 2 certificando que houve dado ok nesta fase 
--  print # 54
								write_fifo_number <=54;	
								write_fifo_address <= to_integer(unsigned(addr_out));
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("  Escrita realizada para BLANK" & LF));
							--writeline(l_file, buf);	
							--file_close (l_file);
								else
--  print # 55
								write_fifo_number <=55;	
								write_fifo_address <= to_integer(unsigned(addr_out));
								--file_open (f_status, l_file, "disc_log.txt", append_mode);								
								--write(buf, string'("*** ERRO:  dado BLANK incorretamente nao escrito na memoria" & LF));
								--writeline(l_file, buf);
								--file_close (l_file);								
								end if;	
							end if;
						end if;	
--  print # 56
--						write_fifo_number <=56;							
						--file_open (f_status, l_file, "disc_log.txt", append_mode);						
						--write(buf, string'("***" & LF));
						--writeline(l_file, buf);
						--file_close (l_file);							
						if ok1 ='1' and ok2= '1'then
							fase_ok := '1';
						end if;
					end if;
				end if;		
		
				if fase = 8 then
					if (ok1='1' and ok2= '1') then
						if(fase_ok /='1')then
--  print # 57
--						write_fifo_number <=57;							
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("*** ERRO: A posicao da fase ") & integer'image(fase-1) &  string'("nao foi escrita na memoria ou a posicao previa nao foi limpa"& LF));
							--writeline(l_file, buf);	
							--ile_close (l_file);						
						end if;
						ok1:='0';
						ok2:='0';
					end if;

					fase_ok:='0';
					if contador > 2*max then 
--  print # 58
						write_fifo_number <=58;	
						write_fifo_address <= to_integer(unsigned(addr_out));
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("*** ABANDONO: muitas reescritas" & LF));
							--writeline(l_file, buf);
							--file_close (l_file);
					
					else
						if (addr_out =	disc_prev_addr)then
							if(data_out = CODE_VECTORS(BLANK)) then
								ok2 := '1';
--  print # 63
								write_fifo_number <=63;
								write_fifo_address <= to_integer(unsigned(addr_out));
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("  Escrita realizada para BLANK" & LF));
							--writeline(l_file, buf);	
							--file_close (l_file);
							else
--  print # 64
								write_fifo_number <=64;
								write_fifo_address <= to_integer(unsigned(addr_out));
								--file_open (f_status, l_file, "disc_log.txt", append_mode);								
								--write(buf, string'("*** ERRO:  dado BLANK incorretamente escrito na memoria" & LF));
								--writeline(l_file, buf);
								--file_close (l_file);	
							end if;	
						else	
							if(addr_out = disc_addr and duo_formed ='0')then
								if(data_out =CODE_VECTORS(DISC)) then
									ok1 := '1';
--  print # 59						
									if (fase < 9) then
										write_fifo_number <=59;
										write_fifo_address <= to_integer(unsigned(addr_out));
									end if;	
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("  Escrita realizada para DISC" & LF));
							--writeline(l_file, buf);	
							--file_close (l_file);
								else
--  print # 60
								write_fifo_number <=60;	
								write_fifo_address <= to_integer(unsigned(addr_out));
								--file_open (f_status, l_file, "disc_log.txt", append_mode);								
								--write(buf, string'("*** ERRO:  dado DISC incorretamente nao escrito na memoria" & LF));
								--writeline(l_file, buf);
								--file_close (l_file);	
								end if;	
							else
								if(addr_out = disc_addr and duo_formed ='1')then
									if(data_out = CODE_VECTORS(DUO)) then
									ok1 := '1';
--  print # 61
									write_fifo_number <=61;	
									write_fifo_address <= to_integer(unsigned(addr_out));
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("  Escrita realizada para DUO" & LF));
							--writeline(l_file, buf);	
							--file_close (l_file);
									else
--  print # 62
								write_fifo_number <=62;	
								write_fifo_address <= to_integer(unsigned(addr_out));
								--file_open (f_status, l_file, "disc_log.txt", append_mode);								
								--write(buf, string'("*** ERRO:  DUO incorretamente nao escrito na memoria" & LF));
								--writeline(l_file, buf);
								--file_close (l_file);	
									end if;	
								end if;
							end if;
						end if;
						


--  print # 65
--						write_fifo_number <=65;							
						--file_open (f_status, l_file, "disc_log.txt", append_mode);						
						--write(buf, string'("***" & LF));
						--writeline(l_file, buf);
						--file_close (l_file);	
						
						if ok1 ='1' and ok2= '1'then
							fase_ok := '1';
						end if;
					end if;
					
				end if;
			
				if fase = 9 then
					first:='0';  --- preparando para uma proxima Fase 1...
					if (ok1='1' and ok2= '1') then
						if(fase_ok /='1')then
--  print # 66
--						write_fifo_number <=66;							
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("*** ERRO: A posicao da fase ") & integer'image(fase-1) &  string'("nao foi escrita na memoria ou a posicao previa nao foi limpa"& LF));
							--writeline(l_file, buf);	
							file_close (l_file);						
						end if;
						ok1:='0';
						ok2:='0';
					end if;

					fase_ok:='0';
	
					if contador > 2*max then 
--  print # 67
						write_fifo_number <=67;						
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("*** ABANDONO: muitas reescritas" & LF));
							--writeline(l_file, buf);
							--file_close (l_file);
					
					else
--						if(addr_out = disc_addr and guru_right_behind ='0')then

--								file_open (f_status, l_file, "disc_log.txt", append_mode);								
--								write(buf, string'("*** ERRO:  Não é para escrever após aborda na memoria" & LF));
--								writeline(l_file, buf);
--								file_close (l_file);	
--						end if;	
					
						if (addr_out = disc_prev_addr and guru_right_behind ='0')then
							if(data_out /= CODE_VECTORS(BLANK)) then
--  print # 68
								write_fifo_number <=68;	
								write_fifo_address <= to_integer(unsigned(addr_out));
								--file_open (f_status, l_file, "disc_log.txt", append_mode);								
								--write(buf, string'("*** ERRO:  BLANK  incorretamente não foi escrito na memoria" & LF));
								--writeline(l_file, buf);
								--file_close (l_file);
							else
--  print # 69
								write_fifo_number <=69;	
								write_fifo_address <= to_integer(unsigned(addr_out));
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("  Escrita de BLANK realizada" & LF));
							--writeline(l_file, buf);	
							--file_close (l_file);
								fase_ok:='1';
							end if;
						else
							if (addr_out = disc_prev_addr and guru_right_behind ='1')then
--  print # 70
								write_fifo_number <=70;	
								write_fifo_address <= to_integer(unsigned(addr_out));
								--file_open (f_status, l_file, "disc_log.txt", append_mode);								
								--write(buf, string'("*** ERRO:  Não é para escrever após no caso de right BEHIND memoria" & LF));
								--writeline(l_file, buf);
								--file_close (l_file);	
							end if;

--  print # 71
						write_fifo_number <=71;							
--						--file_open (f_status, l_file, "disc_log.txt", append_mode);						
						--write(buf, string'("***" & LF));
						--writeline(l_file, buf);
						--file_close (l_file);	
						
						end if;
					end if;
--					if ok1 ='1' and ok2= '1'then
--						fase_ok:='1';
--					end if;
					
				end if;
			
				if fase > 9 then
					if(fase_ok /='1')then
--  print # 72
--						write_fifo_number <=72;						
						--file_open (f_status, l_file, "disc_log.txt", append_mode);
						--write(buf, string'("*** ERRO: A posicao da fase ") & integer'image(fase-1) &  string'("nao foi escrita na memoria ou a posicao previa nao foi limpa"& LF));
						--writeline(l_file, buf);	
						--file_close (l_file);						
					end if;
					fase_ok:='0';
	
					if contador > 2*max then 
--  print # 73
						write_fifo_number <=73;						
							--file_open (f_status, l_file, "disc_log.txt", append_mode);
							--write(buf, string'("*** ABANDONO: muitas reescritas" & LF));
							--writeline(l_file, buf);
							--file_close (l_file);
					
					else
--  print # 74
						write_fifo_number <=74;	
								--file_open (f_status, l_file, "disc_log.txt", append_mode);								
								--write(buf, string'("*** Testbench agindo após a borda" & LF));
								--writeline(l_file, buf);
								--file_close (l_file);	
					end if;
				end if;		
--			end if;
			
--			wait for 10 ns;
--			wait for 3 ns;	
		end process sim;
end architecture test;