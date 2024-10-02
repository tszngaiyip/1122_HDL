library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lab07 is
    Port (
        A, B : in std_logic_vector(4 downto 0);
        sel : in std_logic_vector(1 downto 0);
        aluo : out std_logic_vector(4 downto 0)
    );
end lab07;

architecture Behavioral of lab07 is
begin
    process(A, B, sel)  
    begin
        case sel is
            when "00" =>
                aluo <= std_logic_vector(unsigned(A) or unsigned(B));
            when "01" =>
                aluo <= std_logic_vector(unsigned(A) and unsigned(B));
            when "10" =>
                aluo <= std_logic_vector(unsigned(A) - unsigned(B));
            when others =>
                aluo <= std_logic_vector(unsigned(A) + unsigned(B));
        end case;
    end process;
end Behavioral;
