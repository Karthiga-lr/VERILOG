module decoder2to4(input a,b,e, output d3,d2,d1,d0);
  assign d0=(~a&~b&e);
  assign d1=(~a&b&e);
  assign d2=(a&~b&e);
  assign d3=(a&b&e);
endmodule
