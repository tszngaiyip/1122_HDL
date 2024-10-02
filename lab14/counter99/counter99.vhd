library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity counter99 is
port(clk: in std_logic;
	 upcnt: in std_logic;
	 downcnt: in std_logic;
	 rst: in std_logic;
	 hex0: out std_logic_vector(6 downto 0);
	 hex1: out std_logic_vector(6 downto 0));
end counter99;

architecture behavioral of counter99 is
signal count: std_logic_vector(31 downto 0) := (others => '0');
signal temp: std_logic := '0';
signal countsec1: std_logic_vector(3 downto 0) := "0000"; -- ten-bit
signal dis1 : std_logic_vector(6 downto 0);
signal countsec0: std_logic_vector(3 downto 0) := "0000"; -- single-bit
signal dis0 : std_logic_vector(6 downto 0);
begin
	clk_counter: process (clk, temp)
	begin
		if clk'event and clk = '1' then
			if count < 10000000 then
				count <= count + 1;
			else
				count <= (others => '0');
			end if;
			if count = 5000000 or count = 0 then
				temp <= not temp;
			end if;
		end if;
	end process;
	
	counter60:process(clk,temp)
	begin
	if rising_edge(temp) then
		if rst = '0' then
			countsec1 <= "0000";
			countsec0 <= "0000";
		elsif upcnt = '0' then
			if countsec0 < 9 then
				countsec0 <= countsec0 + 1;
			else
				countsec0 <= "0000";
			end if;
			
			if countsec0 = 9 then
				if countsec1 < 9 then
					countsec1 <= countsec1 + 1;
				else
					countsec1 <= "0000";
				end if;
			end if;
		elsif downcnt = '0' then
			if countsec0 > 0 then
				countsec0 <= countsec0 - 1;
			else
				countsec0 <= "1001";
			end if;
				
			if countsec0 = 0 then
				if countsec1 > 0 then
					countsec1 <= countsec1 - 1;
				else
					countsec1 <= "1001";
				end if;
			end if;
		end if;
	end if;
	end process;
	
	synhex : process(clk, countsec1, countsec0)
	begin
		if CLK'event and CLK = '1' then
			case countsec1 is
				when "0000" => dis1 <= "1000000"; -- 0
				when "0001" => dis1 <= "1111001"; -- 1
				when "0010" => dis1 <= "0100100"; -- 2
				when "0011" => dis1 <= "0110000"; -- 3
				when "0100" => dis1 <= "0011001"; -- 4
				when "0101" => dis1 <= "0010010"; -- 5
				when "0110" => dis1 <= "0000010"; -- 6
				when "0111" => dis1 <= "1111000"; -- 7
				when "1000" => dis1 <= "0000000"; -- 8
				when others => dis1 <= "0010000"; -- 9
			end case;
			
			case countsec0 is
				when "0000" => dis0 <= "1000000"; -- 0
				when "0001" => dis0 <= "1111001"; -- 1
				when "0010" => dis0 <= "0100100"; -- 2
				when "0011" => dis0 <= "0110000"; -- 3
				when "0100" => dis0 <= "0011001"; -- 4
				when "0101" => dis0 <= "0010010"; -- 5
				when "0110" => dis0 <= "0000010"; -- 6
				when "0111" => dis0 <= "1111000"; -- 7
				when "1000" => dis0 <= "0000000"; -- 8
				when others => dis0 <= "0010000"; -- 9
			end case;
		end if;
	end process;
	
	hex1 <= dis1;
	hex0 <= dis0;
end behavioral;