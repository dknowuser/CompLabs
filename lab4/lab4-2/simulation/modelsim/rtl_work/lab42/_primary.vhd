library verilog;
use verilog.vl_types.all;
entity lab42 is
    generic(
        n               : integer := 9;
        words           : integer := 11;
        delay           : integer := 10
    );
    port(
        read_clk        : in     vl_logic;
        write_clk       : in     vl_logic;
        in_data         : in     vl_logic_vector;
        out_data        : out    vl_logic_vector;
        empty           : out    vl_logic;
        full            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
    attribute mti_svvh_generic_type of words : constant is 1;
    attribute mti_svvh_generic_type of delay : constant is 1;
end lab42;
