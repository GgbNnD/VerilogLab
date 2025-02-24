`timescale 1ns / 1ps

module mux2to1_tb;
    reg [3:0] A;             // 输入 A
    reg [3:0] B;             // 输入 B
    reg sel;           // 选择信号
    wire [3:0] Y;           // 输出

    // 实例化 2:1 数据选择器
    mux2to1 mux (
        .D0(A),
        .D1(B),
        .Sel(sel),
        .Y(Y)
    );

    initial begin
        // 测试不同的输入组合
        A = 1'b0; B = 1'b0; sel = 1'b0; #10;  // 输出应为 0
        A = 1'b0; B = 1'b1; sel = 1'b0; #10;  // 输出应为 0
        A = 1'b0; B = 1'b1; sel = 1'b1; #10;  // 输出应为 1
        A = 1'b1; B = 1'b0; sel = 1'b0; #10;  // 输出应为 1
        A = 1'b1; B = 1'b0; sel = 1'b1; #10;  // 输出应为 0
        A = 1'b1; B = 1'b1; sel = 1'b0; #10;  // 输出应为 1
        A = 1'b1; B = 1'b1; sel = 1'b1; #10;  // 输出应为 1

        // 结束仿真
        $stop;
    end
endmodule
