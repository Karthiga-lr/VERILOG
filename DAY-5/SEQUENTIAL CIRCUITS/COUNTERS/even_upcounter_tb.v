module even_upcount_tb;
  reg rst,clk;
  wire [3:0] count;
  even_upcount duv(rst,clk,count);
  always #5 clk=~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("time rst=%d, clk=%d, count=%d",rst,clk,count);
    clk=0;
    rst=1;
    #10;rst=0;
    #100;$finish;
  end
endmodule
    
