library verilog;
use verilog.vl_types.all;
entity logint_vlg_sample_tst is
    port(
        I               : in     vl_logic_vector(1 downto 0);
        pin_name2       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end logint_vlg_sample_tst;
