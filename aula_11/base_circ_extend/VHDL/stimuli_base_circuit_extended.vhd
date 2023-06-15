library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.wisdom_package.all;

entity stimuli_base_circuit_extended is
	generic
	(
			WIDTH			: NATURAL := 8;
		CLK_PERIOD		: TIME	:=  10ns
	);

		port
		(
		clk					: out  STD_LOGIC;						     --from system    --
		res					: out  STD_LOGIC;						     --from system    --
		
		enable				: out  STD_LOGIC;						      -- from player  --
		sys_speed    		: out  STD_LOGIC_VECTOR(3 downto 0);  	-- from player        --
		
		disc_2_base			: out  disc_2_base_flags;					--fom disciple circuit
		disc_2_mem			: out  disc_2_mem_flags;					-- from disc	
		disc_2_ref			: out  disc_2_ref_flags;					-- from disc	
		print_rdy         : in STD_LOGIC;							-- for test only -monitor and VGA
		cnt_disc_rdy      : in STD_LOGIC;
		ref_2_disc			: in ref_2_disc_flags;
		start_step  		: in STD_LOGIC;						--to disciple circuit
		
		mem_a_data	: in STD_LOGIC_VECTOR(7 downto 0);				--to vga interface module
		mem_a_addr	: out STD_LOGIC_VECTOR(5 downto 0)				--to vga interface module
		);

end stimuli_base_circuit_extended ;

architecture test of stimuli_base_circuit_extended is

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
--	signal enable_s,en_bypass_s    : STD_LOGIC;
	signal cnt_guru_rdy_s      	 : STD_LOGIC;
	signal cnt_disc_rdy_s      	 : STD_LOGIC;
--	signal cnt_value_s         	 : UNSIGNED(16-1 downto 0) ; 
--	signal speed_sync_s			    : SPEED;
	signal sys_speed_s    			 : STD_LOGIC_VECTOR(3 downto 0);
	
	
begin


	clk               <= clk_s;
	res               <= rst_s;
