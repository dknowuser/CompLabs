module labka13(x, out);
input [3:0] x;
output out;
wire eq1, eq2, eq3, eq5, eq10, eq11, eq14;

my_decode decode(.data(x), .eq1(eq1), .eq2(eq2), .eq3(eq3),
	.eq5(eq5), .eq10(eq10), .eq11(eq11), .eq14(eq14));
	
assign out = eq1|eq2|eq3|eq5|eq10|eq11|eq14;

endmodule
