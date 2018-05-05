library verilog;
use verilog.vl_types.all;
entity secuen_completo is
    port(
        est_pres        : out    vl_logic_vector(3 downto 0);
        X               : in     vl_logic;
        Y               : in     vl_logic;
        INT             : in     vl_logic;
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        SALIDAS         : out    vl_logic_vector(3 downto 0)
    );
end secuen_completo;
