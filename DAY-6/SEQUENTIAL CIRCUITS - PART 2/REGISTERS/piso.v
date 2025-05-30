module piso(clk,load,pi,so);
  input clk,load;
  input [3:0]pi;
  output reg so;
  reg [3:0] temp;
  always@(posedge clk)begin
    if(load!=1)begin
    temp<=pi;
      end
      else begin
        so<=temp[0];
        temp=temp>>1;
      end
  end
endmodule
    
