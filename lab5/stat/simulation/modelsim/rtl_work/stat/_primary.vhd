library verilog;
use verilog.vl_types.all;
entity stat is
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        reg_seg0_out    : out    vl_logic_vector(7 downto 0);
        reg_seg1_out    : out    vl_logic_vector(7 downto 0);
        reg_seg2_out    : out    vl_logic_vector(7 downto 0);
        reg_seg3_out    : out    vl_logic_vector(7 downto 0)
    );
end stat;
