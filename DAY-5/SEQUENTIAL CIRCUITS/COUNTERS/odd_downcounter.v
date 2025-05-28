module odd_downcount(input rst,clk, output reg [1:0] count);
  always@(posedge clk)
    begin
      if(rst)
        count<=4'b11;
      else
        count<=count-2;
    end 
endmodule
