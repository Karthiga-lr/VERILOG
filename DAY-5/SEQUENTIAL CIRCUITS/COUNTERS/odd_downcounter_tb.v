module odd_downcount_tb;
  reg rst,clk;
  wire [1:0] count;
  odd_downcount duv(rst,clk,count);
  always #5clk=~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor ("time rst=%d clk=%d count=%d", rst,clk,count);
    clk=0;
    rst=1;
    #10;rst=0;
    #100 $finish;
  end
endmodule
    
  
