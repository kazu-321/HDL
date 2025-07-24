module add4_test;
    reg [3:0] i1, i2;
    reg ci;
    wire [3:0] r;
    wire co;

    add4 a(i1, i2, ci, r, co);

    initial begin
        $monitor("%b + %b +(%b) = %b ... carry=%b", i1, i2, ci, r, co);
            i1 = 0; i2 = 0; ci = 0;
        #10 i1 = 0; i2 = 0; ci = 1;
        #10 i1 = 0; i2 = 1; ci = 0;
        #10 i1 = 0; i2 = 1; ci = 1;
        #10 i1 = 1; i2 = 0; ci = 0;
        #10 i1 = 1; i2 = 0; ci = 1;
        #10 i1 = 1; i2 = 1; ci = 0;
        #10 i1 = 1; i2 = 1; ci = 1;
        #10 $finish;
    end
endmodule


/* full check
module add4_test_full;
    reg [3:0] in1, in2;
    reg ci;
    wire [3:0] sum;
    wire co;
    integer i,j,k;

    add4 a(in1, in2, ci, sum, co);

    initial begin
        $monitor("%b + %b +(%b) = %b ... carry=%b", in1, in2, ci, sum, co);
        in1 = 0; in2 = 0; ci = 0;
        for(i=0;i<2;i=i+1)begin
            for(j=0;j<16;j=j+1)begin
                for(k=0;k<16;k=k+1)begin
                    #10 in1 = j; in2 = k; ci = i;
                end
            end
        end
        #10 $finish;
    end
endmodule
*/