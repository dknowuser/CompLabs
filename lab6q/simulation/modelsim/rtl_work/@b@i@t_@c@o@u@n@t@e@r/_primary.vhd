library verilog;
use verilog.vl_types.all;
entity BIT_COUNTER is
    port(
        clock           : in     vl_logic;
        cnt_en          : in     vl_logic;
        sclr            : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end BIT_COUNTER;
