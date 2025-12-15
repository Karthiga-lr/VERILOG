module swap_ref;
  int a = 5, b = 10;
  
  function automatic void swap(ref int x,y);
    int temp;
    temp = x;
    x = y;
    y = temp;
  endfunction
  
  initial begin
    swap(a,b);
    $display("values of a = %0d, b = %0d",a,b);
  end
endmodule

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: values of a = 10, b = 5
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
