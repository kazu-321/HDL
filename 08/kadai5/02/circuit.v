module circuit (
    input x1, x2,
    output z
);

wire w1, w2, w3;
nor nor1(w1,x1,x2);
and and1(w2,x1,w1);
and and2(w3,x2,w1);
or or1(z,w2,w3);
endmodule
