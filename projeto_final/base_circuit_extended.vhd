--library IEEE;
--use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
--use IEEE.std_logic_unsigned.all;
--use work.wisdom_package.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.wisdom_package.all;

entity base_circuit_extended is 
	port
	(
		clk					: in  STD_LOGIC;						     --from system
		res					: in  STD_LOGIC;						     --from system
		enable				: in  STD_LOGIC;						      -- from player
		sys_speed    		: in  STD_LOGIC_VECTOR(3 downto 0);  	-- from player
		
		disc_2_base			: in  disc_2_base_flags;					--fom disciple circuit
		disc_2_mem			: in  disc_2_mem_flags;					-- from disciple	
		disc_2_ref			: in  disc_2_ref_flags;					-- from disciple	
		print_rdy         : out STD_LOGIC;							-- for test only -monitor and VGA
		cnt_disc_rdy      : out STD_LOGIC;
		ref_2_disc			: out ref_2_disc_flags;
		start_step  		: out STD_LOGIC;						--to disciple circuit
		
		mem_a_data	: out STD_LOGIC_VECTOR(7 downto 0);				--to vga interface module
		mem_a_addr	: in STD_LOGIC_VECTOR(5 downto 0)

		
	);
end  base_circuit_extended;



architecture arch of  base_circuit_extended is



	component step_counter
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
	end component;
	
	
	 component button_handler
		port
		(
		clk					: in  STD_LOGIC;
		res					: in  STD_LOGIC;
		enable				: in  STD_LOGIC;
		enable_bypass		: out STD_LOGIC;
		sys_speed    		: in  STD_LOGIC_VECTOR(3 downto 0);
		speed_sync		   : out SPEED
		);
	end component;

	component mem_2port
	   PORT
	   (
		address_a		     : IN  STD_LOGIC_VECTOR (5 DOWNTO 0);
		address_b			  : IN  STD_LOGIC_VECTOR (5 DOWNTO 0);
		clock		      	  : IN  STD_LOGIC  := '1';
		data_a				  : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		data_b				  : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren_a				  : IN  STD_LOGIC  := '0';
		wren_b				  : IN  STD_LOGIC  := '0';
		q_a		  			  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		q_b					  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	   );
    END component;
	 
	component base_circuit
		port
		(
		clk					: in  STD_LOGIC;						--from system
		res					: in  STD_LOGIC;						--from system
		en_disc           : in  STD_LOGIC;
		cnt_guru_rdy		: in  STD_LOGIC;						--from counter
		ref_2_base        : in  ref_2_base_flags;				--from referee    		
		disc_2_base    	: in  disc_2_base_flags;
		start_step  		: out  STD_LOGIC;	
		en_cnt_step       : out STD_LOGIC;
		base_2_ref  		: out base_2_ref_flags;
		base_2_mem     	: out base_2_mem_flags
		);
	 end component;

	 	
	component referee
		generic
		( WIDTH		: NATURAL	:= 8 );
		
		port(
		 clk, reset: in std_logic;
		 cnt_disc_rdy, cnt_guru_rdy: in std_logic;
		 guru_addr,disc_addr, guru_prev_addr,disc_prev_addr: in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
		 go_guru, go_disc, guru_right_behind, duo_formed: out std_logic );
	end component;

	component holder is

		port
		(
		clk, reset     	: in std_logic;
		inSig, releaseS	: in std_logic;
		holdedOut         : out std_logic );
	end component;
	
		
--	component Duohold_fit is 
--		generic
--		(
--		COUNT_MAX	: positive	:= 2
--		);

--		port
--		(
--		clk				: in STD_LOGIC;
--		res				: in STD_LOGIC;
--		start_step     : in STD_LOGIC;
--		cnt_disc_rdy   : in STD_LOGIC;
--		disc_addr_in	: in STD_LOGIC_VECTOR(7 downto 0);
--		disc_addr_out	: out STD_LOGIC_VECTOR(7 downto 0)
		
--		);
--	end component;

--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************

   signal clk_s, res_s,print_rdy_s ,ctrl_s ,guru_right_behind_s ,inSig_s     : STD_LOGIC;
   	signal en_cnt_s		         : STD_LOGIC;
	signal release3             	: STD_LOGIC := '0';
	signal cnt_guru_rdy_s      	: STD_LOGIC;
	signal cnt_disc_rdy_s      	: STD_LOGIC;
	signal duo_formed_s        	: STD_LOGIC;
	signal duo_formed_held_s     	: STD_LOGIC;
	signal start_step_s 				: STD_LOGIC;		
	signal tb_init_guru_data_s,disc_addr_s , a_data_s  ,disc_prev_s	: STD_LOGIC_VECTOR(7 downto 0);
	signal disc_data_s  	   		: STD_LOGIC_VECTOR(7 downto 0);       -- q_b output  ; it is not needed for any reading in system
	signal a_addr_s              	: STD_LOGIC_VECTOR(5 downto 0);
	signal cnt_value_s         	: UNSIGNED(15 downto 0) ; 
	signal ref_2_base_s        	: ref_2_base_flags;
	signal base_2_ref_s 		   	: base_2_ref_flags;
	signal base_2_mem_s        	: base_2_mem_flags;
	signal disc_2_base_s       	: disc_2_base_flags;
	signal disc_2_mem_s		   	: disc_2_mem_flags;
	signal disc_2_ref_s       	   : disc_2_ref_flags;	
	signal ref_2_disc_s       	   : ref_2_disc_flags;	
	signal sys_speed_s    	  		: STD_LOGIC_VECTOR(3 downto 0);
	signal speed_sync_s			   : SPEED;
	signal enable_s,en_bypass_s   : STD_LOGIC;
	
	
