module decoder3to8_tb;
  reg a,b,c,e;
  wire d0,d1,d2,d3,d4,d5,d6,d7;
  decoder3to8 duv(.a(a),.b(b),.c(c),.e(e),.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7));
  initial 
    begin
      $dumpfile("test.vcd");
      $dumpvars;
      a=0;b=0;c=0;e=1;#10;
      a=0;b=0;c=1;e=1;#10;
      a=0;b=1;c=0;e=1;#10;
      a=0;b=1;c=1;e=1;#10;
      a=1;b=0;c=0;e=1;#10;
      a=1;b=0;c=1;e=1;#10;
      a=1;b=1;c=0;e=1;#10;
      a=1;b=1;c=1;e=1;#10;
    end
endmodule
