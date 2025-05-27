module tlatch(input t,output q,qb);
  assign q=~(qb|t|qb);
  assign qb=~(q|t|q);
endmodule
