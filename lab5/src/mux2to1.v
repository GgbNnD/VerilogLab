`timescale 1ns / 1ps

module mux2to1 (
    input  wire[3:0] D0,  // 输入信号 0
    input  wire[3:0] D1,  // 输入信号 1
    input  wire Sel, // 选择信号
    output wire[3:0] Y    // 输出信号
);

    // 使用条件运算符实现数据选择
    assign Y = (Sel == 1'b0) ? D0 : D1;

endmodule

