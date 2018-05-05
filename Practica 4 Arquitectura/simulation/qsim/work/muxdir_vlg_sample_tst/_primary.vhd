library verilog;
use verilog.vl_types.all;
entity muxdir_vlg_sample_tst is
    port(
        D               : in     vl_logic_vector(3 downto 0);
        edo_sig         : in     vl_logic_vector(3 downto 0);
        selector        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end muxdir_vlg_sample_tst;
