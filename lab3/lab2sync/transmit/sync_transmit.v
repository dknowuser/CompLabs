module sync_transmit(Clk_in, Din, Start, Clk_out, D, FS);
parameter data_bits = 6;
parameter frame_size = 7;
input Clk_in, Start;
input [data_bits-1:0] Din;
output Clk_out, D, FS;

reg FS_reg = 0;
reg D_bit = 0;
reg [2:0] counter = 7;
reg odd = 0;

assign Clk_out = Clk_in;
assign FS = FS_reg;
assign D = D_bit;

always@ (posedge Clk_in)
begin
	if(Start)
	begin
		if(~FS_reg)
			FS_reg = 1;
		
		if(counter == frame_size)
		begin
			counter = 0;
			odd = 0;
		end
				
		if(counter < data_bits)
		begin
			D_bit = (Din >> counter) & 1;
			odd = odd ^ D_bit;
		end
		else
		if(counter == data_bits)
			D_bit = ~odd;
		counter = counter + 1;
	end
	else
		FS_reg = 0;
end
endmodule