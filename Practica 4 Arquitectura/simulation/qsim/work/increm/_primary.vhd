library verilog;
use verilog.vl_types.all;
entity increm is
    port(
        edo_siguiente   : out    vl_logic_vector(3 downto 0);
        Y               : in     vl_logic_vector(3 downto 0)
    );
end increm;
