`timescale 1ns / 1ps

module full_adder_tb;

    // 测试信号
    reg A, B, Cin;
    wire Sum, Cout;

    // 实例化全加器
    full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // 测试过程
    initial begin
        // 测试所有可能的输入组合
        A = 0; B = 0; Cin = 0; #10;
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        A = 1; B = 0; Cin = 1; #10;
        A = 1; B = 1; Cin = 0; #10;
        A = 1; B = 1; Cin = 1; #10;

        // 结束仿真
        $stop;
    end

endmodule
