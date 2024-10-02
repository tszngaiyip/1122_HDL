library ieee; 
use ieee.std_logic_1164.all;
 
entity bonus is port
	(d0,d1,d2,d3,d4,d5,d6,d7,en : in std_logic;
	 a,b,c : out std_logic); 
end bonus; 


architecture encoder of bonus is 
begin 
	a <= (d4 or d5 or d6 or d7) and en; 
	b <= (d2 or d3 or d6 or d7) and en; 
	c <= (d1 or d3 or d5 or d7) and en;  
end encoder; 

