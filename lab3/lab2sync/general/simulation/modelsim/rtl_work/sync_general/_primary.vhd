library verilog;
use verilog.vl_types.all;
entity sync_general is
    generic(
        data_bits       : integer := 6
    );
    port(
        Clk             : in     vl_logic;
        Din             : in     vl_logic_vector;
        Start           : in     vl_logic;
        Dout            : out    vl_logic_vector;
        Ready           : out    vl_logic;
        Error           : out    vl_logic;
        Clk_connect_trans: out    vl_logic;
        D_connect_trans : out    vl_logic;
        FS_connect_trans: out    vl_logic;
        Clk_connect_recv: in     vl_logic;
        D_connect_recv  : in     vl_logic;
        FS_connect_recv : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of data_bits : constant is 1;
end sync_general;
