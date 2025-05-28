module upcount_tb();
  reg rst,clk;
  wire [3:0] count;
  upcount duv(rst,clk,count);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("time, rst=%b clk=%b count=%b ",rst,clk,count);
    clk=0;
    rst=1;
    #15; rst=0;
    #200;
    $finish; 
  end
  always #5 clk=~clk;
endmodule 
