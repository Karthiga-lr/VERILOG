module tlatch_tb();
  reg t;
  wire q,qb;
  tlatch duv(.t(t),.q(q),.qb(qb));
  initial begin
    $monitor($time,"t=%b,q=%b,qb=%b",t,q,qb);
    t=0;#10;
    t=1;#10;
  end
endmodule
