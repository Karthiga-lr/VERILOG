module decoder3to8(input a,b,c,e, output d0,d1,d2,d3,d4,d5,d6,d7);
  assign d0=(~a&~b&~c&e);
  assign d1=(~a&~b&c&e);
  assign d2=(~a&b&~c&e);
  assign d3=(~a&b&c&e);
  assign d4=(a&~b&~c&e);
  assign d5=(a&~b&c&e);
  assign d6=(a&b&~c&e);
  assign d7=(a&b&c&e);
endmodule
