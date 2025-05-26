module sr_tb();
  reg s,r;
  wire q,qb;
  sr duv(.s(s),.r(r),.q(q),.qb(qb));
  initial begin    $monitor($time,"s=%b,r=%b,q=%b,qb=%b",s,r,q,qb);
    $dumpfile("test.vcd");
    $dumpvars;
    
    s=0;r=0;#10;
    s=0;r=1;#10;
    s=1;r=0;#10;
    s=1;r=1;#10;
  end
endmodule
