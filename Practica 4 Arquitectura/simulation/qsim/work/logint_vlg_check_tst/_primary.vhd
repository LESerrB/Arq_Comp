library verilog;
use verilog.vl_types.all;
entity logint_vlg_check_tst is
    port(
        MAP1            : in     vl_logic;
        PL              : in     vl_logic;
        selector        : in     vl_logic;
        VECT            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end logint_vlg_check_tst;
