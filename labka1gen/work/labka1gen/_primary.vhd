library verilog;
use verilog.vl_types.all;
entity labka1gen is
    port(
        x               : in     vl_logic_vector(3 downto 0);
        out1            : out    vl_logic;
        out2            : out    vl_logic;
        out3            : out    vl_logic
    );
end labka1gen;
