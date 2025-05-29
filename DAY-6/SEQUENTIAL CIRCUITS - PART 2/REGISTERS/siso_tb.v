module siso_tb;
  reg si,clk,rst;
  wire so;
  siso duv(.si(si),.clk(clk),.rst(rst),.so(so));
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("time si=%d clk=%d rst=%d so=%d",si,clk,rst,so);
    clk=1;
    forever #5clk=~clk;
  end
  initial begin
    rst=1;
    si=0;#10;
    rst=0;
    si=1;#10;
    si=0;#10;
    si=1;#10;
    si=0;#10;
    si=0;#10;
    si=0;#10;
    #100$finish;
  end
endmodule
    
