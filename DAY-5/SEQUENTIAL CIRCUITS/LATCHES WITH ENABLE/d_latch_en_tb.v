module dlatch_tb;
  reg d,en;
  wire q,qb;
  dlatch duv(d,en,q,qb);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time d=%d en=%d q=%d qb=%d",d,en,q,qb);
    d=0;en=0;#10;
    d=1;en=0;#10;
    d=0;en=1;#10;
    d=1;en=1;#10;
    $finish;
  end
endmodule
