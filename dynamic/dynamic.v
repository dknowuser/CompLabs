module dynamic(Clk, Reset, seg0_out,
	seg1_out, seg2_out, seg3_out);
input Clk, Reset;
output reg [7:0] seg0_out;
output reg [7:0] seg1_out;
output reg [7:0] seg2_out;
output reg [7:0] seg3_out;

wire [7:0] rom_data;
wire [15:0] rom_addr;

wire [7:0] seg_sel;
wire [7:0] seg_val;

// Registers for segment values
/*reg [7:0] reg_seg0 = 0;
reg [7:0] reg_seg1 = 0;
reg [7:0] reg_seg2 = 0;
reg [7:0] reg_seg3 = 0;

assign seg0_out = reg_seg0;
assign seg1_out = reg_seg1;
assign seg2_out = reg_seg2;
assign seg3_out = reg_seg3;*/

mc8051_core processor(.clk(Clk), .reset(Reset),
	.rom_data_i(rom_data), .rom_adr_o(rom_addr),
	.p1_o(seg_val), .p3_o(seg_sel));
my_rom rom(.clock(Clk), .q(rom_data), .address(rom_addr[10:0]));

always@ (negedge seg_sel[2])
begin
	case(seg_sel[1:0])
	0: begin
		seg0_out = seg_val;
		seg1_out = 0;
		seg2_out = 0;
		seg3_out = 0;
	end
	1: begin
		seg0_out = 0;
		seg1_out = seg_val;
		seg2_out = 0;
		seg3_out = 0;
	end
	2: begin
		seg0_out = 0;
		seg1_out = 0;
		seg2_out = seg_val;
		seg3_out = 0;
	end
	3: begin
		seg0_out = 0;
		seg1_out = 0;
		seg2_out = 0;
		seg3_out = seg_val;
	end
	endcase
end
endmodule