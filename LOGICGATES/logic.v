module basicgate(a,b,cand,cor,cnot,cnand,cnor,cxor,cxnor);
  input a,b;
  output cand,cor,cnot,cnand,cnor,cxor,cxnor;
  and a1(cand,a,b);
  or a2(cor,a,b);
  not a3(cnot,a);
  nand a4(cnand,a,b);
  nor a5(cnor,a,b);
  xor a6(cxor,a,b);
  xnor a7(cxnor,a,b);
endmodule
