module basicgate_tb();
  reg a_tb,b_tb;
  wire  cand_tb,cor_tb,cnot_tb,cnand_tb,cnor_tb,cxor_tb,c_xnor_tb;
  basicgate duv (.a(a_tb),.b(b_tb),.cand(cand_tb),.cor(cor_tb),.cnot(cnot_tb),.cnand(cnand_tb),.cnor(cnor_tb),.cxor(cxor_tb),.cxnor(cxnor_tb));
  initial
    begin
      $dumpfile ("test.vcd");
      $dumpvars;
      
      a_tb=0;b_tb=0;#5;
      a_tb=0;b_tb=1;#5;
      a_tb=1;b_tb=0;#5;
      a_tb=1;b_tb=1;#5;
    end
endmodule
