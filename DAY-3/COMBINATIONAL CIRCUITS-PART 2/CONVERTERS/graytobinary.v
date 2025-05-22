module gtob(input g2,g1,g0, output b2,b1,b0);
  assign b0=g2^g1^g0;
  assign b1=g2^g1;
  assign b2=g2;
endmodule
