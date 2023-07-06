library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is
    port (
        clk     : in std_logic;
        reset   : in std_logic;
        input   : in std_logic_vector(7 downto 0);
        dec     : in std_logic;
        output  : out std_logic_vector(7 downto 0)
    );
end ULA;

architecture Behavioral of ULA is
    signal reg : unsigned(7 downto 0);
begin
    process (clk, reset)
    begin
        if reset = '1' then
            reg <= (others => '0');
        elsif rising_edge(clk) then
            if dec = '1' then
                reg <= reg - 1;
            else
                reg <= unsigned(input);
            end if;
        end if;
    end process;

    output <= std_logic_vector(reg);
end Behavioral;