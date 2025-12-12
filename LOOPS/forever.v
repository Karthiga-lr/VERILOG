module forever_loop;
  integer count = 0;
  initial begin
  forever begin
    $display("value of count = %0d",count);
    count++;
    #5;
  end
  end
    initial begin
      #30;
      $finish;
    end
 endmodule
