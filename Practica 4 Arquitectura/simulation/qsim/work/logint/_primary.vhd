library verilog;
use verilog.vl_types.all;
entity logint is
    port(
        selector        : out    vl_logic;
        pin_name2       : in     vl_logic;
        I               : in     vl_logic_vector(1 downto 0);
        PL              : out    vl_logic;
        MAP1            : out    vl_logic;
        VECT            : out    vl_logic
    );
end logint;
