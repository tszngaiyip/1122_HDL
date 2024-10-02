library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity PWM_OUTPUT is
port(clk: in std_logic;
	 reset: in std_logic;
	 pwm_out: out std_logic;
	 period: in std_logic_vector(15 downto 0);
	 duty: in std_logic_vector(15 downto 0));
end PWM_OUTPUT;

architecture bh of PWM_OUTPUT is
signal pwn_cnt: std_logic_vector(15 downto 0);
signal duty_cnt: std_logic_vector(15 downto 0);
begin
	GEN:process(clk,reset)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				pwn_cnt <= '0';
				duty_cnt <= '0';
			else
				
			end if
		end if;
	end process GEN;
end bh;