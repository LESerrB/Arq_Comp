library verilog;
use verilog.vl_types.all;
entity increm_vlg_sample_tst is
    port(
        Y               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end increm_vlg_sample_tst;
