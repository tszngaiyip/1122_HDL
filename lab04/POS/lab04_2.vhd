library IEEE;
use IEEE.std_logic_1164.all;

entity lab04_2 is
	port( a, b, c, d: in std_logic;
			Y : out std_logic);  
	end lab04_2;


Architecture arch of lab04_2 is
	begin
		Y <= (NOT(A) OR B OR C) AND (NOT(B) OR C OR NOT(D)) AND (A OR B OR NOT(C) OR D);
	end arch; 