module lab41(A, B, clk, q1, q2, ind1, ind2);
input [5:0] A;
input [5:0] B;
input clk;
output [2:0] q1;
output [2:0] q2;
output [7:0] ind1;
output [7:0] ind2;
reg [7:0] inter_ind1;
reg [7:0] inter_ind2;

ram_dp RAM(.address(A*8+B), .data(0),
	.inclock(clk), .outclock(clk),
	.wren(0), .q(q1));
	
assign q2[0] = (~A[0]) & B[0] | A[0];
assign q2[1] = (~A[1]) & B[1] | A[1];
assign q2[2] = (~A[2]) & B[2] | A[2];

assign ind1 = inter_ind1;
assign ind2 = inter_ind2;

always@(posedge clk)
begin
	case(q1)
	0: inter_ind1 = 8'b00111111;
	1: inter_ind1 = 8'b00000110;
	2: inter_ind1 = 8'b01011011;
	3: inter_ind1 = 8'b01001111;
	4: inter_ind1 = 8'b01100110;
	5: inter_ind1 = 8'b01101101;
	6: inter_ind1 = 8'b01111101;
	7: inter_ind1 = 8'b00000111;
	endcase
	
	case(q2)
	0: inter_ind2 = 8'b00111111;
	1: inter_ind2 = 8'b00000110;
	2: inter_ind2 = 8'b01011011;
	3: inter_ind2 = 8'b01001111;
	4: inter_ind2 = 8'b01100110;
	5: inter_ind2 = 8'b01101101;
	6: inter_ind2 = 8'b01111101;
	7: inter_ind2 = 8'b00000111;
	endcase
end

endmodule