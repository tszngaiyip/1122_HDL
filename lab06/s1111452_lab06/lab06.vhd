LIBRARY IEEE;
USE IEEE.Std_logic_1164.all;

ENTITY lab06 IS
    PORT(
        Din, CLK, Reset: IN STD_LOGIC;
        Qout: OUT STD_LOGIC
    );
END lab06;

ARCHITECTURE a OF lab06 IS
    TYPE State IS (s0, s1, s2, s3);
    SIGNAL present_state : State;
    SIGNAL next_state: State;
    SIGNAL OP: STD_LOGIC; 
BEGIN
    state_comp: PROCESS(present_state, Din) 
    BEGIN
        CASE present_state IS
            WHEN s0 =>
                IF Din = '0' THEN 
                    next_state <= s0;
                ELSE
                    next_state <= s2;
                END IF;         
                OP <= '0';
                
            WHEN s1 =>
                IF Din = '0' THEN 
                    next_state <= s0;
                ELSE
                    next_state <= s2;
                END IF;         
                OP <= '1';
                
            WHEN s2 =>
                IF Din = '0' THEN 
                    next_state <= s2;
                ELSE
                    next_state <= s3;
                END IF;         
                OP <= '1';
                
            WHEN s3 =>
                IF Din = '0' THEN 
                    next_state <= s3;
                ELSE
                    next_state <= s1;
                END IF;
                OP <= '0'; 
        END CASE;
    END PROCESS state_comp;

    state_clocking: PROCESS (CLK)
    BEGIN
        IF rising_edge(CLK) THEN -- Used rising_edge function for clock edge detection
            present_state <= next_state;
        END IF;
    END PROCESS state_clocking;
    
    Qout <= OP; -- Assigning output Qout to OP
END a; 		 
