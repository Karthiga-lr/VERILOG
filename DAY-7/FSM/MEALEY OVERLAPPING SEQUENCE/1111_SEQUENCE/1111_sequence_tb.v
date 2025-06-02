module sequedetec_1111_tb;
  reg clk,rst,in;
  wire out;
  sequedetec_1111 duv(.clk(clk),.rst(rst),.in(in),.out(out));
  initial clk=0;
  always #5clk=~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("time=%0t clk=%b rst=%b in=%b out=%b", $time, clk, rst, in, out);
  end
  initial begin
    
    in=0;
    #10rst=0;
    #10rst=1;
    
    #4 in=1;
    #6 in=1;
    #8 in=1;
    #8 in=1;
    #10 in=0;
    #12 in=1;
    #12 in=1;
    
    #40 $finish;
  end
endmodule
  
  