--	cnt_guru_rdy      <= cnt_guru_rdy_s;
--	cnt_disc_rdy      <= cnt_disc_rdy_s;
--	sys_speed         <= sys_speed_s;

	clock: clock_generator
		port map
		(
		clk		=> clk_s
		);
   
	


	sim : process
	
			procedure reset_activate is    -- reset activation procedure
				begin
					wait until falling_edge(CLK_s);
					rst_s <= '1';
					wait for CLK_PERIOD;
					rst_s <= '0';
				end procedure reset_activate;
				
				
			
			procedure checkWC(tb_end_of_discI, enableI, tb_disc_wr_enI  : in std_logic;
										        disc_addrI, disc_prev_addrI , sys_speedI, disc_addr_2_memI, disc_dataI  : in INTEGER   ) is
		
				begin
					disc_2_base.end_of_disc <=   tb_end_of_discI;      
					enable       <=   enableI;	
					disc_2_mem.mem_wr_en <=  tb_disc_wr_enI  ;	
					disc_2_ref.disc_addr      <=   std_logic_vector(to_unsigned(disc_addrI,WIDTH))      ;
					disc_2_ref.disc_prev_addr <=   std_logic_vector(to_unsigned(disc_prev_addrI,WIDTH)) ;
					disc_2_mem.mem_b_addr      <=   std_logic_vector(to_unsigned(disc_addr_2_memI,WIDTH-2))      ;
					disc_2_mem.data_b <=   std_logic_vector(to_unsigned(disc_dataI,WIDTH)) ;					
					sys_speed    <=   std_logic_vector(to_unsigned(sys_speedI,4)) ;
					

					wait until rising_edge (clk_s);
					-- Events at the rising edge of next clock cycle
			end procedure checkWC;

		

		begin
		------------------------------------------------------------------------------------------------------------------	
		-- SIM 1 : Iniciação do sistema
			
			reset_activate;                       -- forca o sistema para fase inicial: FSM_MAIN->INIT_ACTIVATION	
			                                      -- FSM_INIT->IDLE , FSM_GURU->START_ITERATION
															 
			-- No tempo 20ns, a FSM_MAIN:INIT_ACTIVATION envia um sinal para a ativacao do ciclo da FSM_INIT
			-- Observa-se a insercao de BLANK nas 64 posicoes correspondentes ao tabuleiro de 20 a 680 ns 
			checkWC('0','0','0', 0, 0, 0, 0,1);   
			
			while (start_step = '0')     loop    -- INIT ocurring
			  
			  wait for CLK_PERIOD;
			  end loop;
			
											-- INIT finished for some time there is a wait for start_step='1'; it is geerated by the FSM Main after cnr_prepare.
			wait for 5*CLK_PERIOD;
			
			
			reset_activate;                       -- observe o sistema ser reiniciado. 
		----------------------------------------------------------------------------------------------------------	
		
		-- SIM 2 : condicao de jogo sem conflito, pois discipulo não é acionado por botao- só guru caminha - deve-se observar toda a movimentacao.   
				
							   -- GO_GURU ocorre imediatamente no estado CHECK_LAST						
				
			wait for 92us;    -- tempo para o guru fazer toda a caminhada

				-- Fim da rodada----apos 			
				
				-- início de nova rodada até nova geracao de numero aleatorio
				
		----------------------------------------------------------------------------------------------------------					
						
		-- SIM 3 : condicao de jogo sem conflito entre guru e discipulo - deve-se observar toda a movimentacao.   
				-- Velocidades iguais para o guru e o discipulo		
		
				
			wait for 24us;     --tempo para o guru dar alguns passos...	
									
				
			checkWC('0','1','0', 0, 0, 1, 0, 0);   -- durante a caminhada do guru, em 118 us aprox. o discipulo recebe permissao de caminhar na mesma velocidade do guru		

												   -- o circuito do discipulo aguarda o cnt_disc_ready, no mesmo ritmo de contagem do guru
                                                   --  como o discipulo comeca atrasado, nao ha conflito	
                                                   -- a partir deste momento o referee se encarrega de sinalizar  ao discipulo e verificar e reolver eventuais situacoes particulares												   
			
			wait for 12us;      --chega no ponto de o discipulo enviar os dados
			
			checkWC('0','1','0', 52, 60, 1, 52, 8);   -- 
			
			wait for 1.1us;      --chega no ponto de o discipulo escrever os dados
				
			checkWC('0','1','1', 52, 60, 1, 52, 8);   -- 	

			wait for CLK_PERIOD;
			
			checkWC('0','1','1', 52, 60, 1, 60, 1);   -- 	
			
			wait for CLK_PERIOD;
			
			checkWC('0','1','0', 52, 60, 1, 60, 1);   -- 	
			
			for i in 1 to 6 loop
			
				wait for 11.69us;      --chega no ponto de o discipulo enviar os dados
			
				checkWC('0','1','0', 52-i*8, 60-i*8, 1 , 52-i*8, 8);   -- 
				
				wait for 1.1us;      --chega no ponto de o discipulo escrever os dados		
			
				checkWC('0','1','1', 52-i*8, 60-i*8, 1, 52-i*8, 8);   -- 
				
				wait for CLK_PERIOD;
				
				checkWC('0','1','1', 52-i*8, 60-i*8, 1, 60-i*8, 1);   -- 
				
				wait for CLK_PERIOD;
				
				checkWC('0','1','0', 52-i*8, 60-i*8, 1, 60-i*8, 1);   -- 
				
			end loop;
		

			wait for 11.69us;      --chega no ponto de o discipulo enviar os dados
			
			checkWC('0','1','0', 80, 4, 1, 80, 1);   -- 
							
			wait for 1.11us;      --chega no ponto de o discipulo escrever os dados		
			
			checkWC('0','1','1', 80, 4, 1, 4, 1);   -- 
			
			wait for CLK_PERIOD;
			
			checkWC('0','1','0', 80, 4, 1, 4, 1);   -- 
			
			wait for 1.2us;      --intervalo de tempo até o discipulo gerar o end_of_disc
			
			
			checkWC('1','1','0', 80, 4, 1, 80, 1);   -- 
			
			
			wait for 2.1us;      --intervalo de tempo até o discipulo gerar o end_of_disc

			checkWC('0','0','0', 0, 0, 0, 0, 0);   -- 
			
		----------------------------------------------------------------------------------------------------------					
	
				-- fim da rodada---------------------------------------------------------------------------		
	---------------------------------------------------------------------------------------------------------------	
				wait ;			

			end process sim;
end architecture test;