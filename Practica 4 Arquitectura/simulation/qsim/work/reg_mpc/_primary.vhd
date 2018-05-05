library verilog;
use verilog.vl_types.all;
entity reg_mpc is
    port(
        edo_sig_out     : out    vl_logic_vector(3 downto 0);
        RESET           : in     vl_logic;
        CLK             : in     vl_logic;
        edo_sig_in      : in     vl_logic_vector(3 downto 0)
    );
end reg_mpc;
