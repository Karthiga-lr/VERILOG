module mux_2_1tb();
  reg a,b,s;
  wire y;
  mux_2_1 duv (.a(a),.b(b),.s(s),.y(y));
  initial begin
    $dumpfile ("test.vcd");
    $dumpvars;
    a=0;b=0;s=0;#10;
    a=0;b=1;s=0;#10;
    a=1;b=0;s=0;#10;
    a=1;b=1;s=0;#10;
    a=0;b=0;s=1;#10;
    a=0;b=1;s=1;#10;
    a=1;b=0;s=1;#10;
    a=1;b=1;s=1;#10;
  end
  initial begin
    $monitor("time=%0t a=%b b=%b s=%b y=%b",$time,a,b,s,y);
  end
endmodule
