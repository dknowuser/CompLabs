library verilog;
use verilog.vl_types.all;
entity async_transmitter is
    generic(
        start_bit       : integer := 0;
        data_bits       : integer := 6;
        parity_bit      : integer := 6;
        stop_bit        : integer := 7
    );
    port(
        Clk             : in     vl_logic;
        Din             : in     vl_logic_vector;
        Start           : in     vl_logic;
        D               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of start_bit : constant is 1;
    attribute mti_svvh_generic_type of data_bits : constant is 1;
    attribute mti_svvh_generic_type of parity_bit : constant is 1;
    attribute mti_svvh_generic_type of stop_bit : constant is 1;
end async_transmitter;
