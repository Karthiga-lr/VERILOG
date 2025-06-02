module sequedetec_1010_tb;
  reg clk,rst,in;
  wire out;
  sequedetec_1010 duv(.clk(clk),.rst(rst),.in(in),.out(out));
  initial clk=0;
  always#5clk=~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
  end
    initial begin
      in=0;
      #10 rst=0;
      #10 rst=1;
      
      #10 in=1;
      #10 in=0;
      #10 in=1;
      #10 in=0;
      #10 in=1;
      
      #40$finish;
    end
endmodule
     
      
