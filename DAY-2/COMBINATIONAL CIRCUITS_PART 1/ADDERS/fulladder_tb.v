module fulladder_tb();
  reg a,b,cin;
  wire sum,carry_out;
  fulladder duv (.a(a),.b(b),.cin(cin),.sum(sum),.carry_out(carry_out));
  initial
    begin
  
  $dumpfile("test.vcd");
  $dumpvars;
  
  a=0;b=0;cin=0; #10;
  a=0;b=0;cin=1; #10;
  a=0;b=1;cin=0; #10;
  a=0;b=1;cin=1; #10;
  a=1;b=0;cin=0; #10;
  a=1;b=0;cin=1; #10;
  a=1;b=1;cin=0; #10;
  a=1;b=1;cin=1; #10;
    end
endmodule
