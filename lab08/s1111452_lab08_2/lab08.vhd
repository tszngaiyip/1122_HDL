library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab08 is
    port
    (
        clk, clrn : in std_logic;
        Q : out std_logic_vector(1 downto 0) -- Assuming 2-bit output
    );
end lab08;

architecture Behavioral of lab08 is
    signal count : std_logic_vector(1 downto 0); -- Internal signal for counting
begin
    process(clk, clrn)
    begin
        if clrn = '0' then -- Asynchronous clear
            count <= "00";
        elsif rising_edge(clk) then
            if count = "11" then
                count <= "00";
            else
                count <= count + 1; -- Synchronous increment
            end if;
        end if;
    end process;

    Q <= count; -- Output the count value
end Behavioral;
