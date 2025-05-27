module srff_tb;
  reg clk;
  reg s,r;
  wire q,qb;
  srff duv(s,r,clk,q,qb);
  initial begin
    clk=0;
    forever
    #5clk =~clk;
  end
  initial begin
    $monitor($time,"s=%b,r=%b,clk=%b,q=%b,qb=%b",s,r,clk,q,qb);
    $dumpfile("test.vcd");
    $dumpvars;
  end
  initial begin
      s=0;r=0;
      s=0; r=0;#10;
      s=0; r=1;#10; 
      s=1; r=0;#10;
      s=1; r=1;#10;
    
    $finish;
  end
endmodule
