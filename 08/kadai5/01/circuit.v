module circuit (
    input x1, x2, x3,
    output z
);
wire w1;
    and a(w1,x3,x2);
    or(z,x1,w1);
endmodule
