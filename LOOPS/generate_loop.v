module ha (
  input a,
  input b,
  output sum,
  output carry
);
  assign sum = a^b;
  assign carry = a&b;
endmodule

module top(
  input [3:0] a,
  input [3:0] b,
  output [3:0] sum,
  output [3:0] carry,
);
  
  genvar i;
  generate
    for(i=0; i <4;i++)begin
      ha h_inst(.a(a[i]),.b(b[i]),.sum(sum[i]),.carry(carry[i]));
  end
  endgenerate 
endmodule
