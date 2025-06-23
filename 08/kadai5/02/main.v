`timescale 1ns/1ns
module circuit_test;
    reg x1, x2;
    wire z;
    circuit f(x1,x2,z);
    initial begin
        x1 = 0; x2 = 0;
        $dumpfile("main.vcd");
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