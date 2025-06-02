module fsm_1101(input clk,rst,in, output reg out);
 parameter s0 = 2'd0, s1 = 2'd1, s11 = 2'd2, s110 = 2'd3;
  reg [1:0] state;
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      state <= s0;
      out <= 1'b0;
    end else begin
      case (state)
        s0: begin
          state <= in ? s1 : s0;
          out <= 1'b0;
        end
        s1: begin
          state <= in ? s11 : s0;
          out <= 1'b0;
        end
        s11: begin
          state <= in ? s11 : s110;
          out <= 1'b0;
        end
        s110: begin
          state <= in ? s0 : s0;
          out <= in ? 1'b1 : 1'b0;
        end
        default: begin
          state <= s0;
          out <= 1'b0;
        end
      endcase
    end
  end
endmodule

