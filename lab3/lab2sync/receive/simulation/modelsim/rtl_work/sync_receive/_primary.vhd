library verilog;
use verilog.vl_types.all;
entity sync_receive is
    generic(
        data_bits       : integer := 6;
        frame_size      : integer := 7
    );
    port(
        Clk             : in     vl_logic;
        D               : in     vl_logic;
        FS              : in     vl_logic;
        Dout            : out    vl_logic_vector;
        Ready           : out    vl_logic;
        Error           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of data_bits : constant is 1;
    attribute mti_svvh_generic_type of frame_size : constant is 1;
end sync_receive;
