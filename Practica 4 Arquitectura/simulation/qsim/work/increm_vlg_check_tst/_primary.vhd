library verilog;
use verilog.vl_types.all;
entity increm_vlg_check_tst is
    port(
        edo_siguiente   : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end increm_vlg_check_tst;
