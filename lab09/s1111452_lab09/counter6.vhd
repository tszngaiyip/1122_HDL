library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter6 is
	port
	(
		load ,en, clrn, clk : in std_logic;
		D : in std_logic_vector(2 downto 0);
		Q : out std_logic_vector(2 downto 0);
		Co : out std_logic
	);
end counter6;

architecture c6 of counter6 is
	signal count : std_logic_vector(2 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if clrn = '1' then -- Asynchronous Clear
                count <= (others => '0');
                Co <= '0';
            elsif en = '1' then -- Synchronous Enable
                if load = '1' then -- Synchronous Load
                    count <= D;
                    Co <= '0';
                else
                    if count = "110" then
                        count <= (others => '0');
                        Co <= '1';
                    else
                        count <= count + 1;
                        Co <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;

    Q <= count;
end c6;