begin


		button : button_handler port map
									(
									clk					=>clk_s,
									res					=>res_s,
									enable				=>enable,
									enable_bypass     =>en_bypass_s,
									sys_speed    		=>sys_speed_s,
									speed_sync		   =>speed_sync_s
									);
									
	
	  mem   : mem_2port 
									port map
									(
									address_a		     =>a_addr_s, -- base_2_mem_s.mem_a_addr,
									address_b			  =>disc_2_mem_s.mem_b_addr,
									clock		      	  =>clk_s,
									data_a				  =>base_2_mem_s.data_a,
									data_b				  =>disc_2_mem_s.data_b,
									wren_a				  =>base_2_mem_s.mem_wr_en,
									wren_b				  =>disc_2_mem_s.mem_wr_en,
									q_a		  			  =>a_data_s,
									q_b					  =>disc_data_s
									);

	   basis: base_circuit 
									port map
									(
									clk					   =>clk_s,
									res						=>res_s,
									en_disc              =>en_bypass_s,
									cnt_guru_rdy			=>cnt_guru_rdy_s,
									ref_2_base        	=>ref_2_base_s,    		
									disc_2_base    		=>disc_2_base_s,
									start_step  			=>start_step_s,
									en_cnt_step          =>en_cnt_s,
									base_2_ref  			=>base_2_ref_s,
									base_2_mem     		=>base_2_mem_s
									);
									
	 step  : step_counter  
			generic map(
									COUNT_MAX_V8_FAST	   => x"A0",    -- 80 decimal
									COUNT_COUNT_WIDTH 	=> 16     --for test , functional value = 50000000 -1X
									)
									port map
									(
									clk						=> clk_s,
									res						=> res_s,
									speed_sync				=> speed_sync_s,
									en_disc      			=> en_bypass_s,
									en_cnt      	   	=> en_cnt_s,
									cnt_guru_rdy 			=> cnt_guru_rdy_s,
									cnt_disc_rdy  			=> cnt_disc_rdy_s,
									cnt_value				=> cnt_value_s );
				

	ref:  referee                port map
											(
												clk					=>clk_s,
												reset					=>res_s,
												cnt_disc_rdy		=>cnt_disc_rdy_s,
												cnt_guru_rdy		=>cnt_guru_rdy_s,
												guru_addr			=>base_2_ref_s.guru_addr, 
												disc_addr			=>disc_2_ref_s.disc_addr, --disc_addr_s,--
												guru_prev_addr		=>base_2_ref_s.guru_prev_addr,
												disc_prev_addr		=>disc_prev_s, --disc_2_ref_s.disc_prev_addr,
												go_guru				=>ref_2_base_s.go_guru,
												go_disc				=>ref_2_disc_s.go_disc,
												guru_right_behind	=>guru_right_behind_s, --ref_2_disc_s.guru_right_behind,
												duo_formed        =>duo_formed_s
											);
											
	hold:   holder 					port map
											(
												clk					=>clk_s,
												reset					=>res_s,
												inSig					=>duo_formed_s,
												releaseS				=>start_step_s,
												holdedOut         =>duo_formed_held_s
											);
	
	
	--duohold: Duohold_fit 
	--										generic map
	--										(
	--											COUNT_MAX	       => 2
	--										)
	--										port map
	--										(
	--											clk					=>clk_s,
	--											res					=>res_s,
	--											start_step     	=>start_step_s,
	--											cnt_disc_rdy   	=>cnt_disc_rdy_s,
	--											disc_addr_in		=>disc_2_ref_s.disc_addr,
	--											disc_addr_out		=>disc_addr_s
	--										);
										
								
										
	hold2:   holder 					port map
											(
												clk					=>clk_s,
												reset					=>res_s,
												inSig					=>guru_right_behind_s,
												releaseS				=>start_step_s,
												holdedOut         =>ref_2_disc_s.guru_right_behind 
											);	
			
	hold3:   holder 					port map
											(
												clk					=>clk_s,
												reset					=>res_s,
												inSig					=>inSig_s , 
												releaseS				=>release3 , --start_step_s,
												holdedOut         =>disc_2_base_s.end_of_disc
											);									
	

					
				
	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	disc_prev_s       <= disc_2_ref_s.disc_prev_addr when ref_2_disc_s.guru_right_behind  ='0'else "11111111";
   release3          <=  transport start_step_s after 20 ns ;
	inSig_s           <= '1' when disc_2_base.end_of_disc = '1' and start_step_s = '0' and release3 = '0' else '0';
	
	clk_s 						 <= clk;
	res_s 						 <= res;
	
	cnt_disc_rdy      		 <= cnt_disc_rdy_s;
   
   	sys_speed_s              <= sys_speed;
	
	disc_2_mem_s 				 <= disc_2_mem;
	start_step               <= start_step_s;
	--disc_2_base_s				 <= disc_2_base;
	disc_2_ref_s		       <= disc_2_ref;				
	ref_2_disc					 <= ref_2_disc_s;
	
	
	print_rdy                <= cnt_disc_rdy_s when en_bypass_s = '1' and (disc_2_base_s.end_of_disc ='0') else
										 cnt_guru_rdy_s ;     -- for test only
	
	ref_2_disc_s.duo_formed  <= duo_formed_held_s;
	ref_2_base_s.duo_formed  <= duo_formed_held_s;								
			
	mem_a_data					 <= a_data_s;
	--a_addr_s					    <= mem_a_addr ;
	--mem_b_data					 <= disc_data_s;
	
	
	a_addr_s             <= base_2_mem_s.mem_a_addr  when (base_2_mem_s.mem_wr_en='1') else
										 mem_a_addr;
										 
	
	
	
			
end arch;
