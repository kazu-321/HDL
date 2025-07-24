module sub_test;
    reg [3:0] i1, i2;
    wire [3:0] r;

    sub a(i1, i2, r);

    initial begin
        $monitor("%b - %b = %b", i1, i2, r);
            i1 = 1; i2 = 0; 
        #10 i1 = 1; i2 = 1; 
        #10 i1 = 0; i2 = 0; 
        #10 i1 = 0; i2 = 1;
        #10 $finish;
    end
endmodule

/*
module sub_test_full;
    reg [3:0] i1, i2;
    wire [3:0] r;
    reg ck;

    sub a(i1, i2, r);

    initial begin
        $monitor("%b - %b = %b", i1, i2, r);
        i1 = 0; i2 = 0; ck = 0;
    end
    always #10 ck = ~ck;
    always @(negedge ck) begin
        if (i1=='hf && i2=='hf) begin
            $display("OK\n");
            $finish;
        end
    end
    always @(posedge ck) begin
        {i2,i1} = {i2,i1} + 1;
    end
endmodule
*/


