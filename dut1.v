
module dut1
	(
	 input clk,
	 input reset_l,
	 input [7:0] a1,
	 input [7:0] b1,
	 output reg [7:0]c1
	);
	
	always @ (posedge clk) begin
		if (!reset_l) begin
			c1 <= 8'b0;
		end
		else begin
			c1 <= a1 + b1;
		end
	end
endmodule


