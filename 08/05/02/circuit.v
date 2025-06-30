module circuit (
    input x1, x2,
    output z
);

wire w1, w2, w3, w4, w5;
not not1(w1,x1);
not not2(w2,x2);
or or1(w3,w1,w2);
and and1(w4,x1,w3);
and and2(w5,x2,w3);
or or2(z,w4,w5);
endmodule
