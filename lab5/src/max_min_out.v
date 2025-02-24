`timescale 1ns / 1ps

module max_min_top (
    input wire[3:0] A,  // 输入 A
    input wire[3:0] B,  // 输入 B
    output wire[3:0] Max,  // 输出最大值
    output wire[3:0] Min   // 输出最小值
);

    wire A_gt_B;  // A 大于 B

    // 实例化比较器模块
    comparator_4bit comp_inst (
        .A(A),
        .B(B),
        .EQ(),
        .GT(A_gt_B),
        .LT()
    );

    // 实例化数据选择器模块（用于选择最大值）
    mux2to1 mux_max (
        .D0(B),
        .D1(A),
        .Sel(A_gt_B),  // 如果 A >= B，选择 A 作为最大值
        .Y(Max)
    );

    // 实例化数据选择器模块（用于选择最小值）
    mux2to1 mux_min (
        .D0(A),
        .D1(B),
        .Sel(A_gt_B),  // 如果 A >= B，选择 B 作为最小值
        .Y(Min)
    );
endmodule