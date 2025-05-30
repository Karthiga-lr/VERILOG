module sipo(clk,si,q);
  input clk,si;
  output reg [3:0]q;
  always@(posedge clk)begin
    q[0]<=si; //left shift operation
    q[1]<=q[0];
    q[2]<=q[1];
    q[3]<=q[2];
  end
endmodule
