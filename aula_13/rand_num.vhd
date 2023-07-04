library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity rand_num is
	generic
	(
		width : natural := 8
	);
	port(
		clk: in std_logic;
		rst: in std_logic;
		rand_num_output : out std_logic_vector(width-1 downto 0)
	);
end rand_num;

architecture structural of rand_num is
	component lfsr
		port
		(
			Q: out std_logic_vector (11 downto 0); -- vetor Q de 12 bits
			clk: in std_logic;
			rst: in std_logic
		);
	END component;
	signal q_s: std_logic_vector (11 downto 0);
	signal rand_num_temp: std_logic_vector(width - 7 downto 0);
begin
	L0 : lfsr port map(q_s, clk, rst); -- q_s é ligado ao Q_lfsr
	-- Processo para atribuir valores aos elementos do vetor rand_num
	process(clk)
	begin
		-- Loop para percorrer todos os elementos do vetor rand_num
		for i in rand_num_output'range loop
		-- Atribui valores aleatórios para os elementos rand_num_output(0) e rand_num_output(1)
			if i = 0 or i = 1 then
				rand_num_output(i) <= q_s(i);
			else
				rand_num_output(i) <= '0'; -- Atribui '0' para os elementos restantes
			end if;
		end loop;
		-- wait for 3 ns; -- Necessário para evitar warning no Modelsim e garantir que o processo flua
	end process;
end structural;
