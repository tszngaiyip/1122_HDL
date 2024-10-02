library IEEE;
use IEEE.std_logic_1164.all;

entity LEDcontroller is
port(button : in std_logic_vector(9 downto 0);
	 LED: out std_logic_vector(9 downto 0));
end LEDcontroller;

architecture st of LEDcontroller is
begin
	LED <= button;
end;