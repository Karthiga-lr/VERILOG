module halfsubtractor(a,b,diff,borrow);
  input a,b;
  output diff,borrow;
  assign diff=a^b;
  assign borrow=~a&b;
endmodule

module fullsubtractor(a,b,bin,diff,borrow);
  input a,b,cin;
  output diff,borrow;
  wire w1,w2,w3;
  halfsubtractor hs1(.a(a),.b(b),.diff(w1),.borrow(w2));
  halfsubtractor hs2(.a(w1),.b(bin),.diff(diff),.carry(w3));
  or(carry,w3,w2);
endmodule
