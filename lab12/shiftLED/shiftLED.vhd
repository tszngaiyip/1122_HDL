library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity shiftLED is
port(Din: in std_logic_vector(4 downto 0);
	 clk: in std_logic;
	 Q: out std_logic_vector(9 downto 0);
	 pb1,pb2: in std_logic;
	 bt1,bt2: in std_logic);
end shiftLED;

architecture st of shiftLED is
signal reg: std_logic;
signal temp: std_logic_vector(9 downto 0);
signal bt_temp: std_logic; --0:slow 1:fast
signal clk_count_slow: std_logic_vector(31 downto 0) := (others => '0');
signal clk_count_fast: std_logic_vector(31 downto 0) := (others => '0');
begin
	process(bt1, bt2, clk)
	begin
		if bt1 = '0' and rising_edge(clk) then
			bt_temp <= '0';
		elsif bt2 = '0' and rising_edge(clk) then
			bt_temp <= '1';
		end if;
	end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			clk_count_slow <= clk_count_slow + 1;
			clk_count_fast <= clk_count_fast + 1;
			if clk_count_slow > 50000000 then
				clk_count_slow <= (others => '0');
			end if;
			if clk_count_fast > 10000000 then
				clk_count_fast <= (others => '0');
			end if;
		end if;
	end process;
	
	process(pb1,pb2,bt_temp,Din,clk,clk_count_slow,clk_count_fast)
	begin
		if rising_edge(clk)then
			if bt_temp = '0' then
				if clk_count_slow = 50000000 then
					if pb1 = '0' and pb2 = '0' then
						rst:for i in 0 to 9 loop
							if i < 5 then
								temp(i) <= Din(i);
							else
								temp(i) <= '0';
							end if;
						end loop;
					elsif pb1 = '1' and pb2 = '0' then
						temp(9) <= temp(0);
						SR:for i in 8 downto 0 loop
							temp(i) <= temp(i+1);
						end loop;
					elsif pb1 = '0' and pb2 = '1' then
						temp(0) <= temp(9);
						SL:for i in 1 to 9 loop
							temp(i) <= temp(i-1);
						end loop;
					end if;
				end if;
			elsif bt_temp = '1' then
				if clk_count_fast = 1000000 then
					if pb1 = '0' and pb2 = '0' then
						frst:for i in 0 to 9 loop
							if i < 5 then
								temp(i) <= Din(i);
							else
								temp(i) <= '0';
							end if;
						end loop;
					elsif pb1 = '1' and pb2 = '0' then
						temp(9) <= temp(0);
						fSR:for i in 8 downto 0 loop
							temp(i) <= temp(i+1);
						end loop;
					elsif pb1 = '0' and pb2 = '1' then
						temp(0) <= temp(9);
						fSL:for i in 1 to 9 loop
							temp(i) <= temp(i-1);
						end loop;
					end if;
				end if;
			end if;
		end if;
		Q <= temp;
	end process;
	
end st;
	