module kadai10_4_2 (
    input [1:0] s,
    input [7:0] a,b,c,d,
    output [7:0] z
);

    function [7:0] mux4;
        input [1:0] s;
        input [7:0] a,b,c,d;
        case (s)
            2'b00: mux4 = a;
            2'b01: mux4 = b;
            2'b10: mux4 = c;
            2'b11: mux4 = d;
        endcase
    endfunction

    assign z = mux4(s, a, b, c, d);
endmodule