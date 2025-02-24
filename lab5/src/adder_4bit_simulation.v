`timescale 1ns / 1ps

module adder_4bit_tb;
    reg [3:0] A, B;
    wire [3:0] Sum;
    wire Cout;

    // 实例化 4 位加法器
    adder_4bit uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        // 测试用例 1: 无进位
        A = 4'b0011; B = 4'b0101; #10;  // 3 + 5 = 8
        $display("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        // 测试用例 2: 有进位
        A = 4'b1111; B = 4'b0001;  #10;  // 15 + 1 = 16（溢出）
        $display("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        // 结束仿真
        $finish;
    end
endmodule