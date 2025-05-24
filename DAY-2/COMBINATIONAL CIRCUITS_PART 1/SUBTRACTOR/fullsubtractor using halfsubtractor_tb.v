module fullsubtractor_tb();
  reg a_tb,b_tb,bin_tb;
  wire diff_tb,borrow_tb;
  fullsubtractor duv(.a(a_tb),.b(b_tb),.bin(bin_tb),.diff(diff_tb),.borrow(borrow_tb));
  initial 
    begin
      $dumpfile("test.vcd");
      $dumpvars;
      
  a_tb=0;b_tb=0;bin_tb=0; #10;
  a_tb=0;b_tb=0;bin_tb=1; #10;
  a_tb=0;b_tb=1;bin_tb=0; #10;
  a_tb=0;b_tb=1;bin_tb=1; #10;
  a_tb=1;b_tb=0;bin_tb=0; #10;
  a_tb=1;b_tb=0;bin_tb=1; #10;
  a_tb=1;b_tb=1;bin_tb=0; #10;
  a_tb=1;b_tb=1;bin_tb=1; #10;
    end
endmodule
  
