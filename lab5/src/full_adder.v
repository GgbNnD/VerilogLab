`timescale 1ns / 1ps

module full_adder (
    input  wire A,    // 输入位 A
    input  wire B,    // 输入位 B
    input  wire Cin,  // 进位输入
    output wire Sum,  // 和输出
    output wire Cout  // 进位输出
);

    // 计算和（Sum）
    assign Sum = A ^ B ^ Cin;

    // 计算进位输出（Cout）
    assign Cout = (A & B) | (Cin & (A ^ B));

endmodule

