module piso_tb;
  reg clk,load;
  reg [3:0]pi;
  wire so;
  piso duv(.clk(clk),.load(load),.pi(pi),.so(so));
  initial begin
    clk=1;
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("time clk=%b load=%b pi=%b so=%b", clk,load,pi,so);
    forever #5clk=~clk;
  end
    initial begin
      load=0;
      pi=4'b1010;#10;
      load=1;#10;
      load=1;#10;
      load=1;#10;
      load=1;#10;
      load=0;
      pi=4'b0101;#10;
      load=1;#10;
      load=1;#10;
      load=1;#10;
      load=1;#10;
      #80$finish;
    end
endmodule
