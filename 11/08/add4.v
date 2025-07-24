module fa(a, b, ci, sum, co);
    input a, b, ci;
    output sum, co;
    assign { co, sum } = ci + a + b;
endmodule

module add4 ( a, b, ci, sum, co);
    input [3:0] a, b;
    input ci;
    output [3:0] sum;
    output co;
    wire [2:0] ca;

    fa f0(a[0], b[0], ci, sum[0], ca[0]);
    fa f1(a[1], b[1], ca[0], sum[1], ca[1]);
    fa f2(a[2], b[2], ca[1], sum[2], ca[2]);
    fa f3(a[3], b[3], ca[2], sum[3], co);
endmodule