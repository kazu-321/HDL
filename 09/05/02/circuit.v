module my_mux (
    input a, b, s,
    output y
);
    wire sel_bar;
    wire a_and, b_and;

    not (sel_bar, s);
    and (a_and, a, sel_bar);
    and (b_and, b, s);
    or  (y, a_and, b_and);
endmodule