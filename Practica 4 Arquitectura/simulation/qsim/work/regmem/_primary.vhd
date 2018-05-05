library verilog;
use verilog.vl_types.all;
entity regmem is
    port(
        \inout\         : out    vl_logic_vector(1 downto 0);
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        instin          : in     vl_logic_vector(1 downto 0)
    );
end regmem;
