module encoder4to2(d0,d1,d2,d3,a,b);
  input d0,d1,d2,d3;
  output a,b;
  assign a=d2+d3;
  assign b=d1+d3;
endmodule
    
