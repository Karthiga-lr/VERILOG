module sequedetec_1111(input clk,rst,in,output reg out);
  parameter s0=2'd0,s1=2'd1,s11=2'd2,s111=2'd3;
  reg[1:0] state, next_state;
  always@(posedge clk)begin
    if(rst!==1)
      state<=s0;
    else
      state<=next_state;
    end
  always@(*)begin
      if(state==s0)begin
        if(in==1) next_state=s1;
        else next_state=s0;
      end else if (state==s1)begin
        if(in==1) next_state=s11;
        else next_state=s0;
      end else if(state==s11)begin
        if(in==1) next_state=s111;
        else next_state=s0;
      end else if(state==s111)begin
        if(in==1) next_state=s1;
        else next_state=s0;
      end
        else begin next_state=s0;
      end
    end
      assign out=(state==s111 && in==1)?1:0;
      endmodule

    
  
  
  
