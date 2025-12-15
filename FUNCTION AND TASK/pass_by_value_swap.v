module swap_val;
  int a = 5, b = 10;
  
  function void swap(int x,y);
    int temp;
    temp = x;
    x = y;
    y = temp;
  endfunction
  
  initial begin
    swap(a,b);
    $display("values of a = %0d, b = %0d",a,b); // pass by value, swapping doesn't happen
  end
endmodule

 KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: values of a = 5, b = 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
