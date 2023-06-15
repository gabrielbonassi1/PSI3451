library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.wisdom_package.all;

entity tb_base_circuit_extended is

GENERIC (WIDTH: natural :=8);

end tb_base_circuit_extended;

architecture test of tb_base_circuit_extended is

   component base_circuit_extended is 
		port
		(
		clk					: in  STD_LOGIC;						     --from system
		res					: in  STD_LOGIC;						     --from system
		enable				: in  STD_LOGIC;						      -- from player
		sys_speed    		: in  STD_LOGIC_VECTOR(3 downto 0);  	-- from player
		
		disc_2_base			: in  disc_2_base_flags;					--fom disciple circuit
		disc_2_mem			: in  disc_2_mem_flags;					-- from disc	
		disc_2_ref			: in  disc_2_ref_flags;					-- from disc	
		print_rdy         : out STD_LOGIC;							-- for test only -monitor and VGA
		cnt_disc_rdy      : out STD_LOGIC;
		ref_2_disc			: out ref_2_disc_flags;
		start_step  		: out STD_LOGIC;						--to disciple circuit
		
		mem_a_data	: out STD_LOGIC_VECTOR(7 downto 0);				--to vga interface module
		mem_a_addr	: in STD_LOGIC_VECTOR(5 downto 0)				--to vga interface module
		);
	end  component;


	component stimuli_base_circuit_extended is
		generic
		(
		WIDTH:         NATURAL := 8;
		CLK_PERIOD		: TIME	:=  10ns
		);

		port
		(
		clk					: out  STD_LOGIC;						     --from system
		res					: out  STD_LOGIC;						     --from system
		enable				: out  STD_LOGIC;						      -- from player
		sys_speed    		: out  STD_LOGIC_VECTOR(3 downto 0);  	-- from player
		
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
	end component;
	

	signal clk_s, rst_s                : STD_LOGIC;
	signal enable_s 				: STD_LOGIC;
   signal sys_speed_s		     		  : STD_LOGIC_VECTOR(3 downto 0);
	signal	mem_a_data_s	: STD_LOGIC_VECTOR(7 downto 0);				--to vga interface module
	signal	mem_a_addr_s	: STD_LOGIC_VECTOR(5 downto 0);				--to vga interface module
	signal disc_2_mem_s		   	: disc_2_mem_flags;
	signal ref_2_base_s        	: ref_2_base_flags;
	signal disc_2_base_s       	: disc_2_base_flags;
	signal	disc_2_ref_s			: disc_2_ref_flags;
	signal	ref_2_disc_s			: ref_2_disc_flags;
	signal	print_rdy_s, cnt_disc_rdy_s, start_step_s     : STD_LOGIC;
	
begin


	
	----------------------------------------------	


	-- Instantiate DUT
	dut : base_circuit_extended
		port map
		(
		clk				=> clk_s,			
		res				=> rst_s,
		cnt_disc_rdy 	=>	cnt_disc_rdy_s,
		disc_2_base 	=> disc_2_base_s,
		disc_2_ref 		=> disc_2_ref_s,
		ref_2_disc		=> ref_2_disc_s,
		enable			=> enable_s,
		sys_speed		=> sys_speed_s,	
		print_rdy  		=> print_rdy_s,
		start_step		=> start_step_s,
		disc_2_mem		=> disc_2_mem_s,
		mem_a_data		=> mem_a_data_s,				--to vga interface module
		mem_a_addr		=> mem_a_addr_s				--to vga interface module
		);

	test : stimuli_base_circuit_extended
		port map
		(
		clk				=> clk_s,			
		res				=> rst_s,
		cnt_disc_rdy 	=>	cnt_disc_rdy_s,
		disc_2_base 	=> disc_2_base_s,
		disc_2_ref 		=> disc_2_ref_s,
		ref_2_disc		=> ref_2_disc_s,
		enable			=> enable_s,
		sys_speed		=> sys_speed_s,	
		print_rdy  		=> print_rdy_s,
		start_step		=> start_step_s,
		disc_2_mem		=> disc_2_mem_s,
		mem_a_data		=> mem_a_data_s,				--to vga interface module
		mem_a_addr		=> mem_a_addr_s				--to vga interface module		
		);

end architecture test;