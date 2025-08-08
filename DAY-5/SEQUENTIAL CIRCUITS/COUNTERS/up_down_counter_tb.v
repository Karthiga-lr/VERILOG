module up_down_counter_tb;
  reg clk,rst,d;
  wire [3:0] count;
  up_down_counter dut (.clk(clk),.rst(rst),.d(d),.count(count));
  always #5 clk = ~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("clk = %0d rst = %0d d = %0d count = %0d", clk,rst,d,count);
    clk = 0;
    rst = 1;
    d = 0;
    #10 rst = 0;
    d = 1;  // count up
    #20 d = 0; // count down
    #100 $finish;
  end
endmodule
