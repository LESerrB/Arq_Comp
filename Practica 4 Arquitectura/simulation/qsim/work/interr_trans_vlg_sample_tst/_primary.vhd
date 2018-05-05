library verilog;
use verilog.vl_types.all;
entity interr_trans_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        CLK             : in     vl_logic;
        MAP1            : in     vl_logic;
        RESET           : in     vl_logic;
        VECT            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end interr_trans_vlg_sample_tst;
