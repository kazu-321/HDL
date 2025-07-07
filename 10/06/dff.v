module DFF (
    input CK, D,
    output Q
);
    reg Q;
    always @(posedge CK) begin
        Q <= D;
    end
endmodule