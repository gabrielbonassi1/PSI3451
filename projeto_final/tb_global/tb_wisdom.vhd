library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.wisdom_package.all;

entity tb_wisdom is

GENERIC (WIDTH: natural :=8);

end tb_wisdom;

architecture test of tb_wisdom is

   component wisdom_circuit is 
		port
		(
			clk					: in  STD_LOGIC;						     
			res					: in  STD_LOGIC;						     
			enable				: in  STD_LOGIC;						      
			sys_speed    		: in  STD_LOGIC_VECTOR(3 downto 0);  
				--for test only
			print_rdy         : out STD_LOGIC;  
			start_step  		: out STD_LOGIC;		
				--to vga interface module
			mem_a_data			: out STD_LOGIC_VECTOR(7 downto 0);				
			mem_a_addr			: in  STD_LOGIC_VECTOR(5 downto 0)	
		);
	end  component;

	component stimuli_wisdom is
		generic
		(
			WIDTH:         NATURAL := 8;
			CLK_PERIOD		: TIME	:=  10ns
		);

		port
		(
			clk					: out  STD_LOGIC;						     
			rst					: out  STD_LOGIC;						    
			enable				: out  STD_LOGIC;						     
			sys_speed    		: out  STD_LOGIC_VECTOR(3 downto 0);  
			start_step  		: in   STD_LOGIC								
		);
	end component;

	component map_monitor is 
		generic
		(
		COR_WIDTH		: NATURAL	:= 3;
		log_file		   : string	   := "wisdom_log.txt"
		);

		port
		(
		mon_clk		: in STD_LOGIC;
		print_rdy	: in STD_LOGIC;
		game_over	: in STD_LOGIC;
		mem_b_data	: in STD_LOGIC_VECTOR(7 downto 0);				   --to vga interface module
		mem_b_addr	: out STD_LOGIC_VECTOR(2*COR_WIDTH-1 downto 0)	--from vga interface module
		);
	end component;

	
	signal clk_s, rst_s, print_rdy_s, game_over_s: STD_LOGIC;
	signal enable_s,start_step_s  	  				: STD_LOGIC;
   signal sys_speed_s		     		  				: STD_LOGIC_VECTOR(3 downto 0);
	signal mem_a_data_s									: STD_LOGIC_VECTOR(7 downto 0);				
	signal mem_a_addr_s									: STD_LOGIC_VECTOR(5 downto 0);	

begin

	-- Instantiate DUT
	dut : wisdom_circuit
		port map
		(
		clk				=> clk_s,			
		res				=> rst_s,		
		enable			=> enable_s,
		sys_speed		=> sys_speed_s,	
		print_rdy      => print_rdy_s, 
		start_step		=> start_step_s,
			--to vga interface module
		mem_a_data		=> mem_a_data_s,		
		mem_a_addr		=> mem_a_addr_s
		);

	test : stimuli_wisdom
		port map
		(
		clk				=> clk_s,			
		rst				=> rst_s,		
		enable			=> enable_s,
		sys_speed		=> sys_speed_s,	
		start_step		=> start_step_s
		);

	lol  : map_monitor 
		port map
		(
		mon_clk				=> clk_s,
		print_rdy	   => print_rdy_s,
		game_over		=> game_over_s,
		mem_b_data		=> mem_a_data_s,		
		mem_b_addr		=> mem_a_addr_s
		);

		
		
		
end architecture test;