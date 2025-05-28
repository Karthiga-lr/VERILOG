module srlatch_tb;
  reg s,r,en;
  wire q,qb;
  srlatch duv(s,r,en,q,qb);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("time s=%d r=%d en=%d q=%d qb=%d",s,r,en,q,qb);
    s=0;r=0;en=0;#10;
    s=0;r=1;en=0;#10;
    s=1;r=0;en=0;#10;
    s=1;r=1;en=0;#10;
  end
  
endmodule
