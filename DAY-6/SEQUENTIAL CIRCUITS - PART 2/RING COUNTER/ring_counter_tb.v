module ringcount_tb;
  reg clk, rst;
  wire [3:0] q;
  ringcount duv (.clk(clk),.rst(rst),.q(q));
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("time=%0t clk=%b rst=%b q=%b", $time, clk, rst, q);

    rst = 0;
    #20 rst = 1;
    #20 rst = 0;
    #110 $finish;
  end
endmodule 
