module lab42(read_clk, write_clk, in_data,
	out_data, empty, full);
parameter n = 9;
parameter words = 11;
parameter delay = 10;
input read_clk, write_clk;
input [n - 1:0] in_data;
output [n - 1:0] out_data;
output empty, full;

reg [n - 1:0] mem [words - 1:0];
reg [3:0] current_cell = 0;
reg [3:0] i;

reg [n - 1:0] out_data_in = 0;
reg empty_in = 0;
reg full_in = 0;
reg delete = 0;
reg add = 0;

assign out_data = out_data_in;
assign empty = empty_in;
assign full = full_in;

always@(posedge delete or posedge add)
begin
	if(delete == 1)
	begin
		for(i = 0; i < (words - 1); i = i + 1)
			mem[i] = mem[i + 1];
		current_cell = current_cell - 1;
	end
	else
	begin
		mem[current_cell] = in_data;
		current_cell = current_cell + 1;
	end
end

always@(negedge read_clk)
begin
	empty_in = 0;
	out_data_in = 0;
	if(current_cell == 0)
		empty_in = 1;
	else
	begin
		out_data_in = mem[0];
		delete = 1;
		#delay delete = 0;
	end
end

always@(posedge write_clk)
begin
	full_in = 0;
	if(current_cell == words)
		full_in = 1;
	else
	begin
		add = 1;
		#delay add = 0;
	end
end

endmodule