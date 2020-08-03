module sync_general(Clk, Din, Start, Dout, Ready, Error,
	Clk_connect_trans, D_connect_trans, FS_connect_trans,
	Clk_connect_recv, D_connect_recv, FS_connect_recv);
parameter data_bits = 6;
input Clk, Start;
input [data_bits-1:0] Din;
output Ready, Error;
output [data_bits-1:0] Dout;

output Clk_connect_trans, D_connect_trans, FS_connect_trans;
input Clk_connect_recv, D_connect_recv, FS_connect_recv;

sync_transmit transmitter(.Clk_in(Clk), .Din(Din), .Start(Start),
	.Clk_out(Clk_connect_trans), .D(D_connect_trans), .FS(FS_connect_trans));
sync_receive receiver(.Clk(Clk_connect_recv), .D(D_connect_recv), .FS(FS_connect_recv),
	.Dout(Dout), .Ready(Ready), .Error(Error));

endmodule