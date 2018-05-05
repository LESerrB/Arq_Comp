library verilog;
use verilog.vl_types.all;
entity secuen_completo_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        CLK             : in     vl_logic;
        INT             : in     vl_logic;
        RESET           : in     vl_logic;
        X               : in     vl_logic;
        Y               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end secuen_completo_vlg_sample_tst;
