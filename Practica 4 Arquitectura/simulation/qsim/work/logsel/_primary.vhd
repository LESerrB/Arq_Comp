library verilog;
use verilog.vl_types.all;
entity logsel is
    port(
        CC              : out    vl_logic;
        X               : in     vl_logic;
        Y               : in     vl_logic;
        INT             : in     vl_logic;
        VF              : in     vl_logic;
        prueba          : in     vl_logic_vector(1 downto 0)
    );
end logsel;
