library verilog;
use verilog.vl_types.all;
entity CONTR_AUTO is
    generic(
        s0              : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        s1              : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        s2              : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        s3              : vl_logic_vector(0 to 1) := (Hi1, Hi1)
    );
    port(
        Clk             : in     vl_logic;
        \End\           : in     vl_logic;
        R               : in     vl_logic;
        Start           : in     vl_logic;
        Busy            : out    vl_logic;
        Enable          : out    vl_logic;
        Ready           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of s0 : constant is 1;
    attribute mti_svvh_generic_type of s1 : constant is 1;
    attribute mti_svvh_generic_type of s2 : constant is 1;
    attribute mti_svvh_generic_type of s3 : constant is 1;
end CONTR_AUTO;
