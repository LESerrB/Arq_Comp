library verilog;
use verilog.vl_types.all;
entity muxdir is
    port(
        Y               : out    vl_logic_vector(3 downto 0);
        selector        : in     vl_logic;
        D               : in     vl_logic_vector(3 downto 0);
        edo_sig         : in     vl_logic_vector(3 downto 0)
    );
end muxdir;
