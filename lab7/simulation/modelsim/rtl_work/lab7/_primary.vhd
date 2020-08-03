library verilog;
use verilog.vl_types.all;
entity lab7 is
    port(
        clk             : in     vl_logic;
        clk_mod         : in     vl_logic;
        sin_reset       : in     vl_logic;
        out_data        : out    vl_logic_vector(26 downto 0);
        out_valid       : out    vl_logic;
        out_error       : out    vl_logic_vector(1 downto 0)
    );
end lab7;
