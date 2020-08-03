module dynamic(Clk, Reset, seg0_out,
	seg1_out, seg2_out, seg3_out);
input Clk, Reset;
output [7:0] seg0_out;
output [7:0] seg1_out;
output [7:0] seg2_out;
output [7:0] seg3_out;

wire [7:0] rom_data;
wire [15:0] rom_addr;

wire [7:0] seg_sel;
wire [7:0] seg_val;

wire [3:0] decode_out;
wire [7:0] multi_out0;
wire [7:0] multi_out1;
wire [7:0] multi_out2;
wire [7:0] multi_out3;

assign seg0_out[0] = multi_out0[0] & seg_sel[2];
assign seg0_out[1] = multi_out0[1] & seg_sel[2];
assign seg0_out[2] = multi_out0[2] & seg_sel[2];
assign seg0_out[3] = multi_out0[3] & seg_sel[2];
assign seg0_out[4] = multi_out0[4] & seg_sel[2];
assign seg0_out[5] = multi_out0[5] & seg_sel[2];
assign seg0_out[6] = multi_out0[6] & seg_sel[2];
assign seg0_out[7] = multi_out0[7] & seg_sel[2];

assign seg1_out[0] = multi_out1[0] & seg_sel[2];
assign seg1_out[1] = multi_out1[1] & seg_sel[2];
assign seg1_out[2] = multi_out1[2] & seg_sel[2];
assign seg1_out[3] = multi_out1[3] & seg_sel[2];
assign seg1_out[4] = multi_out1[4] & seg_sel[2];
assign seg1_out[5] = multi_out1[5] & seg_sel[2];
assign seg1_out[6] = multi_out1[6] & seg_sel[2];
assign seg1_out[7] = multi_out1[7] & seg_sel[2];

assign seg2_out[0] = multi_out2[0] & seg_sel[2];
assign seg2_out[1] = multi_out2[1] & seg_sel[2];
assign seg2_out[2] = multi_out2[2] & seg_sel[2];
assign seg2_out[3] = multi_out2[3] & seg_sel[2];
assign seg2_out[4] = multi_out2[4] & seg_sel[2];
assign seg2_out[5] = multi_out2[5] & seg_sel[2];
assign seg2_out[6] = multi_out2[6] & seg_sel[2];
assign seg2_out[7] = multi_out2[7] & seg_sel[2];

assign seg3_out[0] = multi_out3[0] & seg_sel[2];
assign seg3_out[1] = multi_out3[1] & seg_sel[2];
assign seg3_out[2] = multi_out3[2] & seg_sel[2];
assign seg3_out[3] = multi_out3[3] & seg_sel[2];
assign seg3_out[4] = multi_out3[4] & seg_sel[2];
assign seg3_out[5] = multi_out3[5] & seg_sel[2];
assign seg3_out[6] = multi_out3[6] & seg_sel[2];
assign seg3_out[7] = multi_out3[7] & seg_sel[2];

mc8051_core processor(.clk(Clk), .reset(Reset),
	.rom_data_i(rom_data), .rom_adr_o(rom_addr),
	.p1_o(seg_val), .p3_o(seg_sel));
my_rom rom(.clock(Clk), .q(rom_data), .address(rom_addr[10:0]));

my_decode decode(.data(seg_sel[1:0]), .eq0(decode_out[0]),
	.eq1(decode_out[1]), .eq2(decode_out[2]), .eq3(decode_out[3]));
	
my_mux multi0(.data0x(8'h00), .data1x(seg_val),
	.sel(decode_out[0]), .result(multi_out0));
my_mux multi1(.data0x(8'h00), .data1x(seg_val),
	.sel(decode_out[1]), .result(multi_out1));
my_mux multi2(.data0x(8'h00), .data1x(seg_val),
	.sel(decode_out[2]), .result(multi_out2));
my_mux multi3(.data0x(8'h00), .data1x(seg_val),
	.sel(decode_out[3]), .result(multi_out3));

endmodule