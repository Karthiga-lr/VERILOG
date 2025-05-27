module jkff_tb;
  reg clk, rs, j, k;
  wire q, qb;

 jkff uut(
    .j(j),
    .k(k),
    .clk(clk),
    .rs(rs),
    .q(q),
    .qb(qb)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $dumpfile("test.vcd");
    $dumpvars(0, jkff_tb);  

    // Initialize signals before first posedge clk
    rs = 0;
    j = 0;
    k = 0;
    #1;  // small delay so that q has initial value

    $monitor($time, " rs=%b j=%b k=%b clk=%b q=%b qb=%b", rs, j, k, clk, q, qb);

    #10 j = 0; k = 1;
    #10 j = 1; k = 0;
    #10 j = 1; k = 1;
    #10 rs = 1; j = 0; k = 0;  
    #10 rs = 0; j = 1; k = 1;
    #20;$finish;
  end
endmodule
