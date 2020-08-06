
module top
  (
   input       clk,
   input       reset_l,
   input [7:0] y,
   input [7:0] x1,
   input [7:0] y1,

   inout wire [7:0] a_c2,
   inout wire [7:0] c_b2,
   inout wire [7:0] c1_a2
   );

   dut dut (
            .clk                        (clk),
            .reset_l                    (reset_l),
			.a							(a_c2),
			.b							(y),
			.c							(c_b2));

   dut1 dut1 (
            .clk                        (clk),
            .reset_l                    (reset_l),
			.a1							(x1),
			.b1							(y1),
			.c1							(c1_a2));

   dut2 dut2 (
            .clk                        (clk),
            .reset_l                    (reset_l),
			.a2							(c1_a2),
			.b2							(c_b2),
			.c2							(a_c2));


   // Print some stuff as an example
   initial begin
      if ($test$plusargs("trace") != 0) begin
         $display("[%0t] Tracing to logs/vlt_dump.vcd...\n", $time);
         $dumpfile("logs/vlt_dump.vcd");
         $dumpvars();
      end
      $display("[%0t] Model running...\n", $time);
   end

endmodule
