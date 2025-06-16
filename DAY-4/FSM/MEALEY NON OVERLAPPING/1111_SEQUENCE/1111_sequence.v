module sequedetect_1111(
  input clk,
  input rst,
  input x,
  output reg y
);

  parameter s0 = 2'd0, s1 = 2'd1, s11 = 2'd2, s111 = 2'd3;
  reg [1:0] state, next_state;

  // State register update
  always @(posedge clk) begin
    if (rst == 0)
      state <= s0;
    else
      state <= next_state;
  end

  // Next state logic using if-else
  always @(*) begin
    if (state == s0) begin
      if (x == 1) next_state = s1;
      else        next_state = s0;
    end else if (state == s1) begin
      if (x == 1) next_state = s11;
      else        next_state = s0;
    end else if (state == s11) begin
      if (x == 1) next_state = s111;
      else        next_state = s0;
    end else if (state == s111) begin
      if (x == 1) next_state = s0; // Reset after full 1111 sequence (non-overlapping)
      else        next_state = s0;
    end else begin
      next_state = s0;
    end
  end

  /*always @(*) begin
    if (state == s111 && x == 1)
      y = 1;
    else
      y = 0;
  end*/
  assign y=(state == s111 && x == 1)?1:0;

endmodule

