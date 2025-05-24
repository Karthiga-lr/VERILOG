module mux_2_1(input a,b,s, output y);
  assign y=(a&~s)|(b&s);
endmodule
