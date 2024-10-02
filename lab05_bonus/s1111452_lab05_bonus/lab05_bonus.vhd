library IEEE;
use IEEE.Std_logic_1164.all;

entity myJKFF is 
    port(
        J, K, CK, Preset, Clear: in std_logic;
        Q, NotQ : out std_logic   
    );
end myJKFF;

architecture arch of myJKFF is  
    signal Q_internal, NotQ_internal: std_logic;
begin  
    process (CK, Preset, Clear)
    begin
        if (Preset = '0' and Clear = '1') then  -- Asynchronous clear
            Q_internal <= '1';
            NotQ_internal <= '0';
        elsif (Preset = '1' and Clear = '0') then  -- Asynchronous preset
            Q_internal <= '0';
            NotQ_internal <= '1';
        elsif (Preset = '1' and Clear = '1' and rising_edge(CK)) then  -- Synchronous behavior
            if (J = '0' and K = '0') then
                -- No change
                Q_internal <= Q_internal;
                NotQ_internal <= NotQ_internal;
            elsif (J = '0' and K = '1') then
                -- Clear
                Q_internal <= '0';
                NotQ_internal <= '1';
            elsif (J = '1' and K = '0') then
                -- Set
                Q_internal <= '1';
                NotQ_internal <= '0';
            elsif (J = '1' and K = '1') then
                -- Toggle
                Q_internal <= NOT Q_internal;
                NotQ_internal <= Q_internal;
            end if;
        end if;
    end process;
    
    -- Assign internal signals to output ports
    Q <= Q_internal;
    NotQ <= NotQ_internal;
end arch;



library IEEE;
use IEEE.Std_logic_1164.all;

entity lab05_bonus is
    port(
        SIN, CLK, Preset, Clear: in std_logic;
        QA, QB, QC, QD: out std_logic
    );
end lab05_bonus;

architecture arch of lab05_bonus is  
    component myJKFF is
        port(
            J, K, CK, Preset, Clear: in std_logic;
            Q, NotQ : out std_logic        
        );
    end component;
    
    signal tmp : std_logic_vector(0 to 3);
    signal QB_tmp, QC_tmp, QD_tmp: std_logic;
begin
    FF0: myJKFF port map (J => SIN, K => NOT SIN, CK => CLK, Preset => Preset, Clear => Clear, Q => tmp(3), NotQ => QB_tmp);
	FF1: myJKFF port map (J => tmp(3), K => QB_tmp, CK => CLK, Preset => Preset, Clear => Clear, Q => tmp(2), NotQ => QC_tmp);
	FF2: myJKFF port map (J => tmp(2), K => QC_tmp, CK => CLK, Preset => Preset, Clear => Clear, Q => tmp(1), NotQ => QD_tmp);
	FF3: myJKFF port map (J => tmp(1), K => QD_tmp, CK => CLK, Preset => Preset, Clear => Clear, Q => tmp(0), NotQ => open);
	
	QA <= tmp(3);
	QB <= tmp(2);
	QC <= tmp(1);
	QD <= tmp(0);
end arch;
