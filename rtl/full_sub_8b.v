module full_sub_8b #(parameter BIT = 8)
	(
		input wire  [BIT-1:0] a,
		input wire  [BIT-1:0] b,
		output wire [BIT-1:0] diff,
		output wire borrow
);
	wire [BIT-1: 0] bout;
	genvar i;
	generate 
		for (i = 0 ; i < BIT; i = i + 1) 
		begin :fs	
			full_sub fs (.a(a[i]), .b(b[i]), .bin( i != 0 ? bout [i-1] : 1'b0), .diff(diff[i]), .bout(bout[i]));
		end
	endgenerate
assign borrow = bout [BIT-1];

endmodule
