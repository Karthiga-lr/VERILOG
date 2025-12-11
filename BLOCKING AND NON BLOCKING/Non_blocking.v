module nonblocking_example;
  reg a, b, c;
  reg clk;

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    a = 0; b = 0; c = 0;
  end

  always @(posedge clk) begin
    a <= 1;
    b <= a;
    c <= b;
  end

  initial begin
    $dumpfile("temp.vcd");
    $dumpvars();
    #50 $finish;
  end
endmodule
