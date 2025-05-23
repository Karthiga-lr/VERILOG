module fulladder(a,b,cin,sum,carry_out);
  input a,b,cin; 
  output sum,carry_out;
  assign sum=a^b^cin;
  assign carry_out=a&b|a&cin|b&cin;
endmodule
