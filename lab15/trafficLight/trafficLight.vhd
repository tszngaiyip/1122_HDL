library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity trafficLight is
port(clk: in std_logic;
	 LED: out std_logic_vector(2 downto 0);
	 HEX0: out std_logic_vector(6 downto 0));
end trafficLight;

architecture st of trafficLight is
signal count: std_logic_vector(31 downto 0) := (others => '0');
signal temp: std_logic := '0';
signal dis : std_logic_vector(6 downto 0);
signal syscount: std_logic_vector(3 downto 0) := "1100";
signal disseg: std_logic_vector(3 downto 0);
begin
	clk_counter: process (clk, temp)
	begin
		if clk'event and clk = '1' then
			if count < 49999999 then
				count <= count + 1;
			else
				count <= (others => '0');
			end if;
			
			if count = 25000000 or count = 0 then
				temp <= not temp;
			end if;
		end if;
	end process;
	
	counter12:process(temp)
	begin
		if rising_edge(temp) then
			if syscount > 1 then
				syscount <= syscount - 1;
			else
				syscount <= "1100";
			end if;
		end if;
	end process;
	
	LEDdisplsy:process(temp,syscount)
	begin
		if rising_edge(temp) then
			if syscount < 13 and syscount > 7 then
				LED(0) <= '1';
			else
				LED(0) <= '0';
			end if;
		
			if syscount < 8 and syscount > 5 then
				LED(1) <= '1';
			else
				LED(1) <= '0';
			end if;
		
			if syscount < 6 and syscount > 0 then
				LED(2) <= '1';
			else
				LED(2) <= '0';
			end if;
		end if;
	end process;
	
	synhex : process(temp, disseg)
	begin
		if temp'event and temp = '1' then
			case syscount is
				when "1100" => dis <= "1111000"; -- 12
				when "1011" => dis <= "0000010"; -- 11
				when "1010" => dis <= "0010010"; -- 10
				when "1001" => dis <= "0011001"; -- 9
				when "1000" => dis <= "0110000"; -- 8
				when "0111" => dis <= "0100100"; -- 7
				when "0110" => dis <= "1111001"; -- 6
				when "0101" => dis <= "0010010"; -- 5
				when "0100" => dis <= "0011001"; -- 4
				when "0011" => dis <= "0110000"; -- 3
				when "0010" => dis <= "0100100"; -- 2
				when "0001" => dis <= "1111001"; -- 1
				when others => dis <= "1000000"; -- 0
			end case;
		end if;
	end process;

	HEX0 <= dis;
end st;