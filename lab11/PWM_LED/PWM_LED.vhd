library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity PWM_LED is
port(clk: in std_logic;
	 enable: in std_logic;
	 duty: in std_logic_vector(2 downto 0);
	 led: out std_logic);
end PWM_LED;

architecture st of PWM_LED is
signal count: std_logic_vector(15 downto 0) := (others => '0');
begin
	cnt:process(clk,enable)
	begin
		if enable = '1' then
			if clk'event and clk = '0' then
				if count < 9 then
					count <= count + 1;
				else
					count <= x"0000";
				end if;
			end if;
		end if;
	end process;
	
	GEN_LED:process(clk,enable,duty)
	begin
		if enable = '1' then
			if count > duty then
				led <= '1';
			else
				led <= '0';
			end if;
		else
			led <= '0';
		end if;
	end process;
end st;