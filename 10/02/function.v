module kadai10_2(
    input a,b,c,
    output z
);

    function MDC;
        input a,b,c;
        MDC = (a & b) | (b & c) | (c & a);
    endfunction

    assign z = MDC(a, b, c);
endmodule