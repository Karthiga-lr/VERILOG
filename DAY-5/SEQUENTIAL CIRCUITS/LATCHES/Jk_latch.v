module jk(input j,k, output q,qb);
  assign q=~(qb|j|qb);
  assign qb=~(q|k|q);
endmodule
