`timescale 1ns/1ps
module and_test;
    reg a,b;
    wire c;
    my_and m(a,b,c);
    initial begin
        $dumpfile("and_test.vcd");
        $dumpvars( 0, and_test );
        $monitor("%t: a=%b, b=%b, c=%b", $time,a,b,c);
        a=0; b=0;
        #10 a=1;
        #10 a=0; b=1;
        #10 a=1;
        #10 a=0; b=0;
        #10 $finish;
    end
endmodule

module my_and ( x1, x2, z );
input x1, x2;
output z;
and a( z, x1, x2 );
endmodule