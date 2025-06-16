module sequedetect_1111_tb;
  reg clk,rst,x;
  wire y;
  sequedetect_1111 duv (.clk(clk),.rst(rst),.x(x),.y(y));
  initial clk = 0;
  always #2clk=~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
  end
  initial begin
    x=0;
    #5 rst=0;
    #5 rst=1;
 
    #5 x = 1;
    #5 x = 1;
    #5 x = 1;
    #5 x = 1;
    #5 x = 0;
    
   
    #30 $finish;
  end
endmodule
  
