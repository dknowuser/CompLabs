module async_transmitter(Clk, Din, Start, D);
parameter start_bit = 0;
parameter data_bits = 6;
parameter parity_bit = 6;
parameter stop_bit = 7;

input Clk, Start;
input [data_bits-1:0] Din;
output D;

reg current_bit = 1;
reg [3:0] counter = 0;
reg odd = 0;

assign D = current_bit;

always @(Clk)
begin
	if(Clk)
	begin
		if(Start)
		begin
			case(counter)
				start_bit: begin
					odd = 0;
					current_bit = 0;
				end
				parity_bit: current_bit = ~odd;
				stop_bit: current_bit = 0;
				default: begin
					current_bit = (Din >> (counter - 1)) & 1;
					odd = current_bit ^ odd;
				end
			endcase
		
			counter = counter + 1;
			if(counter == stop_bit + 1)
				counter = 0;
		end
		else
		begin
			odd = 0;
			counter = 0;
			current_bit = 1;
		end
	end
end
endmodule