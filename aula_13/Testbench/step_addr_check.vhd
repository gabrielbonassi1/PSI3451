library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

use work.wisdom_package.all;

entity step_addr_check is

	port
		(					
		fase           	: in  INTEGER;
		step_check_time   : in  STD_LOGIC;
		end_of_disc		: in  STD_LOGIC;
	   disc_addr       	: in  STD_LOGIC_VECTOR(5 downto 0);
	   disc_prev_addr  	: in  STD_LOGIC_VECTOR(5 downto 0);
	   write_fifo_number_3		: out INTEGER
		);

end step_addr_check  ;

architecture test of step_addr_check   is


--***********************************
--*	TYPE DECLARATIONS				*
--***********************************
--signal log_file		: 	:= "disc_log.text";	
	file l_file			   : TEXT;
	signal end_of_disc_alert 	:  STD_LOGIC := '0';
	signal write_fifo_number :  INTEGER:=0;
	
begin

	write_fifo_number_3	<= 	write_fifo_number;

	end_of_disciple: process (end_of_disc, fase)
	
								begin
										
									if (fase =9) then
										if( end_of_disc = '1') then
											end_of_disc_alert <= '1';	
										end if;
									else
										end_of_disc_alert <= '0';
									end if;
							
							end process;							
			

	sim : process(step_check_time)
		variable expected_addr    			: integer;
		variable expected_prev_addr    	: integer;
			variable f_status: FILE_OPEN_STATUS;
			variable buf	    : line;
		   
		
		begin
				
					
				if step_check_time = '1' then
					if fase = 1 					  then    -- sempre ocorrerah primeiro na rodada
							expected_addr := to_integer(unsigned(disc_addr));	-- carrega o expected_addr com o valor aleatório de disc_addr
							if(expected_addr<60 or expected_addr>63) then		-- verifica se o endreco estah na faixa correta
--  print # 75
								write_fifo_number <=75;									
								--file_open (f_status, l_file, "disc_log.txt", append_mode);
								--write(buf, string'(" *** ERRO: Rand gerado erradamente." & LF));
								--writeline(l_file, buf);
								--file_close (l_file);
							end if;	
						
					elsif fase > 1 and fase < 9 then
						expected_prev_addr := expected_addr;   	-- atualiza os expected_addr e o expected_addr_prev
						expected_addr 	    := expected_addr - 8;							
						--file_open (f_status, l_file, "disc_log.txt", append_mode);
						if(expected_addr /= to_integer(unsigned(disc_addr)) )then   -- verifica se os endrecos estaão diminuindo corretamente
--  print # 76
						write_fifo_number <=76;							
							--write(buf,string'("fase: ") & integer'image(fase) & string'("*** ERRO:Endereco atual errado." & lf ));
						end if;		
					   if(expected_prev_addr /= to_integer(unsigned(disc_prev_addr))) then	
--  print # 77
						write_fifo_number <=77;						   
							--write(buf,string'("fase: ") & integer'image(fase) & string'("*** ERRO: Endereco anterior errado." & lf ));
						end if;	
						--write(buf,string'("segue " & lf ));							
						--writeline(l_file, buf);
						file_close (l_file);
		
					elsif fase = 9 			     then
						expected_prev_addr := expected_addr;  -- atualiza os expected_addr e o expected_addr_prev
						expected_addr 	    := expected_addr - 8;
						file_open (f_status, l_file, "disc_log.txt", append_mode);
						if( (expected_addr >3 and expected_addr <65)) then		-- verifica se os endrecos estaão diminuindo corretamente		
--  print # 78
						write_fifo_number <=78;							
							--write(buf,string'("fase: ") & integer'image(fase) & string'("*** ERRO: Endereco atual errado." & lf ));
						end if;		
					   if(expected_prev_addr /= to_integer(unsigned(disc_prev_addr)) or (expected_addr >3 and expected_addr <8)) then	
--  print # 79
						write_fifo_number <=79;						   
							--write(buf,string'("fase: ") & integer'image(fase) & string'("*** ERRO: Endereco anterior errado." & lf ));
						end if;	
						if ( end_of_disc_alert /= '1') then        -- verifica se oo sinal end of disciple estah sendo gerado
--						file_open (f_status, l_file, "disc_log.txt", append_mode);		
--  print # 80
						write_fifo_number <=80;					
							--write(buf,string'("fase: ") & integer'image(fase) & string'("*** ERRO: Sinal end of disciple não ativado" & lf ));
						else
							--end_of_disc_alert <= '0';
--  print # 81
						write_fifo_number <=81;								
							--write(buf,string'("fase: ") & integer'image(fase) & string'("  end of disciple foi gerado" & lf ));							
						end if;
--  print # 82
						write_fifo_number <=82;								
						--write(buf,string'("segue " & lf ));								
						--writeline(l_file, buf);
				   		--file_close (l_file);
						
					 elsif fase > 9 			     then
						expected_prev_addr := expected_addr;  -- atualiza os expected_addr e o expected_addr_prev (nao eh necessario)
						expected_addr 	    := expected_addr - 8;
						--file_open (f_status, l_file, "disc_log.txt", append_mode);		
						if(expected_addr = to_integer(unsigned(disc_addr)) )then	-- verifica se os endrecos estaão diminuindo corretamente
																					-- sem necessidade
--  print # 83
						write_fifo_number <=83;																						
							--write(buf,string'("fase: ") & integer'image(fase) & string'("*** ERRO: Endereco atual errado." & lf ));
						end if;		
					   if(expected_prev_addr = to_integer(unsigned(disc_prev_addr))) then
--  print # 84
						write_fifo_number <=84;						   
							--write(buf,string'("fase: ") & integer'image(fase) & string'("*** ERRO: Endereco anterior errado." & lf ));
						end if;	
--						if ( end_of_disc /= '1') then      -- verifica se oo sinal end of disciple estah sendo gerado
--					   		file_open (f_status, l_file, "disc_log.txt", append_mode);							
--							write(buf,string'("fase: ") & integer'image(fase) & string'("*** ERRO: Sinal end of disciple não ativado" & lf ));
--						end if;
--  print # 85
						write_fifo_number <=82;	
						--write(buf,string'("segue " & lf ));								
						--writeline(l_file, buf);
						--file_close (l_file);
				    end if;
					 
			end if;
	
		end process sim;
end architecture test;