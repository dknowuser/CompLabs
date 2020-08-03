module stat(Clk, Reset, reg_seg0_out,
	reg_seg1_out, reg_seg2_out, reg_seg3_out);
input Clk, Reset;
output [7:0] reg_seg0_out;
output [7:0] reg_seg1_out;
output [7:0] reg_seg2_out;
output [7:0] reg_seg3_out;

wire [7:0] rom_data;
wire [15:0] rom_addr;

wire [7:0] seg_sel;
wire [7:0] seg_val;

// Registers for segment values
reg [7:0] reg_seg0 = 0;
reg [7:0] reg_seg1 = 0;
reg [7:0] reg_seg2 = 0;
reg [7:0] reg_seg3 = 0;

assign reg_seg0_out = reg_seg0;
assign reg_seg1_out = reg_seg1;
assign reg_seg2_out = reg_seg2;
assign reg_seg3_out = reg_seg3;

mc8051_core processor(.clk(Clk), .reset(Reset),
	.rom_data_i(rom_data), .rom_adr_o(rom_addr),
	.p1_o(seg_val), .p3_o(seg_sel));
my_rom rom(.clock(Clk), .q(rom_data), .address(rom_addr[10:0]));

always@ (posedge seg_sel)
begin
	case(seg_sel[3:0])
	4'b0001: begin reg_seg0 = seg_val;
	end
	4'b0010: begin reg_seg1 = seg_val;
	end
	4'b0100: begin reg_seg2 = seg_val;
	end
	4'b1000: begin reg_seg3 = seg_val;
	end
	default: begin
	end
	endcase
end
endmodule