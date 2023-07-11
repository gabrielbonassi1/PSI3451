library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.wisdom_package.all;

entity wisdom_circuit is 
	port
	(
		clk					: in  STD_LOGIC;						     --from system
		res					: in  STD_LOGIC;						     --from system
		enable				: in  STD_LOGIC;						      -- from player
		sys_speed    		: in  STD_LOGIC_VECTOR(3 downto 0);  	-- from player
		
		--for test only 
		print_rdy         : out STD_LOGIC;  
		start_step  		: out STD_LOGIC;								--to button block
		
		--to vga interface module
		mem_a_data			: out STD_LOGIC_VECTOR(7 downto 0);				
		mem_a_addr			: in STD_LOGIC_VECTOR(5 downto 0)	
		
	);
end  wisdom_circuit;



architecture arch of  wisdom_circuit is


	component base_circuit_extended is 
		port
		(
			clk					: in  STD_LOGIC;						     --from system
			res					: in  STD_LOGIC;						     --from system
			enable				: in  STD_LOGIC;						      -- from player
			sys_speed    		: in  STD_LOGIC_VECTOR(3 downto 0);  	-- from player
			
			disc_2_base			: in  disc_2_base_flags;					--fom disciple circuit
			disc_2_mem			: in  disc_2_mem_flags;					   -- from referee	
			disc_2_ref			: in  disc_2_ref_flags;					   -- from referee	
			
			print_rdy         : out STD_LOGIC;                    	-- from vga interface module  -- for test only
			cnt_disc_rdy      : out STD_LOGIC;
			ref_2_disc			: out ref_2_disc_flags;
			start_step  		: out STD_LOGIC;						      --to disciple circuit
			-- vga interface module
			mem_a_data	: out STD_LOGIC_VECTOR(7 downto 0);				
			mem_a_addr	: in STD_LOGIC_VECTOR(5 downto 0)  

			
		);
	end  component;
	 	
	component disciple_circuit is 
   	 generic
		(
			WIDTH						: NATURAL	:= 8
		);
		port
		(
			clock							: in  STD_LOGIC;						
			reset							: in  STD_LOGIC;						
			cnt_disc_rdy				: in  STD_LOGIC;	
			start_step     			: in  STD_LOGIC;	
			go_disc           		: in  STD_LOGIC;
			
			duo_formed        		: in  STD_LOGIC;
			guru_right_behind  		: in  STD_LOGIC;
			
			end_of_disciple			: out STD_LOGIC;
			disc_wr_en 		 			: out STD_LOGIC;
			disc_data       			: out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
			disc_address_to_mem     : out STD_LOGIC_VECTOR(WIDTH-3 downto 0);
			disc_address       		: out STD_LOGIC_VECTOR(WIDTH-3 downto 0);
			disc_address_prev  		: out STD_LOGIC_VECTOR(WIDTH-3 downto 0)
		);
	end component;

	


--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************

   signal clk_s, res_s, print_rdy_s           : STD_LOGIC;
	signal cnt_disc_rdy_s      				    : STD_LOGIC;
	signal start_step_s 							    : STD_LOGIC;		
	signal disc_2_base_s       					 : disc_2_base_flags;
	signal disc_2_mem_s		   				    : disc_2_mem_flags;
	signal disc_2_ref_s       	                : disc_2_ref_flags;	
	signal ref_2_disc_s       	   			    : ref_2_disc_flags;	
	signal mem_a_data_s								 : STD_LOGIC_VECTOR(7 downto 0);				--to vga interface module
	signal mem_a_addr_s,disc_address_s,disc_address_prev_s	: STD_LOGIC_VECTOR(5 downto 0):="000000";
	
begin

	cir1 : base_circuit_extended port map
													(
														clk					=>clk_s,
														res					=>res_s,
														enable			   =>enable,
														sys_speed			=>sys_speed,				
														disc_2_base			=>disc_2_base_s,
														disc_2_mem			=>disc_2_mem_s,
														disc_2_ref        =>disc_2_ref_s,
														print_rdy			=>print_rdy_s , 
														start_step        =>start_step_s,
														cnt_disc_rdy		=>cnt_disc_rdy_s,
														ref_2_disc        =>ref_2_disc_s,
														mem_a_data	      => mem_a_data_s,
														mem_a_addr			=> mem_a_addr_s
														);
		
		
	cir2 : disciple_circuit 				port map
														(
														clock						=>clk_s,
														reset						=>res_s,					
														cnt_disc_rdy			=>cnt_disc_rdy_s,
														start_step        	=>start_step_s,	
														go_disc          		=>ref_2_disc_s.go_disc,
														
														duo_formed        	=>ref_2_disc_s.duo_formed,
														guru_right_behind  	=>ref_2_disc_s.guru_right_behind,
														
														end_of_disciple 		=>disc_2_base_s.end_of_disc ,
														disc_wr_en 		 		=>disc_2_mem_s.mem_wr_en,
														disc_data       		=>disc_2_mem_s.data_b,
														disc_address_to_mem	=>disc_2_mem_s.mem_b_addr,
														disc_address      	=>disc_address_s,
														disc_address_prev 	=>disc_address_prev_s
														);
													
	
	
	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	clk_s 						 <= clk;
	res_s 						 <= res;
	start_step               <= start_step_s;
	print_rdy        			 <= print_rdy_s;
	mem_a_data					 <= mem_a_data_s;
	mem_a_addr_s <= mem_a_addr;
	disc_2_ref_s.disc_addr        <="00"&disc_address_s;	
	disc_2_ref_s.disc_prev_addr   <="00"&disc_address_prev_s;	
				
	
									
end arch;