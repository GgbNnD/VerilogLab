`timescale 1ns / 1ps

module abs_diff_tb;
    reg [3:0] A, B;
    wire [3:0] AbsDiff;

    // 实例化绝对值计算模块
    abs_diff uut (
        .A(A),
        .B(B),
        .AbsDiff(AbsDiff)
    );

    initial begin
        // 测试用例 1: A > B
        A = 4'b1010; B = 4'b0110; #10;  // |10 - 6| = 4
        $display("A = %b, B = %b, |A - B| = %b", A, B, AbsDiff);

        // 测试用例 2: A < B
        A = 4'b0011; B = 4'b1100; #10;  // |3 - 12| = 9
        $display("A = %b, B = %b, |A - B| = %b", A, B, AbsDiff);

        // 测试用例 3: A == B
        A = 4'b1111; B = 4'b1111; #10;  // |15 - 15| = 0
        $display("A = %b, B = %b, |A - B| = %b", A, B, AbsDiff);

        // 结束仿真
        $stop;
    end
endmodule