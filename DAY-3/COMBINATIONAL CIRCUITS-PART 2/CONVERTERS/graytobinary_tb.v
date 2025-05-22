module gtob_tb;
  reg g2,g1,g0;
  wire b2,b1,b0;
  gtob duv(.g2(g2),.g1(g1),.g0(g0),.b2(b2),.b1(b1),.b0(b0));
  initial 
    begin
      $dumpfile("test.vcd");
      $dumpvars;
      g2=0;g1=0;g0=0;#10;
      g2=0;g1=0;g0=1;#10;
      g2=0;g1=1;g0=0;#10;
      g2=0;g1=1;g0=1;#10;
      g2=1;g1=0;g0=0;#10;
      g2=1;g1=0;g0=1;#10;
      g2=1;g1=1;g0=0;#10;
      g2=1;g1=1;g0=1;#10;
    end
endmodule
