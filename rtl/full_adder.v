module full_adder (
	input a,
	input  b,
	input  c,
	output sum,
	output carry
);
	wire tmp1, tmp2, tmp3;

	half_adder ha0 (.a_in(a),.b_in(b), .sum_out(tmp1), .carry_out(tmp2));
	half_adder ha1 (.a_in(tmp1),.b_in(c), .sum_out(sum), .carry_out(tmp3));
	assign carry = tmp2 | tmp3;
endmodule
