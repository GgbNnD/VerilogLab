`timescale 1ns / 1ps

module adder_4bit (
    input [3:0] A,      // 输入 A（4 位）
    input [3:0] B,      // 输入 B（4 位）
    output [3:0] Sum,   // 和输出（4 位）
    output Cout         // 进位输出
);
    wire [3:0] Carry;   // 全加器的进位信号

    // 实例化四个全加器
    full_adder fa0 (
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0),       // 最低位的进位输入
        .Sum(Sum[0]),
        .Cout(Carry[0])
    );

    full_adder fa1 (
        .A(A[1]),
        .B(B[1]),
        .Cin(Carry[0]),  // 前一位的进位输出
        .Sum(Sum[1]),
        .Cout(Carry[1])
    );

    full_adder fa2 (
        .A(A[2]),
        .B(B[2]),
        .Cin(Carry[1]),  // 前一位的进位输出
        .Sum(Sum[2]),
        .Cout(Carry[2])
    );

    full_adder fa3 (
        .A(A[3]),
        .B(B[3]),
        .Cin(Carry[2]),  // 前一位的进位输出
        .Sum(Sum[3]),
        .Cout(Carry[3])
    );

    // 最终进位输出
    assign Cout = Carry[3];
endmodule