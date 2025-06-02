module fsm_1101_tb;
  reg clk, rst, in;
  wire out;

  // Instantiate the DUT
  fsm_1101 duv(.clk(clk), .rst(rst), .in(in), .out(out));

  // Clock generation
  initial clk = 1'b0;
  always #5 clk = ~clk;

  // Reset logic
  initial begin
    rst = 1'b1;
    #10 rst = 1'b0;
  end

  // Stimulus and waveform setup
  initial begin
    $monitor("time=%0t clk=%b rst=%b in=%b out=%b", $time, clk, rst, in, out);
    $dumpfile("test.vcd");
    $dumpvars(0, fsm_1101_tb);

    in = 1'b0;
    #10 in = 1'b1;
    #10 in = 1'b1;
    #10 in = 1'b0;
    #10 in = 1'b1;
    #10 in = 1'b1;
    #10 in = 1'b1;
    #20 $finish;
  end
endmodule
