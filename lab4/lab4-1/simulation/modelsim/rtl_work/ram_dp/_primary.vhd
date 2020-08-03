library verilog;
use verilog.vl_types.all;
entity ram_dp is
    port(
        address         : in     vl_logic_vector(5 downto 0);
        data            : in     vl_logic_vector(2 downto 0);
        inclock         : in     vl_logic;
        outclock        : in     vl_logic;
        wren            : in     vl_logic;
        q               : out    vl_logic_vector(2 downto 0)
    );
end ram_dp;
