
module dut2
	(
	 input clk,
	 input reset_l,
	 input [7:0] a2,
	 input [7:0] b2,
	 output reg [7:0]c2
	);
	
	always_ff @ (posedge clk) begin
		if (!reset_l) begin
			c2 <= 8'b0;
		end
		else begin
			c2 <= a2 - b2;
		end
	end
endmodule


