module decoder2to4_tb();
  reg a,b,e;
  wire d3,d2,d1,d0;
  decoder2to4 duv(.a(a),.b(b),.e(e),.d3(d3),.d2(d2),.d1(d1),.d0(d0));
  initial
    begin
    $dumpfile("test.vcd");
    $dumpvars;
    a=0;b=0;e=1;#10;
    a=0;b=1;e=1;#10;
    a=1;b=0;e=1;#10;
    a=1;b=1;e=1;#10;
  end
endmodule
