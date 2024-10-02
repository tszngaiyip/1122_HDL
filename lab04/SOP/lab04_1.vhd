library IEEE;
use IEEE.std_logic_1164.all;

entity lab04_1 is
	port( a, b, c, d: in std_logic;
			Y : out std_logic);  
	end lab04_1;


Architecture arch of lab04_1 is
	begin
		Y <= (NOT(C) AND NOT(D)) OR (NOT(A) AND NOT(C)) OR (NOT(B) AND D) OR (A AND C AND D) OR (A AND B AND NOT(D));
	end arch; 