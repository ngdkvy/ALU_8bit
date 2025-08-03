module zero_flag(
	input wire [7:0] y,
	output wire result
);
	assign result = ~|y;
endmodule
