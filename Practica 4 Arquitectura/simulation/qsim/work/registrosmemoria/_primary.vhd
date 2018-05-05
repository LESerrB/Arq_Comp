library verilog;
use verilog.vl_types.all;
entity registrosmemoria is
    port(
        \out\           : out    vl_logic;
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        \in\            : in     vl_logic
    );
end registrosmemoria;
