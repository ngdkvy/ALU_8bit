module alu(
	input wire [7:0] a,
	input wire [7:0] b,
	input wire [2:0] ctrl,

	output reg [7:0] y,
	output reg zero,
	output reg negative,
	output reg carry
);
	wire [7:0] add_res, sub_res;
	wire add_carry, sub_borrow;
	
	full_adder_8b fa_result (.a(a), .b(b), .sum(add_res),  .carry(add_carry));
	full_sub_8b   fs_result (.a(a), .b(b), .diff(sub_res), .borrow(sub_borrow));

	always @(a or b or ctrl)
	begin
                y        = 8'b0;
                zero     = 1'b0;
                negative = 1'b0;
                carry    = 1'b0;
		case (ctrl)
			3'b000: begin
					   y = a & b;
					zero = ~|y;
				end
			3'b001: begin
					   y = a | b;
					zero = ~|y;
				end	
			3'b010: begin
					 y     = add_res;
					 carry = add_carry;
					 zero  = ~|y;
				end
			3'b110: begin 
					y     = sub_res;
					carry = sub_borrow;
				     negative = sub_borrow;	
				   	 zero = ~|y;
				end
			default:begin 
					     y = 8'b0;
					zero     = 1'b0;
					negative = 1'b0;
					carry    = 1'b0;
				end
		endcase
	end
endmodule

