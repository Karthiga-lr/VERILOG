module johnsoncount(
  input clk,
  input rst,
  output reg [3:0] q
);

  always @(posedge clk) begin
    if (rst==1)
      q <= 4'b0000; 
    else begin
      q[0] <= ~q[3]; //Invert msb and store in lsb
      q[1] <= q[0];
      q[2] <= q[1];
      q[3] <= q[2];
    end
  end
endmodule

