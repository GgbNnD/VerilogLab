`timescale 1ns / 1ps

//4bit二进制数比较器
module comparator_4bit (
    input  wire [3:0] A,  // 4 位输入 A
    input  wire [3:0] B,  // 4 位输入 B
    output wire EQ,       // A == B
    output wire GT,       // A > B
    output wire LT        // A < B
);

    // 比较逻辑
    assign EQ = (A == B); // A 等于 B
    assign GT = (A > B);  // A 大于 B
    assign LT = (A < B);  // A 小于 B

endmodule