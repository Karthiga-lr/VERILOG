module tlatch(input t,en, output reg q, output qn);
  assign qn=~q;
  always @(*) begin
     if(en==1)
      q<=~t;
   end
endmodule
