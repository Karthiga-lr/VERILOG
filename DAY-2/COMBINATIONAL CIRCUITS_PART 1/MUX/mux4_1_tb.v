module mux_4_1_tb();
  reg a,b,c,d,so,si;
  wire y;
  mux_4_1 duv(.a(a),.b(b),.c(c),.d(d),.so(so),.si(si),.y(y));
  initial 
    begin
      $dumpfile("test.vcd");
      $dumpvars;
    so=0;si=0;a=1;#10;
    so=0;si=0;a=1;#10;
    so=0;si=1;b=1;#10;
    so=0;si=1;b=1;#10;
    so=1;si=0;c=1;#10;
    so=1;si=0;c=1;#10;
    so=1;si=1;d=1;#10;
    so=1;si=1;d=1;#10;
  end
  initial begin
    $monitor ("%time=%0t a=%b b=%b c=%b d=%b so=%b si=%b y=%b", $time,a,b,c,d,so,si,y);
  end
endmodule
