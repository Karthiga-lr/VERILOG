module binarytogray_conv(input b2,b1,b0, output g2,g1,g0);
                    assign g0=b1^b0;
                    assign g1=b2^b1;
                    assign g2=b2;
                    endmodule
