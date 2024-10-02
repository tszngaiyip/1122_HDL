library IEEE;
use IEEE.std_logic_1164.all;

entity fbcd7seg is
port (CLK : in std_logic;
	  BCD : in std_logic_vector(3 downto 0);
	  HEX : out std_logic_vector(6 downto 0));
end fbcd7seg;

architecture behavioral of fbcd7seg is

signal dis : std_logic_vector(6 downto 0);
begin
	synhex : process(CLK, BCD)
	begin
		if CLK'event and CLK = '1' then
			case BCD is
				when "0000" => dis <= "1000000"; -- 0
				when "0001" => dis <= "1111001"; -- 1
				when "0010" => dis <= "0100100"; -- 2
				when "0011" => dis <= "0110000"; -- 3
				when "0100" => dis <= "0011001"; -- 4
				when "0101" => dis <= "0010010"; -- 5
				when "0110" => dis <= "0000010"; -- 6
				when "0111" => dis <= "1111000"; -- 7
				when "1000" => dis <= "0000000"; -- 8
				when others => dis <= "0010000"; -- 9
			end case;
		end if;
	end process;

	HEX <= dis;
end behavioral;