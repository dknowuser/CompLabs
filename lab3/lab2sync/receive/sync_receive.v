module sync_receive(Clk, D, FS, Dout, Ready, Error);
parameter data_bits = 6;
parameter frame_size = 7;
input Clk, D, FS;
output Ready, Error;
output [data_bits-1:0] Dout;

reg [data_bits-1:0] Dout_internal = 0;
reg Ready_internal = 1;
reg Error_internal = 0;
reg [2:0] counter = 0;
reg odd = 0;

assign Dout = Dout_internal;
assign Ready = Ready_internal;
assign Error = Error_internal;

always @(posedge Clk)
begin
	if(FS)
	begin		
		if(counter == frame_size)
		begin
			counter = 0;
			odd = 0;
		end
	
		if(counter < data_bits)
		begin
			if(Ready_internal)
				Ready_internal = 0;
			if(D)
				Dout_internal = Dout_internal | (1 << counter);
			else
				Dout_internal = Dout_internal & ~(1 << counter);
			odd = odd ^ D;
		end
		else
		if(counter == data_bits)
		begin
			Ready_internal = 1;
			Error_internal = ~odd != D;
		end		
		counter = counter + 1;
	end
end
endmodule