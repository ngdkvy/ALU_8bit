module and_8(
	input wire [7:0] a,
	input wire [7:0] b,
	output wire [7:0] y
);
	and_4 and0 (.a(a[3:0]), .b(b[3:0]), .y(y[3:0]));
	and_4 and1 (.a(a[7:4]), .b(b[7:4]), .y(y[7:4]));
endmodule
