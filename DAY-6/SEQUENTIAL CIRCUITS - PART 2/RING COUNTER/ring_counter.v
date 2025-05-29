module ringcount(input clk,input rst,output reg [3:0] q);
  reg [3:0] a;
  always @(posedge clk) begin
    if (rst==1)
      a <= 4'b0001;
    else
      a <= a<<1;
  end

  always @(*) begin
    q = a;
  end
endmodule
