library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity msTImer is
port(clk: in std_logic;
	 hex0: out std_logic_vector(6 downto 0);
	 hex1: out std_logic_vector(6 downto 0);
	 dot: out std_logic;
	 hex2: out std_logic_vector(6 downto 0);
	 hex3: out std_logic_vector(6 downto 0));
end msTimer;

architecture bh of msTimer is
component clk_1hz is
port(CLK_50M: in std_logic;
	 CLK_1: out std_logic);
end component;

component counter60 is
port (CLK: in std_logic;
	  CNT_EN: in std_logic;
	  Co: out std_logic;
	  BCD1: out std_logic_vector(3 downto 0);
	  BCD0: out std_logic_vector(3 downto 0));
end component;

component fbcd7seg is
port (CLK : in std_logic;
	  BCD : in std_logic_vector(3 downto 0);
	  HEX : out std_logic_vector(6 downto 0));
end component;

signal clk1hz: std_logic;
signal sec_ci: std_logic;
signal sec_co: std_logic;
signal min_co: std_logic;
signal sec_ten: std_logic_vector(3 downto 0);
signal sec_dig: std_logic_vector(3 downto 0);
signal min_ten: std_logic_vector(3 downto 0);
signal min_dig: std_logic_vector(3 downto 0);
begin
	sec_ci <= '1';
	dot <= '0';
	divid50M:clk_1hz port map(clk,clk1hz);
	
	secCounter: counter60 port map(clk1hz,sec_ci,sec_co,sec_ten,sec_dig);
	minCounter: counter60 port map(clk1hz,sec_co,min_co,min_ten,min_dig);
	sec_digSeg: fbcd7seg port map(clk1hz,sec_dig,hex0);
	sec_tenSeg: fbcd7seg port map(clk1hz,sec_ten,hex1);
	min_digSeg: fbcd7seg port map(clk1hz,min_dig,hex2);
	min_tenSeg: fbcd7seg port map(clk1hz,min_ten,hex3);
end bh;