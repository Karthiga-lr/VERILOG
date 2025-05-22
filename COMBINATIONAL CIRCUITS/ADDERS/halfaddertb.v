module half_adder_tb ();
  reg a_tb,b_tb;
  wire sum_tb,carry_tb;
  half_adder duv (.a(a_tb),.b(b_tb),.sum(sum_tb),.carry(carry_tb));
  initial 
    begin
    $dumpfile("test.vcd");
    $dumpvars;
      
    a_tb=0;b_tb=0; #10;
    a_tb=0;b_tb=1; #10;
    a_tb=1;b_tb=0; #10;
    a_tb=1;b_tb=1; #10;
  end
endmodule
