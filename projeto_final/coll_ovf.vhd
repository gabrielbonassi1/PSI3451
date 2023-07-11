library IEEE;
use IEEE.std_logic_1164.all;
use work.wisdom_package.all;

entity coll_ovf is 
	port
	(
	clk			   : in  STD_LOGIC;											--from system
	res				: in  STD_LOGIC;										   --from system
   guru_addr     	: in  STD_LOGIC_VECTOR(7 downto 0);
	ctrl_flags		: out dp_2_ctrl_flags							     	--to control unit
	);
end coll_ovf;


architecture arch of coll_ovf is



--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************

signal guru_addr_s		  : STD_LOGIC_VECTOR(7 downto 0);
signal ctrl_flags_s       : dp_2_ctrl_flags;

begin
	
	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	guru_addr_s <= guru_addr;

	ctrl_flags_s.end_of_guru <= '1' when guru_addr_s(3)='1' else '0';
	ctrl_flags_s.ovf_of_y    <= '1' when guru_addr_s(6)='1' else '0';
   ctrl_flags <= ctrl_flags_s;
	
end arch;
