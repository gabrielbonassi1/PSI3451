library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;


entity rand_num is
    generic
	(
		WIDTH : natural := 8
	);
	port
	(
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		rand_number : out STD_LOGIC_VECTOR(WIDTH-1 downto 0)
	);
end rand_num;

architecture structural of rand_num is
    COMPONENT lfsr
	port
	(
		Q : out STD_LOGIC_VECTOR (11 downto 0);
		clk : in STD_LOGIC;			
		rst : in STD_LOGIC	
	);
	END COMPONENT;

signal s_q	: STD_LOGIC_VECTOR (11 downto 0);

begin
    L0 : lfsr PORT MAP(s_q,clk,rst);
	--ligando os modulos
	rand_number <=  (    0      => s_q(0),
            1      => s_q(1),
            others => '0');
end structural;