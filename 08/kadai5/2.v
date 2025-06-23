`timescale 1ns/1ns

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

module circuit_test;
    reg x1, x2;
    wire z;
    circuit f(x1,x2,z);
    initial begin
        x1 = 0; x2 = 0;
        $dumpfile("2.vcd");
        $dumpvars(0, circuit_test);
        $monitor("x1=%b x2=%b z=%b", x1, x2, z);
        
        // Test cases
        #10;     x1 = 0; x2 = 0; 
        #10;     x1 = 0; x2 = 1; 
        #10;     x1 = 1; x2 = 0; 
        #10;     x1 = 1; x2 = 1; 

        $finish;
    end
endmodule