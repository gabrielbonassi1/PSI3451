library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.wisdom_package.all;

entity Alert_gen is

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

end Alert_gen ;

architecture test of Alert_gen  is

type rx  is array (0 to 10) of STD_LOGIC_VECTOR(5 downto 0);
type ry  is array (0 to 10) of STD_LOGIC_VECTOR(7 downto 0);
signal addr : rx;
signal data : ry;

signal count_s : integer :=100;
signal fase_s  : std_logic := '0';
signal data_out_s       	:   STD_LOGIC_VECTOR(7 downto 0);
signal addr_out_s       	:   STD_LOGIC_VECTOR(5 downto 0);
signal alert_s 			   : 	 STD_LOGIC;
signal clk_delayed			: 	 STD_LOGIC;
signal wr_en_by_clock		:  STD_LOGIC;   -- to check clock transitions with wr_en;

begin
	 data_out       	<= data_out_s;
	addr_out        	<=addr_out_s;
	alert 				<=alert_s;
	clk_delayed			<= clk after 1 ns; 
	wr_en_by_clock 		<= wr_en and clk_delayed;

	fase_change: process
						begin
							
							wait on fase;
							fase_s <= '1';
							wait for 10 ns;
							fase_s <= '0';
					end process;		
						
	alerts :   process(wr_en_by_clock,fase_s)
						variable count : integer;
						
						begin
							if fase_s = '1' then
									count := 0;
									addr(count)  <= mem_addr; 			
									data(count)  <= mem_data; 
									count_s      <= count;	
								
							end if;
							if (wr_en_by_clock ='1' and count < 200) then    -- 200 eh o valor maximo de contagem
								
								count 	    := count+1;
								addr(count)  <= mem_addr; 			
								data(count)  <= mem_data; 
								count_s      <= count;	
								
							end if;	
					end process alerts;
				
--	interface : process 
	interface : process (clk, fase_s)
						variable count : integer := 0;
						variable incr  : integer := 0;
 						begin
							if (fase_s'event and fase_s='1') then
							incr := 0;
							end if;
							
							if (clk'event and clk ='1') then
--							alert_s <= '0';
--							wait on count_s; 
							 	if (count_s /= incr ) then
--								alert_s <= '1';
--								wait for 10 ns;
								incr := incr+1;
								addr_out_s <= addr(incr);
								data_out_s <= data(incr);
--								wait until (alert_check = '1'  or fase_s = '0') ;
--								wait until (alert_check = '1') ;
--								alert_s <= '0';
--								alert_s <= '0';

								end if;	
							end if;							
					end process interface;		
	
	alert_out : process 
				begin

				alert_s <= '0';
				wait for 1 ns;
				wait on count_s ; 
				if (count_s /= 0) then
				wait for 4 ns;
					alert_s <= '1';
					wait until alert_check = '1';
				end if;

				end process alert_out;

	
end architecture test;