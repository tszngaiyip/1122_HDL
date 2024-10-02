library verilog;
use verilog.vl_types.all;
entity lab08 is
    port(
        clk             : in     vl_logic;
        clrn            : in     vl_logic;
        Q               : out    vl_logic_vector(1 downto 0)
    );
end lab08;
