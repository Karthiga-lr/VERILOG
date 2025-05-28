module downcount_tb;
  reg rst,clk;
  wire [3:0] count;
  downcount duv(rst,clk,count);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("time rst=%d, clk=%d, count=%d", rst,clk,count);
    clk=0;
    rst=1;
    #10; rst=0; //negedge clk
    #200;
    $finish;
  end
  always #5clk=~clk;
endmodule
