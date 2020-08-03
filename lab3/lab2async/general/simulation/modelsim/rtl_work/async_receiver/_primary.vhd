library verilog;
use verilog.vl_types.all;
entity async_receiver is
    generic(
        start_bit       : integer := 0;
        data_bits       : integer := 6;
        parity_bit      : integer := 7;
        stop_bit        : integer := 8
    );
    port(
        Clk             : in     vl_logic;
        D               : in     vl_logic;
        Dout            : out    vl_logic_vector;
        Ready           : out    vl_logic;
        Error           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of start_bit : constant is 1;
    attribute mti_svvh_generic_type of data_bits : constant is 1;
    attribute mti_svvh_generic_type of parity_bit : constant is 1;
    attribute mti_svvh_generic_type of stop_bit : constant is 1;
end async_receiver;
