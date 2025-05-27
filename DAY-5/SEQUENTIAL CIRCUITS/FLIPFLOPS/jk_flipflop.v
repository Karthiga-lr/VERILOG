module jkff(
  input j,
  input k,
  input clk,
  input rs,
  output reg q,
  output qb
);
  initial q = 0;  

  always @(posedge clk) begin
    if (rs) begin
      q <= 1'b1;
    end else begin
      case ({j, k})
        2'b00: q <= q;
        2'b01: q <= 1'b0;
        2'b10: q <= 1'b1;
        2'b11: q <= ~q;  // toggle
      endcase
    end
  end

  assign qb = ~q;
endmodule
