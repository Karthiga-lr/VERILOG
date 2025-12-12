module tb_top;

    reg  [3:0] a, b;
    wire [3:0] sum, carry;

    top dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        
        a = 4'b0000; b = 4'b0000; #10;
        $display("a=%b b=%b | sum=%b carry=%b", a, b, sum, carry);

        a = 4'b0101; b = 4'b0011; #10;
        $display("a=%b b=%b | sum=%b carry=%b", a, b, sum, carry);

        a = 4'b1111; b = 4'b0001; #10;
        $display("a=%b b=%b | sum=%b carry=%b", a, b, sum, carry);

        a = 4'b1010; b = 4'b1100; #10;
        $display("a=%b b=%b | sum=%b carry=%b", a, b, sum, carry);

        $finish;
    end

endmodule
