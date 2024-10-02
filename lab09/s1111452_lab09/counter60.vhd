library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
	
entity counter60 is
	port
	(
		load ,en, clrn, clk : in std_logic;
		Da : in std_logic_vector(3 downto 0);
		Db : in std_logic_vector(2 downto 0);
		Co : out std_logic;
		qa : out std_logic_vector(3 downto 0);
		qb : out std_logic_vector(2 downto 0)
	);
end counter60;

architecture a of counter60 is 
component counter6
	port(load,clk,en,clrn : in std_logic;
		D : in std_logic_vector(2 downto 0);
		Co : out std_logic;
		q : out std_logic_vector(2 downto 0)
	);
end component;

component counter10
	port(load,clk,en,clrn : in std_logic;
		D : in std_logic_vector(3 downto 0);
		Co : out std_logic;
		q : out std_logic_vector(3 downto 0)
	);
end component;

signal counter10Co : std_logic;
begin
	inst3 : counter10
	port map(load => load, clk => clk, en => en, clrn => clrn,
				D => Da, Co => counter10Co, q => qa);
	inst : counter6
	port map(load => load, clk => clk, en => counter10Co, clrn => clrn,
				D => Db, Co => Co, q => qb);
end;