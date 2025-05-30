module sipo_tb;
  reg clk,si;
  wire [3:0]q;
  sipo duv(.clk(clk),.si(si)
           ,.q(q));
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("time clk=%b, si=%b, q=%b", clk,si,q);
    clk=0;
    si=1;#10;
    si=0;#10;
    si=1;#10;
    si=0;#10;
    #100$finish;
   
  end
  always #5clk=~clk;
endmodule
    
