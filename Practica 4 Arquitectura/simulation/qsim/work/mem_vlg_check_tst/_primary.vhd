library verilog;
use verilog.vl_types.all;
entity mem_vlg_check_tst is
    port(
        instruc         : in     vl_logic_vector(1 downto 0);
        liga            : in     vl_logic_vector(3 downto 0);
        prueba          : in     vl_logic_vector(1 downto 0);
        s               : in     vl_logic_vector(3 downto 0);
        vf              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end mem_vlg_check_tst;
