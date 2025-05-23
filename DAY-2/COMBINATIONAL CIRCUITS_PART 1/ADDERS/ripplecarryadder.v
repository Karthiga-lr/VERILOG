module fa(input a,b,cin,output sum,carry);
assign sum=(a^b^cin);
assign carry=(a & b | cin & b | a & cin);
endmodule

//ripple carry adder or parallel adder
module rca(input [3:0]a,b,input cin,output [3:0] sum,output cout);
wire x,y,z;
fa fa1(a[0],b[0],cin,sum[0],x);
fa fa2(a[1],b[1],x,sum[1],y);
fa fa3(a[2],b[2],y,sum[2],z);
fa fa4(a[3],b[3],z,sum[3],cout);
endmodule
