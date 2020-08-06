
module dut
	(
	 input clk,
	 input reset_l,
	 input [7:0] a,
	 input [7:0] b,
	 output reg [7:0]c
	);
	
	always_ff @ (posedge clk) begin
		if (!reset_l) begin
			c <= 8'b0;
		end
		else begin
			c <= a + b;
		end
	end
endmodule


