library verilog;
use verilog.vl_types.all;
entity logsel_vlg_sample_tst is
    port(
        INT             : in     vl_logic;
        prueba          : in     vl_logic_vector(1 downto 0);
        VF              : in     vl_logic;
        X               : in     vl_logic;
        Y               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end logsel_vlg_sample_tst;
