library verilog;
use verilog.vl_types.all;
entity sine_cos is
    generic(
        freq_iter       : integer := 32
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        sine            : out    vl_logic_vector(13 downto 0);
        cos             : out    vl_logic_vector(13 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of freq_iter : constant is 1;
end sine_cos;
