library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.wisdom_package.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity tb_disciple is

GENERIC (WIDTH: natural :=8);

end tb_disciple;

architecture test of tb_disciple is

   component disciple_circuit is 
		generic
		(
		WIDTH				   : NATURAL	:= 8
		);
		port
		(
		clk					: in  STD_LOGIC;						
		res					: in  STD_LOGIC;						
	    cnt_disc_rdy		: in  STD_LOGIC;						--from counter
	    start_step     		: in  STD_LOGIC;					
		go_disc           	: in  STD_LOGIC;	
		duo_formed        	: in  STD_LOGIC;
		guru_right_behind  	: in  STD_LOGIC;
		end_of_disc			: out STD_LOGIC;
		disc_wr_en 		 	: out STD_LOGIC;
		disc_data       	: out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	    disc_address_2_mem  : out STD_LOGIC_VECTOR(WIDTH-3 downto 0);
		disc_addr       	: out STD_LOGIC_VECTOR(WIDTH-3 downto 0);
		disc_addr_prev  	: out STD_LOGIC_VECTOR(WIDTH-3 downto 0)
		);
	end  component;

	component stimuli_disciple is					   --besides stimuli generation, also aimed to for phase printing
		generic
		(
		WIDTH:         NATURAL := 8;
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
		end_of_disciple		:  in  STD_LOGIC;
		wr_en             : in  STD_LOGIC;
		write_fifo_number_1 	: out  INTEGER
		
		);
	end component;
	
	
	component message_print
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
	end component;
	
	
	
	component Alert_gen is

		port
		(						
		clk				: in  STD_LOGIC;	
		fase           	: in  INTEGER;
		wr_en             : in  STD_LOGIC;		
	   mem_data       	: in  STD_LOGIC_VECTOR(7 downto 0);
	   mem_addr       	: in  STD_LOGIC_VECTOR(5 downto 0);
		alert_check       : in  STD_LOGIC;	
		data_out       	: out  STD_LOGIC_VECTOR(7 downto 0);
	   addr_out       	: out  STD_LOGIC_VECTOR(5 downto 0);
		alert				   : out STD_LOGIC
		);
	end component  ;
	
	component Alert_check is           --aimed to verify address an data write conditions conditions for printing

		port
		(							
		fase           	: in  INTEGER;
		alert				   : in  STD_LOGIC;
		alert_check       : out STD_LOGIC;	
		duo_formed        : in  STD_LOGIC;
	   guru_right_behind  : in  STD_LOGIC;
		disc_addr       	: in STD_LOGIC_VECTOR(5 downto 0);
		disc_prev_addr  	: in STD_LOGIC_VECTOR(5 downto 0);
	   data_out       	: in  STD_LOGIC_VECTOR(7 downto 0);
	   addr_out       	: in  STD_LOGIC_VECTOR(5 downto 0);
		write_fifo_number_2		: out INTEGER;
		write_fifo_address		: out INTEGER
		);

	end component  ;
	
	component step_addr_check is       --aimed to verify address conditions for printing
	
		port
		(							
		fase           	: in  INTEGER;
		step_check_time   : in  STD_LOGIC;
		end_of_disc		: in  STD_LOGIC;
	   disc_addr       	: in  STD_LOGIC_VECTOR(5 downto 0);
	   disc_prev_addr  	: in  STD_LOGIC_VECTOR(5 downto 0);
		write_fifo_number_3	: out INTEGER
		);

	end component  ;


	signal clk_s, rst_s, start_step_s ,alert_check_s: STD_LOGIC;
	signal guru_right_behind_s			  : STD_LOGIC;	
	signal go_disc_s, alert_s    		  : STD_LOGIC;	
	signal duo_formed_s				     : STD_LOGIC;
	signal cnt_disc_rdy_s      	     : STD_LOGIC;
	signal end_of_disc_s				: STD_LOGIC;
	signal disc_wr_en_s  				  : STD_LOGIC;
	signal disc_data_s  					  : STD_LOGIC_VECTOR(7 downto 0);
	signal disc_address_to_mem_s   				     : STD_LOGIC_VECTOR(5 downto 0);
	signal disc_address_s   				  : STD_LOGIC_VECTOR(5 downto 0);
	signal disc_address_prev_s				  : STD_LOGIC_VECTOR(5 downto 0);
	signal step_check_time_s			  : STD_LOGIC;
	signal fase_s                      : integer;
	signal data_out_s       			  : STD_LOGIC_VECTOR(7 downto 0);
	signal addr_out_s 			        : STD_LOGIC_VECTOR(5 downto 0);
	signal	write_fifo_number_1_s, write_fifo_number_2_s, write_fifo_number_3_s, write_fifo_address_s 	: INTEGER;
	
	file l_file			   : TEXT open write_mode is string'("disc_log.txt");
	
