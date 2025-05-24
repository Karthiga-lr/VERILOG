module demux_1_2tb();
  reg s,a;
  wire yo,yi;
  demux_1_2 duv(.s(s),.a(a),.yo(yo),.yi(yi));
  initial 
    begin
      $dumpfile("test.vcd");
      $dumpvars;
      s=0;a=0;#10;
      s=0;a=1;#10;
      s=1;a=0;#10;
      s=1;a=1;#10;
    end
  initial
    begin
      $monitor("time=%0t s=%b a=%b yo=%b yi=%b", $time,s,a,yo,yi);
    end
endmodule
                
