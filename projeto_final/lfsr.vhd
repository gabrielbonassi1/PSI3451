-- LFSR de Lucas Paiva da Costa: 10335465
-- Dupla: Gabriel Bonassi (11256816) e Lucas Paiva

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity lfsr is
	port
	(
		Q: out std_logic_vector (11 downto 0); -- Saída do LFSR
		clk: in std_logic; -- Sinal de clock
		rst: in std_logic -- Sinal de reset
	);
end lfsr;

architecture lfsr_arch of lfsr is
	component d_reg
		port
		(
			clk : in std_logic; -- Sinal de clock
			load : in std_logic; -- Sinal de carregamento do registro
			d : in std_logic; -- Dado de entrada
			q : out std_logic -- Saída do registro
		);
	end component;
	signal q_s: std_logic_vector (11 downto 0) := (others => '1'); -- Inicializa o sinal com '1's
	signal d_s: std_logic_vector (11 downto 0);
	
begin
	-- Geração do LFSR: equação: x^12 + x^11 + x^8 + x^7 + x^6 + x^4 + x + 1
	generate_lfsr : for n in 11 downto 0 generate
		with_tap: if n = 11 or n = 8 or n = 7 or n = 6 or n = 4 or n = 1 generate
			D0: d_reg port map(clk, '1', d_s(n), q_s(n)); -- Instanciação do registrador com carregamento constante '1'
			d_s(n) <= ((q_s(n-1) xor q_s(11)) or rst );
		end generate with_tap;
	
		without_tap: if n = 10 or n = 9 or n = 5 or n = 3 or n = 2 generate
			D1: d_reg port map(clk, '1', d_s(n), q_s(n)); -- Instanciação do registrador com carregamento constante '1'
			d_s(n) <= (q_s(n-1) or rst);
		end generate without_tap;
		
		zero: if n = 0 generate
			D2: d_reg port map(clk, '1', d_s(n), q_s(n)); -- Instanciação do registrador com carregamento constante '1'
			d_s(n) <= (q_s(11) or rst);
		end generate zero;
	end generate generate_lfsr;
	Q <= q_s; -- Atribui o valor atual do sinal q_s à saída Q do LFSR
end architecture lfsr_arch;