begin

	
	
-- Instantiate DUT
		
	dut : disciple_circuit
		port map
		(
		clk				=> clk_s,			
		res				=> rst_s,
		cnt_disc_rdy   => cnt_disc_rdy_s,
		start_step     => start_step_s,
		go_disc		 	=> go_disc_s,
		duo_formed	   => duo_formed_s,
		guru_right_behind    => guru_right_behind_s,
		end_of_disc  	=> end_of_disc_s,
		disc_wr_en 		 => disc_wr_en_s,
		disc_data        => disc_data_s,
		disc_address_2_mem        => disc_address_to_mem_s,
		disc_addr       => disc_address_s,	
		disc_addr_prev  => disc_address_prev_s
		);

	stim : stimuli_disciple
		port map
		(
		clk					=> clk_s,			
		rst					=> rst_s,
		cnt_disc_rdy   	=> cnt_disc_rdy_s,
		start_step     	=> start_step_s,
		go_disc		 		=> go_disc_s,
		duo_formed	   	=> duo_formed_s,
		step_check_time 	=> step_check_time_s,
		fase            	=> fase_s,
		guru_right_behind  => guru_right_behind_s,
		end_of_disciple  	=> end_of_disc_s,
		wr_en 		      => disc_wr_en_s,
		write_fifo_number_1 => write_fifo_number_1_s
		);
	
	msg_print : message_print
		port map
		(
		clk					=> clk_s,	
		fase            	=> fase_s,
		write_fifo_number_1 =>  write_fifo_number_1_s,		
		write_fifo_number_2 =>  write_fifo_number_2_s,
		write_fifo_number_3 => write_fifo_number_3_s,
		write_fifo_address 	=> write_fifo_address_s
		);	
	
	alrt: Alert_gen 

		port map
		(				
		clk				=>  clk_s,
		fase            	=> fase_s,
		alert_check       => alert_check_s,
		wr_en 		      => disc_wr_en_s,
		mem_data          => disc_data_s,
		mem_addr          => disc_address_to_mem_s,
		data_out          => data_out_s,
		addr_out          => addr_out_s,
		alert				=> alert_s
		);
			
	alt_check:  Alert_check 

		port map
		(							
		fase            	=> fase_s,
		alert				   => alert_s,
		alert_check       => alert_check_s,
		duo_formed	      => duo_formed_s,
		guru_right_behind  => guru_right_behind_s, 	
		disc_addr       	=> disc_address_s,	
		disc_prev_addr  	=> disc_address_prev_s,
		data_out          => data_out_s,
		addr_out          => addr_out_s,
		write_fifo_number_2	=> 		write_fifo_number_2_s,
		write_fifo_address	=> 		write_fifo_address_s
		);		
		
	addr_check: step_addr_check 
	
		port map
		(								
		fase            	=> fase_s,
		step_check_time   => step_check_time_s,
		end_of_disc 		=> end_of_disc_s,
	   disc_addr       	=> disc_address_s,	
		disc_prev_addr  	=> disc_address_prev_s,
		write_fifo_number_3	=> 		write_fifo_number_3_s
		);	
end architecture test;