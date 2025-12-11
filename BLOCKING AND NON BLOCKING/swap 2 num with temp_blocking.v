module swap_two_numbers_blocking;
  reg [3:0] a,b,temp;
  
  initial begin
  a = 12;
  b = 9;
  
  $display("Before swap: a= %0d, b = %0d, temp = %0d", a,b,temp);
 
    temp = a;
    a = b;
    b = temp;  // blocking assignment 
  
    $display("After swap: a= %0d, b = %0d, temp = %0d", a,b,temp);
  end
endmodule

# Before swap: a= 12, b = 9, temp = x
# After swap: a= 9, b = 12, temp = 12
# exit
