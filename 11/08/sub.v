module sub( a, b, diff );
    input [3:0] a, b;
    output [3:0] diff;
    wire dummy; // coにダミーを接続

    // a-b = a + ~b + 1'b1
    add4 a1(a, ~b, 1'b1, diff, dummy);
endmodule