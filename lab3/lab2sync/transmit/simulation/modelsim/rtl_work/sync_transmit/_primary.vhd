library verilog;
use verilog.vl_types.all;
entity sync_transmit is
    generic(
        data_bits       : integer := 6;
        frame_size      : integer := 7
    );
    port(
        Clk_in          : in     vl_logic;
        Din             : in     vl_logic_vector;
        Start           : in     vl_logic;
        Clk_out         : out    vl_logic;
        D               : out    vl_logic;
        FS              : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of data_bits : constant is 1;
    attribute mti_svvh_generic_type of frame_size : constant is 1;
end sync_transmit;
