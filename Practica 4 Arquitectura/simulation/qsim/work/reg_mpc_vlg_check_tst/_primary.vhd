library verilog;
use verilog.vl_types.all;
entity reg_mpc_vlg_check_tst is
    port(
        edo_sig_out     : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end reg_mpc_vlg_check_tst;
