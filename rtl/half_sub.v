module half_sub (
	input wire a,
	input wire b,
	output wire diff,
	output wire borrow
);
	assign diff   = a ^ b;
	assign borrow = ~a & b;
endmodule
