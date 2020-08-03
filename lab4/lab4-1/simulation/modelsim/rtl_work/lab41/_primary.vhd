library verilog;
use verilog.vl_types.all;
entity lab41 is
    port(
        A               : in     vl_logic_vector(5 downto 0);
        B               : in     vl_logic_vector(5 downto 0);
        clk             : in     vl_logic;
        q1              : out    vl_logic_vector(2 downto 0)
    );
end lab41;
