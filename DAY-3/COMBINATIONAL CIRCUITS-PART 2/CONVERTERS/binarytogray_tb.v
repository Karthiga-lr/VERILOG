module binarytogray_convtb;
  reg b2,b1,b0;
  wire g2,g1,g0;
  binarytogray_conv duv(.b2(b2),.b1(b1),.b0(b0),.g2(g2),.g1(g1),.g0(g0));
                   initial
                     begin
                       $dumpfile("test.vcd");
                       $dumpvars;
                       b2=0;b1=0;b0=0;#10;
                       b2=0;b1=0;b0=1;#10;
                       b2=0;b1=1;b0=0;#10;
                       b2=0;b1=1;b0=1;#10;
                       b2=1;b1=0;b0=0;#10;
                       b2=1;b1=0;b0=1;#10;
                       b2=1;b1=1;b0=0;#10;
                       b2=1;b1=1;b0=1;#10;
                     end
                   endmodule
