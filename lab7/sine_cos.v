module sine_cos(clk, reset, en, sine, cos);
parameter freq_iter = 32;
reg [15:0] reload_value = 2;
reg [5:0] iter = 0;
input clk, reset, en;
output [13:0] sine,cos;
reg [13:0] sine_r, cos_r;
assign sine = sine_r + {cos_r[13], cos_r[13], cos_r[13], cos_r[13:3]};
assign cos = cos_r - {sine[13], sine[13], sine[13], sine[13:3]};
wire clk_inner;
reg clk_inner_r = 0;
reg [15:0] counter = 0;
assign clk_inner = clk_inner_r;

always@(posedge clk)
begin
  counter = counter + 1;
  if(counter >= reload_value)
  begin
    clk_inner_r = 1;
    counter = 0;
    iter = iter + 1;
    if(iter == freq_iter)
    begin
      reload_value = reload_value + 1;
      iter = 0;
    end    
  end
  else
    clk_inner_r = 0;
end

always@(posedge clk_inner or negedge reset)
begin
if (!reset)
begin
	sine_r <= 0;
	cos_r <= 4095;
end
else
begin
	if (en)
	begin
		sine_r <= sine;
		cos_r <= cos;
	end
end
end
endmodule