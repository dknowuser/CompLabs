module async_general(Clk, Din, Start, Dout, Ready, Error,
	D_connect_trans, D_connect_recv);
parameter data_bits = 6;
input Clk, Start;
input [data_bits-1:0] Din;
output Ready, Error;
output [data_bits-1:0] Dout;

output D_connect_trans;
input D_connect_recv;

async_transmitter transmitter(.Clk(Clk), .Din(Din),
	.Start(Start), .D(D_connect_trans));
async_receiver receiver(.Clk(Clk), .D(D_connect_recv),
	.Dout(Dout), .Ready(Ready), .Error(Error));

endmodule