library verilog;
use verilog.vl_types.all;
entity my_mux is
    port(
        data0           : in     vl_logic;
        data1           : in     vl_logic;
        data10          : in     vl_logic;
        data11          : in     vl_logic;
        data12          : in     vl_logic;
        data13          : in     vl_logic;
        data14          : in     vl_logic;
        data15          : in     vl_logic;
        data2           : in     vl_logic;
        data3           : in     vl_logic;
        data4           : in     vl_logic;
        data5           : in     vl_logic;
        data6           : in     vl_logic;
        data7           : in     vl_logic;
        data8           : in     vl_logic;
        data9           : in     vl_logic;
        sel             : in     vl_logic_vector(3 downto 0);
        result          : out    vl_logic
    );
end my_mux;
