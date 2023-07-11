library IEEE;
use IEEE.std_logic_1164.all;
use std.textio.all;

entity map_monitor is 
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
	mem_b_data	: in STD_LOGIC_VECTOR(7 downto 0);				--to vga interface module
	mem_b_addr	: out STD_LOGIC_VECTOR(2*COR_WIDTH-1 downto 0)	--from vga interface module
	);
end map_monitor;


architecture arch of map_monitor is

--***********************************
--*	TYPE DECLARATIONS				*
--***********************************

file l_file		: TEXT open append_mode is log_file;


--***********************************
--*	COMPONENT DECLARATIONS			*
--***********************************

component address_counter
   generic
   (
   WIDTH	: natural	:= 6
   );
   
   port
   	(
 	clk		: in std_logic;
 	res		: in std_logic;
	addr	   : out std_logic_vector(WIDTH-1 downto 0);
	cnt_done: out std_logic
	);
end component;

--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************
signal mem_b_addr_s			: STD_LOGIC_VECTOR(2*COR_WIDTH-1 downto 0);
signal print_done_s,  print_done2_s			: STD_LOGIC :='0';
signal cnt_res_s	, print_rdy_s		: STD_LOGIC;

signal str_of_field_s		: string(1 to 1);
signal written_s			: STD_LOGIC	:= '0';

signal print_rdy_delay_s	: STD_LOGIC	:= '0';
signal print_done_delay_s	: STD_LOGIC	:= '0';


begin

	--*******************************
	--*	COMPONENT INSTANTIATIONS	*
	--*******************************

	addr_cnt:	address_counter	generic map
								(	
								WIDTH	=> 6
								)
							   
								port map
								(
								clk			=> mon_clk,
								res			=> cnt_res_s,
								addr		=> mem_b_addr_s,
								cnt_done	=> print_done_s
								);
	


	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	cnt_res_s	<= print_rdy;	
	mem_b_addr	<= mem_b_addr_s;
	
	--*******************************
	--*	PROCESS DEFINITIONS			*
	--*******************************
	done: process
				begin 
								wait until print_done_s = '1';
								print_done2_s <= '1';
								wait for 10 ns;
								print_done2_s <= '0';
					
			end process;
	
	print: process(print_rdy,print_done2_s)
					begin
						if  print_rdy = '1' then
								print_rdy_s <= '1';
						elsif(print_done_s='0') then
								print_rdy_s <= '1';
						else
							print_rdy_s <= '0';
						end if;
				end process;
	
	
	--basic process
	process(mem_b_data)
		begin
			case (mem_b_data) is

				when "00000001"	=>	str_of_field_s <= ".";
				when "00000100"	=>	str_of_field_s <= "^";
				when "00000010"	=>	str_of_field_s <= ">";
				when "00001000"	=>	str_of_field_s <= "O";
				when others		=>	str_of_field_s <= "X";
			end case;
	end process;

	--sequential clock driven process
	process(mon_clk)
		variable f_status: FILE_OPEN_STATUS;
		variable row    	   : line;
		variable preamble	   : line;
		variable go_str		: line;
		variable border		: line;
		variable border_lr   : string(1 to 1) := "|";
		
		begin
			if mon_clk'event and mon_clk = '1' then
			
				if(game_over = '1') then
						writeline(l_file, go_str);
				end if;	
				
				if(print_rdy_delay_s = '1') then
					if(print_done_delay_s = '0') then
						write(row,str_of_field_s, right, 0);
						if(mem_b_addr_s(2 downto 0) = "000") then
							write(row, border_lr & LF & border_lr, right, 0);
						end if;
					elsif(written_s = '0') then
						written_s <= '1';
						file_open (f_status, l_file, "wisdom_log.txt", append_mode);
						writeline(l_file, preamble);
						write(row,border_lr, right, 0);
						writeline(l_file, row);
						writeline(l_file, border);
						file_close (l_file);
					end if;
				else
					row			:= new string'(border_lr);
					border		:= new string'("__________");
					preamble	:= new string'(LF & "----------NEXT STEP----------" & LF & LF & "__________");
					go_str		:= new string'("*********************" & LF & "*     GAME OVER     *" & LF & "*********************");
					written_s	<='0';
				end if;	
			end if;
	end process;
	
	
	print_rdy_delay_s  <= transport print_rdy_s after 30 ns;
	print_done_delay_s <= transport print_done_s after 20 ns;
	
	
end arch;

