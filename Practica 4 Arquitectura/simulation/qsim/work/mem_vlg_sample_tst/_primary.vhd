library verilog;
use verilog.vl_types.all;
entity mem_vlg_sample_tst is
    port(
        dir             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end mem_vlg_sample_tst;
