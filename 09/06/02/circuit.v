module kadai09_6_2 (
    input [1:0] a,
    input [1:0] b,
    output [3:0] z
);

    assign z = {2'b00, a} + {2'b00, b};

endmodule