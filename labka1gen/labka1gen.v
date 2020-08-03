module labka1gen(x, out1, out2, out3);
input [3:0] x;
output out1, out2, out3;

labka1 l1(.x(x[3]), .y(x[2]), .z(x[1]), .w(x[0]), .out(out1));
labka12 l2(.x(x), .out(out2));
labka13 l3(.x(x), .out(out3));

endmodule
