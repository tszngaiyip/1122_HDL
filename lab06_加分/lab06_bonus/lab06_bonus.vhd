LIBRARY IEEE;
USE IEEE.Std_logic_1164.all;

ENTITY lab06_bonus IS
    PORT(
        str_in, clk, rst: IN STD_LOGIC;
        match: OUT STD_LOGIC;
        str_out: buffer STD_LOGIC_VECTOR (2 DOWNTO 0)
    );
END lab06_bonus;

ARCHITECTURE a OF lab06_bonus IS
    TYPE State IS (s0, s1, s2, s3);
    SIGNAL present_state : State;
    SIGNAL next_state: State;
BEGIN
    state_comp: PROCESS(clk, rst)
    BEGIN
        IF rst = '1' THEN
            next_state <= s0;  
            match <= '0';         
            str_out <= "000"; 
        ELSIF rising_edge(clk) THEN
            CASE present_state IS
                WHEN s0 =>
					str_out(2) <= str_out(1);
                    str_out(1) <= str_out(0);
                    str_out(0) <= str_in;
                    IF str_in = '0' THEN
                        next_state <= s0;
                    ELSE
                        next_state <= s1;
                    END IF;
                    
                WHEN s1 =>
                    str_out(2) <= str_out(1);
                    str_out(1) <= str_out(0);
                    str_out(0) <= str_in;
                    IF str_in = '0' THEN
                        next_state <= s0;
                    ELSE
                        next_state <= s2;
                    END IF;
                    

                WHEN s2 =>
					str_out(2) <= str_out(1);
                    str_out(1) <= str_out(0);
                    str_out(0) <= str_in;
                    IF str_in = '0' THEN
                        next_state <= s3;
                    ELSE
                        next_state <= s2;
                    END IF;


                WHEN s3 =>
					str_out(2) <= str_out(1);
                    str_out(1) <= str_out(0);
                    str_out(0) <= str_in;
                    IF str_in = '0' THEN
                        next_state <= s0;
                    ELSE
                        next_state <= s1;
                    END IF;                           
            END CASE;
        END IF;
        
        IF str_out = "110" THEN
			match <= '1';
		ELSE
			match <= '0';
		END IF;
		
    END PROCESS state_comp;

    state_clocking: PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            present_state <= s0;  -- Reset to initial state on reset signal
        ELSIF rising_edge(clk) THEN
            present_state <= next_state;
        END IF;
    END PROCESS state_clocking;
END a;
