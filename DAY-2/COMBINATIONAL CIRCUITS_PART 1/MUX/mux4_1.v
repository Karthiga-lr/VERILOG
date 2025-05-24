module mux_4_1(a,b,c,d,so,si,y);
  input a,b,c,d,so,si;
  output y;
  assign y=(~so&~si&a)|(~so&si&b)|(so&~si&c)|(so&si&d);
endmodule
