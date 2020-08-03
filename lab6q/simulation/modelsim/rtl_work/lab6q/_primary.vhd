library verilog;
use verilog.vl_types.all;
entity lab6q is
    generic(
        n               : integer := 10
    );
    port(
        Clk             : in     vl_logic;
        R               : in     vl_logic;
        Start           : in     vl_logic;
        Din             : in     vl_logic_vector;
        Ready           : out    vl_logic;
        Busy            : out    vl_logic;
        Indicator       : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end lab6q;
