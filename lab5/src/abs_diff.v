`timescale 1ns / 1ps

module abs_diff (
    input [3:0] A,      // 输入 A
    input [3:0] B,      // 输入 B
    output [3:0] AbsDiff // 输出 |A - B|
);
    wire [3:0] Max, Min;  // 最大值和最小值
    wire [3:0] B_comp;    // 最小值的补码
    wire Cout;            // 进位输出（未使用）

    // 实例化最大值和最小值模块
    max_min_out uut_max_min (
        .A(A),
        .B(B),
        .Max(Max),
        .Min(Min)
    );

    // 计算最小值的补码（用于减法）
    assign B_comp = ~Min + 1;

    // 实例化 4 位加法器模块，计算 Max - Min
    adder_4bit uut_adder (
        .A(Max),
        .B(B_comp),
        .Sum(AbsDiff),
        .Cout(Cout)       // 进位输出未使用
    );

endmodule