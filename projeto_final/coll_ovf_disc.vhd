library IEEE;
use IEEE.std_logic_1164.all;
use work.wisdom_package.all;

entity coll_ovf_disc is 
	port
	(
	    clk			    : in  STD_LOGIC;											
	    res				: in  STD_LOGIC;										  
        disc_addr     	: in  STD_LOGIC_VECTOR(7 downto 0);
	    end_of_disc		: out STD_LOGIC							     	
	);
end coll_ovf_disc;


architecture arch of coll_ovf_disc is


signal disc_addr_s		  : STD_LOGIC_VECTOR(7 downto 0);

begin

	disc_addr_s <= disc_addr;

	end_of_disc	<= '1' when (disc_addr_s(6)='1' or disc_addr_s(7)= '1') else '0';
	
end arch;