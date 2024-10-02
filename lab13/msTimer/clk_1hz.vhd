library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity clk_1hz is
port(CLK_50M: in std_logic;
	 CLK_1: out std_logic);
end clk_1hz;

architecture art of clk_1hz is
signal countsec : std_logic_vector(31 downto 0) := (others => '0');
signal temp: std_logic := '0';
begin
	clk_counter: process (CLK_50M, temp)
	begin
		if CLK_50M'event and CLK_50M = '1' then
			if countsec < 49999999 then
				countsec <= countsec + 1;
			else
				countsec <= (others => '0');
			end if;
			
			if countsec = 25000000 or countsec = 0 then
				temp <= not temp;
			end if;
		end if;
	end process;
	CLK_1 <= temp;
end art;
