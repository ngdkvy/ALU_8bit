module full_adder_8b #(parameter BIT = 8)
	(
		input wire  [BIT-1:0] a,
		input wire  [BIT-1:0] b,
		output wire [BIT-1:0] sum,
		output wire carry
	);
	wire [BIT-1 : 0] cout;
	genvar i;
	generate 
		for ( i = 0 ; i < BIT ; i = i + 1) begin : fa
			full_adder fa0 (.a(a[i]), .b(b[i]),  .c( i != 0 ? cout[i-1] : 1'b0), .sum(sum[i]), .carry(cout[i]));
		end
	endgenerate
	assign carry = cout [BIT-1];
endmodule
