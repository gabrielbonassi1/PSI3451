library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;


entity lfsr is 
	port
	(
	    Q : out STD_LOGIC_VECTOR (11 downto 0);
	    clk : in STD_LOGIC;			
	    rst : in STD_LOGIC	
	);
	
end lfsr;

architecture arch of lfsr is

    COMPONENT d_reg
	port
	(
	    clk : in STD_LOGIC;
	    load : in STD_LOGIC;
	    d : in STD_LOGIC;
	    q : out STD_LOGIC
	);
	END COMPONENT;

signal s_q : STD_LOGIC_VECTOR (11 downto 0);
signal s_d : STD_LOGIC_VECTOR (11 downto 0);

begin

R1 : for n in 11 downto 0 generate
			--Posicoes dos taps
			w_xor : if (n=10) or (n=9) or (n=8) or (n=7) or (n=6) or (n=5) generate 
				D0 :d_reg port map(clk,'1',s_d(n),s_q(n));
				s_d(n) <= ((s_q(n-1) xor s_q(11)) or rst );
			end generate w_xor;
			
			no_xor : if (n=11) or (n=4) or (n=3) or (n=2) or (n=1) generate
				D1 :d_reg port map(clk,'1',s_d(n),s_q(N));
				s_d(n) <= (s_q(n-1) or rst);
			end generate no_xor;
			
			zero : if n = 0 generate
				D2 :d_reg port map(clk,'1',s_d(n),s_q(n));
				s_d(n) <= (s_q(11) or rst);
			end generate zero;
		
end generate R1;

Q <= s_q;

end architecture arch;