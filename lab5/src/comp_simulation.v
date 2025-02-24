`timescale 1ns / 1ps

module comparator_4bit_tb;

    // 测试信号
    reg [3:0] A, B;
    wire EQ, GT, LT;

    // 实例化比较器
    comparator_4bit uut (
        .A(A),
        .B(B),
        .EQ(EQ),
        .GT(GT),
        .LT(LT)
    );

    // 测试过程
    initial begin
        // 测试不同的输入组合
        A = 4'b0101; B = 4'b0101; #10; // A == B
        A = 4'b1010; B = 4'b0101; #10; // A > B
        A = 4'b0011; B = 4'b1100; #10; // A < B
        A = 4'b1111; B = 4'b0000; #10; // A > B
        A = 4'b0000; B = 4'b1111; #10; // A < B

        // 结束仿真
        $stop;
    end

endmodule
