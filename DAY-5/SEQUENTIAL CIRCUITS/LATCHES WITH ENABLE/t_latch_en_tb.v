module tlatch_tb;
  reg t,en;
  wire q,qn;
  tlatch duv(t,en,q,qn);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time t=%d en=%d q=%d qn=%d",t,en,q,qn);
    t=0;en=1;#10;
    t=1;en=1;#10;
  end
endmodule
