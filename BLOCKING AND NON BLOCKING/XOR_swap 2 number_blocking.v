module blocking_example;
  reg [3:0] a, b;
 
  initial begin
    a = 4'b1010;
    b = 4'b1011;
    $display("Before swap a = %0d, b = %0d",a,b);
  end

  initial begin
    a = a^b;
    b = a^b;
    a = a^b;
  end
  initial begin
    $display("After swap a = %0d, b = %0d",a,b);
  end
endmodule
