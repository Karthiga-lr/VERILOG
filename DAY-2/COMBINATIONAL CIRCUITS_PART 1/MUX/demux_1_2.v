module demux_1_2(s,a,yo,yi);
  input s,a;
  output yo,yi;
  assign yo=~s&a;
  assign yi=s&a;
endmodule
