library verilog;
use verilog.vl_types.all;
entity interr_trans_vlg_check_tst is
    port(
        dir_interrupcion: in     vl_logic_vector(3 downto 0);
        dir_transformacion: in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end interr_trans_vlg_check_tst;
