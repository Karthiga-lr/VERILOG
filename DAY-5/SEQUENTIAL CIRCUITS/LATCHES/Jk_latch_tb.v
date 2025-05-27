module jk_tb();
  reg j,k;
  wire q,qb;
  jk duv(.j(j),.k(k),.q(q),.qb(qb));
  initial begin
    
    $monitor($time,"j=%b,k=%b,q=%b,qb=%b",j,k,q,qb);
    j=0;k=0;#10;
    j=0;k=1;#10;
    j=1;k=0;#10;
    j=1;k=1;#10;
  end
endmodule
