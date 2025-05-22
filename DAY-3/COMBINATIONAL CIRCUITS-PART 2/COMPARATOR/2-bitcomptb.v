module twobitcomparator_tb;
  reg [1:0]a,b;
  wire a_gt_b,a_lsn_b,a_eql_b;
  twobitcomparator duv (.a(a),.b(b),.a_gt_b(a_gt_b),.a_lsn_b(a_lsn_b),.a_eql_b(a_eql_b));
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
        a = 2'b00; b = 2'b00; #10;
        a = 2'b00; b = 2'b01; #10;
        a = 2'b01; b = 2'b00; #10;
        a = 2'b10; b = 2'b01; #10;
        a = 2'b01; b = 2'b10; #10;
        a = 2'b11; b = 2'b11; #10;
        a = 2'b11; b = 2'b10; #10;
        a = 2'b10; b = 2'b11; #10;
  end
endmodule
