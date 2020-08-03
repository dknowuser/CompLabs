module lab6q(Clk, R, Start, Din, Ready, Busy, Indicator_out);
parameter n = 10;
input Clk, R, Start;
input [n-1:0] Din;
output Ready, Busy;
output [7:0] Indicator_out;

wire enable_wire;
wire [3:0] chosen_bit;
wire current_bit;
wire internal_scheme_output;
wire [3:0] result;
wire stop_count;
reg kept_value;

assign stop_count = (chosen_bit == (n - 1));
assign internal_scheme_output = ~current_bit & kept_value & enable_wire;

BIT_COUNTER current_bit_counter(.clock(Clk),
	.cnt_en(enable_wire), .sclr(~R | Start),
	.q(chosen_bit));
BIT_COUNTER fall_edge_counter(.clock(~Clk),
	.cnt_en(internal_scheme_output), .sclr(~R | Start),
	.q(result));
BIT_MUX current_bit_multiplexer(.data0(Din[0]),
	.data1(Din[1]), .data2(Din[2]), .data3(Din[3]),
	.data4(Din[4]), .data5(Din[5]), .data6(Din[6]),
	.data7(Din[7]), .data8(Din[8]), .data9(Din[9]),
	.sel(chosen_bit), .result(current_bit));
CONTR_AUTO controller(.Clk(Clk), .Enable(enable_wire),
	.R(R), .Start(Start), .End(stop_count), .Busy(Busy),
	.Ready(Ready));
CONV converter(.a(result), .b(Indicator_out));

always@(posedge Clk)
begin
	if(enable_wire & R & ~Start)
		kept_value = current_bit;
	else
		kept_value = 0;
end	
endmodule