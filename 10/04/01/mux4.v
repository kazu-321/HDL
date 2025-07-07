module kadai10_4_1 (
    input [1:0] s,
    input [7:0] a,b,c,d,
    output [7:0] z
);

    function [7:0] mux4;
        input [1:0] s;
        input [7:0] a,b,c,d;
        if (s == 2'b00)      mux4 = a;
        else if (s == 2'b01) mux4 = b;
        else if (s == 2'b10) mux4 = c;
        else if (s == 2'b11) mux4 = d;
    endfunction

    assign z = mux4(s, a, b, c, d);
endmodule