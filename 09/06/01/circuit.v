module kadai09_6_1 (
    input [1:0] a,
    input [1:0] b,
    output [3:0] z
);

    assign z = {a, b};

endmodule