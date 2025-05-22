module twobitcomparator(a,b,a_gt_b,a_lsn_b,a_eql_b);
  input [1:0]a,b;
  output a_gt_b,a_lsn_b,a_eql_b;
    assign a_gt_b = (a > b);
    assign a_eql_b = (a == b);
    assign a_lsn_b = (a < b);
endmodule
