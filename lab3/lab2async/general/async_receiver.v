module async_receiver(Clk, D, Dout, Ready, Error);
parameter start_bit = 0;
parameter data_bits = 6;
parameter parity_bit = 6;
parameter stop_bit = 7;

input Clk, D;
output Ready, Error;
output [data_bits-1:0] Dout;

reg [data_bits-1:0] Dout_internal = 0;
reg Ready_internal = 1;
reg Error_internal = 0;
reg [3:0] counter = 0;
reg odd = 0;

assign Dout = Dout_internal;
assign Ready = Ready_internal;
assign Error = Error_internal;

always @(Clk)
begin
	if(Clk)
		case(counter)
		start_bit: begin
			if(~D)
			begin
				Ready_internal = 0;
				Error_internal = 0;
				odd = 0;
				counter = counter + 1;
			end
		end
		parity_bit: begin
			Error_internal = ~odd != D;
			counter = counter + 1;
		end
		stop_bit: begin
			Error_internal = Error_internal | D;
			Ready_internal = 1;
			counter = counter + 1;
		end
		default: begin
			if(D)
				Dout_internal = Dout_internal | (1 << (counter - 1));
			else
				Dout_internal = Dout_internal & ~(1 << (counter - 1));
			odd = odd ^ D;
			counter = counter + 1;
		end
		endcase
		
		if(Clk)
			if(counter == stop_bit + 1)
				counter = 0;
end
endmodule