module pipo_tb;
  reg clk;
  reg [3:0]d;
  wire [3:0]q;
  pipo duv (.clk(clk),.d(d),.q(q)); 
initial begin  
  $dumpfile("test.vcd");
  $dumpvars(1);
  $monitor("time clk=%b d=%b q=%b", clk,d,q);
    clk=0;
    d=0;
    #40;
    d=4'b1001;#50;
    d=4'b1111;#50;
   #100$finish;
end
  always #5clk=~clk;
endmodule
    
