library verilog;
use verilog.vl_types.all;
entity mem is
    port(
        vf              : out    vl_logic;
        dir             : in     vl_logic_vector(3 downto 0);
        instruc         : out    vl_logic_vector(1 downto 0);
        liga            : out    vl_logic_vector(3 downto 0);
        prueba          : out    vl_logic_vector(1 downto 0);
        s               : out    vl_logic_vector(3 downto 0)
    );
end mem;
