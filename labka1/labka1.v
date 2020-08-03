module labka1(x, y, z, w, out);

input x, y, z, w;
output out;

assign out = ~x&~y&~z&w | ~x&~y&z&~w | ~x&~y&z&w |
				 ~x&y&~z&w | x&~y&z&~w | x&~y&z&w | x&y&z&~w;

endmodule