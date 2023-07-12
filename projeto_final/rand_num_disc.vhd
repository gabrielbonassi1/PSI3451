library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity rand_num_disc is
	generic
	(
		width : natural := 8
	);
	port(
		clk: in std_logic;
		rst: in std_logic;
		rand_num_output : out std_logic_vector(width-1 downto 0)
	);
end rand_num_disc;

architecture structural of rand_num_disc is
    COMPONENT lfsr
	port
	(
	Q		        : out STD_LOGIC_VECTOR (11 downto 0);
	clk				: in STD_LOGIC;			
	rst				: in STD_LOGIC	
	);
	END COMPONENT;

signal q_s	: STD_LOGIC_VECTOR (11 downto 0);
signal q2 : std_logic_vector (1 downto 0);
signal rst_s : std_logic;

begin
rst_s <= not rst;
-- liga o sinal q_s ao Q do lfsr
    L0 : lfsr
	PORT MAP(q_s,clk,rst_s);
	
q2(0) <= q_s(0);
q2(1) <= q_s(1);
-- liga o sinal nas saidas concatenando zeros
	rand_num_output <=  (    0      => q_s(0),
						 1      => q_s(1),
						 7		=> '0',
						 6		=> '0',
						 others => '1');
end structural;
