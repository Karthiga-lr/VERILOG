module pass_by_val;
  int a = 10;
  
  function void incr(int x);
    x = x +1;
  endfunction
  
 initial begin
   incr(a);
   $display("value of a = %0d",a);
 end
endmodule

# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4665 kB (elbread=427 elab2=4103 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: value of a = 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
