module moore_1011detec(
    input clk,
    input rst,
    input in,
    output reg out
);
    parameter s0 = 2'd0,s1 = 2'd1,s10 = 2'd2,s101 = 2'd3,s1011=2'd3;
    reg [1:0] state, next_state;
  always @(posedge clk or posedge rst) begin
      if (rst!=1)
            state <= s0;
        else
            state <= next_state;
    end

    always @(*) begin
      if (state == s0) begin
          if (in==1)
                next_state = s1;
            else
                next_state = s0;
        end
      else if (state == s1) begin
          if (in==0)
                next_state = s10;
            else
                next_state = s1;
        end
      else if (state == s10) begin
        if (in==1)
                next_state = s101;
            else
                next_state = s0;
        end
      else if (state == s101) begin
        if (in==1)
                next_state = s1011;
            else
                next_state = s10;
        end
      else if (state == s1011) begin
        if (in==1)
                next_state = s1;
            else
                next_state = s0;
        end
        else begin
            next_state = s0;
        end
    end

    always @(*) begin
      if (state == s1011)
            out = 1;
        else
            out = 0;
    end
endmodule

        
