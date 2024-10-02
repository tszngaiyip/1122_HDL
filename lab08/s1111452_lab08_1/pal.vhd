library ieee;
use ieee.std_logic_1164.all;

entity pal is
    port
    (
        clrn, clk, Ldn, Sh : in std_logic;
        Di : in std_logic;
        D3, D2, D1, D0 : in std_logic;
        Q3, Q2, Q1, Q0 : buffer std_logic
    );
end pal;

architecture Behavioral of pal is
begin
    process(clk, clrn, Ldn, Sh, Di, D3, D2, D1, D0)
    begin
        if clrn = '0' then
            Q3 <= '0';
            Q2 <= '0';
            Q1 <= '0';
            Q0 <= '0';
        else
            if rising_edge(clk) and Ldn='1' then
                Q3 <= D3;
                Q2 <= D2;
                Q1 <= D1;
                Q0 <= D0;
                elsif rising_edge(clk) and Ldn='0' then
                    if Sh = '1' then
                        Q3 <= Di;
                        Q2 <= Q3;
                        Q1 <= Q2;
                        Q0 <= Q1;
                    else
                        Q3 <= D3;
                        Q2 <= D2;
                        Q1 <= D1;
                        Q0 <= D0;
                end if;
            end if;
        end if;
    end process;
end Behavioral;