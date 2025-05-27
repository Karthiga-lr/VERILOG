module srff(s,r,clk,q,qb);
  input s,r;
  input clk;
  output reg q,qb;
  always @(posedge clk) begin
    case ({s,r})
      2'b00: q <= q;        // No change
      2'b01: q <= 1'b0;     // Reset
      2'b10: q <= 1'b1;     // Set
      2'b11: q <= 1'bx;     // Invalid condition
    endcase
  end
    assign qb = ~q;
endmodule
