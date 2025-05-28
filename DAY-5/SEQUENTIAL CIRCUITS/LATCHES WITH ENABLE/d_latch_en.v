module dlatch(input d,en,output reg q, output qb);
   assign qb =~q;
   always @(*) begin
     if(en==1)
      q<=d;
   end
endmodule
       
