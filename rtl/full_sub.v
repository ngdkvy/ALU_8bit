module full_sub (
	input wire a,
	input wire b,
	input wire bin,
	output wire diff,
	output wire bout
);
	wire tmp1, tmp2, tmp3;

	//half_adder hs0 (.a_in(~a),   .b_in(b),    .sum_out(tmp1), .carry_out(tmp2));
	//half_adder hs1 (.a_in(tmp1), .b_in(bin),  .sum_out(diff), .carry_out(tmp3));
	half_sub hs0 (.a(a),   .b(b),    .diff(tmp1), .borrow(tmp2));
	half_sub hs1 (.a(tmp1),.b(bin),  .diff(diff), .borrow(tmp3));
	assign bout = tmp2 | tmp3;
endmodule
