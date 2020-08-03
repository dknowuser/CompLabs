module lab7(clk, clk_mod, sin_reset, in_data2, out_data, out_valid, out_error);
input clk, sin_reset, clk_mod;
output [26:0] out_data;
output [1:0] out_error;
output [13:0] in_data2;
output out_valid;
wire in_valid;
wire [13:0] in_data;
assign in_data2 = in_data;

sine_cos sin(.clk(clk_mod), .reset(sin_reset),
	.en(1), .sine(in_data));

digitalFilter filter(.clk(clk), .reset_n(1),
	.ast_sink_data(in_data), .ast_sink_valid(1),
	.ast_sink_error(2'b00), .ast_source_data(out_data),
	.ast_source_valid(out_valid), .ast_source_error(out_error));
	
endmodule