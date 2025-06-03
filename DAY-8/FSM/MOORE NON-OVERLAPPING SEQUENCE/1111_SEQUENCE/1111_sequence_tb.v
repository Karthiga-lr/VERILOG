module moore_1111detec_tb;
  reg clk,rst,in;
  wire out;
moore_1111detec dut(.clk(clk),.rst(rst),.in(in),.out(out));
                  initial clk=0;
                  always#5 clk=~clk; 
                  initial begin
                    $dumpfile("test.vcd");
                    $dumpvars(1);
                  end
                  initial begin
                    in=0;
                    #10 rst=0;
                    #10 rst=1;
                    
                    #10 in=1;
                    #10 in=1;
                    #10 in=1;
                    #10 in=1;
                    
                    #50 $finish;
                  end
                  endmodule
                  
