Library IEEE;
USE IEEE.Std_logic_1164.all;

entity myDFF is 
   port(
		D, CK: in std_logic;
		Q : out std_logic   
   );
end myDFF;
architecture arch of myDFF is  
begin  
	process(D,CK)
	variable TMP:std_logic;
	begin 
	if(rising_edge(CK)) then
		Q <= D; 
    end if;
           
	end process;  
end arch; 

--------------------------------------------------------------
Library IEEE;
USE IEEE.Std_logic_1164.all;

entity lab05 is
port(
	DIN, CLK: in std_logic;
	S0, S1 ,S2, S3, S4, S5, S6, S7: out std_logic
);
end lab05;

architecture arch of lab05 is  
component myDFF is
port(
	D, CK: in std_logic;
	Q : out std_logic     
);
end component;
signal tmp : std_logic_vector(0 to 7);
begin
	FF0: myDFF port map (D => DIN, CK => CLK, Q => tmp(7));
    FF1: myDFF port map (D => tmp(7), CK => CLK, Q => tmp(6));
    FF2: myDFF port map (D => tmp(6), CK => CLK, Q => tmp(5));
    FF3: myDFF port map (D => tmp(5), CK => CLK, Q => tmp(4));
    FF4: myDFF port map (D => tmp(4), CK => CLK, Q => tmp(3));
    FF5: myDFF port map (D => tmp(3), CK => CLK, Q => tmp(2));
    FF6: myDFF port map (D => tmp(2), CK => CLK, Q => tmp(1));
    FF7: myDFF port map (D => tmp(1), CK => CLK, Q => tmp(0));
    
    S0 <= tmp(0);
    S1 <= tmp(1);
    S2 <= tmp(2);
    S3 <= tmp(3);
    S4 <= tmp(4);
    S5 <= tmp(5);
    S6 <= tmp(6);
    S7 <= tmp(7);
end arch;
