module d_tb();
  reg d;
  wire q,qb;
  d duv(.d(d),.q(q),.qb(qb));
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;   $monitor($time,"d=%b,q=%b,qb=%b",d,q,qb);
    d=0;#10;
    d=1;#10;
  end
endmodule
