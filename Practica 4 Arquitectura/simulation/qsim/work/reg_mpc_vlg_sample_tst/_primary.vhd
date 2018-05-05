library verilog;
use verilog.vl_types.all;
entity reg_mpc_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        edo_sig_in      : in     vl_logic_vector(3 downto 0);
        RESET           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end reg_mpc_vlg_sample_tst;
