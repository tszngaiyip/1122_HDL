library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity counter60 is
port (CLK: in std_logic;
	  CNT_EN: in std_logic;
	  Co: out std_logic;
	  BCD1: out std_logic_vector(3 downto 0);
	  BCD0: out std_logic_vector(3 downto 0));
end counter60;

architecture behavioral of counter60 is
signal countsec1: std_logic_vector(3 downto 0) := "0101"; -- ten-bit
signal countsec0: std_logic_vector(3 downto 0) := "1000"; -- single-bit
begin
	counter60:process(CLK, CNT_EN)
	begin
		if CLK'event and CLK = '1' then
			if CNT_EN = '1' then
				if countsec0 < 9 then
					countsec0 <= countsec0 + 1;
				else
					countsec0 <= "0000";
				end if;
				
				if countsec0 = 9 then
					if countsec1 < 5 then
						countsec1 <= countsec1 + 1;
					else
						countsec1 <= "0000";
					end if;
				end if;
			end if;
		end if;
	end process;
	
	Co <= '1' when countsec1 = 5 and countsec0 = 9 else '0';
	BCD1 <= countsec1;
	BCD0 <= countsec0;
end behavioral;