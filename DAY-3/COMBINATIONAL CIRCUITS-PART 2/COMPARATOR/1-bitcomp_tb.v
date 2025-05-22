module comp_tb();
  reg a_tb,b_tb;
  wire a_eql_btb,a_grt_btb,a_lsn_btb;
  comp duv(.a(a_tb),.b(b_tb),.a_eql_b(a_eql_btb),.a_grt_b(a_grt_btb),.a_lsn_b(a_lsn_btb));
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    a_tb=0;b_tb=0;#10;
    a_tb=0;b_tb=1;#10;
    a_tb=1;b_tb=0;#10;
    a_tb=1;b_tb=1;#10;
  end
endmodule
