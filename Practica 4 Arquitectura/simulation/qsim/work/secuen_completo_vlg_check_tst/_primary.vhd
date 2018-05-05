library verilog;
use verilog.vl_types.all;
entity secuen_completo_vlg_check_tst is
    port(
        est_pres        : in     vl_logic_vector(3 downto 0);
        SALIDAS         : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end secuen_completo_vlg_check_tst;
