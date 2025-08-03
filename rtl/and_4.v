module and_4(
	input wire  [3:0] a,
	input wire  [3:0] b,
	output wire [3:0] y
);
	and and0(.y(y[0]), .a(a[0]), .b(b[0]));
	and and1(.y(y[1]), .a(a[1]), .b(b[1]));
	and and2(.y(y[2]), .a(a[2]), .b(b[2]));
	and and3(.y(y[3]), .a(a[3]), .b(b[3]));
endmodule
