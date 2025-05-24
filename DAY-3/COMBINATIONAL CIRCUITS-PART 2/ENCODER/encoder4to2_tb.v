module encoder4to2tb();
  reg d0,d1,d2,d3;
  wire a,b;
  encoder4to2 duv(.*);
  initial 
    begin
      $dumpfile("test.vcd");
      $dumpvars;
      d3=0;d2=0;d1=0;d0=1;#10;
      d3=0;d2=0;d1=1;d0=0;#10;
      d3=0;d2=1;d1=0;d0=0;#10;
      d3=1;d2=0;d1=0;d0=0;#10;
    end
endmodule
