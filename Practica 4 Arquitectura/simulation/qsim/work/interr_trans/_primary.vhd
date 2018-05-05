library verilog;
use verilog.vl_types.all;
entity interr_trans is
    port(
        dir_interrupcion: out    vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        VECT            : in     vl_logic;
        B               : in     vl_logic;
        A               : in     vl_logic;
        dir_transformacion: out    vl_logic_vector(3 downto 0);
        MAP1            : in     vl_logic
    );
end interr_trans;
