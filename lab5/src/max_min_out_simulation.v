`timescale 1ns / 1ps

module max_min_top_tb;
    reg [3:0] A, B;
    wire [3:0] Max, Min;

    // 实例化顶层模块
    max_min_top uut (
        .A(A),
        .B(B),
        .Max(Max),
        .Min(Min)
    );

    initial begin
        // 测试用例 1: A > B
        A = 4'b1010; B = 4'b0110; #10;
        $display("A = %b, B = %b, Max = %b, Min = %b", A, B, Max, Min);

        // 测试用例 2: A < B
        A = 4'b0011; B = 4'b1100; #10;
        $display("A = %b, B = %b, Max = %b, Min = %b", A, B, Max, Min);

        // 测试用例 3: A == B
        A = 4'b1111; B = 4'b1111; #10;
        $display("A = %b, B = %b, Max = %b, Min = %b", A, B, Max, Min);

        // 结束仿真
        $stop;
    end
endmodule